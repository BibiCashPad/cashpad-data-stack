{{ config(materialized='view') }}

-- ──────────────────────────────────────────────────────────────────────────
-- Staging : catégories d'items du catalogue Sellsy (v1 API)
-- ──────────────────────────────────────────────────────────────────────────

with source as (
    select * from {{ source('sellsy', 'catalogue_categories') }}
),

renamed as (
    select
        id::bigint                              as category_id,
        name                                    as category_name,
        description                             as category_description,
        parentid::bigint                        as parent_category_id,
        rank::int                               as display_rank,
        nullif(logo, '')                        as logo_url,
        _airbyte_extracted_at                   as ingested_at
    from source
)

select * from renamed
