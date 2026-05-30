{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : valeurs des Custom Fields Sellsy (format long)
--
-- Source : embed `cf.X` sur les URLs parents (companies, invoices,
-- credit_notes, orders, deliveries, estimates, deposit_invoices, opportunities).
-- Les valeurs sont stockées dans <parent>._embed.custom_fields[] (array JSON).
--
-- Format de sortie (1 ligne par parent × CF) :
--   parent_type      | invoice / credit_note / order / delivery / estimate /
--                    | deposit_invoice / opportunity / company
--   parent_id        | bigint - id du doc parent
--   cf_id            | bigint - id du custom field (cf 71517 etc.)
--   cf_code          | text   - code machine du CF (ex "idsales", "metier")
--   cf_name          | text   - nom humain du CF
--   cf_type          | text   - select / checkbox / numeric / date / text
--   cf_value         | jsonb  - value brut (null pour select/checkbox, sinon scalaire)
--   cf_selected_labels | array - labels où items[].checked = true (pour select/checkbox)
--
-- Notes :
--   - pour les types select/checkbox, la "valeur" est l'array des items
--     où `checked: true`. On expose ces labels dans cf_selected_labels.
--   - pour les types numeric/date/text, la valeur est dans cf_value.
--   - Remplace les 5 streams `*_custom_fields` (Sprint 7g) qui faisaient des
--     N+1 calls et qu'on a supprimés du manifest le 2026-05-30.
-- ──────────────────────────────────────────────────────────────────────────

with sources as (
    -- Union all parents that have CF embeds. Each row carries the parent's
    -- _embed.custom_fields JSONB array plus its identity.
    select
        'invoice'         as parent_type,
        id::bigint        as parent_id,
        _embed -> 'custom_fields' as cfs,
        _airbyte_extracted_at as ingested_at
    from {{ source('sellsy', 'invoices') }}
    where _embed ? 'custom_fields'

    union all select 'credit_note', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'credit_notes') }}
    where _embed ? 'custom_fields'

    union all select 'order', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'orders') }}
    where _embed ? 'custom_fields'

    union all select 'delivery', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'deliveries') }}
    where _embed ? 'custom_fields'

    union all select 'estimate', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'estimates') }}
    where _embed ? 'custom_fields'

    union all select 'deposit_invoice', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'deposit_invoices') }}
    where _embed ? 'custom_fields'

    union all select 'opportunity', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'opportunities') }}
    where _embed ? 'custom_fields'

    union all select 'company', id::bigint,
        _embed -> 'custom_fields', _airbyte_extracted_at
    from {{ source('sellsy', 'companies') }}
    where _embed ? 'custom_fields'
),

unnested as (
    select
        s.parent_type,
        s.parent_id,
        (cf.value ->> 'id')::bigint              as cf_id,
        cf.value ->> 'code'                      as cf_code,
        cf.value ->> 'name'                      as cf_name,
        cf.value ->> 'type'                      as cf_type,
        cf.value -> 'value'                      as cf_value,

        -- Pour select/checkbox, extraire les labels où checked=true
        case
            when (cf.value ->> 'type') in ('select', 'checkbox')
            then (
                select array_agg(item.value ->> 'label')
                from jsonb_array_elements(cf.value -> 'parameters' -> 'items') as item
                where (item.value ->> 'checked')::boolean = true
            )
            else null
        end                                       as cf_selected_labels,

        s.ingested_at
    from sources s
    cross join lateral jsonb_array_elements(s.cfs) as cf(value)
)

select * from unnested
