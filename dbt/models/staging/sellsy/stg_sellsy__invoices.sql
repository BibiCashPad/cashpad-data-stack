{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : factures Sellsy V2
--
-- 1:1 avec raw.invoices, mais :
--   - Renommage / standardisation (snake_case, suffixes _id explicites)
--   - Cast des dates et des montants (Sellsy renvoie les amounts en string !)
--   - Extraction des FK depuis les blocs JSON (parent, related, owner)
--   - Conservation des JSON complexes (_embed, taxes) pour les marts
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'invoices') }}
),

renamed as (
    select
        -- ──── Identification ────────────────────────────────────────────
        id::bigint                                          as invoice_id,
        number                                              as invoice_number,
        status,
        subject,
        note,
        currency,
        analytic_code,
        company_name,
        company_reference,
        order_reference,

        -- ──── Dates (Sellsy renvoie tout en varchar) ────────────────────
        created::timestamptz                                as created_at,
        nullif(date, '')::date                              as invoice_date,
        nullif(due_date, '')::date                          as due_date,
        nullif(shipping_date, '')::date                     as shipping_date,

        -- ──── Montants (Sellsy renvoie en string, on cast en numeric) ──
        (amounts ->> 'total_excl_tax')::numeric(18,4)       as total_excl_tax,
        (amounts ->> 'total_incl_tax')::numeric(18,4)       as total_incl_tax,
        (amounts ->> 'total_raw_excl_tax')::numeric(18,4)   as total_raw_excl_tax,
        (amounts ->> 'total_after_discount_excl_tax')::numeric(18,4)
                                                            as total_after_discount_excl_tax,
        (amounts ->> 'total_remaining_due_incl_tax')::numeric(18,4)
                                                            as total_remaining_due_incl_tax,
        (amounts ->> 'total_shipping')::numeric(18,4)       as total_shipping,
        (amounts ->> 'total_packaging')::numeric(18,4)      as total_packaging,
        (amounts ->> 'total_primes_incl_tax')::numeric(18,4) as total_primes_incl_tax,

        -- ──── Parent workflow (devis → BDC → BDL → facture) ────────────
        (parent ->> 'id')::bigint                           as parent_doc_id,
        parent ->> 'type'                                   as parent_doc_type,

        -- ──── Client lié (extraction depuis related[]) ─────────────────
        -- related = [{id, type}, ...] — on prend le 1er company OU individual
        (
            select (r ->> 'id')::bigint
            from jsonb_array_elements(related) as r
            where r ->> 'type' in ('company', 'individual')
            limit 1
        )                                                   as client_id,
        (
            select r ->> 'type'
            from jsonb_array_elements(related) as r
            where r ->> 'type' in ('company', 'individual')
            limit 1
        )                                                   as client_type,
        -- Contact lié à la facture (si présent dans related)
        (
            select (r ->> 'id')::bigint
            from jsonb_array_elements(related) as r
            where r ->> 'type' = 'contact'
            limit 1
        )                                                   as contact_id_from_related,

        -- ──── Owner (staff Sellsy responsable) ─────────────────────────
        (owner ->> 'id')::bigint                            as owner_staff_id,

        -- ──── FK vers autres tables / référentiels ─────────────────────
        contact_id::bigint                                  as contact_id,
        fiscal_year_id::bigint                              as fiscal_year_id,
        layout_id::bigint                                   as layout_id,
        eco_tax_id::bigint                                  as eco_tax_id,
        check_label_id::bigint                              as check_label_id,
        bank_account_id::bigint                             as bank_account_id,
        subscription_id::bigint                             as subscription_id,
        rate_category_id::bigint                            as rate_category_id,
        assigned_staff_id::bigint                           as assigned_staff_id,
        issuer_address_id::bigint                           as issuer_address_id,
        delivery_address_id::bigint                         as delivery_address_id,
        invoicing_address_id::bigint                        as invoicing_address_id,
        file_id::bigint                                     as file_id,

        -- ──── Flags ────────────────────────────────────────────────────
        is_deposit,
        is_progress_invoice,
        is_sent_to_accounting,

        -- ──── JSON conservés pour les marts ────────────────────────────
        related                                             as related_raw,
        taxes                                               as taxes_raw,
        payment_method_ids                                  as payment_method_ids_raw,
        _embed                                              as embed_raw,

        -- ──── Métadonnées Airbyte ──────────────────────────────────────
        _airbyte_extracted_at                               as ingested_at

    from source
)

select * from renamed
