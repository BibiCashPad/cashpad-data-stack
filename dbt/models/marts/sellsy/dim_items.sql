{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Dimension : items du catalogue (produits + services)
--
-- UNION ALL de catalogue_items (produits) et catalogue_services (services).
-- categoryName est déjà inline dans la source v1 — pas besoin de jointure.
-- Natural key : item_id (les IDs sont uniques entre produits et services).
-- ──────────────────────────────────────────────────────────────────────────

with items as (
    select * from {{ ref('stg_sellsy__catalogue_items') }}
),

services as (
    select * from {{ ref('stg_sellsy__catalogue_services') }}
),

categories as (
    select category_id, parent_category_id
    from {{ ref('stg_sellsy__catalogue_categories') }}
),

combined as (
    select * from items
    union all
    select * from services
),

final as (
    select
        c.item_id,
        c.item_type,                              -- 'product' | 'service' | 'shipping' | 'packaging'
        c.item_name,
        c.item_tradename,
        c.item_notes,

        c.unit_amount_excl_tax,
        c.purchase_amount,
        c.reference_amount,
        c.tax_id,
        c.tax_rate,
        c.is_taxes_free,

        c.category_id,
        c.category_name,
        cat.parent_category_id,                   -- hiérarchie

        c.unit_id,
        c.unit_label,
        c.standard_quantity,

        c.accounting_code_id,
        c.accounting_code_label,
        c.accounting_purchase_code_id,
        c.accounting_purchase_code_label,
        c.analytics_code,

        c.is_enabled,
        c.is_in_pos,
        c.has_declination,

        c.created_at,
        c.updated_at,

        c.ingested_at

    from combined c
    left join categories cat on cat.category_id = c.category_id
)

select * from final
