# Installation — environnement de développement

Guide pas-à-pas pour monter toute la stack data en local (Mac).

---

## 1. Prérequis

| Outil | Vérification | Installation |
|---|---|---|
| **Docker Desktop** | `docker --version` | https://www.docker.com/products/docker-desktop |
| **Docker Compose v2** | `docker compose version` | Inclus dans Docker Desktop |
| **Homebrew** | `brew --version` | https://brew.sh |
| **abctl** (Airbyte CLI) | `abctl version` | voir [§4](#4-airbyte-via-abctl) |

> Donner à Docker Desktop **au moins 8 Go de RAM et 4 CPUs** (Settings → Resources). Airbyte via kind est gourmand.

---

## 2. Cloner et configurer

```bash
git clone <repo> cashpad-data-stack
cd cashpad-data-stack

# Configuration — valeurs par défaut OK en dev
cp .env.example .env
```

Le fichier `.env` contient les identifiants Postgres locaux :

```ini
POSTGRES_USER=data
POSTGRES_PASSWORD=data
```

---

## 3. Démarrer la stack principale

```bash
docker compose up -d
```

Vérifie que tout est UP :

```bash
docker compose ps
```

Attendu : 4 containers `Up` (`data-postgres healthy`, `data-metabase`, `data-dagster-webserver`, `data-dagster-daemon`).

### Premier démarrage de Metabase

Metabase a besoin de ~1 min pour migrer sa base interne. Puis :

1. Ouvre **http://localhost:3000**
2. Crée le compte admin (email, mot de passe)
3. Quand on demande "Ajouter une base", choisir **Postgres** :
   - Host : `postgres`
   - Port : `5432`
   - Database : `warehouse`
   - Username / Password : `data` / `data`

### Premier démarrage de Dagster

1. Ouvre **http://localhost:3001**
2. L'asset `cashpad_dbt_assets` doit apparaître dans le graphe (généré à partir du projet dbt).
3. Pas de setup utilisateur — pas d'auth en dev.

---

## 4. Airbyte via `abctl`

Airbyte n'est **pas** dans le `docker-compose.yml` : on utilise `abctl`, qui déploie Airbyte dans un cluster Kubernetes léger (kind) à l'intérieur de Docker Desktop.

### Installer `abctl`

```bash
brew tap airbytehq/tap
brew install abctl
abctl version    # vérifie
```

> Alternative sans brew : `curl -LsfS https://get.airbyte.com | bash -`

### Lancer Airbyte

```bash
abctl local install
```

Premier `install` = **10-15 min** (pull des images k8s + Airbyte). Les fois suivantes, c'est instantané.

### Récupérer les credentials

```bash
abctl local credentials
```

Affiche l'email et password générés. Note-les.

### Accéder à l'UI

Ouvre **http://localhost:8000**, login avec les credentials ci-dessus.

### Connecter Airbyte au Postgres de la stack

Le cluster kind est isolé du réseau Docker Compose. Pour que Airbyte atteigne notre Postgres, on passe par l'hôte (`host.docker.internal`).

Dans l'UI Airbyte → **Destinations** → **+ New destination** → **Postgres** :

| Champ | Valeur |
|---|---|
| Host | `host.docker.internal` |
| Port | `5432` |
| DB Name | `warehouse` |
| Default Schema | `raw` |
| User | `data` |
| Password | `data` |
| SSL Mode | `disable` |

### Cycle de vie

```bash
abctl local status        # état du cluster
abctl local uninstall     # arrête et détruit le cluster (les configs sont perdues)
abctl local install       # redémarre
```

---

## 5. Récap des URLs et credentials

| Service | URL | Identifiants |
|---|---|---|
| **Metabase** | http://localhost:3000 | créés au premier démarrage |
| **Dagster (UI)** | http://localhost:3001 | aucun (dev) |
| **Airbyte** | http://localhost:8000 | `abctl local credentials` |
| **PostgreSQL** | `localhost:5432` | `data` / `data` |

### Connexions Postgres selon le contexte

| Depuis | Host | Port |
|---|---|---|
| Mac (psql, DBeaver, etc.) | `localhost` | `5432` |
| Container du `docker-compose` (dbt, Dagster, Metabase) | `postgres` | `5432` |
| Airbyte (via `abctl` / kind) | `host.docker.internal` | `5432` |

### Bases et schémas

| Base / Schéma | Usage |
|---|---|
| `warehouse.raw` | Données brutes — cible Airbyte |
| `warehouse.analytics` | Modèles dbt |
| `dagster` | Métadonnées Dagster (runs, schedules) |
| `metabase` | Métadonnées Metabase |

---

## 6. Commandes dbt

Le container dbt n'est pas démarré par défaut (profil `tools`). Lance des commandes à la volée :

```bash
docker compose run --rm dbt dbt debug     # tester la connexion à Postgres
docker compose run --rm dbt dbt run       # exécuter tous les modèles
docker compose run --rm dbt dbt test      # tests
docker compose run --rm dbt dbt build     # run + test
docker compose run --rm dbt dbt docs generate && dbt docs serve --port 8080
```

Le projet dbt vit dans `./dbt/`. Édite les fichiers SQL, puis re-run.

---

## 7. Arrêter / réinitialiser

### Arrêt simple (garde les données)
```bash
docker compose stop
abctl local status        # Airbyte tourne toujours indépendamment
```

### Arrêt complet
```bash
docker compose down       # stop + supprime containers, garde volumes
abctl local uninstall     # arrête le cluster Airbyte (configs perdues)
```

### Reset total (wipe les données)
```bash
docker compose down -v    # supprime aussi les volumes (Postgres reset)
abctl local uninstall
```

---

## 8. Troubleshooting

### `docker compose ps` : un service est `Restarting` en boucle

Regarde ses logs :
```bash
docker compose logs --tail=50 <nom-du-service>
```

### Dagster ne voit pas les assets dbt

Le manifest dbt est généré au démarrage par `prepare_if_dev()`. Si tu ajoutes un modèle dbt, redémarre Dagster :
```bash
docker compose restart dagster-webserver dagster-daemon
```

### Airbyte UI inaccessible (port 8000)

```bash
abctl local status
# Si "not installed" : abctl local install
# Si Docker Desktop a été stoppé : redémarrer Docker, puis abctl local install
```

### Conflit de port

Si un port est déjà pris sur ta machine (3000 pour Metabase, 3001 pour Dagster, 5432 pour Postgres, 8000 pour Airbyte), modifie le mapping dans `docker-compose.yml` :

```yaml
ports:
  - "13000:3000"   # 13000 sur le Mac → 3000 dans le container
```

Pour Airbyte (géré par abctl), il faut configurer un port différent à l'install :
```bash
abctl local install --port 8001
```
