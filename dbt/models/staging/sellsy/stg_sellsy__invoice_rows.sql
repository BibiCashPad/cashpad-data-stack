{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : lignes de factures (UNNEST de invoice_details.rows)
--
-- 1 ligne par row de facture. Champs déduits du schéma Sellsy (à ajuster
-- au runtime quand on aura les vraies données — Sellsy peut renvoyer des
-- structures de rows différentes selon le type).
--
-- Structure typique d'une row Sellsy :
--   {
--     "type": "once" | "item" | "ecotax" | ...
--     "name": "...",
--     "qty": "1",
--     "unitAmount": "100.00",
--     "amount": "100.00",  (total HT de la ligne)
--     "taxid": 12,
--     "taxrate": "20.00",
--     "item": {"id": ..., "type": "item"},
--     "rank": 0,
--     ...
--   }
-- ──────────────────────────────────────────────────────────────────────────

with details as (
    select invoice_id, rows_raw, ingested_at
    from {{ ref('stg_sellsy__invoice_details') }}
    where rows_raw is not null
),

exploded as (
    select
        d.invoice_id,
        row_number() over (partition by d.invoice_id order by (r ->> 'rank')::int nulls last) as row_position,
        r as row_data,
        d.ingested_at
    from details d
    cross join lateral jsonb_array_elements(d.rows_raw) as r
),

renamed as (
    select
        invoice_id,
        row_position,

        -- ──── Type de ligne ─────────────────────────────────────────────
        row_data ->> 'type'                                  as row_type,
        row_data ->> 'name'                                  as row_label,
        nullif(row_data ->> 'reference', '')                 as row_reference,

        -- ──── Quantité / Montants ───────────────────────────────────────
        nullif(row_data ->> 'qty', '')::numeric(18,4)        as quantity,
        nullif(row_data ->> 'unitAmount', '')::numeric(18,4) as unit_amount,
        nullif(row_data ->> 'amount', '')::numeric(18,4)     as line_total_excl_tax,
        nullif(row_data ->> 'amountTaxesInc', '')::numeric(18,4)
                                                             as line_total_incl_tax,

        -- ──── Fiscalité ─────────────────────────────────────────────────
        nullif(row_data ->> 'taxid', '')::bigint             as tax_id,
        nullif(row_data ->> 'taxrate', '')::numeric(8,4)     as tax_rate,

        -- ──── FK vers le catalogue (si la ligne est liée à un item) ────
        nullif(row_data -> 'item' ->> 'id', '')::bigint      as item_id,
        row_data -> 'item' ->> 'type'                        as item_type,

        -- ──── Comptabilité ──────────────────────────────────────────────
        nullif(row_data ->> 'accountingCode', '')::bigint    as accounting_code_id,
        nullif(row_data ->> 'analyticsCode', '')             as analytics_code,

        -- ──── Référentiel unité ─────────────────────────────────────────
        nullif(row_data ->> 'unitid', '')::bigint            as unit_id,

        -- ──── JSON pour drilldown ──────────────────────────────────────
        row_data                                             as raw,
        ingested_at

    from exploded
)

select * from renamed
