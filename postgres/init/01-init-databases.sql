-- Exécuté une seule fois, au premier démarrage du container postgres.
-- Crée les bases utilisées par les autres services.

CREATE DATABASE dagster;
CREATE DATABASE metabase;

-- Schémas dans la base warehouse (raw = données Airbyte, analytics = sorties dbt)
\connect warehouse
CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS analytics;
