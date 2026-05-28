{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : détails d'invoice (essentiellement pour les `rows`)
--
-- L'endpoint /v2/invoices/{id} retourne quasiment les mêmes champs que
-- /v2/invoices/search, MAIS en plus le champ `rows` (les lignes de la
-- facture). C'est ce qu'on isole ici. Le reste est déjà dans
-- stg_sellsy__invoices.
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'invoice_details') }}
),

renamed as (
    select
        id::bigint                              as invoice_id,
        rows                                    as rows_raw,         -- array de lignes
        _airbyte_extracted_at                   as ingested_at
    from source
)

select * from renamed
