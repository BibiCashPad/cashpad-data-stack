# Cashpad data stack — plan projet

> Document de référence : où on en est, ce qu'on a décidé, ce qui reste à faire.
> Mis à jour : 2026-05-27.

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

### 3. Connecteur Sellsy — **28 streams** (Sprints 1 → 5d)

YAML versionné dans Git ([`airbyte/sellsy_v2.yaml`](airbyte/sellsy_v2.yaml)). Plan détaillé : [`docs/sellsy_connector_plan.md`](docs/sellsy_connector_plan.md).

**Auth** : OAuth 2.0 `client_credentials` (token endpoint `https://login.sellsy.com/oauth2/access-tokens`)

#### Sprint 1 — Top-level POST /search
`invoices`, `credit_notes`, `deliveries`, `orders` — tous en `POST /v2/<doctype>/search` avec body `{"filters": {}}`. Migration depuis GET listing.

#### Sprint 2 — Détails par doc (child streams)
`invoice_details`, `credit_note_details`, `delivery_details`, `order_details` — `GET /v2/<doctype>/{id}` avec `embed[]=invoicing_address`. Apportent `rows` (lignes) et montants détaillés.

#### Sprint 3 — Custom fields, paiements, tiers enrichis (7 child streams)
`invoice_custom_fields`, `credit_note_custom_fields`, `order_custom_fields`, `invoice_payments`, `company_smart_tags`, `company_custom_fields`, `individual_smart_tags`, `individual_custom_fields`. Pattern PK composite `[parent_id, id]`, injection de la FK via `AddFields`.

#### Sprint 4 — Référentiels
`custom_fields_definitions`, `rate_categories` (méta-données pour les jointures dbt).

#### Sprint 5a — API v1 shim catalogue (3 streams)
`catalogue_categories`, `catalogue_items`, `catalogue_services` via `POST apifeed.sellsy.com/0/`. Pattern nouveau : body form-encoded contenant un JSON-as-string (`do_in=`), pagination `PageIncrement` avec interpolation Jinja du `pagenum` dans le body.

#### Sprint 5b — API v1 résolution parents (3 streams)
`delivery_parents`, `order_parents`, `invoice_model_parents` via `Document.getOne(doctype, id)`. Pour `invoice_model_parents`, on appelle pour TOUS les invoices : Sellsy renvoie `status: error, response: null` pour les non-models → le `record_selector` skip ces réponses (0 record émis). Coût acceptable au volume actuel.

#### Sprint 5d — Devis
`estimates` en `POST /v2/estimates/search` (couvre les 10-32% d'invoices avec `parent.type=estimate` sur l'historique).

**Transverse pour tous les streams :**
- Pagination : `CursorPagination` (v2) ou `PageIncrement` (v1)
- Rate limit : `HTTPAPIBudget` actif sur `X-Quota-Remaining-By-Minute` (148/min + 23/s)
- `definitions.linked` pour factoriser auth + paginator

### 4. Outillage CLI (`make airbyte-push`)

Script Python `scripts/airbyte_push.py` (uv + PEP 723 inline deps) qui synchronise `airbyte/sellsy_v2.yaml` → Builder Project Airbyte via l'API REST.

État actuel : **update du draft seulement**. Le publish auto (création de version) échoue côté Airbyte avec un NPE dans `DeclarativeSourceManifestInjector` — workaround = cliquer "Publish" manuellement dans l'UI après chaque `make airbyte-push`. À investiguer plus tard.

Plan détaillé : [`docs/airbyte_sync_plan.md`](docs/airbyte_sync_plan.md)

### 5. Documentation
- [`architecture-data-stack.md`](architecture-data-stack.md) — vision technique
- [`INSTALL.md`](INSTALL.md) — guide pas-à-pas dev env
- [`README.md`](README.md) — TL;DR + URLs
- [`docs/SELLSY_API.md`](docs/SELLSY_API.md) + [`docs/sellsy.v2.latest.yaml`](docs/sellsy.v2.latest.yaml) — référence API Sellsy
- [`docs/sellsy_endpoints.md`](docs/sellsy_endpoints.md) — inventaire des endpoints à consommer
- [`docs/sellsy_connector_plan.md`](docs/sellsy_connector_plan.md) — plan détaillé du connecteur
- [`docs/airbyte_sync_plan.md`](docs/airbyte_sync_plan.md) — design du script CLI

### 6. Git
Repo `BibiCashPad/cashpad-data-stack` sur GitHub. Commits par bloc cohérent. Branche `main`.

---

## 🔄 En cours

- **Sync complète des 28 streams Airbyte → Postgres** (plusieurs heures vu le volume + child streams)
- En parallèle : démarrage des modèles dbt staging

---

## ⏳ Backlog

### Phase 1 — 1er dashboard E2E ⭐ (priorité)

1. **dbt staging models** — un `stg_sellsy__*` par stream (28 modèles)
   - Dépiler le JSON dans des colonnes typées
   - Naming snake_case homogène
   - Extraction `client_id` depuis `related[]` sur invoices/estimates/orders/credit_notes
   - Filtrage `invoice_payments` aux statuts non-draft/cancelled/scheduled
2. **dbt marts**
   - `dim_clients` — UNION `companies` + `individuals` avec `client_type`
   - `dim_items` — UNION `catalogue_items` + `catalogue_services` avec lookup `catalogue_categories`
   - `fct_invoices` — table de faits, FK vers `dim_clients`, custom fields pivotés (lookup `custom_fields_definitions`)
   - `fct_payments`, `fct_credit_notes`, `fct_orders`, `fct_estimates`
3. **Orchestration Dagster**
   - Asset Airbyte (déclencher la sync via API)
   - Asset dbt (déjà câblé) qui en dépend
   - Schedule quotidien (ex : 04:00 chaque matin)
4. **1er dashboard Metabase**
   - CA mensuel (graphe ligne)
   - Top 10 clients par CA
   - Factures en retard (table)
   - But : valider l'E2E, pas la beauté

### Phase 2 — Incremental Sellsy (rolling window 90j)

Aujourd'hui : `Full refresh | Overwrite` sur tous les streams. Marche tant que volumes gérables, mais à terme coûteux.

**Le piège** : le schéma `Invoice` v2 n'a pas de champ `updated`, seulement `created`. Impossible de détecter les modifications de statut via un filtre "modified_since" classique.

**Stratégie** : rolling window `created >= now - 90d` sur tous les top-level streams via `POST /search` avec `filters.created.start`. Capture les changements de statut sur la fenêtre vivante, manque les très vieux changements (acceptable).

Les child streams (`invoice_details`, `invoice_custom_fields`, etc.) bénéficient automatiquement de la restriction parent → pas de logique supplémentaire.

**Caveat** : un custom field ajouté tard sur une vieille facture (> 90j) ne sera plus capté. Si besoin métier, prévoir un full refresh mensuel hors fenêtre.

### Phase 3 — Production sur VPS OVH

- Provisionnement VPS
- Reverse proxy (Traefik) + HTTPS (Let's Encrypt)
- Backup Postgres automatisé
- Secrets management (`.env` chiffré ou Vault simple)
- Monitoring (logs centralisés, alerting basique)
- Migration `abctl local install` côté VPS (même outil qu'en dev)
- Re-configurer le script `airbyte_push.py` avec l'URL prod (idéalement via une GitHub Action sur push de `main`)

### Phase 4 — Sources additionnelles (selon roadmap métier)

- Base Cashpad production (replica read-only)
- Stripe (paiements)
- Pennylane (compta) si dispo
- Google Sheets ops/RH
- Plausible / GA pour le web
- Sellsy proformas (~2% des invoices, deferré dans Sprint 5d — pattern v1 Document.getOne similaire à invoice_model_parents)

---

## 🛠 Dette technique connue

| Item | Sévérité | Plan |
|---|---|---|
| Mode incremental absent | 🟠 | Phase 2 (quand volume devient un souci) |
| Endpoint Airbyte `publish` retourne 500 (NPE serveur) → workaround "update draft + clic UI" | 🟡 | Tracker Airbyte ; soit on capture la payload exacte du Builder UI via DevTools, soit on attend un fix upstream |
| `invoice_model_parents` appelle Document.getOne pour TOUTES les invoices (~80% renvoient une erreur silencieuse) | 🟡 | Acceptable : Sellsy répond vite sur les "not found". À reconsidérer si quota mensuel devient un souci |
| Postgres en warehouse (warning Airbyte) | 🟢 | Valide jusqu'à ~200 Go / ~100M lignes. Migration ClickHouse envisageable plus tard sans toucher au code dbt |
| Pas encore d'`error_handler` réactif (uniquement le rate limit proactif) | 🟢 | À ajouter si on observe des 429/5xx non gérés |
| Connecteur Sellsy synchronisé manuellement (draft + clic Publish) | 🟢 | Couvert dès qu'on automatise le publish |

---

## 🧭 Décisions clés et tradeoffs

| Décision | Pourquoi | Alternative écartée |
|---|---|---|
| Postgres en warehouse | Simple, gratuit, dbt-compatible, suffisant à notre volume | BigQuery/Snowflake (cloud $, hors scope MVP) |
| Airbyte via `abctl` | Voie officielle maintenue (legacy compose déprécié) | Docker Compose Airbyte (deprecated) |
| dbt dans un container "tools" | Iso prod, lancé via `docker compose run --rm dbt …` | dbt local sur Mac (plus rapide mais divergence dev/prod) |
| Sellsy V2 (avec shim v1 pour les trous) | V2 = REST + OAuth2 standard ; v1 = RPC custom mais nécessaire pour catalogue catégories, items consistents, parent workflow, models | Tout en v1 (legacy) ou tout en script Python custom (perd l'orchestration Airbyte) |
| Connecteur custom YAML versionné dans Git | Pas de connecteur Sellsy officiel ; permet diff, code review, rollback ; le Builder devient un éditeur | YAML uniquement dans Airbyte (perte si crash) |
| Companies/individuals/contacts en streams séparés | Modèle dimensionnel propre, dédup naturel | Embed inline dans invoices (duplication, snapshots faux) |
| Adresses (invoicing/delivery/issuer) en embed inline | Sont des **snapshots** historiques au moment de la facturation — comportement voulu | Stream séparé `addresses` (perdrait l'historisation) |
| Full refresh / Overwrite pour démarrer | Simple, robuste, on rate jamais une modif de statut | Incremental dès le départ (perd les updates de statut sans champ `updated`) |
| `CursorPagination` (v2) + `PageIncrement` (v1) | Adapté à chaque API : v2 a un offset cursor base64, v1 a un pagenum simple | OffsetIncrement (cassera passé 100k records en v2) |
| Rate limit `HTTPAPIBudget` proactif | Lit `X-Quota-Remaining-By-Minute` et temporise avant le 429 | `error_handler` réactif seul (subit le 429 puis retry) |
| `make airbyte-push` mode "update draft" | Workaround au NPE serveur sur `publish` — on a quand même 95% du gain | Bloquer sur le publish auto |
| Proformas Sellsy explicitement deferrés | 2% du volume, pas de demande métier, complexité v1 Document.getOne supplémentaire | Les inclure prophylactiquement |

---

## 📂 Structure du repo

```
.
├── README.md                       # TL;DR + URLs
├── PROJECT.md                      # ce fichier
├── INSTALL.md                      # guide d'installation dev
├── architecture-data-stack.md      # vision technique
├── Makefile                        # cibles: up, down, airbyte-push, etc.
├── docker-compose.yml              # Postgres + dbt + Dagster + Metabase
├── .env.example
├── airbyte/
│   └── sellsy_v2.yaml              # source de vérité du connecteur (28 streams)
├── postgres/init/                  # SQL d'init (création des DBs)
├── dbt/                            # projet dbt
│   ├── Dockerfile
│   ├── profiles.yml
│   ├── dbt_project.yml
│   └── models/
│       └── example/                # ⚠️ à remplacer par staging/ et marts/
├── dagster/                        # code Dagster
│   ├── Dockerfile
│   ├── workspace.yaml
│   ├── dagster_home/dagster.yaml
│   └── data_stack/
│       ├── __init__.py
│       └── definitions.py          # actuellement minimal — wire Airbyte assets ici
├── scripts/
│   ├── airbyte_push.py             # uv-runnable, push YAML → Airbyte
│   └── README.md
└── docs/
    ├── SELLSY_API.md
    ├── sellsy.v2.latest.yaml       # OpenAPI Sellsy V2
    ├── sellsy_endpoints.md         # inventaire endpoints à consommer
    ├── sellsy_connector_plan.md    # plan détaillé du connecteur (sprints 1→5)
    └── airbyte_sync_plan.md        # design du script CLI
```

---

## 🎯 Prochain pas concret

1. **Commit Sprint 5** (a + b + d) + push GitHub
2. **Publish v8** dans Airbyte Builder UI (1 clic)
3. **Source → Upgrade**, **Connection → Refresh source schema**, **activer les 28 streams**, **Sync now**
4. Pendant le sync (3-6h estimées) : **écrire les 1er staging models dbt** (`stg_sellsy__invoices`, `stg_sellsy__companies`, `stg_sellsy__individuals`)
5. Une fois le sync vert : `\dt` côté Postgres pour valider les ~28 tables `raw.*`
6. `docker compose run --rm dbt dbt build` pour exécuter les staging

---

## 📊 Métriques du projet

| Métrique | Valeur |
|---|---|
| Streams Airbyte | 28 |
| Sprints connecteur réalisés | 5 (1, 2, 3, 4, 5a, 5b, 5d) |
| Phases backlog restantes | 4 |
| Lignes YAML du connecteur | ~2 500 |
| Effort équivalent dev solo (estimé) | ~10 jours (60% du chemin vers 1er dashboard E2E) |
