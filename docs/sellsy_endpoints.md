# Sellsy — Endpoints utilisés

Inventaire complet des endpoints Sellsy consommés par l'application (`src/sellsy_v2.py`).

---

## 1. OAuth2 / Token

| Méthode | URL | Usage |
|---|---|---|
| POST | `https://login.sellsy.com/oauth2/access-tokens` | Récupération du bearer token (`grant_type=client_credentials`) |

**Variables d'environnement requises :**
- `SELLSY_V2_CLIENT_ID`
- `SELLSY_V2_CLIENT_SECRET`

**Scopes OAuth2 demandés :**
```
invoices.read
credit-notes.read
orders.read
deliveries.read
companies.read
individuals.read
contacts.read
items.read
custom-fields.read
smart-tags.read
rate-categories.read
accounting-codes.read
payments.read
api-v1
```

---

## 2. API v2 — Base URL `https://api.sellsy.com/v2`

### 2.1 Recherche / listing de documents (POST paginés)

| Méthode | Path | Usage |
|---|---|---|
| POST | `/invoices/search` | Liste des factures sur une période |
| POST | `/credit-notes/search` | Liste des avoirs |
| POST | `/deliveries/search` | Liste des bons de livraison |
| POST | `/orders/search` | Liste des commandes |

**Body :**
```json
{
  "filters": {
    "created": {
      "start": "YYYY-MM-DDT00:00:00+01:00",
      "end":   "YYYY-MM-DDT23:59:59+01:00"
    }
  }
}
```

**Query :** `limit=100`, `offset=<cursor>` (pagination cursor-based)

---

### 2.2 Détail d'un document

| Méthode | Path | Embeds | Usage |
|---|---|---|---|
| GET | `/invoices/{id}` | `embed[]=invoicing_address` | Détail facture (rows, montants, adresse, parent) |
| GET | `/credit-notes/{id}` | `embed[]=invoicing_address` | Détail avoir |
| GET | `/deliveries/{id}` | `embed[]=invoicing_address` | Détail bon de livraison |
| GET | `/orders/{id}` | `embed[]=invoicing_address` | Détail commande |
| GET | `/estimates/{id}` | — | Résolution `parentIdent` quand `parent.type=estimate` (devis) |

> **Note :** `embed[]=cf.N` est silencieusement ignoré sur les endpoints doctype — il faut passer par l'endpoint dédié `/custom-fields` (cf. 2.3).

---

### 2.3 Custom fields par document

| Méthode | Path | Query | Usage |
|---|---|---|---|
| GET | `/invoices/{id}/custom-fields` | `limit=100` | CF de la facture |
| GET | `/credit-notes/{id}/custom-fields` | `limit=100` | CF de l'avoir |
| GET | `/orders/{id}/custom-fields` | `limit=100` | CF de la commande |

> **Attention :** Sellsy v2 **n'expose pas** `/deliveries/{id}/custom-fields` — endpoint inexistant, à skip côté client.

---

### 2.4 Paiements

| Méthode | Path | Query | Usage |
|---|---|---|---|
| GET | `/invoices/{id}/payments` | `limit=100` | Date du dernier paiement confirmé (`paid_at` max où `status=confirmed`) |

> **Optimisation :** skip cet appel si `status ∈ {draft, cancelled, scheduled}` ou si `amounts.total_paid_amount == 0` (économise N requêtes/export).

---

### 2.5 Tiers (entreprises / particuliers)

| Méthode | Path | Embeds | Usage |
|---|---|---|---|
| GET | `/companies/{id}` | — | Nom légal complet |
| GET | `/companies/{id}` | `embed[]=smart_tags` | Détail entreprise + tags |
| GET | `/individuals/{id}` | `embed[]=smart_tags` | Détail particulier + tags |
| GET | `/companies/{id}/smart-tags` | `limit=100` | Fallback si l'embed `smart_tags` ne renvoie rien |
| GET | `/individuals/{id}/smart-tags` | `limit=100` | Idem pour particulier |
| GET | `/companies/{id}/custom-fields` | `limit=100` | CF de l'entreprise |
| GET | `/individuals/{id}/custom-fields` | `limit=100` | CF du particulier |

> **Attention :** `embed[]=cf.N` ne fonctionne pas non plus sur `/companies/{id}` — passer obligatoirement par l'endpoint dédié `/custom-fields`.

---

### 2.6 Référentiels

| Méthode | Path | Query | Usage |
|---|---|---|---|
| GET | `/custom-fields` | `limit=100` (paginé) | Liste de tous les custom fields (id, name, type) |
| GET | `/rate-categories` | `limit=100` (paginé) | Liste des catégories de tarifs (id, label) |

---

## 3. API v1 via le shim `api-v1` (token v2)

Endpoint unique :

```
POST https://apifeed.sellsy.com/0/
Authorization: Bearer <token v2>
Content-Type: application/x-www-form-urlencoded
```

**Body form-encoded :**
```
request=1
io_mode=json
do_in={"method": "<Method.name>", "params": {...}}
```

> Le scope `api-v1` doit être activé dans l'application Sellsy. Utilisé uniquement pour les endpoints **sans équivalent v2**.

### 3.1 Méthodes v1 appelées

| Méthode | Params | Usage |
|---|---|---|
| `Catalogue.getCategories` | `{}` | Arbre des catégories d'articles (pas d'équivalent v2 — confirmé 11 paths + 3 embeds testés, tous 404/400) |
| `Catalogue.getList` | `{type: "item", pagination: {nbperpage: 100, pagenum: N}}` | Liste des articles (ID-space cohérent avec `getCategories`) |
| `Catalogue.getList` | `{type: "service", pagination: {nbperpage: 100, pagenum: N}}` | Liste des services |
| `Document.getOne` | `{doctype: "model", docid: <id>}` | Résolution `parentIdent` quand `parent.type=model` |
| `Document.getOne` | `{doctype: "delivery", docid: <id>}` | Fallback `parentIdent` — v2 n'expose pas le lien workflow BDL→BDC |
| `Document.getOne` | `{doctype: "order", docid: <id>}` | Fallback `parentIdent` — v2 n'expose pas le lien workflow BDC→DEV |

---

## 4. Récapitulatif — pourquoi le shim v1 est nécessaire

| Besoin | v2 ? | Solution |
|---|---|---|
| Catégories d'articles | ❌ | `Catalogue.getCategories` (v1 shim) |
| Items / services avec category_id cohérent | ⚠️ ID-space différent | `Catalogue.getList` (v1 shim) |
| Parent `model` d'une facture | ❌ | `Document.getOne` (v1 shim) |
| Parent workflow BDL→BDC / BDC→DEV | ❌ | `Document.getOne` (v1 shim) |
| Tout le reste | ✅ | API v2 native |

---

## 5. Bonnes pratiques rate-limiting

Sellsy v2 applique plusieurs fenêtres glissantes (seconde / minute / jour / mois). Headers à lire sur **chaque** réponse :

- `X-Quota-Remaining-By-Second`
- `X-Quota-Remaining-By-Minute`
- `X-Quota-Remaining-By-Day`
- `Retry-After` (sur 429)

**Throttle recommandé :** `MIN_REQUEST_INTERVAL = 0.34s` (~3 req/s), avec pacing préemptif basé sur les quotas restants :

| `rem_min` | Délai avant prochain slot |
|---|---|
| `< 0` (overshoot) | 15s |
| `≤ 3` | `60 / rem_min` secondes |
| `≤ 10` | 1s |
| `≤ 30` | 0.5s |
| `> 30` | défaut (0.34s) |

Sur **429**, backoff exponentiel capé à 30s, reset à 1s sur le premier 2xx suivant.
