FROM python:3.11-slim

RUN pip install --no-cache-dir \
    dbt-core==1.8.7 \
    dbt-postgres==1.8.2

WORKDIR /workdir

# Le projet dbt est monté en volume — pas de COPY ici.
CMD ["dbt", "--help"]
