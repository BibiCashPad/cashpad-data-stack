{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : services du catalogue Sellsy (v1 API)
--
-- Structure quasi identique à catalogue_items (juste `type = "service"`).
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'catalogue_services') }}
),

renamed as (
    select
        id::bigint                              as item_id,
        type                                    as item_type,
        name                                    as item_name,
        tradename                               as item_tradename,
        notes                                   as item_notes,

        unitAmount::numeric(18,4)               as unit_amount_excl_tax,
        purchaseAmount::numeric(18,4)           as purchase_amount,
        refAmount::numeric(18,4)                as reference_amount,
        taxid::bigint                           as tax_id,
        taxrate::numeric(8,4)                   as tax_rate,
        isTaxesFreeBool                         as is_taxes_free,
        unitAmountIsTaxesFree                   as unit_amount_is_taxes_free,

        categoryid::bigint                      as category_id,
        categoryName                            as category_name,

        unitid::bigint                          as unit_id,
        unit                                    as unit_label,
        qt::numeric(18,4)                       as standard_quantity,

        accountingCode::bigint                  as accounting_code_id,
        accountingCodeVal                       as accounting_code_label,
        accountingPurchaseCode::bigint          as accounting_purchase_code_id,
        accountingPurchaseCodeVal               as accounting_purchase_code_label,
        analyticsCode                           as analytics_code,

        actif                                   as is_active_legacy,
        isEnabled                               as is_enabled,
        inPos                                   as is_in_pos,
        useDeclination                          as has_declination,

        nullif(createdAt, '')::timestamptz      as created_at,
        nullif(updatedAt, '')::timestamptz      as updated_at,

        prices                                  as prices_raw,
        tags                                    as tags_raw,

        _airbyte_extracted_at                   as ingested_at

    from source
)

select * from renamed
