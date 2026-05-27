"""Définitions Dagster — expose les modèles dbt comme assets."""
import os
from pathlib import Path

from dagster import Definitions
from dagster_dbt import DbtCliResource, DbtProject, dbt_assets

DBT_PROJECT_DIR = Path(os.environ.get("DBT_PROJECT_DIR", "/opt/dagster/dbt"))
DBT_PROFILES_DIR = Path(os.environ.get("DBT_PROFILES_DIR", "/opt/dagster/dbt"))

dbt_project = DbtProject(project_dir=DBT_PROJECT_DIR)
# Génère target/manifest.json si absent (en dev). En prod, on précompile au build.
dbt_project.prepare_if_dev()


@dbt_assets(manifest=dbt_project.manifest_path)
def cashpad_dbt_assets(context, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()


defs = Definitions(
    assets=[cashpad_dbt_assets],
    resources={
        "dbt": DbtCliResource(
            project_dir=dbt_project,
            profiles_dir=str(DBT_PROFILES_DIR),
        )
    },
)
