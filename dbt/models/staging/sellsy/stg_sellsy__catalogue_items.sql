{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : items du catalogue Sellsy (produits via v1 API)
--
-- L'API v1 retourne des champs camelCase (vs snake_case en v2). On
-- normalise en snake_case ici. On garde `categoryName` inline (utile car
-- pas de jointure nécessaire pour avoir le nom).
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'catalogue_items') }}
),

renamed as (
    select
        id::bigint                              as item_id,
        type                                    as item_type,
        name                                    as item_name,
        tradename                               as item_tradename,
        notes                                   as item_notes,

        -- ──── Prix et fiscalité ─────────────────────────────────────────
        unitAmount::numeric(18,4)               as unit_amount_excl_tax,
        purchaseAmount::numeric(18,4)           as purchase_amount,
        refAmount::numeric(18,4)                as reference_amount,
        taxid::bigint                           as tax_id,
        taxrate::numeric(8,4)                   as tax_rate,
        isTaxesFreeBool                         as is_taxes_free,
        unitAmountIsTaxesFree                   as unit_amount_is_taxes_free,

        -- ──── Catégorie (inline en v1) ──────────────────────────────────
        categoryid::bigint                      as category_id,
        categoryName                            as category_name,

        -- ──── Unité ─────────────────────────────────────────────────────
        unitid::bigint                          as unit_id,
        unit                                    as unit_label,
        qt::numeric(18,4)                       as standard_quantity,

        -- ──── Comptabilité ──────────────────────────────────────────────
        accountingCode::bigint                  as accounting_code_id,
        accountingCodeVal                       as accounting_code_label,
        accountingPurchaseCode::bigint          as accounting_purchase_code_id,
        accountingPurchaseCodeVal               as accounting_purchase_code_label,
        analyticsCode                           as analytics_code,

        -- ──── Statuts ───────────────────────────────────────────────────
        actif                                   as is_active_legacy,
        isEnabled                               as is_enabled,
        inPos                                   as is_in_pos,
        useDeclination                          as has_declination,

        -- ──── Dates ─────────────────────────────────────────────────────
        nullif(createdAt, '')::timestamptz      as created_at,
        nullif(updatedAt, '')::timestamptz      as updated_at,

        -- ──── JSON conservés ────────────────────────────────────────────
        prices                                  as prices_raw,
        tags                                    as tags_raw,

        _airbyte_extracted_at                   as ingested_at

    from source
)

select * from renamed
