{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : mapping paiements ↔ factures Sellsy
--
-- Source : stg_sellsy__payments (qui lit raw.payments).
-- On unnest payments.related_objects[] et on filtre type='invoice' pour
-- obtenir le mapping invoice_id ↔ payment_id.
--
-- Avant le 2026-05-30 ce staging lisait raw.invoice_payments (stream
-- N+1 qui faisait 50k calls par sync). Le stream a été supprimé après
-- audit des doublons : payments.related_objects[] contient déjà tout
-- ce qu'on a besoin (id du doc lié, montant, date du lien).
--
-- Bonus vs ancien staging : on expose maintenant le montant alloué au
-- doc lié, la date d'allocation, et le statut du paiement. Le mart
-- fct_invoices pourra agréger plus finement (paiements confirmés vs
-- en attente, dernier paiement reçu, etc.).
-- ──────────────────────────────────────────────────────────────────────────

with payments as (
    select * from {{ ref('stg_sellsy__payments') }}
),

links as (
    select
        p.payment_id,
        p.payment_status,
        p.paid_at,
        p.currency,

        -- Unnest related_objects[]
        (link.value ->> 'id')::bigint               as linked_doc_id,
        link.value ->> 'type'                       as linked_doc_type,
        (link.value ->> 'amount_linked')::numeric   as amount_linked,
        (link.value ->> 'linked_date')::date        as linked_date,

        p.ingested_at
    from payments p
    cross join lateral jsonb_array_elements(p.related_objects) as link(value)
    where p.related_objects is not null
),

invoice_payments as (
    select
        payment_id,
        linked_doc_id      as invoice_id,
        amount_linked,
        linked_date,
        paid_at,
        payment_status,
        currency,
        ingested_at
    from links
    where linked_doc_type = 'invoice'
)

select * from invoice_payments
