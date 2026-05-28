{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : particuliers (clients B2C) Sellsy V2
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'individuals') }}
),

renamed as (
    select
        -- ──── Identification ────────────────────────────────────────────
        id::bigint                                          as individual_id,
        type                                                as individual_type,
        civility,
        first_name,
        last_name,
        reference,
        auxiliary_code,

        -- ──── Contact ──────────────────────────────────────────────────
        email,
        phone_number,
        mobile_number,
        website,
        note,

        -- ──── Dates ────────────────────────────────────────────────────
        nullif(created, '')::timestamptz                    as created_at,
        nullif(updated_at, '')::timestamptz                 as updated_at,

        -- ──── Owner ────────────────────────────────────────────────────
        (owner ->> 'id')::bigint                            as owner_staff_id,

        -- ──── FK ───────────────────────────────────────────────────────
        main_contact_id::bigint                             as main_contact_id,
        invoicing_contact_id::bigint                        as invoicing_contact_id,
        delivery_address_id::bigint                         as delivery_address_id,
        invoicing_address_id::bigint                        as invoicing_address_id,
        rate_category_id::bigint                            as rate_category_id,
        accounting_code_id::bigint                          as accounting_code_id,
        accounting_purchase_code_id::bigint                 as accounting_purchase_code_id,

        -- ──── Flags ────────────────────────────────────────────────────
        is_archived,

        -- ──── JSON conservés ───────────────────────────────────────────
        social                                              as social_raw,
        rgpd_consent                                        as rgpd_consent_raw,

        -- ──── Métadonnées Airbyte ──────────────────────────────────────
        _airbyte_extracted_at                               as ingested_at

    from source
)

select * from renamed
