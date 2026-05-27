# Sellsy connector — plan de construction

> Plan d'attaque pour construire le connecteur Airbyte custom Sellsy de bout en bout.
> Cible : ~20 streams couvrant tous les endpoints listés dans [`sellsy_endpoints.md`](sellsy_endpoints.md).
> Mis à jour : 2026-05-27.

## Principe directeur

**100% Airbyte, pas de Python d'ingestion.** Le connecteur custom YAML est la **source unique** d'extraction Sellsy. dbt fait toutes les transformations en aval.

## Versionning du connecteur

Le YAML du connecteur vit dans le repo Git : `airbyte/sellsy_v2.yaml`.
Workflow : on édite le fichier en local, on colle dans le Builder Airbyte, on Publish, on commit. Le Builder n'est **plus** la source de vérité.

## Stratégie de pagination

- **Listings** : `CursorPagination` qui lit `response.pagination.offset` (seek mode, pas de limite 100k)
- **API v1 shim** : pagination par `pagenum` dans le body, on incrémente jusqu'à ce que `response.infos.nbpages` soit atteint

## Stratégie de fenêtre temporelle

- **Aujourd'hui (MVP)** : Full refresh / Overwrite sur tout (pas de filtre temporel)
- **Phase 3 (cf. `PROJECT.md`)** : rolling window 90j via `POST /search` avec `filters.created.gte`

## Stratégie de rate limiting

- Globale : `HTTPAPIBudget` actif sur `X-Quota-Remaining-By-Minute` — 148/min + 23/s (ajusté selon plan Sellsy)
- Réactif : à ajouter un `error_handler` qui retry sur 429 avec `Retry-After`

---

## Périmètre — 20 streams en 6 groupes

### Groupe A — Top-level via POST /search

Listings de documents avec body de filtres + pagination cursor.

| Stream | Endpoint | Statut |
|---|---|---|
| `invoices` | `POST /v2/invoices/search` | 🔄 migration depuis GET liste (existant) |
| `credit_notes` | `POST /v2/credit-notes/search` | ⏳ |
| `deliveries` | `POST /v2/deliveries/search` | ⏳ |
| `orders` | `POST /v2/orders/search` | ⏳ |

**Body type** :
```json
{ "filters": {} }
```
(En Phase 3, on remplira `filters.created.start`.)

### Groupe B — Détails par document (child streams)

Le listing ne renvoie pas tous les champs métier (rows / lignes, montants détaillés, etc.). On fait 1 appel détail par document parent.

| Stream | Endpoint | Parent | Embed |
|---|---|---|---|
| `invoice_details` | `GET /v2/invoices/{id}` | `invoices` | `invoicing_address` |
| `credit_note_details` | `GET /v2/credit-notes/{id}` | `credit_notes` | `invoicing_address` |
| `delivery_details` | `GET /v2/deliveries/{id}` | `deliveries` | `invoicing_address` |
| `order_details` | `GET /v2/orders/{id}` | `orders` | `invoicing_address` |
| `estimate_details` | `GET /v2/estimates/{id}` | dérivé du parent `estimate` des docs ci-dessus | — |

PK composite : `[parent_doc_id, id]` ou simplement `id` selon le cas.

### Groupe C — Custom fields & paiements (child streams)

| Stream | Endpoint | Parent | Note |
|---|---|---|---|
| `invoice_custom_fields` | `GET /v2/invoices/{id}/custom-fields` | `invoices` | ✅ existant |
| `credit_note_custom_fields` | `GET /v2/credit-notes/{id}/custom-fields` | `credit_notes` | ⏳ |
| `order_custom_fields` | `GET /v2/orders/{id}/custom-fields` | `orders` | ⏳ |
| `invoice_payments` | `GET /v2/invoices/{id}/payments` | `invoices` | Pas de skip conditionnel : on fait l'appel pour toutes les invoices, filtrage `status ∉ {draft, cancelled, scheduled}` côté dbt |

> ⚠️ Pas de `/deliveries/{id}/custom-fields` — endpoint inexistant côté Sellsy.

### Groupe D — Tiers enrichis (child streams)

| Stream | Endpoint | Parent |
|---|---|---|
| `company_smart_tags` | `GET /v2/companies/{id}/smart-tags` | `companies` |
| `company_custom_fields` | `GET /v2/companies/{id}/custom-fields` | `companies` |
| `individual_smart_tags` | `GET /v2/individuals/{id}/smart-tags` | `individuals` |
| `individual_custom_fields` | `GET /v2/individuals/{id}/custom-fields` | `individuals` |

### Groupe E — Référentiels (top-level légers)

Méta-données, peu volumineuses, à syncer à chaque run.

| Stream | Endpoint |
|---|---|
| `custom_fields_definitions` | `GET /v2/custom-fields` |
| `rate_categories` | `GET /v2/rate-categories` |

### Groupe F — API v1 shim (boss final)

Endpoint unique RPC-style, base URL différente, body form-encoded contenant du JSON-as-string.

| Stream | Méthode v1 | Params |
|---|---|---|
| `catalogue_categories` | `Catalogue.getCategories` | `{}` |
| `catalogue_items` | `Catalogue.getList` | `{ "type": "item", "pagination": {...} }` |
| `catalogue_services` | `Catalogue.getList` | `{ "type": "service", "pagination": {...} }` |
| `document_parents` | `Document.getOne` | `{ "doctype": ..., "docid": ... }` × 3 cas (model/delivery/order), à modéliser comme 1 ou 3 streams selon ce qu'on découvrira |

**Spécificités** :
- URL unique : `POST https://apifeed.sellsy.com/0/`
- Headers : `Authorization: Bearer <token v2>` (même token que v2, scope `api-v1` requis sur l'app Sellsy)
- Content-Type : `application/x-www-form-urlencoded`
- Body :
  ```
  request=1&io_mode=json&do_in={"method":"...","params":{...}}
  ```
- Response selector : `response.result` (au lieu de `data` en v2)
- Pagination : nested dans le JSON-as-string du body, `pagenum` à incrémenter, `response.infos.nbpages` pour la condition d'arrêt

Nécessitera probablement un bloc `definitions.linked.v1Requester` séparé pour factoriser.

---

## Sprints (ordre de construction)

### Sprint 1 — Groupe A (POST search)

**Objectif** : remplacer le `GET /invoices` actuel par `POST /invoices/search`, ajouter les 3 autres listings. Base pour le mode incremental Phase 3.

**Pattern YAML à valider** : POST avec body JSON + pagination cursor identique.

**Définition de "done"** :
- 4 streams testés dans le Builder, chacun ramène des records
- Publish + sync vers Postgres OK
- 4 tables `*invoices*`, `*credit_notes*`, `*deliveries*`, `*orders*` peuplées

### Sprint 2 — Groupe B (détails par doc)

**Objectif** : récupérer les rows/montants détaillés via child streams.

**Pattern YAML à valider** : `SubstreamPartitionRouter` × 5 avec URL templatée + `AddFields` pour injecter `<parent>_id` en PK composite.

**Définition de "done"** :
- 5 streams testés, child correctement câblés sur parent
- Sync OK ; on observe le rate limit s'activer si beaucoup de docs

### Sprint 3 — Groupe C + D (custom fields & smart tags)

**Objectif** : enrichir avec CF et tags pour tous les docs et tiers.

**Pattern YAML à valider** : déjà connu (`invoice_custom_fields` existant), c'est de la duplication réfléchie.

**Définition de "done"** :
- 7 streams supplémentaires (3 CF docs + 1 payments + 4 tiers enrichis)
- Validation que tous les `<parent>_id` sont injectés et utilisables en jointure dbt

### Sprint 4 — Groupe E (référentiels)

**Objectif** : tables de méta-données dispos pour les jointures.

**Pattern YAML à valider** : simple `GET` paginé, comme `companies`/`individuals`. Aucune surprise.

**Définition de "done"** :
- `custom_fields_definitions` et `rate_categories` syncés
- Vérif côté dbt qu'on peut joindre `invoice_custom_fields.field_id → custom_fields_definitions.id`

### Sprint 5 — Groupe F (API v1 shim)

**Objectif** : récupérer ce que l'API v2 ne fournit pas (catalogue, résolution parent workflow).

**Pattern YAML nouveau** :
- Nouvelle base URL
- Body form-encoded avec interpolation Jinja contenant du JSON-as-string
- Record selector sur `response.result`
- Pagination custom (sur `pagenum` injecté dans le body, stop sur `response.infos.nbpages`)

**Définition de "done"** :
- 3-4 streams shim v1 testés
- Catalogue produits + services dispo pour les jointures items côté dbt
- Résolution `parentIdent` fonctionnelle

### Sprint 6 — Migration vers mode incremental (Phase 3)

(Hors scope construction initiale, voir `PROJECT.md` Phase 3.)

---

## Risques connus

| Risque | Impact | Mitigation |
|---|---|---|
| Volume API calls explose avec child streams | Sync de plus en plus longue | Rate limit déjà actif ; surveiller `X-Quota-Remaining-By-Day` ; passer Phase 3 plus tôt si nécessaire |
| `request_body_json` Builder ne supporte pas l'interpolation Jinja sur tous les champs | Sprint 1 bloqué | Workaround : mettre le body en `request_body_data` avec template entier en chaîne |
| Shim v1 — Airbyte Builder limite l'expressivité | Sprint 5 ardu | Construire d'abord en ligne de commande (curl), porter une fois validé |
| Connecteur custom non versionné dans Git aujourd'hui | Perte si Airbyte casse | Export systématique vers `airbyte/sellsy_v2.yaml` après chaque Publish |

---

## Hygiène

- À chaque fin de sprint : `git commit` du fichier `airbyte/sellsy_v2.yaml`
- Tag la version (`git tag sellsy-connector-v0.5.0` etc.)
- Mettre à jour la table des streams dans ce doc avec le statut (✅ / 🔄 / ⏳)
- Mettre à jour `PROJECT.md` à la fin de chaque sprint
