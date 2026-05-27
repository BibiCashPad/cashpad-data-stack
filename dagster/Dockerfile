FROM python:3.11-slim

RUN pip install --no-cache-dir \
    dagster==1.8.13 \
    dagster-webserver==1.8.13 \
    dagster-postgres==0.24.13 \
    dagster-dbt==0.24.13 \
    dbt-core==1.8.7 \
    dbt-postgres==1.8.2

WORKDIR /opt/dagster/app
