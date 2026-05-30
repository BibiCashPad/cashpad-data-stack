# Stratégie de sync incrémentale — Sellsy V2

> Doctrine finale appliquée au connecteur Airbyte Sellsy V2 après le POC
> rolling-window du Sprint 7 (mai 2026). Pour l'historique du POC et les
> erreurs rencontrées, voir `docs/incremental_sync_poc.md`.

## TL;DR

Trois modes coexistent dans la connection, choisis stream par stream selon ce
que l'API Sellsy expose :

| Mode | Filtre serveur ? | State cursor ? | Quand l'utiliser |
|---|---|---|---|
| **A — Rolling window propre** | ✅ | ✅ | Sellsy expose un filtre date qui matche notre cursor |
| **B — Incrémental client-side** | ❌ | ✅ | Pas de filtre date dispo, mais on veut éviter les duplications |
| **C — Full refresh** | n/a | ❌ | Référentiels statiques, child streams, ou API v1 sans cursor |

## Matrice par stream

### Mode A — Rolling window propre

`incremental_sync.start_time_option` injecte le cursor courant dans le body
de la requête. Sellsy ne renvoie que les records modifiés depuis ce point.

| Stream | API | Cursor | Filtre body injecté |
|---|---|---|---|
| `companies` | POST `/v2/companies/search` | `updated_at` | `filters.updated_at.start` |
| `individuals` | POST `/v2/individuals/search` | `updated_at` | `filters.updated_at.start` |
| `invoices` | POST `/v2/invoices/search` | `created` | `filters.created.start` |
| `estimates` | POST `/v2/estimates/search` | `created` | `filters.created.start` |
| `opportunities` | POST `/v2/opportunities/search` | `created` | `filters.created.start` |
| `deposit_invoices` | POST `/v2/deposit-invoices/search` | `created` | `filters.created.start` |

**Limitation connue** : `companies/individuals` ont un cursor `updated_at` qui
capte les modifications. Les autres ont `created` (créations seulement, pas
les modifs). Trade-off accepté pour le MVP — les modifs sur facts (status
change, paiements, etc.) sont captées via les streams enfants (`*_details`,
`payments`) qui ré-extraient les champs concernés.

### Mode B — Incrémental client-side

Cursor seulement, **pas de** `start_time_option`. Sellsy v2 ne propose pas
de filtre date sur ces endpoints search. Airbyte tire l'intégralité des records
à chaque sync, mais :
- compare chaque record au state stocké
- n'écrit en base que ceux strictement plus récents
- le state avance normalement
- en mode `Incremental Append + Deduped` (PK = `id`), aucune duplication

| Stream | API | Cursor | Volume tiré par sync |
|---|---|---|---|
| `orders` | POST `/v2/orders/search` | `updated_at` | ~2 900 records |
| `deliveries` | POST `/v2/deliveries/search` | `updated_at` | ~5 900 records |
| `credit_notes` | POST `/v2/credit-notes/search` | `updated_at` | ~3 500 records |
| `payments` | POST `/v2/payments/search` | `paid_at` | ~44 000 records (~5-10 min scan) |
| `subscriptions` | POST `/v2/subscriptions/search` | `created` | ~2 000 records |

**Pourquoi pas v1 ?** L'API v1 (`apifeed.sellsy.com/0/`) expose bien un filtre
date côté serveur sur `Document.getList` avec `periodecreated_start/end`, mais
en revanche ne supporte aucun des **embeds modernes v2** (`cf.X`, `smart_tags`,
`acl`, `owner`, `related`, etc.). Migrer ces 3 streams en v1 ferait perdre
toutes les valeurs de custom fields embedded, qui sont notre source unique
maintenant. Trade-off perdant pour Cashpad (volumes modestes < 6k records).

### Mode C — Full refresh ou child stream

Sync complète à chaque run.

| Catégorie | Streams | Pourquoi pas d'incrémental |
|---|---|---|
| Child streams (`_details`) | `invoice_details`, `credit_note_details`, `delivery_details`, `order_details` | Suivent leur parent — si parent ne tire que 5 records, child fait 5 calls |
| Référentiels v2 | `countries`, `currencies`, `taxes`, `units`, `accounting_codes`, `staffs`, `fiscal_years`, `payment_terms`, `rate_categories`, `custom_fields_definitions` | Volumes minimes (<300 records cumulés), données stables, sync hebdo en bonus suffit |
| API v1 catalogue | `catalogue_categories`, `catalogue_items`, `catalogue_services` | API v1 ne propose pas de cursor temporel pour ces RPC |

## Configuration côté Airbyte Connection

Pour chaque stream en mode A ou B, dans l'UI Airbyte :

- **Sync mode** : `Incremental | Append + Deduped`
- **Cursor field** : le `cursor_field` du manifest (`updated_at` ou `created`)
- **Primary key** : `id` (parfois `code` pour `countries`)

Pour les streams en mode C : `Full Refresh | Overwrite`.

## Format Jinja du `start_datetime`

Le `start_datetime` du `DatetimeBasedCursor` est utilisé comme **floor** :
`effective_start = max(state.cursor, start_datetime)`.

**Convention Cashpad** : `start_datetime: "2010-01-01T00:00:00+0000"` (statique).

Le Jinja `{{ (now_utc() - duration('P' + (config['lookback_days']|string) + 'D')).strftime(...) }}`
plante à l'étape DISCOVER (Pydantic valide le format avant d'évaluer Jinja).
Voir Task #31 pour le fix futur via `MinMaxDatetime`.

Conséquence : `lookback_days` reste dans le spec mais est inactif. Le rolling
window utilise `state.cursor` comme floor effectif (qui avance à chaque sync),
ce qui est correct. La date "2010" n'a d'effet QUE lors du premier sync ou
après un Clear data.

## Bénéfice estimé

| | Avant (full refresh) | Après (incrémental) |
|---|---|---|
| Records tirés / sync | ~178 000 | ~12 000 (mode B) + nouveaux (mode A) |
| Durée sync typique | 6-10 h | 2-5 min |
| Risque rate-limit Sellsy | Élevé | Faible |
| Fraîcheur du warehouse | J+1 | Quasi-temps réel |

## Points ouverts

- [ ] **Full refresh hebdo** en complément (Task #30) : pour rattraper les modifs sur les docs antérieurs au state cursor (status, paiements). Câblé dans Dagster, schedule nuit du dimanche.
- [ ] **Fix Jinja `lookback_days`** (Task #31) : permettre de configurer la fenêtre via Source config plutôt que via state.

## Voir aussi

- `docs/incremental_sync_poc.md` — historique du POC, pièges rencontrés
- `docs/sellsy_connector_reference.md` — référence technique des patterns
  utilisés dans le manifest
- `docs/sellsy_endpoints.md` — inventaire des endpoints Sellsy par stream
