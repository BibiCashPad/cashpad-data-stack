# Metabase — gestion multi-utilisateurs et permissions

> Ce qui est faisable en Metabase **Open Source** (gratuit) vs ce qui demande **Pro/Enterprise** (payant).
> Pour le MVP, on n'a qu'un seul utilisateur (DAF, accès complet). Ce document sert de référence quand on devra ouvrir l'accès à d'autres profils.

## TL;DR

| Besoin | Faisable en OSS ? |
|---|---|
| Plusieurs utilisateurs avec login | ✅ |
| Cacher des dashboards à certains utilisateurs (par dashboard / collection) | ✅ |
| Cacher des tables / schémas Postgres à certains utilisateurs | ✅ |
| **Row-Level Security** (un commercial ne voit QUE ses ventes) | ❌ → Pro requis ou workaround |
| **SSO SAML / OIDC** (login via Google Workspace / Okta) | ❌ → Pro requis |
| **Permissions par colonne** (masquer salary à certains) | ❌ → Pro requis |
| Embedding dashboards dans app externe | ⚠️ Limité en OSS, complet en Pro |

## Modèle de permissions Metabase OSS

### 1. Hiérarchie

```
Utilisateur (email + password)
  └─ appartient à un ou plusieurs Groupes (RH, Commerciaux, Direction…)

Groupe
  ├─ permissions sur des Databases (No access / View data / Create queries)
  │   └─ permissions par schéma → par table dans certaines versions
  └─ permissions sur des Collections (No access / View / Curate)

Collection = dossier de Questions / Dashboards / Modèles
Database = source Postgres (notre Warehouse)
```

### 2. Création de groupes

`Admin Settings → People & Groups → Groups`

Exemples utiles pour Cashpad :
- `Admin`
- `Direction` (DAF, CEO)
- `Comptabilité`
- `Commerciaux`
- `RH`
- `IT / Tech`

### 3. Permissions par Collection (le plus fréquent)

`Admin Settings → Permissions → Collections`

Pour chaque combinaison Collection × Groupe :
- **No access** — le groupe ne voit même pas la collection
- **View access** — voit et exécute, ne peut pas modifier
- **Curate access** — peut créer, modifier, supprimer

Exemple d'organisation :

```
Our analytics/
├── Suivi facturation (View: Comptabilité, Direction)
├── Pipeline commercial (View: Commerciaux, Direction)
├── RH/
│   ├── Paie (View: RH uniquement)
│   └── Effectif (View: RH, Direction)
└── Direction/
    ├── KPI Board (View: Direction uniquement)
    └── Reporting compta (View: Direction, Comptabilité)
```

### 4. Permissions par Database / Schéma

`Admin Settings → Permissions → Databases`

Pour chaque Groupe sur la database **Warehouse** :
- **No access** — ne peut pas requêter cette DB
- **View data** — peut explorer / utiliser dans Questions
- **Create queries** — peut écrire du SQL custom

Dans Metabase récent, on peut affiner au niveau **schéma** :
- Schema `analytics` — accessible à tous les groupes "data"
- Schema `analytics_rh` — uniquement au groupe RH
- Schema `raw` — uniquement au groupe Tech (pour debug)

**Pattern recommandé** : dans dbt, créer des marts dans des schémas dédiés selon la sensibilité :
- `analytics.fct_invoices` → tout le monde
- `analytics_rh.fct_payroll` → groupe RH seulement
- `analytics_direction.fct_strategic_kpis` → direction seulement

Et restreindre l'accès au schéma côté Metabase.

## Le cas dur — Row-Level Security (RLS)

### Le besoin typique

> "Jean (commercial) ne doit voir que les invoices dont il est l'owner_staff_id."

### Solution Pro/Enterprise : Sandbox

Metabase Pro propose une feature **"Sandbox"** :

1. Tu configures un attribut user (ex : `staff_id = 14031` pour Jean)
2. Tu déclares qu'un Sandbox sur la table `fct_invoices` filtre `WHERE owner_staff_id = {{user.staff_id}}`
3. Quand Jean ouvre un dashboard sur fct_invoices, **toutes les queries sont automatiquement filtrées** à ses lignes

C'est transparent, sécurisé, scalable.

### Coût ~ 2024-2025

Metabase Pro : ~85 €/mois pour 5 users, +25 €/mois par user supplémentaire.

Pour 10 commerciaux : ~210 €/mois = ~2 500 € / an.

## Workarounds Open Source (si tu refuses Pro)

### Workaround A — Schémas dbt dédiés par persona

Tu crées dans dbt des marts pré-filtrés et tu restreins l'accès au schéma.

```sql
-- dbt/models/marts_per_user/fct_invoices_jean.sql
SELECT * FROM {{ ref('fct_invoices') }} WHERE owner_staff_id = 14031
```

Côté Metabase :
- Schéma `analytics_jean` → accessible uniquement au groupe `Jean`
- Schéma `analytics_alice` → uniquement au groupe `Alice`

**Pros** : sécurisé, propre techniquement.
**Cons** : NON scalable. 1 fichier dbt par commercial. À 10 commerciaux c'est ingérable. À 50, c'est mort.

### Workaround B — 1 dashboard par persona avec staff_id codé en dur

Tu duplicates ton dashboard "Pipeline commercial" en 10 exemplaires, chacun avec un filter pré-positionné sur un staff_id.

**Pros** : aucune modif de schéma.
**Cons** : moche, dupliqué, pas de single source of truth.

### Workaround C — Dashboard global + filter "Commercial" + auto-discipline

Tu fais 1 dashboard partagé, avec un filter dropdown sur staff_id. Le commercial sélectionne son nom et voit ses chiffres.

**Pros** : zéro effort technique.
**Cons** : pas vraiment "sécurisé". Le commercial peut sélectionner d'autres noms. Acceptable en environnement de confiance interne.

### Workaround D — Migrer vers Superset

Apache Superset (open source) inclut le row-level security gratuitement.

**Pros** : RLS gratuit.
**Cons** :
- Outil différent à apprendre (équipe doit re-monter en compétence)
- Maturité UX inférieure à Metabase
- Plus orienté "data analyst" que "utilisateur métier"

## Décisions à prendre

Quand le besoin multi-users émergera, se poser :

1. **Quels groupes** dans l'entreprise ont besoin de quoi ? Lister les use cases concrets.
2. **Volume** d'users par groupe (1, 10, 100 ?) → influe sur la viabilité des workarounds OSS.
3. **Confiance interne** : est-ce un vrai cloisonnement "compliance" ou juste de l'organisation visuelle ? → Si juste organisation, OSS suffit large.
4. **Budget BI** : 2-3 k€/an pour Metabase Pro acceptable ?

## Reco initiale (état du projet 2026-05-28)

- **MVP** : 1 user (DAF) → accès complet, on plie. ✅
- **Phase 1 multi-users** : ajouter Comptabilité, RH avec **collections OSS séparées** → suffit.
- **Phase 2 RLS** : si vraiment besoin de filtrer les commerciaux entre eux → évaluer **Metabase Pro** OU restructurer en marts dbt dédiés.

Tant qu'on est sur "groupes par métier", l'OSS suffit largement. Le passage payant n'est justifié que pour le **row-level security strict** (un commercial ne voit pas le client du collègue).
