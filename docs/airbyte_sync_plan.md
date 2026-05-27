# Airbyte sync — plan du script

> Outillage CLI pour synchroniser le YAML d'un connecteur custom Airbyte depuis le repo Git.
> Mis à jour : 2026-05-27.

## Objectif

Éliminer le copier-coller manuel entre `airbyte/sellsy_v2.yaml` (source de vérité Git) et le Connector Builder d'Airbyte. Un `make airbyte-push` doit suffire.

## Périmètre — V1

**Inclus :**
- Push d'un manifest YAML local vers un **Connector Builder Project** existant dans Airbyte
- Auth via Basic Auth (credentials `abctl local credentials`)
- Création automatique d'une nouvelle version publiée à chaque push
- Lecture de la config depuis `.env` (cohérent avec le reste du repo)

**Exclus (V2+) :**
- Pull (Airbyte → Git) — pas besoin tant que Git est la source de vérité
- Gestion des Sources, Destinations, Connections (encore manuel dans l'UI)
- Création de Connector Builder Project from scratch (on suppose qu'il existe déjà)
- Multi-connecteurs (V1 ne push qu'un connecteur à la fois)
- GitHub Action / CI (sera fait quand Airbyte sera déployé sur le VPS)

## Architecture

### Langage
Python 3.11+ avec stdlib + `requests` + `pyyaml` (deux deps légères, install une fois).

### Layout
```
scripts/
├── airbyte_push.py         # le script
└── README.md               # doc d'usage
Makefile                    # target `make airbyte-push`
.env.example                # ajout des variables Airbyte
```

### Variables d'environnement
| Var | Exemple | Source |
|---|---|---|
| `AIRBYTE_API_URL` | `http://localhost:8000/api` | abctl |
| `AIRBYTE_USERNAME` | `airbyte` | `abctl local credentials` |
| `AIRBYTE_PASSWORD` | `…` | `abctl local credentials` |
| `AIRBYTE_WORKSPACE_ID` | `…uuid…` | `abctl local credentials` |
| `AIRBYTE_CONNECTOR_NAME` | `Sellsy V2` | nom du Connector Builder Project |
| `AIRBYTE_MANIFEST_PATH` | `airbyte/sellsy_v2.yaml` | chemin relatif au manifest |

## Workflow utilisateur

```bash
# 1. Récupérer les credentials Airbyte (une seule fois)
abctl local credentials
# colle email/password/workspace_id dans .env

# 2. Éditer le manifest
vim airbyte/sellsy_v2.yaml

# 3. Push vers Airbyte
make airbyte-push

# 4. Aller voir dans l'UI (optionnel)
open http://localhost:8000
```

Sortie attendue du `make airbyte-push` :
```
→ Loading manifest from airbyte/sellsy_v2.yaml
→ Finding Connector Builder Project 'Sellsy V2' in workspace abc-123…
  Found project xyz-789, current version 0.4.0
→ Updating draft manifest…
  Draft updated
→ Publishing new version…
  Published version 0.5.0
✓ Done in 2.4s
```

## Endpoints Airbyte utilisés

Documentation officielle : https://reference.airbyte.com/

### 1. Lister les Connector Builder Projects du workspace
```
POST /api/v1/connector_builder_projects/list
Body: {"workspaceId": "<uuid>"}
```
Réponse : liste des projects avec leur `builderProjectId` et `name`. On filtre par nom.

### 2. Récupérer le project actuel
```
POST /api/v1/connector_builder_projects/get_with_manifest
Body: {"workspaceId": "<uuid>", "builderProjectId": "<uuid>"}
```
Réponse : `manifest` (JSON), `activeDeclarativeManifestVersion` (int), etc.

### 3. Update du draft manifest
```
POST /api/v1/connector_builder_projects/update
Body: {
  "workspaceId": "<uuid>",
  "builderProjectId": "<uuid>",
  "builderProject": {
    "name": "Sellsy V2",
    "draftManifest": <yaml-parsed-en-json>
  }
}
```
Met à jour le draft mais ne publie pas.

### 4. Publier une nouvelle version
```
POST /api/v1/connector_builder_projects/publish
Body: {
  "workspaceId": "<uuid>",
  "builderProjectId": "<uuid>",
  "name": "Sellsy V2",
  "initialDeclarativeManifest": {
    "manifest": <yaml-parsed-en-json>,
    "version": <next-version-int>,
    "description": "Synced from Git (commit <sha>)"
  }
}
```
Crée une nouvelle version active. `version` doit être strictement supérieure à la version active actuelle.

## Logique du script

```
1. Charger .env (variables d'env)
2. Charger et parser le YAML local en dict Python
3. Authentification (Basic Auth header préparé)
4. Lister les projects du workspace → filtrer par AIRBYTE_CONNECTOR_NAME
   - Si pas trouvé : abort avec message clair ("Crée d'abord le project dans le Builder UI")
5. Récupérer l'état actuel du project (manifest + activeVersion)
6. Comparer le YAML local au manifest distant
   - Si identique : skip update, log "no changes"
7. Update draft + publish (incremente version de 1)
8. Récupérer le SHA Git courant et l'inclure dans `description`
9. Afficher un récap : version publiée, durée
```

## Idempotence et erreurs

| Cas | Comportement |
|---|---|
| Manifest identique au remote | Skip, exit 0, log "no changes" |
| Project Builder pas trouvé | Exit 1 avec message d'aide |
| Auth fail (401) | Exit 1, suggère `abctl local credentials` |
| Airbyte injoignable | Exit 1, suggère `abctl local status` |
| YAML invalide | Exit 1, montre l'erreur YAML |
| Réponse API inattendue | Exit 1, dump la réponse pour debug |

## Évolutions futures

### V1.5 — Pull (Airbyte → Git)
Inversement, après un test rapide dans le Builder UI, on veut récupérer le YAML mis à jour dans le repo :
```bash
make airbyte-pull
```
Utile pour les premiers itérations exploratoires où le Builder UI est plus rapide qu'éditer le YAML.

### V2 — Gestion des Sources / Connections
Le script ne gère que les connecteurs. Pour pouvoir cloner l'environnement Airbyte complet (sources, destinations, connections) :
- `airbyte/sources/sellsy_prod.json`
- `airbyte/connections/sellsy_to_warehouse.json`
- Un seul `make airbyte-apply` qui réconcilie tout

Probablement à ce stade on switche sur **Terraform Airbyte provider**, plus mature que des scripts maison.

### V3 — CI/CD
GitHub Action déclenchée sur push de `main` qui call l'API Airbyte du VPS prod. Suppose Airbyte exposé publiquement (avec HTTPS + secrets stockés en GitHub Secrets).

## Risques

| Risque | Mitigation |
|---|---|
| API Airbyte non stable (`/connector_builder_projects/*` peu doc) | Test contre la version locale d'abord, pin la version d'Airbyte en cas de breakage |
| Le push écrase un draft non publié dans l'UI | Le script publie systématiquement, donc le draft devient la version active. Pas de perte sauf si quelqu'un édite dans l'UI au même moment |
| Versions qui s'accumulent dans Airbyte | Pas critique mais à nettoyer manuellement de temps en temps (l'UI permet de supprimer les anciennes) |

## Hygiène d'usage

- Ne jamais éditer le YAML dans le Builder UI **sans** ensuite faire un pull (V1.5) ou refaire la modif côté Git. Sinon Git diverge du remote.
- Toujours commit le YAML **avant** de `make airbyte-push` (le commit SHA va dans la description de la version Airbyte).
- Tests en local (`Test` dans le Builder UI) → push une fois validé.
