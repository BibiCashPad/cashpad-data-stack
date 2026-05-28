{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : entreprises (clients B2B) Sellsy V2
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'companies') }}
),

renamed as (
    select
        -- ──── Identification ────────────────────────────────────────────
        id::bigint                                          as company_id,
        name                                                as company_name,
        type                                                as company_type,
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

        -- ──── Légal France (SIREN / SIRET / VAT) ───────────────────────
        legal_france ->> 'siren'                            as siren,
        legal_france ->> 'siret'                            as siret,
        legal_france ->> 'vat'                              as vat_number,
        legal_france ->> 'ape_naf_code'                     as ape_naf_code,
        legal_france ->> 'company_type'                     as legal_company_type,
        legal_france ->> 'rcs_immatriculation'              as rcs_immatriculation,

        -- ──── Segment commercial ──────────────────────────────────────
        (business_segment ->> 'id')::bigint                 as business_segment_id,
        business_segment ->> 'label'                        as business_segment_label,

        -- ──── Owner ────────────────────────────────────────────────────
        (owner ->> 'id')::bigint                            as owner_staff_id,

        -- ──── FK ───────────────────────────────────────────────────────
        main_contact_id::bigint                             as main_contact_id,
        dunning_contact_id::bigint                          as dunning_contact_id,
        invoicing_contact_id::bigint                        as invoicing_contact_id,
        delivery_address_id::bigint                         as delivery_address_id,
        invoicing_address_id::bigint                        as invoicing_address_id,
        rate_category_id::bigint                            as rate_category_id,
        accounting_code_id::bigint                          as accounting_code_id,
        accounting_purchase_code_id::bigint                 as accounting_purchase_code_id,

        -- ──── Flags ────────────────────────────────────────────────────
        is_archived,
        capital                                             as capital_raw,  -- string en source, à parser si besoin

        -- ──── JSON conservés ───────────────────────────────────────────
        social                                              as social_raw,
        rgpd_consent                                        as rgpd_consent_raw,
        _embed                                              as embed_raw,

        -- ──── Métadonnées Airbyte ──────────────────────────────────────
        _airbyte_extracted_at                               as ingested_at

    from source
)

select * from renamed
