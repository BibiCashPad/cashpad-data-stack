# Cashpad data stack — plan projet

> Document de référence : où on en est, ce qu'on a décidé, ce qui reste à faire.
> Mis à jour : 2026-05-26.

## Objectif

Remplacer **MyReport** par une stack data open source self-hosted, qui consolide les données Cashpad et ses outils satellites (Sellsy, etc.) dans un warehouse PostgreSQL, modélisées avec dbt, orchestrées par Dagster, et exposées via Metabase.

## Stack

| Brique | Rôle | Cf. |
|---|---|---|
| **PostgreSQL 16** | Warehouse (raw + analytics) + métadonnées Dagster/Metabase | docker-compose |
| **Airbyte** (via `abctl`) | Extract & Load des sources externes | `abctl local install` |
| **dbt Core 1.8** | Modélisation SQL (staging → marts) | Container dbt |
| **Dagster 1.8** | Orchestration (Airbyte → dbt) | docker-compose |
| **Metabase 0.51** | Dataviz, dashboards | docker-compose |

Détails archi : [`architecture-data-stack.md`](architecture-data-stack.md)
Install dev : [`INSTALL.md`](INSTALL.md)

---

## ✅ Étapes réalisées

### 1. Infrastructure dev (Mac, Docker Compose)
- `docker-compose.yml` complet : Postgres + dbt + Dagster webserver/daemon + Metabase
- Init SQL Postgres : création des bases `dagster`, `metabase` + schémas `raw`, `analytics` dans `warehouse`
- Healthcheck Postgres OK (`pg_isready -d warehouse`)
- Dagster configuré avec backend Postgres + `dagster-dbt` qui pointe sur le projet dbt monté
- Variable `DAGSTER_IS_DEV_CLI=1` pour que `DbtProject.prepare_if_dev()` génère le manifest au démarrage

### 2. Airbyte
- Choix `abctl` (CLI officiel, cluster kind) plutôt que legacy docker-compose
- Installé via tap Airbyte : `brew tap airbytehq/tap && brew install abctl`
- Accessible sur http://localhost:8000
- **Connexion à Postgres** : depuis le cluster kind, via `host.docker.internal:5432` (le Postgres du compose Docker)

### 3. Connecteur Sellsy V2 custom (Connector Builder)
Construit en YAML dans le Builder Airbyte.

**Auth** : OAuth 2.0 `client_credentials` (token endpoint `https://login.sellsy.com/oauth2/access-tokens`)

**5 streams** :
| Stream | Endpoint | Embeds / particularités |
|---|---|---|
| `invoices` | `GET /v2/invoices` | acl, owner, related, fiscal_year, currency, smart_tags, deposits, invoicing/delivery/issuer addresses, payment_method_ids |
| `companies` | `GET /v2/companies` | main_contact, invoicing_address, smart_tags |
| `individuals` | `GET /v2/individuals` | — |
| `contacts` | `GET /v2/contacts` | — |
| `invoice_custom_fields` | `GET /v2/invoices/{id}/custom-fields` | **Child stream** de `invoices` (SubstreamPartitionRouter). Injecte `invoice_id` via `AddFields`. PK composite `[invoice_id, id]` |

**Pagination** : `CursorPagination` (lit `pagination.offset` de la réponse, géré nativement par Sellsy en seek mode — pas de limite 100k)

**Rate limiting** : `HTTPAPIBudget` actif sur `X-Quota-Remaining-By-Minute`, policies `148/min` et `23/s` (valeurs lues sur les headers Sellsy au premier appel)

### 4. Doc
- `architecture-data-stack.md` (vision technique)
- `INSTALL.md` (guide pas-à-pas dev env)
- `README.md` (TL;DR + URLs)
- `docs/SELLSY_API.md` + `docs/sellsy.v2.latest.yaml` (référence API Sellsy)

---

## 🔄 En cours

- Publier v0.4.0 du connecteur Sellsy → upgrade source → refresh schema dans la connection
- 1ère sync complète des 4 streams "simples" (invoices, companies, individuals, contacts) — `invoice_custom_fields` désactivé sur cette première run pour valider la mécanique de base
- Vérifier les données arrivées dans Postgres (counts + structure des tables)

---

## ⏳ Backlog

### Phase 1 — Compléter le connecteur Sellsy

⚠️ **Périmètre élargi** : le 1er dashboard a besoin de bien plus que les 5 streams actuels (cf. [`docs/sellsy_endpoints.md`](docs/sellsy_endpoints.md)). Objectif Phase 1 : porter ~20 streams complets dans le connecteur Airbyte.

Plan détaillé dans **[`docs/sellsy_connector_plan.md`](docs/sellsy_connector_plan.md)** — 6 sprints, ~20 streams en 6 groupes :
- Groupe A : 4 listings via POST `/search`
- Groupe B : 5 child streams "détails par doc"
- Groupe C : custom fields + payments
- Groupe D : tiers enrichis (smart_tags, custom_fields)
- Groupe E : référentiels
- Groupe F : API v1 shim (catalogue + résolution parent workflow)

Décision tranchée : **100% Airbyte**, pas de script Python d'ingestion. Le connecteur custom YAML est la seule source d'extraction Sellsy, versionné dans `airbyte/sellsy_v2.yaml`.

### Phase 2 — dbt + dashboard E2E

1. **dbt staging models** : un `stg_sellsy__*` par stream Airbyte
   - Dépiler le JSON dans des colonnes typées
   - Naming snake_case homogène
   - Jointures et logique métier (extraction client_id depuis `related[]`, déduction date dernier paiement, etc.)
2. **dbt marts** :
   - `dim_clients` : UNION companies + individuals avec un champ `client_type`
   - `dim_items` : items + services
   - `fct_invoices` : table de faits avec FK vers dim_*, custom fields pivotés
   - `fct_payments`, `fct_credit_notes`, etc.
3. **Dagster orchestration** :
   - Asset Airbyte (déclencher la sync)
   - Asset dbt (déjà câblé) qui en dépend
   - Schedule quotidien (ex : 04:00 chaque matin)
4. **1er dashboard Metabase** :
   - CA mensuel (graphe ligne)
   - Top 10 clients par CA
   - Factures en retard (table)
   - But : valider que l'E2E fonctionne, pas la beauté visuelle

### Phase 3 — Mode incremental Sellsy

Aujourd'hui : `Full refresh | Overwrite` sur tous les streams. Marche tant que les volumes restent gérables (~5-20k invoices), mais à terme :
- Coûteux en API calls (et donc en temps de sync)
- Trop conservateur vis-à-vis du quota Sellsy mensuel sur de gros volumes

#### Le piège du schéma Sellsy

Le schéma `Invoice` n'a **pas** de champ `updated` — seulement `created`. Conséquence : on ne peut pas détecter les modifications de statut (paid, cancelled…) via un simple filtre temporel "modified_since".

#### Stratégie envisagée : rolling window full refresh

Au lieu de tout re-télécharger, on tire seulement les invoices créées dans les **N derniers jours** (typiquement 90).

- API : passer de `GET /v2/invoices` à `POST /v2/invoices/search` avec body :
  ```json
  { "filters": { "created": { "start": "{{ now - 90d }}" } } }
  ```
- Capture **les changements de statut** sur la fenêtre "vivante" (où ça bouge réellement)
- Les très vieilles factures cessent d'être resync (acceptable — leur statut ne bouge plus)
- Tire ~10% du volume vs full refresh complet
- Implémentation : faisable en Builder YAML (méthode POST + `request_body_json`), pas trivial en UI

#### Propagation aux custom fields

Le stream `invoice_custom_fields` est un **child stream** dérivé du parent `invoices` (via `SubstreamPartitionRouter`). Donc :

- Quand on restreint `invoices` à la rolling window 90j, **le child stream n'appelle automatiquement `/invoices/{id}/custom-fields` que pour ces invoices-là**
- Pas de logique d'incremental supplémentaire à mettre côté custom fields — c'est gratuit
- L'endpoint `/invoices/{id}/custom-fields` lui-même n'expose pas de filtre temporel, donc on ne peut pas faire mieux qu'au niveau parent

⚠️ Conséquence : si une vieille facture (> 90j) reçoit un nouveau custom field, on ne le verra plus. À surveiller — si c'est un usage métier réel, faudra un mécanisme de réconciliation périodique (ex : full refresh complet 1× par mois).

### Phase 4 — Production sur VPS OVH

- Provisionnement VPS
- Reverse proxy (Traefik) + HTTPS (Let's Encrypt)
- Backup Postgres automatisé
- Secrets management (`.env` chiffré ou Vault simple)
- Monitoring (logs centralisés, alerting basique)
- Migration `abctl local install` côté VPS (même outil qu'en dev)

### Phase 5 — Sources additionnelles (selon roadmap métier)

- Base Cashpad production (replica read-only)
- Stripe (paiements)
- Pennylane (compta) si dispo
- Google Sheets ops/RH
- Plausible / GA pour le web

---

## 🛠 Dette technique connue

| Item | Sévérité | Plan |
|---|---|---|
| Mode incremental absent | 🟠 | Phase 3 (quand volume devient un souci) |
| `invoice_custom_fields` = 1 appel par invoice | 🟡 | Acceptable au volume actuel ; à reconsidérer si > 50k invoices |
| Postgres en warehouse (warning Airbyte) | 🟢 | Valide jusqu'à ~200 Go / ~100M lignes. Migration ClickHouse envisageable plus tard sans toucher au code dbt |
| Pas encore d'`error_handler` réactif (uniquement le rate limit proactif) | 🟢 | À ajouter si on observe des 429/5xx non gérés |
| Connecteur Sellsy en custom (pas de source de vérité Git) | 🟡 | YAML stocké dans Airbyte uniquement ; envisager un export régulier dans `airbyte/sellsy_v2.yaml` du repo |

---

## 🧭 Décisions clés et tradeoffs

| Décision | Pourquoi | Alternative écartée |
|---|---|---|
| Postgres en warehouse | Simple, gratuit, dbt-compatible, suffisant à notre volume | BigQuery/Snowflake (cloud $, hors scope MVP) |
| Airbyte via `abctl` | Voie officielle maintenue (legacy compose déprécié) | Docker Compose Airbyte (deprecated) |
| dbt dans un container "tools" | Iso prod, lancé via `docker compose run --rm dbt …` | dbt local sur Mac (plus rapide mais divergence dev/prod) |
| Sellsy V2 (pas V1) | V1 = RPC custom + OAuth 1.0a custom, V2 = REST standard + OAuth2 | V1 (incompatible avec Builder Airbyte) |
| Connecteur custom YAML | Pas de connecteur Sellsy officiel ; Builder couvre 100% du besoin | Connecteur Python via CDK (overkill pour notre cas) |
| Companies/individuals/contacts en streams séparés | Modèle dimensionnel propre, dédup naturel | Embed inline dans invoices (duplication, snapshots faux) |
| Adresses (invoicing/delivery/issuer) en embed inline | Sont des **snapshots** historiques au moment de la facturation — comportement voulu | Stream séparé `addresses` (perdrait l'historisation) |
| Full refresh / Overwrite pour démarrer | Simple, robuste, on rate jamais une modif de statut | Incremental dès le départ (perd les updates de statut sans champ `updated`) |
| `CursorPagination` (vs `OffsetIncrement`) | Pas de limite 100k records, c'est la méthode "preferred" par Sellsy | OffsetIncrement (cassera passé 100k records) |
| Rate limit `HTTPAPIBudget` proactif | Lit `X-Quota-Remaining-By-Minute` et temporise avant le 429 | `error_handler` réactif seul (subit le 429 puis retry) |

---

## 📂 Structure du repo

```
.
├── architecture-data-stack.md     # vision technique
├── PROJECT.md                     # ce fichier
├── INSTALL.md                     # guide d'installation
├── README.md                      # TL;DR
├── docker-compose.yml             # Postgres + dbt + Dagster + Metabase
├── .env.example
├── postgres/init/                 # SQL d'init (création des DBs)
├── dbt/                           # projet dbt
│   ├── Dockerfile
│   ├── profiles.yml
│   ├── dbt_project.yml
│   └── models/
│       └── example/               # ⚠️ à remplacer par staging/ et marts/
└── dagster/                       # code Dagster
    ├── Dockerfile
    ├── workspace.yaml
    ├── dagster_home/dagster.yaml
    └── data_stack/
        ├── __init__.py
        └── definitions.py         # actuellement minimal — wire Airbyte assets ici
```

---

## 🎯 Prochain pas concret

1. Sync Airbyte → Postgres (4 streams)
2. `\dt` dans Postgres pour voir les tables/schémas réellement créés
3. Écrire `dbt/models/staging/sellsy/stg_sellsy__invoices.sql`
4. `docker compose run --rm dbt dbt build` pour vérifier
