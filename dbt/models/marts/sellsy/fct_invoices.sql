{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Faits : factures Cashpad
--
-- Une ligne par facture, enrichie :
--   - Flags dérivés : is_paid, is_overdue, days_late
--   - Nombre de paiements liés (depuis invoice_payments)
--   - FK propres vers dim_clients via (client_id, client_type)
--
-- Champs gardés en passthrough depuis stg_sellsy__invoices pour ne pas
-- forcer le besoin de re-JOIN à chaque dashboard.
-- ──────────────────────────────────────────────────────────────────────────

with invoices as (
    select * from {{ ref('stg_sellsy__invoices') }}
),

payments_agg as (
    -- Compte le nombre de paiements liés par invoice.
    -- Quand le schéma sera enrichi (status, amount, paid_at), on pourra
    -- agréger plus finement ici (paiements confirmés, dernier paiement…).
    select
        invoice_id,
        count(*) as payment_count
    from {{ ref('stg_sellsy__invoice_payments') }}
    group by invoice_id
),

enriched as (
    select
        -- ──── Identification ────────────────────────────────────────────
        i.invoice_id,
        i.invoice_number,
        i.status,
        i.subject,
        i.currency,
        i.analytic_code,

        -- ──── Dates ────────────────────────────────────────────────────
        i.created_at,
        i.invoice_date,
        i.due_date,
        i.shipping_date,

        -- ──── Montants ─────────────────────────────────────────────────
        i.total_excl_tax,
        i.total_incl_tax,
        i.total_raw_excl_tax,
        i.total_after_discount_excl_tax,
        i.total_remaining_due_incl_tax,
        i.total_shipping,
        i.total_packaging,
        i.total_primes_incl_tax,

        -- ──── FK client (à joindre avec dim_clients) ───────────────────
        i.client_id,
        i.client_type,

        -- ──── FK workflow ──────────────────────────────────────────────
        i.parent_doc_id,
        i.parent_doc_type,

        -- ──── Owner ────────────────────────────────────────────────────
        i.owner_staff_id,

        -- ──── FK référentiels ──────────────────────────────────────────
        i.fiscal_year_id,
        i.rate_category_id,
        i.subscription_id,

        -- ──── Flags brutes ─────────────────────────────────────────────
        i.is_deposit,
        i.is_progress_invoice,
        i.is_sent_to_accounting,

        -- ──── Métriques paiements ──────────────────────────────────────
        coalesce(p.payment_count, 0)                        as payment_count,

        -- ──── Flags dérivés ────────────────────────────────────────────
        (coalesce(i.total_remaining_due_incl_tax, 0) = 0)   as is_paid,

        (
            i.due_date < current_date
            and coalesce(i.total_remaining_due_incl_tax, 0) > 0
            and i.status not in ('draft', 'cancelled')
        )                                                   as is_overdue,

        case
            when i.due_date < current_date
                and coalesce(i.total_remaining_due_incl_tax, 0) > 0
                and i.status not in ('draft', 'cancelled')
            then (current_date - i.due_date)
            else null
        end                                                 as days_late,

        (current_date - i.invoice_date)                     as days_since_invoiced,

        -- ──── JSON conservés pour drilldown ────────────────────────────
        i.related_raw,
        i.taxes_raw,
        i.embed_raw,
        i.ingested_at

    from invoices i
    left join payments_agg p on p.invoice_id = i.invoice_id
)

select * from enriched
