# Stack data open source — Architecture complète

## Vue d'ensemble

Cette stack remplace un outil monolithique type MyReport par un ensemble de briques open source, chacune spécialisée dans une étape de la chaîne data : extraction, chargement, transformation, modélisation, orchestration et visualisation.

Tout est gratuit (licences open source), self-hosted sur un VPS OVH Linux, et développé depuis un Mac.

---

## Composants

### Airbyte — Extract & Load

- **Rôle** : se connecte aux sources de données (APIs, bases SQL, fichiers CSV, Google Sheets, SaaS…) et réplique les données brutes dans PostgreSQL.
- **Licence** : open source (Elastic License 2.0). Certains connecteurs premium sont payants — les connecteurs standards (PostgreSQL, MySQL, REST API, fichiers, Google Sheets) restent gratuits.
- **Interface** : interface web pour configurer et monitorer les connecteurs.
- **Déploiement** : via `abctl` (CLI officiel Airbyte qui provisionne un cluster kind/k8s single-node). Le legacy docker-compose n'est plus maintenu.

### PostgreSQL — Base de données centrale

- **Rôle** : stocke les données brutes (chargées par Airbyte) et les données transformées (produites par dbt). Sert de source unique pour Metabase.
- **Licence** : 100% open source (PostgreSQL License), aucune limitation.
- **Pourquoi PostgreSQL** : robuste, éprouvé, excellente compatibilité avec dbt et Metabase, large communauté.

### dbt Core — Modélisation & Transformation

- **Rôle** : le "T" de l'ETL. Transforme les données brutes en modèles analytiques propres via des fichiers SQL versionnés avec Git. Gère la modélisation (relations entre tables), les tests de qualité, et la documentation.
- **Licence** : 100% open source (Apache 2.0).
- **Fonctionnement** : projet de fichiers SQL + YAML. On développe sur Mac, on déploie sur le VPS via Git. Seul le fichier `profiles.yml` change entre dev et prod (connexion à la base).
- **Langage** : SQL + Jinja (templating).

### Dagster — Orchestrateur

- **Rôle** : planifie et enchaîne les étapes du pipeline — d'abord Airbyte extrait, puis dbt transforme — dans le bon ordre, avec gestion des erreurs, des dépendances et des retries.
- **Licence** : open source (Apache 2.0). La version payante (Dagster Cloud) n'est pas nécessaire en self-hosted.
- **Interface** : interface web (Dagit) pour monitorer les pipelines, voir les logs, relancer des jobs.
- **Intégrations natives** : Airbyte et dbt sont supportés nativement via des bibliothèques dédiées (`dagster-airbyte`, `dagster-dbt`).

### Metabase — Requêtage & Dataviz

- **Rôle** : couche de visualisation et d'exploration. Permet de créer des dashboards, des requêtes visuelles (sans SQL obligatoire), et des rapports.
- **Licence** : open source (AGPL). La version payante (Pro/Enterprise) ajoute le SSO SAML, le row-level security, l'embedding avancé — rarement nécessaire.
- **Interface** : interface web intuitive, accessible aux utilisateurs non techniques.

---

## Flux de données

```
Sources (APIs, bases, fichiers, SaaS)
        │
        ▼
   ┌─────────┐
   │ Airbyte │  ← Extract & Load
   └────┬────┘
        │ données brutes
        ▼
  ┌────────────┐
  │ PostgreSQL │  ← Stockage central
  └─────┬──────┘
        │
        ▼
  ┌──────────┐
  │ dbt Core │  ← Modélisation & Transform
  └─────┬────┘
        │ modèles analytiques (dans PostgreSQL)
        ▼
  ┌──────────┐
  │ Metabase │  ← Requêtage & Dataviz
  └──────────┘

  Dagster orchestre Airbyte → dbt selon un planning défini.
```

---

## Environnements

| | Mac (développement) | VPS OVH (production) |
|---|---|---|
| **dbt** | `dbt run` / `dbt test` contre une base locale ou de dev | Exécuté par Dagster contre la base de prod |
| **Airbyte** | Configuration et test des connecteurs en local | Synchro planifiée en continu |
| **Dagster** | Test des pipelines en local (`dagster dev`) | Tourne en daemon, planifie les jobs |
| **Metabase** | Optionnel en local | Accessible via navigateur pour les utilisateurs |
| **PostgreSQL** | Instance locale ou DuckDB pour le dev | Instance de production sur le VPS |

La synchronisation entre les deux environnements se fait via **Git** pour le code dbt et les définitions Dagster.

---

## Déploiement

Sur le VPS OVH :

- **Docker Compose** pour PostgreSQL, Dagster (daemon + webserver), Metabase
- **`abctl`** pour Airbyte (cluster kind autonome, géré par le CLI officiel)

Chaque service expose un port pour son interface web, idéalement derrière un reverse proxy (Nginx ou Traefik) avec HTTPS. Airbyte se connecte à PostgreSQL via le réseau Docker hôte (`host.docker.internal` en dev, IP du VPS en prod).

---

## Coûts

| Composant | Coût |
|---|---|
| Airbyte OSS | Gratuit (connecteurs standards) |
| PostgreSQL | Gratuit |
| dbt Core | Gratuit |
| Dagster OSS | Gratuit |
| Metabase OSS | Gratuit |
| **Infrastructure** | **Coût du VPS OVH uniquement** |

---

## Prochaines étapes

1. Provisionner le VPS et installer Docker
2. Déployer PostgreSQL
3. Déployer Airbyte et configurer les premiers connecteurs
4. Initialiser le projet dbt et écrire les premiers modèles
5. Configurer Dagster pour orchestrer Airbyte + dbt
6. Déployer Metabase et créer les premiers dashboards
