{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : paiements liés aux factures Sellsy V2
--
-- ⚠️ Limitation actuelle : Airbyte n'a typé que `id` et `invoice_id` dans la
-- table raw (le stream invoice_custom_fields a un schéma minimaliste).
--
-- Les autres champs (status, amount, paid_at) ne sont pas accessibles ici.
-- Pour le MVP, on se contente de l'existence d'un paiement pour détecter
-- les factures "réglées" (par count > 0 sur invoice_id).
--
-- TODO : enrichir le YAML du connecteur pour typer status/amount/paid_at,
-- relancer un sync, et compléter ce staging.
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'invoice_payments') }}
),

renamed as (
    select
        id::bigint                                          as payment_id,
        invoice_id::bigint                                  as invoice_id,
        _airbyte_extracted_at                               as ingested_at
    from source
)

select * from renamed
