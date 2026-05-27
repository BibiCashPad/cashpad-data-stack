# scripts/

Outils CLI pour piloter la stack.

## `airbyte_push.py`

Push le manifest YAML d'un Connector Builder Project depuis le repo vers l'Airbyte local.

### Setup une fois

1. **Installer `uv`** (si pas déjà fait) — Python package manager moderne :
   ```bash
   brew install uv
   ```

2. **Créer une Application dans Airbyte** :
   - Ouvre http://localhost:8000
   - Settings (en bas à gauche) → **Applications** → **+ New Application**
   - Nom : `cashpad-sync` (ou ce que tu veux)
   - Note le **Client ID** et le **Client Secret** affichés

3. **Récupérer le Workspace ID** :
   - Toujours dans Settings → **Workspace** → l'ID apparaît dans l'URL ou la page settings
   - Alternative : `abctl local credentials` peut l'afficher

4. **Renseigner `.env`** à la racine du repo :
   ```ini
   AIRBYTE_API_URL=http://localhost:8000/api
   AIRBYTE_WORKSPACE_ID=<uuid>
   AIRBYTE_CLIENT_ID=<de l'Application>
   AIRBYTE_CLIENT_SECRET=<de l'Application>
   AIRBYTE_CONNECTOR_NAME=Sellsy V2
   AIRBYTE_MANIFEST_PATH=airbyte/sellsy_v2.yaml
   ```

5. **Premier push** : le Connector Builder Project doit **déjà exister** dans Airbyte (créé une fois manuellement via Builder → New). Le script ne crée pas le project, il met à jour son manifest.

### Usage

```bash
make airbyte-push
# ou directement
./scripts/airbyte_push.py
```

### Workflow type

```bash
vim airbyte/sellsy_v2.yaml      # éditer le manifest
make airbyte-push               # publier la nouvelle version
# puis dans l'UI Airbyte : Sources → upgrade → Connection → refresh schema → sync
```

### Comportement

- **Idempotent** : si le YAML local est identique au manifest distant, le script skip et exit 0.
- **Versions** : la version Airbyte est incrémentée de 1 à chaque publish. Le SHA Git courant est inclus dans la description.
- **Sources existantes** : après publish, les Sources qui utilisent ce connecteur **ne sont pas auto-upgradées** — il faut cliquer "Upgrade" dans l'UI Source. Le script te le rappelle à la fin.

### Variables d'environnement

Toutes lues depuis `.env` (via `python-dotenv`) ou de l'environnement direct :

| Var | Obligatoire | Défaut |
|---|---|---|
| `AIRBYTE_API_URL` | non | `http://localhost:8000/api` |
| `AIRBYTE_WORKSPACE_ID` | **oui** | — |
| `AIRBYTE_CLIENT_ID` | oui (ou `AIRBYTE_API_TOKEN`) | — |
| `AIRBYTE_CLIENT_SECRET` | oui (ou `AIRBYTE_API_TOKEN`) | — |
| `AIRBYTE_API_TOKEN` | non (alternative à CLIENT_ID/SECRET) | — |
| `AIRBYTE_CONNECTOR_NAME` | non | `Sellsy V2` |
| `AIRBYTE_MANIFEST_PATH` | non | `airbyte/sellsy_v2.yaml` |

### Dépendances

Le script utilise **PEP 723 inline script dependencies** : les deps sont déclarées dans l'en-tête du fichier `.py` et résolues automatiquement par `uv` au moment de l'exécution. **Pas besoin de `pip install` ou de venv**.

Première exécution = `uv` télécharge `requests`, `pyyaml`, `python-dotenv` (cache local, instantané ensuite).
