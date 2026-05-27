# Cashpad data stack

Stack data open source self-hosted : **PostgreSQL + dbt + Dagster + Metabase + Airbyte**.

- Architecture détaillée → [architecture-data-stack.md](architecture-data-stack.md)
- **Installation pas-à-pas → [INSTALL.md](INSTALL.md)**

## TL;DR

```bash
cp .env.example .env
docker compose up -d           # Postgres + Metabase + Dagster
brew tap airbytehq/tap && brew install abctl
abctl local install            # Airbyte (10-15 min au premier run)
```

## Interfaces

| Service        | URL                       |
|----------------|---------------------------|
| Metabase       | http://localhost:3000     |
| Dagster        | http://localhost:3001     |
| Airbyte        | http://localhost:8000     |
| PostgreSQL     | `localhost:5432` (`data` / `data`) |

## Structure du repo

```
.
├── architecture-data-stack.md   # vue d'ensemble + choix techniques
├── INSTALL.md                   # guide d'installation détaillé
├── docker-compose.yml           # Postgres + dbt + Dagster + Metabase
├── .env.example
├── postgres/init/               # SQL d'init (création des DBs)
├── dbt/                         # projet dbt + Dockerfile + profiles.yml
│   └── models/                  # modèles SQL
└── dagster/                     # code Dagster + Dockerfile
    ├── data_stack/              # module Python (Definitions)
    └── dagster_home/            # config runtime (dagster.yaml)
```
