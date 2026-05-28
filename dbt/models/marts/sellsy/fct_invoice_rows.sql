{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Faits : lignes de factures (produits / services)
--
-- 1 ligne par row de facture. Enrichi avec :
--   - Contexte facture (depuis fct_invoices : date, status, client, etc.)
--   - Item du catalogue (depuis dim_items : nom propre, catégorie)
--
-- Utile pour :
--   - CA par produit / catégorie
--   - Top produits vendus
--   - Marge par produit (rev - purchase_amount × qty)
-- ──────────────────────────────────────────────────────────────────────────

with rows as (
    select * from {{ ref('stg_sellsy__invoice_rows') }}
),

invoices as (
    select
        invoice_id,
        invoice_number,
        invoice_date,
        status                  as invoice_status,
        currency,
        client_id,
        client_type,
        owner_staff_id,
        is_paid
    from {{ ref('fct_invoices') }}
),

items as (
    select
        item_id,
        item_type                as catalog_item_type,
        item_name                as catalog_item_name,
        category_id              as catalog_category_id,
        category_name            as catalog_category_name,
        purchase_amount,
        analytics_code           as item_analytics_code
    from {{ ref('dim_items') }}
),

final as (
    select
        -- ──── Identification de la ligne ────────────────────────────────
        r.invoice_id,
        r.row_position,
        r.row_type,
        r.row_label,
        r.row_reference,

        -- ──── Quantité / montants ───────────────────────────────────────
        r.quantity,
        r.unit_amount,
        r.line_total_excl_tax,
        r.line_total_incl_tax,
        r.tax_id,
        r.tax_rate,

        -- ──── Item lié (si présent) ─────────────────────────────────────
        r.item_id,
        r.item_type                                          as row_item_type,
        coalesce(i.catalog_item_name, r.row_label)           as item_name,    -- fallback sur le label si pas mappé
        i.catalog_item_type,
        i.catalog_category_id,
        i.catalog_category_name,
        i.purchase_amount,

        -- ──── Marge ─────────────────────────────────────────────────────
        case
            when r.quantity is not null
                and i.purchase_amount is not null
                and r.line_total_excl_tax is not null
            then r.line_total_excl_tax - (i.purchase_amount * r.quantity)
            else null
        end                                                  as gross_margin_excl_tax,

        -- ──── Comptabilité ──────────────────────────────────────────────
        r.accounting_code_id,
        coalesce(r.analytics_code, i.item_analytics_code)    as analytics_code,
        r.unit_id,

        -- ──── Contexte facture (denormalisé pour les dashboards) ───────
        inv.invoice_number,
        inv.invoice_date,
        inv.invoice_status,
        inv.currency,
        inv.client_id,
        inv.client_type,
        inv.owner_staff_id,
        inv.is_paid                                          as invoice_is_paid,

        r.ingested_at

    from rows r
    left join invoices inv on inv.invoice_id = r.invoice_id
    left join items i on i.item_id = r.item_id
)

select * from final
