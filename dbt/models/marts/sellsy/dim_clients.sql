{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Dimension : clients Cashpad
--
-- UNION ALL des companies (B2B) et des individuals (B2C). On utilise une
-- clé composite (client_id, client_type) comme natural key. Les attributs
-- spécifiques à un seul type sont à NULL pour l'autre.
--
-- Utilisé par fct_invoices via JOIN sur (client_id, client_type) extraits
-- depuis `invoice.related[]`.
-- ──────────────────────────────────────────────────────────────────────────

with companies as (
    select
        company_id                          as client_id,
        'company'                           as client_type,
        company_name                        as client_name,
        email,
        phone_number,
        mobile_number,
        website,

        -- B2B specifics
        siren,
        siret,
        vat_number,
        ape_naf_code,
        legal_company_type                  as legal_form,
        business_segment_label              as business_segment,

        -- B2C specifics (NULL pour companies)
        null::varchar                       as civility,
        null::varchar                       as first_name,
        null::varchar                       as last_name,

        -- Communs
        owner_staff_id,
        created_at,
        is_archived,

        reference,
        note,
        ingested_at

    from {{ ref('stg_sellsy__companies') }}
),

individuals as (
    select
        individual_id                       as client_id,
        'individual'                        as client_type,
        -- Nom composé pour les particuliers
        trim(
            coalesce(civility || ' ', '')
            || coalesce(first_name || ' ', '')
            || coalesce(last_name, '')
        )                                   as client_name,
        email,
        phone_number,
        mobile_number,
        website,

        -- B2B specifics (NULL pour individuals)
        null::varchar                       as siren,
        null::varchar                       as siret,
        null::varchar                       as vat_number,
        null::varchar                       as ape_naf_code,
        null::varchar                       as legal_form,
        null::varchar                       as business_segment,

        -- B2C specifics
        civility,
        first_name,
        last_name,

        -- Communs
        owner_staff_id,
        created_at,
        is_archived,

        reference,
        note,
        ingested_at

    from {{ ref('stg_sellsy__individuals') }}
)

select * from companies
union all
select * from individuals
