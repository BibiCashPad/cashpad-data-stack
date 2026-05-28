.PHONY: help up down logs ps airbyte-push airbyte-status

# Default target — show help
help:
	@echo "Targets:"
	@echo "  up               Start the docker compose stack (Postgres + dbt + Dagster + Metabase)"
	@echo "  down             Stop the stack (keeps volumes)"
	@echo "  logs             Tail logs of all services"
	@echo "  ps               Show status of all services"
	@echo "  airbyte-push     Push airbyte/sellsy_v2.yaml to the local Airbyte (updates draft)"
	@echo "  airbyte-pull     Pull remote manifest from Airbyte to airbyte/sellsy_v2.yaml"
	@echo "  airbyte-status   Show abctl cluster status"

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f --tail=100

ps:
	docker compose ps

airbyte-push:
	@./scripts/airbyte_push.py

airbyte-pull:
	@./scripts/airbyte_pull.py

airbyte-status:
	@abctl local status
