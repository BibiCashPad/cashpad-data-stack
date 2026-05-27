-- Modèle de démo : confirme que dbt est bien connecté à Postgres.
select
    1 as id,
    'hello cashpad' as message,
    current_timestamp as built_at
