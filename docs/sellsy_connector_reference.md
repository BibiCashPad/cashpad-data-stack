# Connecteur Sellsy — référence technique

> **Le manuel du connecteur.** Architecture, patterns, astuces, pièges, et tribal knowledge accumulé pendant la construction.
>
> Mis à jour : 2026-05-27
> Source de vérité YAML : [`airbyte/sellsy_v2.yaml`](../airbyte/sellsy_v2.yaml)

## Sommaire

1. [Vue d'ensemble](#1-vue-densemble)
2. [Architecture du YAML](#2-architecture-du-yaml)
3. [Authentification OAuth2](#3-authentification-oauth2)
4. [Pagination](#4-pagination)
5. [Rate limiting](#5-rate-limiting)
6. [Embeds](#6-embeds)
7. [Pattern 1 — Top-level POST /search](#pattern-1--top-level-post-search)
8. [Pattern 2 — Détails par doc (child streams single record)](#pattern-2--détails-par-doc-child-streams-single-record)
9. [Pattern 3 — Custom fields & smart tags (child streams paginés)](#pattern-3--custom-fields--smart-tags-child-streams-paginés)
10. [Pattern 4 — Référentiels (GET top-level)](#pattern-4--référentiels-get-top-level)
11. [Pattern 5 — Shim v1 catalogue](#pattern-5--shim-v1-catalogue)
12. [Pattern 6 — Shim v1 Document.getOne](#pattern-6--shim-v1-documentgetone-résolution-parents)
13. [Gestion des erreurs](#13-gestion-des-erreurs)
14. [Modèle relationnel — jointures côté dbt](#14-modèle-relationnel--jointures-côté-dbt)
15. [Bugs et workarounds rencontrés](#15-bugs-et-workarounds-rencontrés)
16. [Workflow de modification](#16-workflow-de-modification)
16bis. [Rolling window / incremental sync](#16bis-rolling-window--incremental-sync)
17. [Limitations connues](#17-limitations-connues)
18. [Glossaire Sellsy](#18-glossaire-sellsy)

---

## 1. Vue d'ensemble

**28 streams** dans le connecteur, répartis en 6 patterns techniques :

| Pattern | Streams | Description |
|---|---|---|
| Top-level POST /search | invoices, credit_notes, deliveries, orders, **estimates** | Listings paginés cursor-based |
| Détails par doc | invoice_details, credit_note_details, delivery_details, order_details | 1 appel GET par parent → ramène `rows`, montants détaillés |
| Custom fields + smart tags + paiements | invoice_custom_fields, credit_note_custom_fields, order_custom_fields, invoice_payments, company_smart_tags, company_custom_fields, individual_smart_tags, individual_custom_fields | Child streams paginés |
| Tiers | companies, individuals, contacts | Listings GET simples |
| Référentiels | custom_fields_definitions, rate_categories | Méta-données globales |
| Catalogue v1 | catalogue_categories, catalogue_items, catalogue_services | API v1 RPC |
| Parents v1 | delivery_parents, order_parents, invoice_model_parents | API v1 Document.getOne |

**Auth** : OAuth 2.0 client_credentials, scope `api-v1` requis pour les streams shim.
**Base URLs** : `api.sellsy.com/v2` (REST) et `apifeed.sellsy.com/0/` (RPC v1).

---

## 2. Architecture du YAML

### Bloc `definitions.linked`

On factorise les éléments communs sous `definitions.linked` pour pouvoir les réutiliser via `$ref` :

```yaml
definitions:
  linked:
    HttpRequester:
      authenticator:
        type: OAuthAuthenticator
        token_refresh_endpoint: https://login.sellsy.com/oauth2/access-tokens
        grant_type: client_credentials
        client_id: "{{ config['client_id'] }}"
        client_secret: "{{ config['client_secret'] }}"
        refresh_request_body: {}
    SimpleRetriever:
      paginator:
        type: DefaultPaginator
        pagination_strategy:
          type: CursorPagination
          cursor_value: "{{ response.pagination.offset }}"
          stop_condition: "{{ response.pagination.count < response.pagination.limit }}"
          page_size: 100
        page_size_option: { type: RequestOption, field_name: limit, inject_into: request_parameter }
        page_token_option: { type: RequestOption, field_name: offset, inject_into: request_parameter }
```

Utilisé partout via :
```yaml
authenticator:
  $ref: "#/definitions/linked/HttpRequester/authenticator"
paginator:
  $ref: "#/definitions/linked/SimpleRetriever/paginator"
```

⚠️ **`$ref` est un remplacement complet, pas un merge**. Si un stream a besoin d'une variation, on duplique au lieu de fusionner.

---

## 3. Authentification OAuth2

### Setup côté Sellsy
1. Sellsy → Marketplace → **Mes applications** → créer une appli privée
2. Scopes à activer (en lecture) :
   ```
   invoices.read, credit-notes.read, deliveries.read, orders.read,
   estimates.read, companies.read, individuals.read, contacts.read,
   items.read, custom-fields.read, smart-tags.read, rate-categories.read,
   accounting-codes.read, payments.read, api-v1
   ```
3. Récupérer `client_id` + `client_secret`

### Setup côté connecteur

Dans la config de la Source Airbyte, juste deux champs : `client_id` et `client_secret`.

### Token endpoint
`POST https://login.sellsy.com/oauth2/access-tokens`

Body form-encoded (l'authenticator low-code envoie en body, **pas** en Basic Auth header) :
```
grant_type=client_credentials&client_id=...&client_secret=...
```

Sellsy accepte les deux méthodes (header ou body), Airbyte par défaut envoie en body.

### Lifetime
Le token est valide ~24h. L'authenticator Airbyte le rafraîchit automatiquement quand il expire (re-POST avec client_credentials).

### Piège — le refresh_token "obligatoire" dans l'UI Airbyte

L'UI du Connector Builder, par défaut, marque `refresh_token` comme obligatoire dans l'authenticator OAuth. **Mais en grant `client_credentials`, refresh_token n'existe pas** : on demande un nouveau token avec client_id+secret à chaque expiration.

Solution propre : **utiliser le YAML** (pas l'UI) avec un authenticator strict minimum :
```yaml
authenticator:
  type: OAuthAuthenticator
  token_refresh_endpoint: https://login.sellsy.com/oauth2/access-tokens
  grant_type: client_credentials
  client_id: "{{ config['client_id'] }}"
  client_secret: "{{ config['client_secret'] }}"
  refresh_request_body: {}
```

Tous les champs `*_name`, `access_token_value`, `refresh_token`, `refresh_token_name` qu'ajoute l'UI sont **inutiles** en client_credentials et créent des pièges (notamment `access_token_value` qui, si défini, fait sauter le fetch du token).

---

## 4. Pagination

### v2 — CursorPagination (seek mode)

Sellsy v2 retourne `pagination.offset` qui peut être :
- Un **integer** (mode numeric) — limité à 100 000 résultats
- Une **string base64** (mode seek) — pas de limite

On utilise `CursorPagination` qui :
- Lit `response.pagination.offset` après chaque réponse
- L'injecte tel quel comme `offset` paramètre de la requête suivante
- Stoppe quand `response.pagination.count < response.pagination.limit` (dernière page incomplète)

```yaml
pagination_strategy:
  type: CursorPagination
  cursor_value: "{{ response.pagination.offset }}"
  stop_condition: "{{ response.pagination.count < response.pagination.limit }}"
  page_size: 100
```

> ⚠️ **Ne JAMAIS utiliser `OffsetIncrement`** sur Sellsy v2. Marche les premiers 100k records puis casse.

### v1 — PageIncrement (body Jinja-interpolé)

Sellsy v1 utilise un schéma de pagination différent : numéro de page (`pagenum`) injecté dans le body JSON-as-string. La structure de la réponse est `{response: {infos: {pagenum, nbpages, ...}, result: {...}}}`.

```yaml
paginator:
  type: DefaultPaginator
  pagination_strategy:
    type: PageIncrement
    start_from_page: 1
    page_size: 100
```

Le `next_page_token` (1, 2, 3, ...) est ensuite Jinja-interpolé dans `request_body_data.do_in` :
```yaml
do_in: '{"method":"Catalogue.getList","params":{"type":"item","pagination":{"nbperpage":100,"pagenum":{{ next_page_token if next_page_token else 1 }}}}}'
```

Stop automatique quand le record_selector retourne 0 records (page vide).

> ⚠️ On a d'abord essayé `CursorPagination` qui lit `response.response.infos.pagenum`, mais Airbyte évalue `cursor_value` AVANT la première réponse → `response` est `None` → erreur `'None' has no attribute 'infos'`. PageIncrement contourne le problème.

---

## 5. Rate limiting

### Pattern proactif via `HTTPAPIBudget`

```yaml
api_budget:
  type: HTTPAPIBudget
  policies:
    - type: MovingWindowCallRatePolicy
      rates:
        - limit: 148
          interval: PT1M
        - limit: 23
          interval: PT1S
      matchers:
        - method: GET
          url_path_pattern: ".*"
  ratelimit_remaining_header: X-Quota-Remaining-By-Minute
  status_codes_for_ratelimit_hit: [429]
```

### Comment on a calibré les valeurs

Sellsy renvoie sur chaque réponse :
- `X-Quota-Remaining-By-Second`
- `X-Quota-Remaining-By-Minute`
- `X-Quota-Remaining-By-Day`
- `X-Quota-Remaining-By-Month`

On a regardé les valeurs après 1 appel : `Remaining-By-Minute=148` → quota total ~149/min. On garde 148 pour une marge.

### Le piège regex

**Bug initial** : `url_path_pattern: "\".*\""`. Les `\"` dans une YAML double-quoted string deviennent des `"` littéraux, donc la regex match `".*"` (avec les guillemets) → aucune URL ne contient de guillemets dans son path → **rate limit jamais déclenché**.

Fix : juste `".*"` (sans backslash).

> 🔎 Pour vérifier que le rate limit est actif : balance plein de Tests rapides dans le Builder, le compteur `X-Quota-Remaining-By-Minute` doit baisser ; Airbyte doit temporiser proche de 0.

---

## 6. Embeds

Sellsy v2 supporte `embed[]` pour inclure des objets liés dans la réponse principale (1 seul appel API, données enrichies inline).

### ❌ Ce qui ne marche PAS dans Airbyte

Pas moyen de passer un array via `request_parameters` dans toutes les versions du Builder UI :
```yaml
request_parameters:
  "embed[]":      # ❌ rejeté
    - acl
    - currency
```

### ✅ Ce qui marche : les embeds dans l'URL

```yaml
url: "https://api.sellsy.com/v2/invoices/search?embed[]=acl&embed[]=currency&embed[]=related"
```

Airbyte concatène ses params (limit, offset) avec un `&` — ça reste valide.

### Embeds dispos par doctype

(extrait de l'OpenAPI Sellsy v2)

| Doctype | Embeds utiles (on a viré contact/company/individual — gérés en streams séparés) |
|---|---|
| invoices | acl, owner, related, fiscal_year, currency, smart_tags, deposits, invoicing_address, delivery_address, issuer_address, payment_method_ids |
| credit_notes | acl, owner, related, fiscal_year, currency, smart_tags, invoicing_address, delivery_address, issuer_address |
| deliveries | acl, owner, related, fiscal_year, currency, smart_tags, invoicing_address, delivery_address, issuer_address, settings, assigned_staff |
| orders | acl, owner, related, fiscal_year, currency, smart_tags, payment_terms, invoicing_address, delivery_address, issuer_address, settings, assigned_staff, payment_method_ids |
| estimates | acl, currency, smart_tags, fiscal_year, payment_terms, invoicing_address, delivery_address, issuer_address, payment_method_ids, settings (note: pas d'`owner` ni `related` en embed — déjà natifs au top-level) |
| companies | main_contact, invoicing_address, smart_tags |

### Custom fields via `embed[]=cf.{id}` ?

Sellsy permet d'embed les custom fields **uniquement avec l'ID exact** : `embed[]=cf.1542`. Pas de wildcard. On préfère les **child streams `*_custom_fields`** qui appellent l'endpoint dédié et récupèrent tous les CF d'un coup.

---

## Pattern 1 — Top-level POST /search

**Streams concernés** : invoices, credit_notes, deliveries, orders, estimates

```yaml
- type: DeclarativeStream
  name: invoices
  retriever:
    type: SimpleRetriever
    paginator:
      $ref: "#/definitions/linked/SimpleRetriever/paginator"
    requester:
      type: HttpRequester
      url: >-
        https://api.sellsy.com/v2/invoices/search?embed[]=acl&embed[]=owner&...
      http_method: POST
      authenticator:
        $ref: "#/definitions/linked/HttpRequester/authenticator"
      request_body_json:
        filters: {}
    record_selector:
      type: RecordSelector
      extractor:
        type: DpathExtractor
        field_path:
          - data
  primary_key: id
```

### Points clés
- **`http_method: POST`** (pas GET — la version GET existe mais ne supporte pas les filtres)
- **`request_body_json: {filters: {}}`** — vide pour l'instant, sera rempli en Phase 2 pour le rolling window
- **`record_selector field_path: [data]`** — la réponse est `{pagination: {...}, data: [...]}`

---

## Pattern 2 — Détails par doc (child streams single record)

**Streams concernés** : invoice_details, credit_note_details, delivery_details, order_details

```yaml
- type: DeclarativeStream
  name: invoice_details
  retriever:
    type: SimpleRetriever
    partition_router:
      type: SubstreamPartitionRouter
      parent_stream_configs:
        - stream: "#/streams/0"        # invoices
          parent_key: id
          partition_field: invoice_id
    requester:
      type: HttpRequester
      url: "https://api.sellsy.com/v2/invoices/{{ stream_partition['invoice_id'] }}?embed[]=invoicing_address"
      http_method: GET
      authenticator:
        $ref: "#/definitions/linked/HttpRequester/authenticator"
    record_selector:
      type: RecordSelector
      extractor:
        type: DpathExtractor
        field_path: []
  primary_key: id
```

### Points clés
- **`SubstreamPartitionRouter`** itère sur le parent stream et déclenche un appel par parent record
- **`parent_key: id`** extrait l'`id` du parent record
- **`partition_field: invoice_id`** stocke cette valeur sous ce nom, accessible via `{{ stream_partition['invoice_id'] }}`
- **`field_path: []`** — la réponse détail est UN objet à la racine (pas un wrapper `data`), donc on extrait le root
- **Pas de paginator** — single record
- Apporte les **`rows`** (lignes détaillées) qui ne sont pas dans le listing

### Coût
1 appel par parent record. À 5000 invoices et au rate limit actuel (148/min) → ~35 minutes pour syncer juste `invoice_details`.

---

## Pattern 3 — Custom fields & smart tags (child streams paginés)

**Streams concernés** : invoice_custom_fields, credit_note_custom_fields, order_custom_fields, invoice_payments, company_smart_tags, company_custom_fields, individual_smart_tags, individual_custom_fields

```yaml
- type: DeclarativeStream
  name: invoice_custom_fields
  retriever:
    type: SimpleRetriever
    paginator:
      $ref: "#/definitions/linked/SimpleRetriever/paginator"
    partition_router:
      type: SubstreamPartitionRouter
      parent_stream_configs:
        - stream: "#/streams/0"
          parent_key: id
          partition_field: invoice_id
    requester:
      type: HttpRequester
      url: "https://api.sellsy.com/v2/invoices/{{ stream_partition['invoice_id'] }}/custom-fields"
      http_method: GET
      authenticator:
        $ref: "#/definitions/linked/HttpRequester/authenticator"
    record_selector:
      type: RecordSelector
      extractor:
        type: DpathExtractor
        field_path:
          - data
  transformations:
    - type: AddFields
      fields:
        - type: AddedFieldDefinition
          path:
            - invoice_id
          value: "{{ stream_partition['invoice_id'] }}"
          value_type: integer
  primary_key:
    - invoice_id
    - id
```

### Points clés
- **`transformations.AddFields`** injecte le `<parent>_id` dans chaque record pour permettre la jointure côté dbt
- **`value_type: integer`** force le typage (sinon Jinja produit une string)
- **PK composite `[parent_id, id]`** car un même CF/tag peut exister sur plusieurs parents

### Le piège PK

Sans AddFields, on aurait `primary_key: [invoice_id, id]` mais `invoice_id` n'existerait pas dans le record → Airbyte refuse :
```
Path [] does not have field `invoice_id` in the schema and hence can't be marked as required.
```

Solution = AddFields injecte le champ avant la vérification PK.

---

## Pattern 4 — Référentiels (GET top-level)

**Streams concernés** : companies, individuals, contacts, custom_fields_definitions, rate_categories

Pattern le plus simple, juste un GET paginé :
```yaml
- type: DeclarativeStream
  name: rate_categories
  retriever:
    type: SimpleRetriever
    paginator:
      $ref: "#/definitions/linked/SimpleRetriever/paginator"
    requester:
      type: HttpRequester
      url: https://api.sellsy.com/v2/rate-categories
      http_method: GET
      authenticator:
        $ref: "#/definitions/linked/HttpRequester/authenticator"
    record_selector:
      type: RecordSelector
      extractor:
        type: DpathExtractor
        field_path: [data]
  primary_key: id
```

---

## Pattern 5 — Shim v1 catalogue

**Streams concernés** : catalogue_categories, catalogue_items, catalogue_services

### Pourquoi v1 ?

Sellsy v2 n'expose **pas** :
- Liste des catégories d'items
- ID-space cohérent entre items et catégories (le `category_id` retourné par `/v2/items` ne mappe pas sur l'ID des catégories ailleurs)

Donc passage par le shim v1 — endpoint RPC unique :
```
POST https://apifeed.sellsy.com/0/
Authorization: Bearer <token v2>
Content-Type: application/x-www-form-urlencoded

request=1&io_mode=json&do_in={"method":"Catalogue.getList","params":{...}}
```

### Stream catalogue_items (pagination)

```yaml
- type: DeclarativeStream
  name: catalogue_items
  retriever:
    type: SimpleRetriever
    paginator:
      type: DefaultPaginator
      pagination_strategy:
        type: PageIncrement
        start_from_page: 1
        page_size: 100
    record_selector:
      type: RecordSelector
      extractor:
        type: DpathExtractor
        field_path:
          - response
          - result
          - "*"
    requester:
      type: HttpRequester
      url: https://apifeed.sellsy.com/0/
      http_method: POST
      authenticator:
        $ref: "#/definitions/linked/HttpRequester/authenticator"
      request_headers:
        Content-Type: application/x-www-form-urlencoded
      request_body_data:
        request: "1"
        io_mode: "json"
        do_in: '{"method":"Catalogue.getList","params":{"type":"item","pagination":{"nbperpage":100,"pagenum":{{ next_page_token if next_page_token else 1 }}}}}'
  primary_key:
    - id
    - declid
```

### Astuces clés

1. **`request_body_data`** (et pas `request_body_json`) car Sellsy v1 attend du `application/x-www-form-urlencoded`
2. **Le JSON dans `do_in` est un string** — Jinja interpole `{{ next_page_token }}` dans cette chaîne
3. **YAML quoting** : on entoure `do_in` de single quotes, le contenu peut contenir des double quotes JSON. Dans Jinja on utilise `stream_partition["..."]` (double quotes acceptées par Jinja)
4. **`field_path: [response, result, "*"]`** — `response.result` est un **dict keyé par `{itemId}_{declId}`** (pas un array). Le wildcard `"*"` itère les valeurs

### Stream catalogue_categories (pas de pagination)

Cas simple, `Catalogue.getCategories` retourne un array direct à `response` (pas de pagination, généralement < 100 catégories).

```yaml
record_selector:
  extractor:
    field_path:
      - response   # array direct
request_body_data:
  do_in: '{"method":"Catalogue.getCategories","params":{"type":"item"}}'
```

---

## Pattern 6 — Shim v1 Document.getOne (résolution parents)

**Streams concernés** : delivery_parents, order_parents, invoice_model_parents

### Pourquoi ?

v2 n'expose pas le lien parent sur Delivery (BDL ne sait pas qu'il vient du BDC X) ni sur Order. Et il n'y a aucun endpoint `/v2/models`.

### delivery_parents et order_parents (cas simple)

Pour chaque delivery (ou order), on appelle `Document.getOne` qui retourne plein d'infos dont `parentIdent` (le numéro du document parent, string genre `"BDC-20130119-00001"`).

```yaml
- type: DeclarativeStream
  name: delivery_parents
  retriever:
    type: SimpleRetriever
    partition_router:
      type: SubstreamPartitionRouter
      parent_stream_configs:
        - stream: "#/streams/6"   # deliveries
          parent_key: id
          partition_field: delivery_id
    requester:
      url: https://apifeed.sellsy.com/0/
      http_method: POST
      authenticator: { $ref: ... }
      request_headers: { Content-Type: application/x-www-form-urlencoded }
      request_body_data:
        request: "1"
        io_mode: "json"
        do_in: '{"method":"Document.getOne","params":{"doctype":"delivery","docid":{{ stream_partition["delivery_id"] }}}}'
    record_selector:
      extractor:
        field_path: [response]
  transformations:
    - type: AddFields
      fields:
        - type: AddedFieldDefinition
          path: [delivery_id]
          value: "{{ stream_partition['delivery_id'] }}"
          value_type: integer
  primary_key: delivery_id
```

### invoice_model_parents (cas brutal — calls "gaspillés" filtrés silencieusement)

Pour les invoices avec `parent.type=model`, on appelle `Document.getOne(model, parent.id)`. **Problème** : SubstreamPartitionRouter ne sait pas filtrer le parent par type. On appelle donc Document.getOne(model, parent.id) pour CHAQUE invoice, peu importe le type du parent.

**Astuce qui sauve la vie** : Sellsy v1 renvoie pour un mauvais doctype/id :
```json
{
  "status": "error",
  "error": {"code": "E_OBJ_NOT_LOADABLE", ...},
  "response": null
}
```

→ Avec `field_path: [response]`, Airbyte extrait `null` → **0 record émis silencieusement**. Pas de retry, pas de pollution.

Pour les vrais models, on récupère un objet avec `ident` (genre `"Abo support 79€/mois."`).

```yaml
- type: DeclarativeStream
  name: invoice_model_parents
  retriever:
    type: SimpleRetriever
    partition_router:
      type: SubstreamPartitionRouter
      parent_stream_configs:
        - stream: "#/streams/0"        # invoices
          parent_key: parent.id        # ← chemin nested supporté !
          partition_field: model_id
    requester:
      ...
      request_body_data:
        ...
        do_in: '{"method":"Document.getOne","params":{"doctype":"model","docid":{{ stream_partition["model_id"] }}}}'
    record_selector:
      extractor:
        field_path: [response]
  transformations:
    - type: AddFields
      fields:
        - type: AddedFieldDefinition
          path: [model_id]
          value: "{{ stream_partition['model_id'] }}"
          value_type: integer
  primary_key: model_id
```

### Coût brutal mais OK
~5000 invoices × 1 appel v1 chacune. 80% retournent l'erreur silencieuse rapidement. Le rate limiter gère.

---

## 13. Gestion des erreurs

### Sellsy v1 — toujours HTTP 200

L'API v1 renvoie **toujours `200 OK`** même en erreur. L'erreur est dans le body : `{"status": "error", "error": {...}, "response": null}`.

Conséquence :
- Airbyte ne déclenche **pas** de retry automatique (le HTTP est OK)
- Notre `record_selector field_path: [response]` extrait `null` → 0 record, sans crash
- C'est ce qui permet l'astuce de `invoice_model_parents`

### Sellsy v2 — HTTP standard

Les erreurs sont des `4xx` ou `5xx` classiques.

### Notre setup

On a **uniquement le rate limit proactif (`HTTPAPIBudget`)**, pas d'`error_handler` réactif. Si Sellsy renvoie un 429 malgré le throttling, le budget est forcé à 0 et la sync attend. Ça suffit en pratique.

À ajouter plus tard si on observe des 5xx non gérés :
```yaml
error_handler:
  type: DefaultErrorHandler
  response_filters:
    - http_codes: [429]
      action: RATE_LIMITED
    - http_codes: [500, 502, 503, 504]
      action: RETRY
  backoff_strategies:
    - type: WaitTimeFromHeader
      header: Retry-After
    - type: ExponentialBackoffStrategy
      factor: 5
  max_retries: 10
```

---

## 14. Modèle relationnel — jointures côté dbt

### Jointures par ID (FK clean)

| Source | Champ | Destination |
|---|---|---|
| `invoices.related[].id` (where type='company') | → | `companies.id` |
| `invoices.related[].id` (where type='individual') | → | `individuals.id` |
| `invoices.parent.id` (where type IN ('order','delivery','estimate','invoice','proforma')) | → | tables correspondantes |
| `invoice_custom_fields.id` | → | `custom_fields_definitions.id` |
| `items.category_id` (v1) | → | `catalogue_categories.id` |

### Jointures par "ident" (numéro lisible)

⚠️ **Pas une FK numérique** — c'est un string parsé depuis le numéro du document :

| Source | Champ | Destination |
|---|---|---|
| `delivery_parents.parentIdent` | → | `orders.number` |
| `order_parents.parentIdent` | → | `estimates.number` |
| `invoice_model_parents.model_id` | → | `invoices.parent.id` (when type='model') |

### Unnesting du `related[]`

`related` est un array de `{id, type}` sur invoices/estimates/orders/etc. On l'aplatit en staging :
```sql
-- staging/stg_sellsy__invoices.sql
select
  i.id as invoice_id,
  i.number,
  i.status,
  (select r->>'id' from jsonb_array_elements(i.related) r
   where r->>'type' = 'company' limit 1)::int as company_id,
  (select r->>'id' from jsonb_array_elements(i.related) r
   where r->>'type' = 'individual' limit 1)::int as individual_id
from {{ source('raw', 'invoices') }} i
```

---

## 15. Bugs et workarounds rencontrés

| # | Problème | Cause | Workaround / fix |
|---|---|---|---|
| 1 | "Refresh token est obligatoire" dans l'UI | client_credentials n'a pas de refresh_token, mais Airbyte UI le force | YAML sans refresh_token, avec `refresh_request_body: {}` |
| 2 | Embeds en `request_parameters: {embed[]: [...]}` rejetés | Mapping[str, str], pas de liste | Mettre les embeds dans l'URL : `?embed[]=acl&embed[]=related` |
| 3 | Rate limit jamais déclenché | `url_path_pattern: "\".*\""` produit la regex littérale `".*"` | `url_path_pattern: ".*"` (sans backslash) |
| 4 | Auth pollué par `access_token_value: ""` | L'UI Airbyte ajoute ce champ par défaut, si défini Airbyte zappe le fetch | Authenticator minimal en YAML, virer tous les champs `*_name` et `*_value` |
| 5 | `OffsetIncrement` casse à 100k records | Sellsy v2 numeric mode est limité à 100k | Migrer vers `CursorPagination` (qui exploite `pagination.offset` base64) |
| 6 | Migration POST search : pagination inversée (limit/offset swapped) | Erreur de copier-coller | Bien vérifier `page_size_option.field_name=limit` et `page_token_option.field_name=offset` |
| 7 | API publish renvoie 500 NPE (`DeclarativeSourceManifestInjector`) | Champ interne manquant ou structure non documentée | `make airbyte-push` met juste à jour le draft ; on clique manuellement "Publish new version" dans l'UI |
| 8 | `CursorPagination` sur shim v1 : `'None' has no attribute 'infos'` | Airbyte pré-évalue `cursor_value` avant la 1re réponse, `response` est None | Bascule en `PageIncrement` (qui ne dépend pas de la réponse) |
| 9 | Token expire en cours de session curl | OAuth token valide ~24h | Régénérer le token avant nouveau test (`$CLIENT_ID:$CLIENT_SECRET`) |
| 10 | Builder Test "Could not make a request" sur `invoice_model_parents` | Sample taille petite, 0 invoice avec `parent.type=model` → 0 record → UI affiche erreur trompeuse | Test empirique via curl pour valider la mécanique ; sync réelle remontera bien les records |
| 11 | PK error "Path [] does not have field `<parent>_id`" sur child streams | parent_id n'existe pas dans la réponse, juste dans le partition | Transformation `AddFields` qui copie `stream_partition['<parent>_id']` dans chaque record |

---

## 16. Workflow de modification

```
1. Edit airbyte/sellsy_v2.yaml (en local)
2. make airbyte-push           # push le draft vers Airbyte
3. Builder UI → bouton "Publish new version"  # 1 clic manuel
4. Sources → sellsy-prod → Upgrade  # accepte la nouvelle version
5. Connections → ta connection → Refresh source schema
6. Sync now                    # ou attendre le schedule
7. git add airbyte/sellsy_v2.yaml && git commit -m "..." && git push
```

Le `make airbyte-push` est idempotent : si le YAML local == le draft remote, il skip.

---

## 16bis. Rolling window / incremental sync

### Architecture

Machinerie en place mais **désactivée par défaut**. Le YAML expose un paramètre `lookback_days` dans le spec :

```yaml
spec:
  connection_specification:
    properties:
      lookback_days:
        type: integer
        title: Lookback period (days)
        default: 36500       # ≈ 100 ans = filtre inactif
        minimum: 1
```

Le param est injecté dans le `request_body_json` des streams concernés via Jinja :

```yaml
request_body_json:
  filters:
    created:
      start: "{{ (now_utc() - duration('P' + (config['lookback_days']|string) + 'D')).strftime('%Y-%m-%dT%H:%M:%S+00:00') }}"
```

### Format de date attendu par Sellsy

ISO 8601 avec timezone : `YYYY-MM-DDTHH:MM:SS+ZZ:ZZ`. On utilise UTC :

```
2025-02-28T14:30:00+00:00
```

### Cursor field = `created`, PAS `updated`

⚠️ Le schéma Sellsy `Invoice` v2 (et `CreditNote`, `Delivery`, `Order`, `Estimate`, `Opportunity`) n'a **pas** de champ `updated`. Conséquence directe : on ne peut pas détecter les changements de statut via un filtre "modified_since" — uniquement par re-fetch dans la fenêtre récente.

C'est pour ça que la rolling window 90j fait sens : sur ces 90 jours, la plupart des changements de statut surviennent (draft → paid, paid → cancelled, etc.). Plus vieux que ça, les statuts ne bougent quasi plus.

### Streams couverts par le rolling window (7)

| Stream | Filter API utilisé |
|---|---|
| `invoices` | `filters.created.start` |
| `credit_notes` | `filters.created.start` |
| `deliveries` | `filters.created.start` |
| `orders` | `filters.created.start` |
| `estimates` | `filters.created.start` |
| `deposit_invoices` | `filters.created.start` |
| `opportunities` | `filters.created.start` |

Les child streams associés (invoice_details, invoice_custom_fields, invoice_payments, etc.) bénéficient automatiquement de la restriction via `SubstreamPartitionRouter`. Pas de modif YAML supplémentaire.

### Streams NON couverts (limitations API Sellsy)

Vérifié dans l'OpenAPI :

| Stream | Endpoint search | Filtres dispos |
|---|---|---|
| `subscriptions` | `POST /v2/subscriptions/search` | `related_objects` uniquement — **pas de date** |
| `payments` | `POST /v2/payments/search` | `status` + `related_objects` — **pas de date** |
| `companies`, `individuals`, `contacts` | (référentiels) | Non pertinent — pas de notion de "fenêtre" |
| Tous les référentiels (taxes, fiscal_years, etc.) | (statiques) | Non pertinent |

### Streams retirés (non extractibles via Sellsy V2)

| Stream | Raison |
|---|---|
| `progress_invoices` | Sellsy V2 expose uniquement `POST /v2/progress-invoices` (création), `POST /v2/progress-invoices/compute` et `PUT /v2/progress-invoices/{id}` (update). **Aucun GET ni search** ⇒ pas de moyen d'extraire les factures de situation existantes. Si besoin métier émerge, à investiguer via le shim v1 (`Document.getOne doctype=progress_invoice`). |
| `proformas` | Idem — quasiment rien en v2, seul `/proforma-invoices/{id}/custom-fields` existe. Drop intentionnel (2% des invoices). |

→ Ces streams restent en Full Refresh à chaque sync. Volumes modérés, OK.

### Procédure d'activation (manuelle dans l'UI Airbyte)

#### Étape 1 — Mettre à jour le param dans la Source

Airbyte UI → **Sources** → `sellsy-prod` → **Edit** :
- **Lookback period (days)** : passer de `36500` à `90` (ou la valeur souhaitée)
- **Save**

#### Étape 2 — Changer le sync mode des 7 streams

Airbyte UI → **Connections** → ta connection → onglet **Schema** :

Pour chacun des 7 streams (invoices, credit_notes, deliveries, orders, estimates, deposit_invoices, opportunities) :

| Champ | Avant | Après |
|---|---|---|
| Sync mode | `Full Refresh \| Overwrite` | `Incremental \| Append + Deduped` |
| Cursor field | — | `created` |
| Primary key | `id` (déjà set) | `id` |

**Save**.

#### Étape 3 — Sync now

Le sync ne tire désormais que les `lookback_days` derniers jours et dédupliquera sur `id`. Les changements de statut sur la fenêtre récente écrasent les anciennes versions. L'historique > fenêtre reste figé dans Postgres.

### Stratégie périodique recommandée

| Fréquence | Action | Param `lookback_days` | Sync mode |
|---|---|---|---|
| **Quotidien** | Sync rolling window | `90` | Incremental Deduped |
| **Mensuel** (1× / mois) | Backfill exhaustif | `36500` (temporaire) | Full Refresh Overwrite |

Le backfill mensuel rattrape les éventuels custom fields / changements ajoutés sur de vieilles factures hors fenêtre.

### Pourquoi ne PAS activer le rolling window dès le 1er sync ?

Le premier sync doit être un **backfill exhaustif** (Full Refresh, lookback inactif) pour avoir tout l'historique en Postgres. Si on active le rolling window 90j dès le départ :
- Le sync wipe les tables (mode Overwrite)
- Ne réinsère que 90j de données
- **Tu perds 95% de ton historique**

D'où le default `lookback_days=36500` et le sync_mode `Overwrite` au démarrage, puis bascule manuelle après le backfill initial.

### Bug & quirks notés sur la machinerie

| # | Item | Note |
|---|---|---|
| 1 | `now_utc()` Jinja macro | Disponible nativement dans le low-code CDK Airbyte. Retourne datetime UTC. |
| 2 | `duration('P90D')` | Format ISO 8601 duration. Le `P` (period) est obligatoire. |
| 3 | `strftime('%Y-%m-%dT%H:%M:%S+00:00')` | Force le format avec timezone +00:00. Sellsy accepte aussi `Z` mais on reste explicit. |
| 4 | Param `lookback_days` int | Cast en string avec `\|string` pour la concaténation Jinja avec 'P' + ... + 'D' |
| 5 | Default 36500 vs valeur d'activation 90 | Permet de garder le manifest valide en dev / staging avec full refresh, sans toucher au YAML |

---

## 17. Limitations connues

| Limitation | Impact | Plan |
|---|---|---|
| Pas de mode incremental | Coûteux en API à terme | Phase 2 du PROJECT.md : rolling window 90j |
| `invoice_model_parents` appelle pour TOUS les invoices | ~80% d'appels gaspillés (rapides mais consomment quota) | Acceptable au volume actuel |
| Proformas non couverts | 2% des invoices ont `parent.type=proforma` | Non priorisé, à voir si demande métier émerge |
| Publish API auto (NPE) | Étape manuelle dans l'UI à chaque release | Investiguer payload via DevTools du Builder UI |
| Aucun `error_handler` réactif | Si Sellsy renvoie un 5xx, sync échoue | Ajouter quand on observe un cas réel |
| Token Sellsy ~24h, regen auto par Airbyte | RAS en sync, mais expire pendant les tests curl | Pas un vrai problème |
| Connecteur custom (pas dans le marketplace Airbyte) | Pas d'update auto si Sellsy bouge | YAML versionné Git, on bouge à la main |

---

## 18. Glossaire Sellsy

| Terme | Doctype | Définition |
|---|---|---|
| Facture | `invoice` | Document de facturation final |
| Avoir | `credit_note` | Annulation/remboursement d'une facture |
| Devis | `estimate` | Proposition commerciale avant engagement |
| BDC (Bon de Commande) | `order` | Engagement client après devis accepté |
| BDL (Bon de Livraison) | `delivery` | Document de livraison |
| Proforma | `proforma` | Facture provisoire (douane, acompte) |
| Modèle | `model` | Template d'abonnement / facturation récurrente |
| Société | `company` | Tiers B2B |
| Particulier | `individual` | Tiers B2C |
| Contact | `contact` | Personne au sein d'une `company` |
| Catégorie | `catalogue_categories` | Arbre de catégories d'items (uniquement v1) |
| Item | `catalogue_items` | Produit/service du catalogue |
| `parentIdent` | — | Numéro **lisible** du doc parent (string, ex `"BDC-20130119-00001"`) — joins par number, pas par id |
| `_embed` | — | Wrapper Sellsy pour les objets demandés via `embed[]=...` |
| `ident` (v1) | — | Identifiant lisible d'un document (équivalent du `number` v2) |
