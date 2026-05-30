{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : paiements Sellsy V2
--
-- Source : raw.payments (POST /v2/payments/search).
-- Contient tous les paiements de la base, avec le lien vers les documents
-- liés (invoices, credit_notes, orders, estimates) via related_objects[].
--
-- C'est la source de vérité unique des paiements depuis qu'on a supprimé
-- le stream invoice_payments (qui faisait des N+1 calls redondants — cf.
-- audit doublons du 2026-05-30).
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'payments') }}
),

renamed as (
    select
        id::bigint                              as payment_id,
        number                                  as payment_number,
        status                                  as payment_status,
        type                                    as payment_type,
        paid_at::timestamp                      as paid_at,
        currency,
        payment_method_id::bigint               as payment_method_id,
        note,

        -- Montants (JSONB)
        amounts,
        (amounts ->> 'total')::numeric          as amount_total,

        -- Tiers lié (company / individual)
        related,
        (related ->> 'id')::bigint              as related_third_id,
        related ->> 'type'                      as related_third_type,

        -- Documents liés (invoices, credit_notes, orders, estimates) — array JSONB
        related_objects,

        -- Banque
        bank_deposit,

        _airbyte_extracted_at                   as ingested_at
    from source
)

select * from renamed
