# POC : incremental sync sur Sellsy

> **Statut : POC validé le 2026-05-30.** La doctrine finale, appliquée au
> manifest et à dbt, est consolidée dans `docs/incremental_sync_strategy.md`.
> Ce document reste comme **historique** du POC et de ses 4 étapes — utile
> si on doit ré-investiguer un comportement Pydantic/Jinja.
>
> Branche `feat/incremental` — préparation pour réessayer `DatetimeBasedCursor`
> après l'échec du Sprint 7 (rejet silencieux "An unknown error has occurred").

## Hypothèse de l'échec précédent

YAML qui avait planté :

```yaml
incremental_sync:
  type: DatetimeBasedCursor
  cursor_field: created
  datetime_format: "%Y-%m-%dT%H:%M:%S%z"
  start_datetime:
    type: MinMaxDatetime
    datetime: "{{ (now_utc() - duration('P' + (config['lookback_days']|string) + 'D')).strftime('%Y-%m-%dT%H:%M:%S+0000') }}"
    datetime_format: "%Y-%m-%dT%H:%M:%S%z"
```

**Hypothèse principale** : la validation Pydantic de Airbyte parse le champ
`datetime` de `MinMaxDatetime` selon `datetime_format` **avant** que Jinja
soit évalué. Le littéral `"{{ ... }}"` ne matche pas le format date → rejet.

## Approche du POC (4 étapes incrémentales)

### Étape 1 — Version minimaliste statique ✅ (présente)

```yaml
incremental_sync:
  type: DatetimeBasedCursor
  cursor_field: created
  datetime_format: "%Y-%m-%dT%H:%M:%S%z"
  start_datetime: "2010-01-01T00:00:00+0000"   # plain string, no Jinja
```

Pas de `MinMaxDatetime`, pas de Jinja, pas de `start_time_option`. Si cette
version PASSE la validation manifest et le Test dans le Builder → on a la
preuve que `DatetimeBasedCursor` lui-même fonctionne.

Stream test : `companies` (volume modeste, 6155 records, sync rapide pour
itérer rapidement).

### Étape 2 — Ajouter `start_time_option` pour vraiment filtrer côté API

Sans `start_time_option`, Airbyte tracke le cursor mais ne filtre PAS la
requête API — il filtre les records localement après les avoir reçus
(comportement sous-optimal mais légal). Pour faire un VRAI rolling window
côté Sellsy, faut injecter `filters.created.start` dans le body :

```yaml
incremental_sync:
  type: DatetimeBasedCursor
  cursor_field: created
  datetime_format: "%Y-%m-%dT%H:%M:%S%z"
  start_datetime: "2010-01-01T00:00:00+0000"
  start_time_option:
    type: RequestOption
    inject_into: body_json
    field_path:
      - filters
      - created
      - start
```

`field_path` (liste nested) doit être supporté par notre version d'Airbyte
CDK. Si ça plante ici, c'est une limitation du CDK, à investiguer.

### Étape 3 — Rendre la date dynamique via config

Au lieu de `start_datetime: "2010-01-01..."` codé en dur, on veut
"il y a N jours" via le paramètre `lookback_days` du spec.

Variante A — utiliser `MinMaxDatetime` avec Jinja (a planté avant) :

```yaml
start_datetime:
  type: MinMaxDatetime
  datetime: "{{ (now_utc() - duration('P' + (config['lookback_days']|string) + 'D')).strftime('%Y-%m-%dT%H:%M:%S+0000') }}"
  datetime_format: "%Y-%m-%dT%H:%M:%S%z"
```

Si l'étape 2 a marché et que celle-ci plante, on aura confirmé que
le souci est `Jinja + MinMaxDatetime`.

Variante B — utiliser directement une string Jinja sans MinMaxDatetime :

```yaml
start_datetime: "{{ (now_utc() - duration('P' + (config['lookback_days']|string) + 'D')).strftime('%Y-%m-%dT%H:%M:%S+0000') }}"
```

Si la validation Pydantic accepte (vs strict format), c'est OK.

### Étape 4 — Étendre à tous les streams supportés

Une fois le pattern stable sur companies :
- Top-level POST search avec `filters.created.start` :
  invoices, credit_notes, deliveries, orders, estimates,
  deposit_invoices, opportunities
- Tous les top-level GET avec un cursor `created` ou `updated_at` :
  companies (POC), individuals, contacts, etc.

Streams pas couverts (limitations Sellsy) :
- subscriptions, payments : pas de filtre date côté API
- progress_invoices : pas de GET du tout (déjà retiré)

## Côté Connection Airbyte

Une fois le manifest validé, dans la Connection :
- Sync mode : `Incremental Append + Deduped`
- Cursor field : `created`
- Primary key : `id`

## Test plan

1. Push cette branche → `make airbyte-push`
2. Builder → Test sur `companies` → vérifier la validation
3. Si OK → publish + upgrade source + tester avec un sync réel
4. Comparer le state avant/après (Airbyte stocke un cursor dans state)
5. Étape suivante (start_time_option) ou rollback selon résultat
