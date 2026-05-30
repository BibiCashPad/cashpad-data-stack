# SELLSY - API - Développeurs
Vous trouverez ici l'ensemble des méthodes, comment les appeler, leurs arguments ainsi que leurs valeurs de retour.

Requete
-------

```
$request = array(
    'method' => 'Infos.getInfos',
    'params' => array(),
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres à cette fonction

Retour
------

```
{"response":"consumerdatas":{"status":"enabled","infos":{"consumer_i_id":"8","consumer_i_cid":"7","consumer_i_app_name":"Application Mobile","consumer_i_owner_name":"Rémy Neuter","consumer_i_owner_tel":"0601020304","consumer_i_owner_mail":".com","consumer_i_owner_web":"https://mobile.sellsy.com","consumer_i_css":"default","consumer_i_public_image":NULL},"traffic":{"consumer_t_id":"7","consumer_t_cid":"7","consumer_t_nb_requests":"39342","consumer_t_nb_max_request":"100000","consumer_t_alert":"0","consumer_t_more":"","consumer_t_start_timestamp":"1340613096"}},"userdatas":{"accountlevel":"gold","isAdmin":"1","fullName":"M. Rémy Neuter","hasvat":"Y","uilang":"fr","setuplang":"fr","corpName":"EasyBill","plugins":{"31":{"id":"31","qt":"1","label":"ttbilling","type":"plugin","description":"Refacturation d'heures","img":"","longdesc":"","level":"","start":"0000-00-00 00:00:00","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"29":{"id":"29","qt":"1","label":"bluepaid","type":"plugin","description":"Bluepaid - paiement sécurisé","img":"bluepaid.png","longdesc":"Faites vous payer par carte bancaire avec la solution de paiement en ligne de Bluepaid","level":"corp","start":"2012-09-01 09:51:39","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","pluginid":"1043","penabled":"Y","access":"full","isoffer":"N","offerend":"0000-00-00 00:00:00","formatedofferend":"05/12/2012","flagenabled":"N","prefsAction":"BluePaid.loadPrefs()","prefsPopup":"Y"},"20":{"id":"20","qt":"1","label":"purchases","type":"plugin","description":"Achats et Notes de frais.","img":"purchases.png","longdesc":"Achats et notes de frais","level":"corp","start":"2012-02-07 10:23:42","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"10","formatted_amountTaxFree":"10,00 €","amountTaxInc":"11.96","currencySymbol":"€","currencyId":"1","pluginid":"1041","penabled":"Y","access":"restricted","isoffer":"N","offerend":"0000-00-00 00:00:00","formatedofferend":"05/12/2012","flagenabled":"N","prefsAction":"Purchases.loadPrefs()","prefsPopup":"Y"},"24":{"id":"24","qt":"1","label":"accounting","type":"plugin","description":"Exports comptables","img":"accounting.png","longdesc":"Gestion complète de vos journaux comptables généraux et analytiques","level":"corp","start":"0000-00-00 00:00:00","end":"0000-00-00 00:00:00","rank":"1","isDefault":"Y","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"26":{"id":"26","qt":"1","label":"timetracking","type":"plugin","description":"Time Tracking","img":"timetracking.png","longdesc":"Gérez les feuilles d'heures de vos collaborateurs et maîtrisez vos coûts internes.","level":"corp","start":"2012-07-25 15:29:13","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","pluginid":"1042","penabled":"Y","access":"full","isoffer":"N","offerend":"0000-00-00 00:00:00","formatedofferend":"05/12/2012","flagenabled":"N","prefsAction":"Timetracking.loadPrefs()","prefsPopup":"Y"},"28":{"id":"28","qt":"1","label":"googlesync","type":"plugin","description":"Google Sync","img":"googlesync.png","longdesc":"Synchronisez vos agendas Google sur Sellsy et synchronisez vos contacts vers Google Contacts","level":"staff","start":"2012-05-17 10:18:33","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N":"amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","pluginid":"1044","penabled":"Y","access":"full","isoffer":"N","offerend":"0000-00-00 00:00:00","formatedofferend":"05/12/2012","flagenabled":"N","prefsAction":"GoogleSync.loadPrefs();","prefsPopup":"Y"},"27":{"id":"27","qt":"1","label":"simplemail","type":"plugin","description":"Simple Mail","img":"simplemail.png","longdesc":"Synchronisation de vos contacts vers l'outil d'emailing Simple Mail","level":"corp","start":"2012-07-04 17:08:05","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"23":{"id":"23","qt":"1","label":"mailjet","type":"plugin":"description":"Synchronisation Mailjet","img":"mailjet.png","longdesc":"Synchronisation de vos contacts sur l'outil d'emailing Mailjet","level":"corp","start":"2012-05-21 08:39:08","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"22":{"id":"22","qt":"1","label":"mailchimp","type":"plugin","description":"Synchronisation Mailchimp","img":"mailchimp.png","longdesc":"Synchronisation de vos contacts vers l'outil d'emailing Mailchimp","level":"corp","start":"2012-04-24 17:01:15","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"21":{"id":"21","qt":"1","label":"dropbox","type":"plugin","description":"Synchronisation Dropbox","img":"dropbox.png","longdesc":"Synchronisation de votre compte avec Dropbox","level":"corp","start":"2012-04-20 09:24:53","end":"0000-00-00 00:00:00","rank":"1","isDefault":"N","onlyFromRetailer":"N","amountTaxFree":"0","formatted_amountTaxFree":"0,00 €","amountTaxInc":"0","currencySymbol":"€","currencyId":"1","penabled":"N","access":"full"},"apidatas":{"version":"0,1","status":"ok","contact":"[email protected]"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' =>  'Accountdatas.getTaxes',
    'params' => array(
        'includeEcoTax' => {{includeEcoTax}},
        'enabled' => {{enabled}},
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------

#### Attention

includeEcoTax : Ce paramètre est déprécié, les taux de tva d'écotaxe seront supprimées prochainement.



* Paramètre: {{includeEcoTax}}
  * Requis: Non
  * Type: int
  * Défaut: N
  * Description: Inclure les écotaxes dans le retour                            
* Paramètre: {{enabled}}
  * Requis: Non
  * Type: enum(all,only,none)
  * Défaut: only
  * Description: Permet de récupérer les taxes selon leur status (activées,désactivée, toutes)


Retour
------

```
{"response":{"27":{"id":"27","corpid":"1","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"","rank":"2","value":"20","more":"","parameters":null,"deletable":"N","formatted_value":"20,00"},"28":{"id":"28","corpid":"1","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"","rank":"4","value":"10","more":"","parameters":null,"deletable":"N","formatted_value":"10,00"},"79":{"id":"79","corpid":"1","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"","rank":"1","value":"5","more":"Tax for service","parameters":{"category":"S"},"deletable":"N","formatted_value":"5.5"}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.getTaxe',
    'params' => array(
        'id'    => {{taxe_id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description           |
|---------|------|----|------|----------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant de la taxe|


Retour
------

```
{"response":{"id":"27","corpid":"1","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"","rank":"2","value":"20","more":"","parameters":null,"deletable":"N","formatted_value":"20,00"},"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Accountdatas.deleteTaxe',
    'params' => array(
        'id'    => {{taxe_id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description                |
|--------------|------|----|------|---------------------------|
|{{taxe_value}}|Oui   |int |Aucun |Montant de la taxe (ex 19.6|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' =>  'Accountdatas.getUnits',
    'params' => array()
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres à cette fonction

Retour
------

```
{"response":{"70":{"id":"70","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"forfaitaire"},"71":{"id":"71","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"m2"},"72":{"id":"72","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"m3"},"73":{"id":"73","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"kg"},"74":{"id":"74","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"5","value":"tonne"},"_xml_childtag":"unit"},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' =>  'Accountdatas.getUnit',
    'params' => array(
        'id'    => {{unitid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description           |
|---------|------|----|------|----------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant de l'unité|


Retour
------

```
{"response":{"id":"70","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"forfaitaire"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Accountdatas.createUnit',
    'params' => array(
        'unit' =>
            'value' => {{unit_value}}
            'isEnabled' => {{unit_enabled}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre       |Requis|Type|Défaut|Description                       |
|----------------|------|----|------|----------------------------------|
|{{unit_value}}  |Oui   |int |Aucun |Valeur de l'unité (ex:  kg        |
|{{unit_enabled}}|Non   |enum|Y     |Y ou N pour activer ou non l'unité|


Retour
------

```
{"response":{"unitid":4893},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Accountdatas.createUnities',
    'params' => array(
        'unities' => array(
            array(
                'value' => {{unit_value}}
                'isEnabled' => {{unit_enabled}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre       |Requis|Type|Défaut|Description                       |
|----------------|------|----|------|----------------------------------|
|{{unit_value}}  |Oui   |int |Aucun |Valeur de l'unité (ex:  kg        |
|{{unit_enabled}}|Non   |enum|Y     |Y ou N pour activer ou non l'unité|


Retour
------

```
{"response":{"unitid":4893},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Accountdatas.createPayMediums',
    'params' => array(
        'paymediums' => array(
            array(
                'value' => {{pay_value}}
                'isEnabled' => {{pay_enabled}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type|Défaut|Description                                    |
|---------------|------|----|------|-----------------------------------------------|
|{{pay_value}}  |Oui   |int |Aucun |Valeur de du moyen de paiement (ex:  carte     |
|{{pay_enabled}}|Non   |enum|Y     |Y ou N pour activer ou non le moyen de paiement|


Retour
------

```
{"response":{"unitid":4893},"error":"","status":"success"}
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `shippings[i].taxid` n'acceptera plus des taux de TVA non conforme.

```
$request = array(
    'method' => 'Accountdatas.updateShippings',
    'params' => array(
        'shippings' => array(
            array(
                'name' => {{shipping_name}}
                'isEnabled' => {{shipping_enabled}},
                'qt' => {{shipping_qt}},
                'unitAmount' => {{shipping_unitAmount}},
                'unitAmountIsTaxesFree' => {{shipping_unitAmountIsTaxesFree}},
                'taxid' => {{shipping_taxid}}
                'id' => {{id}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{shipping_name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Valeur du transporteur (ex:  UPS 
* Paramètre: {{shipping_enabled}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Y ou N pour activer ou non le transporteur
* Paramètre: {{shipping_qt}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Quantité du transporteur
* Paramètre: {{shipping_unitAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant unitaire du transporteur
* Paramètre: {{shipping_unitAmountIsTaxesFree}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Indique si le montant unitaire fournit est HT ou TTC
* Paramètre: {{shipping_taxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe
* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du transporteur


Retour
------

```
{"response":{"ids":[123, 1234]},"error":"","status":"success"}
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `shippings[i].taxid` n'acceptera plus des taux de TVA non conforme.

```
$request = array(
    'method' => 'Accountdatas.createShippings',
    'params' => array(
        'shippings' => array(
            array(
                'name' => {{shipping_name}}
                'isEnabled' => {{shipping_enabled}},
                'qt' => {{shipping_qt}},
                'unitAmount' => {{shipping_unitAmount}},
                'unitAmountIsTaxesFree' => {{shipping_unitAmountIsTaxesFree}},
                'taxid' => {{shipping_taxid}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{shipping_name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Valeur du transporteur (ex:  UPS 
* Paramètre: {{shipping_enabled}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Y ou N pour activer ou non le transporteur
* Paramètre: {{shipping_qt}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Quantité du transporteur
* Paramètre: {{shipping_unitAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant unitaire du transporteur
* Paramètre: {{shipping_unitAmountIsTaxesFree}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Indique si le montant unitaire fournit est HT ou TTC
* Paramètre: {{shipping_taxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe


Retour
------

```
{"response":{"ids":{[4893,4894]},"error":"","status":"success"}
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `packagings[i].taxid` n'acceptera plus des taux de TVA non conforme.

```
$request = array(
    'method' => 'Accountdatas.updatePackagings',
    'params' => array(
        'packagings' => array(
            array(
                'name' => {{packaging_name}}
                'isEnabled' => {{packaging_enabled}},
                'qt' => {{packaging_qt}},
                'unitAmount' => {{packaging_unitAmount}},
                'unitAmountIsTaxesFree' => {{packaging_unitAmountIsTaxesFree}},
                'taxid' => {{packaging_taxid}}
                'id' => {{id}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{packaging_name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Valeur de l'emballage (ex:  UPS 
* Paramètre: {{packaging_enabled}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Y ou N pour activer ou non l'emballage
* Paramètre: {{packaging_qt}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Quantité de l'emballage
* Paramètre: {{packaging_unitAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant unitaire de l'emballage
* Paramètre: {{packaging_unitAmountIsTaxesFree}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Indique si le montant unitaire fournit est HT ou TTC
* Paramètre: {{packaging_taxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe
* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'emballage


Retour
------

```
{"response":{"ids":[123, 1234]},"error":"","status":"success"}
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `packagings[i].taxid` n'acceptera plus des taux de TVA non conforme.

```
$request = array(
    'method' => 'Accountdatas.createPackagings',
    'params' => array(
        'packagings' => array(
            array(
                'name' => {{packaging_name}}
                'isEnabled' => {{packaging_enabled}},
                'qt' => {{packaging_qt}},
                'unitAmount' => {{packaging_unitAmount}},
                'unitAmountIsTaxesFree' => {{packaging_unitAmountIsTaxesFree}},
                'taxid' => {{packaging_taxid}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{packaging_name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Valeur de l'emballage (ex:  UPS 
* Paramètre: {{packaging_enabled}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Y ou N pour activer ou non l'emballage
* Paramètre: {{packaging_qt}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Quantité de l'emballage
* Paramètre: {{packaging_unitAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant unitaire de l'emballage
* Paramètre: {{packaging_unitAmountIsTaxesFree}}
  * Requis: Non
  * Type: enum
  * Défaut: Y, N
  * Description: Indique si le montant unitaire fournit est HT ou TTC
* Paramètre: {{packaging_taxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe


Retour
------

```
{"response":{"ids":{[4893,4894]},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.updateUnit',
    'params' => array(
        'id'	=> {{unit_id}},
        'unit'	=> array(
            'value'	=> {{unit_value}},
            'isEnabled'	=> {{unit_enabled}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre       |Requis|Type|Défaut|Description                            |
|----------------|------|----|------|---------------------------------------|
|{{id}}          |oui   |int |aucun |Identifiant de l'untité                |
|{{unit_value}}  |oui   |int |aucun |Valeur de l'unité (ex:  kg )           |
|{{unit_enabled}}|non   |enum|Y     |Y ou N pour dire si l'unité est activée|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.updatePayMediums',
    'params' => array(
        'paymediums' => array(
            array(
                'value' => {{pay_value}},
                'isEnabled' => {{pay_enabled}},
                'id' => {{pay_id}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type|Défaut|Description                                            |
|---------------|------|----|------|-------------------------------------------------------|
|{{id}}         |oui   |int |aucun |Identifiant du moyen de paiement                       |
|{{pay_value}}  |oui   |int |aucun |Valeur du moyen de paiement (ex:  carte                |
|{{pay_enabled}}|non   |enum|Y     |Y ou N pour indiquer si le moyen de paiement est activé|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.updateUnities',
    'params' => array(
        'unities' => array(
            array(
                'value' => {{unit_value}},
                'isEnabled' => {{unit_enabled}},
                'id' => {{unit_id}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre       |Requis|Type|Défaut|Description                            |
|----------------|------|----|------|---------------------------------------|
|{{unit_id}}     |oui   |int |aucun |Identifiant de l'untité                |
|{{unit_value}}  |oui   |int |aucun |Valeur de l'unité (ex:  kg             |
|{{unit_enabled}}|non   |enum|Y     |Y ou N pour dire si l'unité est activée|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    request = array(
        'method' => 'Accountdatas.deleteUnit',
        'params' => array(
            'id' => {{unit_id}},
        )
    );
                
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{id}}   |oui   |int |aucun  |Identifiant de l'untité|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getPackagingList',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"139596":{"type":"packaging","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"1","name":"packaging","notes":"packaging","unitAmount":"3.990000000","unitamountIsTaxesFree":"Y","unitid":"4728","unit":"","qt":"4.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"0000-00-00 00:00:00","updatedAt":"2012-06-19 10:40:26","id":"139596","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"3.990000000","formatted_unitAmount":"3.990000000","formatted_unitAmount_ht":"3.990000000","formatted_unitAmount_ttc":"3.99","formatted_qt":"4.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"4.000000000","formatted_full_unitAmount":"3.990000000"},{"139597":{"type":"packaging","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"2","name":"pack","notes":"packaging","unitAmount":"29.990000000","unitamountIsTaxesFree":"Y","unitid":"4728","unit":"","qt":"1.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"0000-00-00 00:00:00","updatedAt":"2012-06-19 10:27:38","id":"139597","typeLabel":"emballage","nameSample":"pack","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"29.990000000","formatted_unitAmount":"29.990000000","formatted_unitAmount_ht":"29.990000000","formatted_unitAmount_ttc":"29.99","formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000","formatted_full_unitAmount":"29.990000000"},"_xml_childtag":"packaging"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getPackaging',
        'params' => array(
            'id'    => {{packagingid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description              |
|---------|------|----|-------|-------------------------|
|{{id}}   |oui   |int |aucun  |IIdentifiant du packaging|


Retour
------

```
    {"response":{"type":"packaging","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"1","name":"packaging","notes":"packaging","unitAmount":"3.990000000","unitamountIsTaxesFree":"Y","unitid":"4728","unit":"","qt":"4.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"0000-00-00 00:00:00","updatedAt":"2012-06-19 10:40:26","id":"139596","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"3.990000000","formatted_unitAmount":"3.990000000","formatted_unitAmount_ht":"3.990000000","formatted_unitAmount_ttc":"3.99","formatted_qt":"4.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"4.000000000","formatted_full_unitAmount":"3.990000000"},"error":"","status":"success"}
                
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `packaging.taxid` n'acceptera plus des taux de TVA non conforme.

```
    $request = array(
        'method' =>  'Accountdatas.recordPackaging',
        'params' => array(
            'packaging' => array(
                'id'            => {{packagingid}},
                'isEnabled'     => {{isEnabled}},
                'name'          => {{name}},
                'unitAmount'        => {{unitAmount}},
                'qt'            => {{qt}},
                'unitAmountIsTaxesFree' => {{unitAmountIsTaxesFree}},
                'taxid'         => {{taxid}},
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------



* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du packaging. Requis sur mis à jour, non-requis en cas de nouveau packaging
* Parametre: {{isEnabled}}
  * requis: non
  * type: string
  * default: Y
  * Description: Y ou N
* Parametre: {{name}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Nom du packaging
* Parametre: {{unitAmount}}
  * requis: non
  * type: number
  * default: aucun
  * Description: Montant du packaging
* Parametre: {{qt}}
  * requis: non
  * type: number
  * default: aucun
  * Description: Quantité du packaging
* Parametre: {{unitAmountIsTaxesFree}}
  * requis: non
  * type: string
  * default: Y
  * Description: Montant hors taxes (Y ou N)
* Parametre: {{taxid}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Identifiant de la taxe


Retour
------

```
    {"response":{"id":"139596"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.deletePackaging',
        'params' => array(
            'id'    => {{packagingid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description             |
|---------|------|----|-------|------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du packaging|


Retour
------

```
    {"response":{null},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getShippingList',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"139654":{"type":"shipping","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"shipping","notes":"shipping","unitAmount":"20.000000000","unitamountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"1.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"2012-06-18 17:57:40","updatedAt":"2012-06-19 10:43:19","id":"139654","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"20.000000000","formatted_unitAmount":"20.000000000","formatted_unitAmount_ht":"20.000000000","formatted_unitAmount_ttc":"20","formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000","formatted_full_unitAmount":"20.000000000"},{"139655":{"type":"shipping","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"2","name":"ship","notes":"shipping","unitAmount":"1.000000000","unitamountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"1.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"2012-06-18 18:04:19","updatedAt":"2012-06-18 18:04:19","id":"139655","typeLabel":"transport","nameSample":"","notesSample":"","notesHTMLSample":"","isTaxesFree":"HT","unitAmountTaxesFree":"1.000000000","formatted_unitAmount":"1.000000000","formatted_unitAmount_ht":"1.000000000","formatted_unitAmount_ttc":"1","formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000","formatted_full_unitAmount":"1.000000000"},"_xml_childtag":"shipping"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getShipping',
        'params' => array(
            'id'    => {{shippingid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du shipping|


Retour
------

```
    {"response":{"type":"shipping","corpid":"138","owwnerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"shipping","notes":"shipping","unitAmount":"20.000000000","unitamountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"1.000000000","taxid":"4724","taxrate":"0.000000000","purchaseAmount":"0.00000000","stock":"0","createAt":"2012-06-18 17:57:40","updatedAt":"2012-06-19 10:43:19","id":"139654","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"20.000000000","formatted_unitAmount":"20.000000000","formatted_unitAmount_ht":"20.000000000","formatted_unitAmount_ttc":"20","formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000","formatted_full_unitAmount":"20.000000000"},"error":"","status":"success"}
                
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Le champ `shipping.taxid` n'acceptera plus des taux de TVA non conforme.

```
    $request = array(
        'method' =>  'Accountdatas.recordShipping',
        'params' => array(
            'shipping' => array(
                'asNew'         => {{asNew}},
                'id'            => {{shippingid}},
                'isEnabled'     => {{isEnabled}},
                'name'          => {{name}},
                'unitAmount'        => {{unitAmount}},
                'qt'            => {{qt}},
                'unitAmountIsTaxesFree' => {{unitAmountIsTaxesFree}},
                'taxid'         => {{taxid}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------



* Parametre: {{asNew}}
  * requis: non
  * type: string
  * default: N
  * Description: Y ou N
* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du shipping. Requis sur mis à jour, non-requis en cas de nouveau shipping
* Parametre: {{isEnabled}}
  * requis: non
  * type: string
  * default: Y
  * Description: Y ou N
* Parametre: {{name}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Nom du shipping
* Parametre: {{unitAmount}}
  * requis: non
  * type: number
  * default: aucun
  * Description: Montant du shipping
* Parametre: {{qt}}
  * requis: non
  * type: number
  * default: aucun
  * Description: Quantité du shipping
* Parametre: {{unitAmountIsTaxesFree}}
  * requis: non
  * type: string
  * default: Y
  * Description: Montant hors taxes ? (Y ou N)
* Parametre: {{taxid}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Identifiant de la taxe


Retour
------

```
    {"response":"id":"139654","error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.deleteShipping',
        'params' => array(
            'id'    => {{shippingid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du shipping|


Retour
------

```
    {"response":{null},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getPayMediums',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"4744":{"id":"4744","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"check","rank":"1","value":"ch\u00e8que"},"4745":{"id":"4745","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"transfer","rank":"2","value":"virement bancaire"},"4746":{"id":"4746","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cash","rank":"3","value":"esp\u00e8ces"},"4747":{"id":"4747","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cb","rank":"4","value":"carte bancaire"},"4748":{"id":"4748","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"pick","rank":"5","value":"pr\u00e9l\u00e8vement"},"4749":{"id":"4749","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"bor","rank":"6","value":"Billet \u00e0 Ordre Relev\u00e9 (BOR)"},"4750":{"id":"4750","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"tip","rank":"7","value":"Titre Interbancaire de Paiement (TIP)"},"4751":{"id":"4751","corpid":"138","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"lcr","rank":"8","value":"Lettre de Change Relev\u00e9 (LCR)"},"_xml_childtag":"paymedium"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.getPayMedium',
        'params' => array(
            'id'    =>  {{mediumid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                     |
|---------|------|----|-------|--------------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du moyen de paiement|


Retour
------

```
    {"response":{"id":"4744","corpid":"138","list":"paymediums":"status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"check","rank":"1","value":"chèque"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' =>  'Accountdatas.createPayMedium',
        'params' => array(
            'paymedium' => array(
                'isEnabled' => {{isEnabled}},
                'value' => {{value}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre    |requis|type  |default|Description             |
|-------------|------|------|-------|------------------------|
|{{isEnabled}}|false |string|aucun  |Y ou N                  |
|{{value}}    |true  |string|aucun  |Nom du moyen de paiement|


Retour
------

```
    {"response":{"mediumid":"5881"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Accountdatas.updatePayMedium',
        'params' => array(
            'id' => {{id}},
            'paymedium' => array(
                'isEnabled' => {{isEnabled}},
                'value' => {{value}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre    |requis|type  |default|Description                                     |
|-------------|------|------|-------|------------------------------------------------|
|{{id}}       |true  |int   |aucun  |Identifiant du moyen de paiement à mettre à jour|
|{{isEnabled}}|false |string|aucun  |Y ou N                                          |
|{{value}}    |true  |string|aucun  |Nom du moyen de paiement                        |


Retour
------

```
    {"response":{"mediumid":"5881"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Accountdatas.deletePayMedium',
        'params' => array(
            'id' => {{id}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                                 |
|---------|------|----|-------|--------------------------------------------|
|{{id}}   |true  |int |aucun  |Identifiant du moyen de paiement à supprimer|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Accountdatas.getRateCategories',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"10":{"id":"10","corpid":"138","name":"Autres","hasTaxesInc":"N","isDefault":"N","status":"ok"},"50":{"id":"50","corpid":"138","name":"Particuliers","hasTaxesInc":"Y","isDefault":"Y","status":"ok"},"9":{"id":"9","corpid":"138","name":"Professionnels","hasTaxesInc":"N","isDefault":"N","status":"ok"}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Accountdatas.getRateCategory',
        'params' => array(
            'id'    => {{rcid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                          |
|---------|------|----|-------|-------------------------------------|
|{{rcid}} |oui   |int |aucun  |Identifiant de la catégorie tarifaire|


Retour
------

```
    {"response":{"id":"50","corpid":"138","name":"Particuliers","hasTaxesInc":"Y","isDefault":"Y","status":"ok"},"error":"","status":"success"}
                
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.getDocLayouts',
    'params' => array()
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------

#### Attention

Aucun paramètre attendu pour cette méthode

Retour
------

```
{"response":{"layouts":{"1550":{"corpid":"1033","ownerid":"1677","status":"ok","isdefault":"Y","name":"Mod\u00e8le 2","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"custom","bgMode":"all","bgFile":"custom","bgCustomFile":"","hideTopPart":"N","hideBottomSeparator":"N","hideFill":"N","colorFill":"000000","hideDepositRecap":"N","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"opensans","fontsize":"10","language":"FR","timeformat":"dmy","txts":"a:67:{s:3:\"tel\";s:5:\"Tel.:\";s:3:\"fax\";s:5:\"Fax.:\";s:6:\"mobile\";s:8:\"Mobile.:\";s:5:\"email\";s:7:\"Email.:\";s:15:\"document-parent\";s:15:\"Document parent\";s:8:\"term-ref\";s:19:\"R\u00e9f\u00e9rence interne\";s:10:\"en-date-du\";s:10:\"En date du\";s:9:\"tva-intra\";s:22:\"TVA Intracommunautaire\";s:10:\"ref-client\";s:12:\"R\u00e9f. client\";s:6:\"object\";s:5:\"Objet\";s:5:\"image\";s:5:\"Image\";s:8:\"nom-code\";s:10:\"Nom \/ Code\";s:11:\"description\";s:11:\"Description\";s:8:\"quantite\";s:3:\"Qte\";s:2:\"pu\";s:2:\"PU\";s:12:\"remise-ligne\";s:6:\"Remise\";s:5:\"pu-ht\";s:5:\"PU HT\";s:6:\"pu-ttc\";s:6:\"PU TTC\";s:3:\"tax\";s:3:\"TVA\";s:4:\"tax2\";s:3:\"TVA\";s:8:\"total-ht\";s:8:\"Total HT\";s:9:\"total-ttc\";s:9:\"Total TTC\";s:5:\"total\";s:5:\"Total\";s:9:\"en-option\";s:9:\"En option\";s:16:\"nb-item-document\";s:30:\"Nombre de produits du document\";s:10:\"sous-total\";s:10:\"Sous total\";s:14:\"sous-total-ttc\";s:14:\"Sous total TTC\";s:15:\"frais-emballage\";s:17:\"Frais d'emballage\";s:10:\"frais-port\";s:13:\"Frais de port\";s:17:\"adresse-livraison\";s:20:\"Adresse de livraison\";s:5:\"notes\";s:5:\"Notes\";s:11:\"tax-deposit\";s:34:\"R\u00e9capitulatif des TVA d\u2018acompte\";s:27:\"signature-cachet-entreprise\";s:35:\"Signature et cachet de l'entreprise\";s:28:\"signature-client-lu-approuve\";s:80:\"Signature du client pr\u00e9c\u00e9d\u00e9e de la mention 'Lu et approuv\u00e9, bon pour accord'\";s:15:\"moyen-reglement\";s:19:\"Moyen de r\u00e8glement\";s:15:\"delai-reglement\";s:20:\"D\u00e9lai de r\u00e8glement\";s:1:\"a\";s:2:\"\u00e0\";s:11:\"fin-de-mois\";s:11:\"fin de mois\";s:13:\"date-validite\";s:17:\"Date de validit\u00e9\";s:20:\"coordonnes-bancaires\";s:22:\"Coordonn\u00e9es bancaires\";s:24:\"coordonnes-bancaires-bic\";s:3:\"BIC\";s:25:\"coordonnes-bancaires-iban\";s:4:\"IBAN\";s:21:\"date-limite-reglement\";s:25:\"Date limite de r\u00e8glement\";s:9:\"url-suivi\";s:12:\"Url de suivi\";s:12:\"numero-suivi\";s:16:\"Num\u00e9ro de suivi\";s:12:\"nombre-colis\";s:15:\"Nombre de colis\";s:10:\"poid-total\";s:10:\"Poid total\";s:6:\"volume\";s:6:\"Volume\";s:14:\"libelle-cheque\";s:19:\"Libell\u00e9 du ch\u00e8que\";s:14:\"prochaine-date\";s:28:\"Date de la prochaine facture\";s:9:\"total-net\";s:9:\"Total Net\";s:12:\"total-net-ht\";s:12:\"Total net HT\";s:13:\"total-net-ttc\";s:13:\"Total net TTC\";s:12:\"reduction-ht\";s:12:\"Reduction HT\";s:9:\"reduction\";s:10:\"R\u00e9duction\";s:25:\"total-net-apres-reduction\";s:27:\"Total net apr\u00e8s r\u00e9duction\";s:9:\"remise-ht\";s:9:\"Remise HT\";s:10:\"remise-ttc\";s:10:\"Remise TTC\";s:6:\"remise\";s:6:\"Remise\";s:22:\"total-net-apres-remise\";s:23:\"Total net apr\u00e8s remise\";s:9:\"tax-total\";s:9:\"Total Tva\";s:17:\"montant-total-ttc\";s:17:\"Montant total TTC\";s:16:\"montant-total-ht\";s:16:\"Montant total HT\";s:13:\"montant-total\";s:13:\"Montant total\";s:22:\"total-frais-emaballage\";s:23:\"Total frais d'emballage\";s:16:\"total-frais-port\";s:19:\"Total frais de port\";s:14:\"total-a-regler\";s:16:\"Total \u00e0 r\u00e9gler\";}","customName":"","id":"1550"},"1158":{"corpid":"1033","ownerid":"1675","status":"ok","isdefault":"N","name":"Mod\u00e8le par d\u00e9faut","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"system","bgMode":"all","bgFile":"","bgCustomFile":"","hideTopPart":"N","hideBottomSeparator":"N","hideFill":"N","colorFill":"000000","hideDepositRecap":"N","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","fontsize":"10","language":"FR","timeformat":"dmy","txts":"","customName":"","id":"1158"}},"default":"1550"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.getPayDates',
    'params' => array()
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------

#### Attention

Aucun paramètre attendu pour cette méthode

Retour
------

```
{"response":{"payDates":{"60623":{"id":"60623","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"custom","rank":"1","value":"capouet","more":""},"60624":{"id":"60624","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"onorder","rank":"3","value":"\u00e0 la commande","more":""},"60625":{"id":"60625","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"endmonth","rank":"5","value":"fin de mois","more":""},"60626":{"id":"60626","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"30days","rank":"7","value":"\u00e0 30 jours","more":""},"60627":{"id":"60627","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"45days","rank":"9","value":"\u00e0 45 jours","more":""},"60628":{"id":"60628","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"60days","rank":"11","value":"\u00e0 60 jours","more":""},"60629":{"id":"60629","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"90days","rank":"13","value":"\u00e0 90 jours","more":""},"60630":{"id":"60630","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"xdays","rank":"15","value":"saisir un nombre de jours","more":""},"60631":{"id":"60631","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"scaled","rank":"17","value":"paiement \u00e9chelonn\u00e9","more":""},"78963":{"id":"78963","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"onorder","rank":"19","value":"test","more":""},"78964":{"id":"78964","corpid":"1033","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"custom","rank":"21","value":"test 2","more":""}},"default":"60624"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Accountdatas.getTranslationLanguages',
    'params' => array()
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------

#### Attention

Aucun paramètre attendu pour cette méthode

Retour
------

```
{"response":{"53":{"id":"53","corpid":"1033","status":"ok","lang":"English","flag":"us"},"136":{"id":"136","corpid":"1033","status":"ok","lang":"Italian","flag":"it"}},"error":"","status":"success"}
```


Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = [
	'method'	=> 'AccountingJournal.getList',
	'params'	=> [
		'type'		=> {{type}}
		'search'	=> [ 
			'periodecreated_start'	=> {{periodecreated_start}},
			'periodecreated_end'		=> {{periodecreated_end}},
			'accountingCodes'		=> {{accountingCodes}},
			'currency'			=> {{currency}},
			'recorded'			=> {{recorded}},
			'thirdView'			=> {{thirdView}},
			'bankAccount'			=> {{bankAccount}}
		],
		'pagination' 	=> [
			'nbperpage'			=> {{nbperpage}},
			'pagenum'			=> {{pagenum}} 
		]
	]
]
	
```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum('sell', 'purchase', 'bank', 'cashtill')
  * Défaut: 'all'
  * Description: Le type de journal que vous souhaitez voir
* Paramètre: {{periodecreated_start}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date de creation minimale (si period_dateRange a pour valeur 'custom')
* Paramètre: {{periodecreated_end}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date de creation maximale (si period_dateRange a pour valeur 'custom')
* Paramètre: {{accountingCodes}}
  * Requis: Non
  * Type: int[]
  * Défaut: Tous
  * Description: Tableau contenant les id des codes comptables
* Paramètre: {{currency}}
  * Requis: Non
  * Type: int
  * Défaut: Tous
  * Description: id de la monnaie des documents
* Paramètre: {{recorded}}
  * Requis: Non
  * Type: Y
  * Défaut: Aucun
  * Description: Mettre a Y pour voir les lignes deja comptabilisees
* Paramètre: {{thirdView}}
  * Requis: Non
  * Type: Y
  * Défaut: Aucun
  * Description: Mettre a Y pour avoir une vue simplifiee par clients (disponible uniquement si le type est egal a "bank")
* Paramètre: {{bankAccount}}
  * Requis: Non
  * Type: int
  * Défaut: Tous
  * Description: Id de la banque (disponible uniquement si le type est egal a "bank")
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'elements par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numero de page


Retour
------

```
{
	"response":{
		"infos":{
		"nbperpage":10,
		"nbpages":1,
		"pagenum":"1",
		"nbtotal":"2"
		},
		"result":[
			{
				"journal":"bank",
				"accounting":"general",
				"id":"16107",
				"corpid":"2719",
				"type":"credit",
				"code":"580000",
				"analyticsCode":"",
				"label":"Remise en banque du 04\/05\/2017 - azertyuio - Paypal",
				"codeLabel":"",
				"journalCode":"TRESO",
				"amount":"10.000000000",
				"date":"04\/05\/2017",
				"recorded":"N",
				"thirdAccount":"",
				"linkedid":"300",
				"linkedtype":"bank",
				"currency":"1",
				"status":"ok",
				"totalAmount":"10.00",
				"docURL":"",
				"thirdname":"M. Azerty uiop",
				"formatted_amount":"10.00",
				"currencyFormatted":"EUR",
				"labelCode":"Virements internes"
			
			},
			{
				"journal":"bank",
				"accounting":"general",
				"id":"16108",
				"corpid":"2719",
				"type":"debit",
				"code":"512100",
				"analyticsCode":"",
				"label":"Remise en banque du 04\/05\/2017 - azertyuio",
				"codeLabel":"",
				"journalCode":"TRESO",
				"amount":"10.000000000",
				"date":"04\/05\/2017",
				"recorded":"N",
				"thirdAccount":"",
				"linkedid":"300",
				"linkedtype":"bank",
				"currency":"1",
				"status":"ok",
				"totalAmount":"10.00",
				"docURL":"",
				"thirdname":"M. Azerty uiop",
				"formatted_amount":"10.00",
				"currencyFormatted":"EUR",
				"labelCode":"Comptes en monnaie nationale"
			}
		]
   
	}

}
	
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getCorpInfos',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"linkedtype":"corp","linkedid":"138","prefsid":"15287","accountingPrefsId":"0","logo":"","name":"Activane","email":"[email protected]","web":"https://api.sellsy.com","tel":"01234564789","mobile":"0612345678","fax":"0123456789","siret":"123 456 789 00001","vat":"FR 17 123 456 789","apenaf":"52.11Z","rcs":"La Rochelle 123 456 789","type":"SARL","capital":"30000","mainaddressid":"36834","id":"2918"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.updateCorpInfos',
        'params' => array(
            'corp' => array(
                'name'      => {{name}},
                'email'     => {{email}},
                'tel'       => {{tel}},
                'fax'       => {{fax}},
                'web'       => {{web}}
                'siret'     => {{siret}}
                'vat'       => {{vat}}
                'rcs'       => {{rcs}}
                'type'      => {{type}}
                'capital'   => {{capital}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre  |requis|type   |default|Description                                  |
|-----------|------|-------|-------|---------------------------------------------|
|{{name}}   |oui   |string |aucun  |Nom de la société                            |
|{{email}}  |non   |string |aucun  |Adresse email de la société                  |
|{{tel}}    |non   |int(10)|aucun  |Numéro de téléphone de la société            |
|{{fax}}    |non   |int(10)|aucun  |Numéro de fax de la société                  |
|{{web}}    |non   |string |aucun  |Site web de la société                       |
|{{siret}}  |non   |string |aucun  |Siret de la societe                          |
|{{vat}}    |non   |string |aucun  |Numéro de tva de la société                  |
|{{rcs}}    |non   |string |aucun  |Rcs de la société                            |
|{{type}}   |non   |string |aucun  |Type de la société (SARL, EURL, SA, SAS, ...)|
|{{capital}}|non   |int    |aucun  |Capital de la société                        |


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getAddressList',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"36834":{"id":"36834","corpid":"138","status":"ok","rank":"0","name":"EASYBILL","part1":"1 Rue Flemming","part2":"","zip":"17000","town":"La Rochelle","townid":"3834604","countrycode":"FR","originalid":"0","isMain":"Y","toHTML":"1 Rue Flemming 17000 - La Rochelle France"}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getAddress',
        'params' => array(
            'id'    => {{addressid}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description             |
|---------|------|----|-------|------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant de l'adresse|


Retour
------

```
    {"response":{"corpid":"138","linkedtype":"corp","linkedid":"138","status":"ok","rank":"0","name":"EASYBILL","part1":"1 Rue Flemming","part2":"","zip":"17000","town":"La Rochelle","townid":"3834604","countrycode":"FR","originalid":"0","id":"36834","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"1 Rue Flemming"},"1":{"txt":""},"2":{"txt":"17000 - La Rochelle"},"3":{"txt":"France"}}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.createAddress',
        'params' => array(
            'address'   => array(
                'name'      => {{name}},
                'part1'     => {{part1}},
                'part2'     => {{part2}},
                'zip'       => {{zip}},
                'town'          => {{town}},
                'countrycode'   => {{countrycode}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre      |requis|type  |default|Description                  |
|---------------|------|------|-------|-----------------------------|
|{{name}}       |oui   |string|aucun  |Nom de l'adresse             |
|{{part1}}      |non   |string|aucun  |Partie 1 de l'adresse        |
|{{part2}}      |non   |string|aucun  |Partie 2 de l'adresse        |
|{{zip}}        |non   |int(5)|aucun  |Code postal de l'adresse     |
|{{town}}       |non   |string|aucun  |Ville de l'adresse           |
|{{countrycode}}|non   |string|aucun  |Code pays l'adresse (FR, ...)|


Retour
------

```
    {"response":"{{addressid}}","error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.updateAddress',
        'params' => array(
            'address'   => array(
                'id'            => {{addressid}},
                'name'          => {{name}},
                'part1'         => {{part1}},
                'part2'         => {{part2}},
                'zip'           => {{zip}},
                'town'          => {{town}},
                'countrycode'       => {{countrycode}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre      |requis|type  |default|Description                  |
|---------------|------|------|-------|-----------------------------|
|{{addressid}}  |oui   |int   |aucun  |Identifiant de l'adresse     |
|{{name}}       |oui   |string|aucun  |Nom de l'adresse             |
|{{part1}}      |non   |string|aucun  |Partie 1 de l'adresse        |
|{{part2}}      |non   |string|aucun  |Partie 2 de l'adresse        |
|{{zip}}        |non   |int(5)|aucun  |Code postal de l'adresse     |
|{{town}}       |non   |string|aucun  |Ville de l'adresse           |
|{{countrycode}}|non   |string|aucun  |Code pays l'adresse (FR, ...)|


Retour
------

```
    {"response":"{{addressid}}","error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.deleteAddress',
        'params' => array(
            'addressid' => {{addressid}},
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre    |requis|type|default|Description             |
|-------------|------|----|-------|------------------------|
|{{addressid}}|oui   |int |aucun  |Identifiant de l'adresse|


Retour
------

```
    {"response":"null","error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getStaffInfos',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"corpid":"138","ownerid":"0","linkedtype":"staff","linkedid":"317","status":"ok","rank":"0","gender":"","civil":"man","forename":"Jacques","name":"Dupont","email":"[email protected]","web":"","tel":"0123456789","mobile":"0612345678","fax":"0123456789","position":"","pic":"","sign":"","birthdate":"0000-00-00","id":"3328","fullName":"M. Jacques Dupont"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.updateStaffInfos',
        'params' => array(
            'user' => array(
                'civil'     => {{civil}},
                'forename'  => {{forename}},
                'name'      => {{name}},
                'email'     => {{email}},
                'tel'       => {{tel}},
                'mobile'    => {{mobile}},
                'fax'       => {{fax}},
                'position'  => {{position}},
		'uilang'	=> {{uilang}}
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre   |requis|type            |default|Description                                   |
|------------|------|----------------|-------|----------------------------------------------|
|{{civil}}   |non   |string          |aucun  |Civilité du contact - '', 'man','woman','lady'|
|{{forename}}|oui   |string          |aucun  |Prénom de l'utilisateur                       |
|{{name}}    |oui   |string          |aucun  |Nom de l'utilisateur                          |
|{{email}}   |non   |string          |aucun  |Email de l'utilisateur                        |
|{{tel}}     |non   |int(10)         |aucun  |Ligne directe de l'utilisateur                |
|{{mobile}}  |non   |int(10)         |aucun  |Numéro de portable de l'utilisateur           |
|{{fax}}     |non   |int(10)         |aucun  |Numéro de fax de l'utilisateur                |
|{{position}}|non   |string          |aucun  |Fonction de l'utilisateur                     |
|{{uilang}}  |non   |enum('fr', 'en')|aucun  |Langue de l'utilisateur                       |


Retour
------

```
    {"response":{"corpid":"138","ownerid":"0","linkedtype":"staff","linkedid":"317","status":"ok","rank":"0","gender":"","civil":"man","forename":"Jacques","name":"Dupont","email":"[email protected]","web":"","tel":"0123456789","mobile":"0612345678","fax":"0123456789","position":"","pic":"","sign":"","birthdate":"0000-00-00","id":"3328","fullName":"M. Jacques Dupont"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.setNumberFormat',
        'params' => array(
            'numberformat' => array(
                'currencyid' => {{currencyid}},
                'currencyposition' => {{currencyposition}},
                'numberdecimals' => {{numberdecimals}},
                'numberthousands' => {{numberthousands}},
                'numberprecision' => {{numberprecision}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre           |requis|type                                 |default|Description          |
|--------------------|------|-------------------------------------|-------|---------------------|
|{{currencyid}}      |oui   |int                                  |aucun  |ID de la devise      |
|{{currencyposition}}|oui   |enum('left', 'right', 'both', 'none')|right  |Position de la devise|
|{{numberdecimals}}  |oui   |enum(',', '.')                       |,      |Séparateur décimal   |
|{{numberthousands}} |oui   |enum(' ', 'right')                   | ' '   |Séparateur milliers  |
|{{numberprecision}} |oui   |string                               |aucun  |Précision décimale   |


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.updateDefaultPayMediums',
        'params' => array(
			'paymediumsToCheck' => {{paymediumids}},
		)
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre       |requis|type |default|Description                                             |
|----------------|------|-----|-------|--------------------------------------------------------|
|{{paymediumids}}|oui   |array|aucun  |Tableau contenant les id de moyens de paiements à cocher|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getLogoPublicLink',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":"?_f=file&id={{hash_public_link}}","error":"","status":"success"}}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.updateLogo',
        'params' => array(
            'logo'  => array(
                'base64'    => {{encoded_image}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre        |requis|type  |default|Description            |
|-----------------|------|------|-------|-----------------------|
|{{encoded_image}}|oui   |string|aucun  |Image encodée en base64|


Comment encoder une image
-------------------------

#### Attention

Dans cet exemple, le logo est envoyé à l'aide d'un formulaire possédant l'attribut enctype="multipart/form-data" et d'une balise INPUT de type FILE

```
    $file = fopen($_FILES['logo']['tmp_name'], 'r');
    $size = filesize($_FILES['logo']['tmp_name']);
    $content = fread($file, $size);
    fclose($file);
    $encoded_image = base64_encode($content);
                
```


Retour
------

```
    {"response":null,"error":"","status":"success"}}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.deleteLogo',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":null,"error":"","status":"success"}}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getCurrencies',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":{"1":{"name":"EUR","symbol":"\u20ac","rank":"1","mercacode":"978","enabled":"Y","id":"1"},"2":{"name":"USD","symbol":"$","rank":"2","mercacode":"840","enabled":"Y","id":"2"},"4":{"name":"PND","symbol":"\u00a3","rank":"3","mercacode":"826","enabled":"Y","id":"4"},"3":{"name":"YEN","symbol":"\u00a5","rank":"4","mercacode":"","enabled":"Y","id":"3"},"5":{"name":"CFA","symbol":"CFA","rank":"9","mercacode":"","enabled":"Y","id":"5"}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.getCurrency',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction  
Elle retourne la monnaie utilisée par la corp courante

Retour
------

```
    {"response":{"name":"EUR","symbol":"\u20ac","rank":"1","mercacode":"978","enabled":"Y","id":"1"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'AccountPrefs.setCurrency',
        'params' => array(
            'currency' => array(
                'id' => {{currencyid}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre     |requis|type|default|Description                        |
|--------------|------|----|-------|-----------------------------------|
|{{currencyid}}|oui   |int |aucun  |Identifiant de la monnaie souhaitée|


Retour
------

```
    {"response":{"currency_id":"1"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'AccountPrefs.setLanguage',
        'params' => array(
            'lang' => array(
                'uilang' => {{uilang}}
            )
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre |requis|type|default|Description                             |
|----------|------|----|-------|----------------------------------------|
|{{uilang}}|oui   |enum|en     |Nom court de la langue souhaitée (fr/en)|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request =  array( 
    'method' => 'Purchase.getList', 
    'params' => array(
        'doctype'       => {{doctype}},
        'includeLinkedDocs'     => {{includeLinkedDocs}},
        'includeTags'       => {{includeTags}},
        'includePayments'   => {{includePayments}},
        'search'    => array(
            'ident'         => {{ident}},
            'tags'          => {{tags}},
            'thirds'        => {{thirds}},
            'steps'         => {{steps}},
            'deliverysteps'     => {{deliverysteps}},
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end}},
            'periodecreationDate_start'  => {{periodecreationDate_start}},
            'periodecreationDate_end'    => {{periodecreationDate_end}},
            'staffs'        => {{staffs}}
        ),
        'pagination'    => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{doctype}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Type des documents d'achat à récupérer. Valeurs possibles : (order, delivery ou invoice)
* Paramètre: {{includeLinkedDocs}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Permet de récupérer les documents de vente liés (identifiant + doctype). Valeurs possibles : Y/N
* Paramètre: {{includeTags}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Permet de récupérer les smart-tags liés. Valeurs possibles : Y/N
* Paramètre: {{includePayments}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Permet de récupérer les paiements liés. Valeurs possibles : Y/N
* Paramètre: {{ident}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de filtrer la liste suivant l'identifiant de l'achat
* Paramètre: {{tags}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par smart-tags
* Paramètre: {{thirds}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par fournisseur(s)
* Paramètre: {{steps}}
  * Requis: Non
  * Type: enum
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par status de document. Status possible : ‘draft‘, ‘sent‘, ‘due‘, ‘read‘, ‘accepted‘, ‘refused‘, ‘expired‘, ‘advanced‘, ‘invoiced‘, ‘partialInvoiced‘, ‘payinprogress‘, ‘paid‘, ‘late‘, ‘cancelled‘, ‘stored‘, ‘partielspend‘, ‘spent‘
* Paramètre: {{deliverysteps}}
  * Requis: Non
  * Type: enum
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par status de livraison de document. Status possible : ‘wait‘, ‘partial‘, ‘delivered‘
* Paramètre: {{periodecreated_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date du document
* Paramètre: {{periodecreated_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date du document
* Paramètre: {{periodecreationDate_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de création
* Paramètre: {{periodecreationDate_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de création
* Paramètre: {{staffs}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par propriétaire(s)
* Paramètre: {{pagenum}}
  * Requis: non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page souhaitée
* Paramètre: {{nbperpage}}
  * Requis: non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'élements souhaités par page


Retour
------

```
{"response":{"infos":{"nbperpage":20,"nbpages":1,"pagenum":"1","nbtotal":"1"},"result":[{"id":"1304","corpid":"1641","ownerid":"2542","corpname":"Sellsy","purdocmapid":"1415","prefsid":"1452","linkedtype":"purInvoice","linkedid":"316","parentid":"0","thirdid":"119304","thirdname":"Activane","thirdvatnum":"","hasVat":"Y","status":"ok","fileid":"27291","filename":"F-INV-20140911-00001_1410450530.9155","nbpages":"1","ident":"F_INV-20140911-00001","thirdident":"","created":"2014-09-11 17:48:50","displayedDate":"2014-09-11","currencysymbol":"\u20ac","docspeakerText":"Votre contact","docspeakerStaffId":"0","docspeakerStaffFullName":"","ownerFullName":"R\u00e9my Neuter","subject":"Achat rapide","corpaddressid":"105361","thirdaddressid":"105362","shipaddresstype":"corp","shipthirdid":"0","shipaddressid":"105363","rowsAmount":"2.970000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"2.970000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"2.970000000","taxesAmountSum":"0.590000000","taxesAmountDetails":"a:1:{i:86718;s:11:\"0.590000000\";}","totalAmount":"3.560000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"86821","payDateText":"capouet","payDateCustom":"2014-09-11","payMediumsText":"a:1:{i:0;s:6:\"Paypal\";}","payCheckOrderText":"","payBankAccountText":"","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","shippingDate":"0000-00-00","displayShipAddress":"N","saveThirdPrefs":"N","contactId":"0","contactName":"","analyticsCode":"","recordable":"N","recorded":"N","rateCategory":"0","isTaxesInc":"N","stockImpact":"Y","isFromPresta":"N","oldid":"0","thirdRelationType":"supplier","doctypeid":"316","step":"paid","deliverystep":"wait","isDeposit":"N","posId":"0","dueAmount":"0.000000000","externalident":"","currencyid":"1","currencyposition":"right","numberformat":"fr","numberdecimals":",","numberthousands":" ","numberprecision":"2","step_color":"primary-50","step_hex":"#0B5CE1","step_label":"Pay\u00e9","step_css":"colorPaid","step_banner":"paid","step_id":"paid","deliverystep_color":"pink","deliverystep_hex":"#C033DA","deliverystep_label":"En attente","deliverystep_css":"colorDraft","deliverystep_banner":"wait","deliverystep_id":"wait","canBeSharedByLoggedStaff":"Y","displayed_payMediumsText":"Paypal","formatted_totalAmount":"3,56 \u20ac","formatted_totalAmountTaxesFree":"2,97 \u20ac","formatted_displayedDate":"11\/09\/2014","formatted_payDateCustom":"11\/09\/2014","noedit":"N"}]},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.getOne', 
    'params' => array(
        'id'        => {{id}},
        'includeTags'   => {{includeTags}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type|Défaut|Description                                                     |
|---------------|------|----|------|----------------------------------------------------------------|
|{{id}}         |Oui   |int |Aucun |Identifiant du document d'achat                                 |
|{{includeTags}}|Non   |enum|N     |Permet de récupérer les smart-tags liés. Valeurs possibles : Y/N|


Retour
------

```
{"response":{"id":"1304","corpid":"1641","ownerid":"2542","purdocmapid":"1415","prefsid":"1452","linkedtype":"purInvoice","linkedid":"316","parentid":"0","thirdid":"119304","hasVat":"Y","status":"ok","fileid":"27291","filename":"F-INV-20140911-00001_1410450530.9155","nbpages":"1","ident":"F_INV-20140911-00001","thirdident":"","created":"2014-09-11 17:48:50","displayedDate":"11\/09\/2014","currencysymbol":"\u20ac","docspeakerStaffId":"0","docspeakerStaffFullName":"","ownerFullName":"R\u00e9my Neuter","subject":"Achat rapide","corpaddressid":"105361","thirdaddressid":"105362","shipaddresstype":"corp","shipthirdid":"0","shipaddressid":"105363","rowsAmount":"2.970000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"2.970000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"2.970000000","taxesAmountSum":"0.590000000","taxesAmountDetails":"a:1:{i:86718;s:11:\"0.590000000\";}","totalAmount":"3.560000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"86821","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","shippingDate":"0000-00-00","displayShipAddress":"N","saveThirdPrefs":"N","contactId":"0","contactName":"","analyticsCode":"","recordable":"N","recorded":"N","rateCategory":"0","isTaxesInc":"N","stockImpact":"Y","isFromPresta":"N","oldid":"0","doctypeid":"316","step":"paid","deliverystep":"wait","isDeposit":"N","posId":"0","dueAmount":"0.000000000","externalident":"","countrycode":"FR","defaultAddressCountry":"FR","globalDiscount":"0.000000000","globalDiscountUnit":"percent","globalOffer":"0.000000000","useDeposit":"N","discountByRows":"N","addPdfToEmail":"Y","addGtuToEmail":"Y","addSenderToEmail":"N","hideColumnName":"N","hideColumnNotes":"N","hideColumnUnit":"N","hideColumnTaxFree":"N","hideColumnTax":"N","hideColumnTaxInc":"N","hideColumnQt":"N","hideColumnImage":"N","hideColumnDiscount":"","hideTotalTaxesFree":"N","hideTotal":"N","hidePayment":"N","hidePricesOnDelivery":"N","hideTaxes":"N","hasPenaltyRetardWarning":"Y","penaltyRetardWarningText":"","showContactOnPdf":"N","showParentOnPdf":"","hasCorpAgree":"N","hasThirdAgree":"N","notes":"","nbExpireDays":"30","displayAmounts":"Y","display_footer":"Y","display_ident":"Y","display_email":"Y","display_tel":"Y","display_mobile":"Y","display_fax":"Y","display_addresse":"Y","displayBankAccount":"Y","displayIBAN":"Y","displayBIC":"Y","hideTips":"N","hideOrdersDocs":"N","hideDeliveriesDocs":"N","hideProformaDocs":"N","emailsSentFromCorp":"Y","hasEmailBaseline":"Y","sendRawEmails":"N","forceDisplayBankAccount":"","forceDisplayCheckOrder":"","showUnitIn":"unitamountcolumn","addBarCodeToDesc":"","addBarCodeImageToDesc":"","showNbItemOnPdf":"N","isdefault":"Y","name":"Apparence par d\u00e9faut","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"system","bgMode":"all","bgFile":"","bgCustomFile":"","hideTopPart":"N","hideBottomSeparator":"N","documentIdentOnLeft":"N","hideFill":"N","colorFill":"000000","hideDepositRecap":"N","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","fontsize":"10","language":"FR","timeformat":"dmy","txts":"","customName":"","topMargin":"35","documentAddressOnLeft":"N","documentFormat":"A4","context":"update","type":"purInvoice","relateds":{"_xml_childtag":"related","0":{"relatedId":"1184","relatedType":"payment","relatedDate":"2014-09-11","relatedAmount":"3.560000000","relatedMedium":"86707","relatedMediumTxt":"esp\u00e8ces","relatedIdent":"0001","relatedNotes":"","docid":"1304","doctype":"purInvoice","formatted_relatedAmount":"3,56 \u20ac","formatted_relatedDate":"11\/09\/2014","html_relatedNotes":"","relatedTypeText":false,"relatedFullLabel":" N\u00b0 0001"}},"relateds_amount":"3.560000000","corpAddress":{"id":"105361","name":"","part1":"","part2":"","part3":"","part4":"","zip":"","town":"","state":"","townid":"0","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":" "},"1":{"txt":"France"}}},"hasThird":"Y","thirdType":"corporation","thirdAddress":{"id":"105362","name":"","part1":"","part2":"","part3":"","part4":"","zip":"","town":"","state":"","townid":"0","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":" "},"1":{"txt":"France"}}},"shipAddress":{"id":"105363","name":"","part1":"","part2":"","part3":"","part4":"","zip":"","town":"","state":"","townid":"0","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":" "},"1":{"txt":"France"}}},"canWriteDocNamespace":"Y","logoFile":"","logoFile_system":"","logoHeight":0,"logoWidth":0,"label":"Facture fournisseur","fullIdent":"Facture fournisseur N\u00b0 F_INV-20140911-00001","numformat":{"name":"fr","decimals":",","thousands":" ","currencypos":"right","currencysymbol":"\u20ac","precision":"2"},"numformats":{"_xml_childtag":"format","0":{"label":"fran\u00e7ais [1 234,57 #]","decimals":",","thousands":" ","currencypos":"right","name":"fr"},"1":{"label":"anglais [#1,234.57]","decimals":".","thousands":",","currencypos":"left","name":"en"},"2":{"label":"us [#1 234.57]","decimals":".","thousands":" ","currencypos":"left","name":"usd"}},"precisions":{"_xml_childtag":"precision","0":{"value":0},"1":{"value":1},"2":{"value":2},"3":{"value":3},"4":{"value":4},"5":{"value":5},"6":{"value":6},"7":{"value":7},"8":{"value":8},"9":{"value":9}},"currencies":{"1":{"name":"EUR","longname":"Euro","symbol":"\u20ac","rank":"1","mercacode":"978","paypalcode":"EUR","enabled":"Y","id":"1","selected":"N"},"2":{"name":"USD","longname":"US Dollar","symbol":"$","rank":"2","mercacode":"840","paypalcode":"USD","enabled":"Y","id":"2","selected":"N"},"4":{"name":"PND","longname":"","symbol":"\u00a3","rank":"3","mercacode":"826","paypalcode":"GBP","enabled":"Y","id":"4","selected":"N"},"3":{"name":"YEN","longname":"Yen","symbol":"\u00a5","rank":"4","mercacode":"","paypalcode":"","enabled":"Y","id":"3","selected":"N"},"5":{"name":"MAD","longname":"Moroccan Dirham","symbol":"MAD","rank":"5","mercacode":"","paypalcode":"","enabled":"Y","id":"5","selected":"N"},"6":{"name":"DZD","longname":"Algerian Dinar","symbol":"DZD","rank":"6","mercacode":"","paypalcode":"","enabled":"Y","id":"6","selected":"N"},"7":{"name":"DT","longname":"","symbol":"DT","rank":"7","mercacode":"","paypalcode":"","enabled":"Y","id":"7","selected":"N"},"8":{"name":"CHF","longname":"Swiss Franc","symbol":"CHF","rank":"8","mercacode":"","paypalcode":"","enabled":"Y","id":"8","selected":"N"},"11":{"name":"CFA","longname":"","symbol":"CFA","rank":"9","mercacode":"","paypalcode":"","enabled":"Y","id":"11","selected":"N"},"12":{"name":"cfp","longname":"","symbol":"cfp","rank":"10","mercacode":"","paypalcode":"","enabled":"Y","id":"12","selected":"N"},"13":{"name":"INR","longname":"Indian Rupee","symbol":"INR","rank":"11","mercacode":"","paypalcode":"","enabled":"Y","id":"13","selected":"N"},"14":{"name":"NOK","longname":"Norwegian Krone","symbol":"NOK","rank":"12","mercacode":"","paypalcode":"","enabled":"Y","id":"14","selected":"N"},"15":{"name":"AUD","longname":"Australian Dollar","symbol":"AUD","rank":"13","mercacode":"","paypalcode":"","enabled":"Y","id":"15","selected":"N"},"16":{"name":"NZD","longname":"New Zealand Dollar","symbol":"NZD","rank":"14","mercacode":"","paypalcode":"","enabled":"Y","id":"16","selected":"N"},"17":{"name":"AED","longname":"United Arab Emirates dirham","symbol":"AED","rank":"15","mercacode":"","paypalcode":"","enabled":"Y","id":"17","selected":"N"},"18":{"name":"NGN","longname":"Naira","symbol":"NGN","rank":"16","mercacode":"","paypalcode":"","enabled":"Y","id":"18","selected":"N"},"19":{"name":"SGD","longname":"Singapore Dollar","symbol":"SGD","rank":"17","mercacode":"","paypalcode":"","enabled":"Y","id":"19","selected":"N"},"20":{"name":"THB","longname":"Baht","symbol":"THB","rank":"18","mercacode":"","paypalcode":"","enabled":"Y","id":"20","selected":"N"},"21":{"name":"MYR","longname":"Malaysian Ringgit","symbol":"MYR","rank":"19","mercacode":"","paypalcode":"","enabled":"Y","id":"21","selected":"N"},"22":{"name":"IDR","longname":"Rupiah","symbol":"IDR","rank":"20","mercacode":"","paypalcode":"","enabled":"Y","id":"22","selected":"N"},"24":{"name":"CNY","longname":"Yuan Renminbi","symbol":"CNY","rank":"22","mercacode":"","paypalcode":"","enabled":"Y","id":"24","selected":"N"},"25":{"name":"TRY","longname":"New Turkish Lira","symbol":"TRY","rank":"23","mercacode":"","paypalcode":"","enabled":"Y","id":"25","selected":"N"},"26":{"name":"MNT","longname":"Tugrik","symbol":"MNT","rank":"24","mercacode":"","paypalcode":"","enabled":"Y","id":"26","selected":"N"},"155":{"name":"AFN","longname":"Afghanistan Afghani","symbol":"AFN","rank":"25","mercacode":"","paypalcode":"","enabled":"Y","id":"155","selected":"N"},"156":{"name":"ALL","longname":"Albania Lek","symbol":"ALL","rank":"26","mercacode":"","paypalcode":"","enabled":"Y","id":"156","selected":"N"},"157":{"name":"AMD","longname":"Armenia Dram","symbol":"AMD","rank":"27","mercacode":"","paypalcode":"","enabled":"Y","id":"157","selected":"N"},"158":{"name":"ANG","longname":"Netherlands Antilles Guilder","symbol":"ANG","rank":"28","mercacode":"","paypalcode":"","enabled":"Y","id":"158","selected":"N"},"159":{"name":"AOA","longname":"Angola Kwanza","symbol":"AOA","rank":"29","mercacode":"","paypalcode":"","enabled":"Y","id":"159","selected":"N"},"160":{"name":"ARS","longname":"Argentina Peso","symbol":"ARS","rank":"30","mercacode":"","paypalcode":"","enabled":"Y","id":"160","selected":"N"},"161":{"name":"AWG","longname":"Aruba Guilder","symbol":"AWG","rank":"31","mercacode":"","paypalcode":"","enabled":"Y","id":"161","selected":"N"},"162":{"name":"AZN","longname":"Azerbaijan New Manat","symbol":"AZN","rank":"32","mercacode":"","paypalcode":"","enabled":"Y","id":"162","selected":"N"},"163":{"name":"BAM","longname":"Bosnia and Herzegovina Convertible Marka","symbol":"BAM","rank":"33","mercacode":"","paypalcode":"","enabled":"Y","id":"163","selected":"N"},"164":{"name":"BBD","longname":"Barbados Dollar","symbol":"BBD","rank":"34","mercacode":"","paypalcode":"","enabled":"Y","id":"164","selected":"N"},"165":{"name":"BDT","longname":"Bangladesh Taka","symbol":"BDT","rank":"35","mercacode":"","paypalcode":"","enabled":"Y","id":"165","selected":"N"},"166":{"name":"BGN","longname":"Bulgaria Lev","symbol":"BGN","rank":"36","mercacode":"","paypalcode":"","enabled":"Y","id":"166","selected":"N"},"167":{"name":"BHD","longname":"Bahrain Dinar","symbol":"BHD","rank":"37","mercacode":"","paypalcode":"","enabled":"Y","id":"167","selected":"N"},"168":{"name":"BIF","longname":"Burundi Franc","symbol":"BIF","rank":"38","mercacode":"","paypalcode":"","enabled":"Y","id":"168","selected":"N"},"169":{"name":"BMD","longname":"Bermuda Dollar","symbol":"BMD","rank":"39","mercacode":"","paypalcode":"","enabled":"Y","id":"169","selected":"N"},"170":{"name":"BND","longname":"Brunei Darussalam Dollar","symbol":"BND","rank":"40","mercacode":"","paypalcode":"","enabled":"Y","id":"170","selected":"N"},"171":{"name":"BOB","longname":"Bolivia Boliviano","symbol":"BOB","rank":"41","mercacode":"","paypalcode":"","enabled":"Y","id":"171","selected":"N"},"172":{"name":"BRL","longname":"Brazil Real","symbol":"BRL","rank":"42","mercacode":"","paypalcode":"","enabled":"Y","id":"172","selected":"N"},"173":{"name":"BSD","longname":"Bahamas Dollar","symbol":"BSD","rank":"43","mercacode":"","paypalcode":"","enabled":"Y","id":"173","selected":"N"},"174":{"name":"BTN","longname":"Bhutan Ngultrum","symbol":"BTN","rank":"44","mercacode":"","paypalcode":"","enabled":"Y","id":"174","selected":"N"},"175":{"name":"BWP","longname":"Botswana Pula","symbol":"BWP","rank":"45","mercacode":"","paypalcode":"","enabled":"Y","id":"175","selected":"N"},"176":{"name":"BYR","longname":"Belarus Ruble","symbol":"BYR","rank":"46","mercacode":"","paypalcode":"","enabled":"Y","id":"176","selected":"N"},"177":{"name":"BZD","longname":"Belize Dollar","symbol":"BZD","rank":"47","mercacode":"","paypalcode":"","enabled":"Y","id":"177","selected":"N"},"178":{"name":"CAD","longname":"Canada Dollar","symbol":"CAD","rank":"48","mercacode":"","paypalcode":"","enabled":"Y","id":"178","selected":"N"},"179":{"name":"CDF","longname":"Congo\/Kinshasa Franc","symbol":"CDF","rank":"49","mercacode":"","paypalcode":"","enabled":"Y","id":"179","selected":"N"},"180":{"name":"CLP","longname":"Chile Peso","symbol":"CLP","rank":"50","mercacode":"","paypalcode":"","enabled":"Y","id":"180","selected":"N"},"181":{"name":"COP","longname":"Colombia Peso","symbol":"COP","rank":"51","mercacode":"","paypalcode":"","enabled":"Y","id":"181","selected":"N"},"182":{"name":"CRC","longname":"Costa Rica Colon","symbol":"CRC","rank":"52","mercacode":"","paypalcode":"","enabled":"Y","id":"182","selected":"N"},"183":{"name":"CUC","longname":"Cuba Convertible Peso","symbol":"CUC","rank":"53","mercacode":"","paypalcode":"","enabled":"Y","id":"183","selected":"N"},"184":{"name":"CUP","longname":"Cuba Peso","symbol":"CUP","rank":"54","mercacode":"","paypalcode":"","enabled":"Y","id":"184","selected":"N"},"185":{"name":"CVE","longname":"Cape Verde Escudo","symbol":"CVE","rank":"55","mercacode":"","paypalcode":"","enabled":"Y","id":"185","selected":"N"},"186":{"name":"CZK","longname":"Czech Republic Koruna","symbol":"CZK","rank":"56","mercacode":"","paypalcode":"","enabled":"Y","id":"186","selected":"N"},"187":{"name":"DJF","longname":"Djibouti Franc","symbol":"DJF","rank":"57","mercacode":"","paypalcode":"","enabled":"Y","id":"187","selected":"N"},"188":{"name":"DKK","longname":"Denmark Krone","symbol":"DKK","rank":"58","mercacode":"","paypalcode":"","enabled":"Y","id":"188","selected":"N"},"189":{"name":"DOP","longname":"Dominican Republic Peso","symbol":"DOP","rank":"59","mercacode":"","paypalcode":"","enabled":"Y","id":"189","selected":"N"},"190":{"name":"EGP","longname":"Egypt Pound","symbol":"EGP","rank":"60","mercacode":"","paypalcode":"","enabled":"Y","id":"190","selected":"N"},"191":{"name":"ERN","longname":"Eritrea Nakfa","symbol":"ERN","rank":"61","mercacode":"","paypalcode":"","enabled":"Y","id":"191","selected":"N"},"192":{"name":"ETB","longname":"Ethiopia Birr","symbol":"ETB","rank":"62","mercacode":"","paypalcode":"","enabled":"Y","id":"192","selected":"N"},"193":{"name":"FJD","longname":"Fiji Dollar","symbol":"FJD","rank":"63","mercacode":"","paypalcode":"","enabled":"Y","id":"193","selected":"N"},"194":{"name":"FKP","longname":"Falkland Islands (Malvinas) Pound","symbol":"FKP","rank":"64","mercacode":"","paypalcode":"","enabled":"Y","id":"194","selected":"N"},"195":{"name":"GBP","longname":"United Kingdom Pound","symbol":"GBP","rank":"65","mercacode":"","paypalcode":"","enabled":"Y","id":"195","selected":"N"},"196":{"name":"GEL","longname":"Georgia Lari","symbol":"GEL","rank":"66","mercacode":"","paypalcode":"","enabled":"Y","id":"196","selected":"N"},"197":{"name":"GGP","longname":"Guernsey Pound","symbol":"GGP","rank":"67","mercacode":"","paypalcode":"","enabled":"Y","id":"197","selected":"N"},"198":{"name":"GHS","longname":"Ghana Cedi","symbol":"GHS","rank":"68","mercacode":"","paypalcode":"","enabled":"Y","id":"198","selected":"N"},"199":{"name":"GIP","longname":"Gibraltar Pound","symbol":"GIP","rank":"69","mercacode":"","paypalcode":"","enabled":"Y","id":"199","selected":"N"},"200":{"name":"GMD","longname":"Gambia Dalasi","symbol":"GMD","rank":"70","mercacode":"","paypalcode":"","enabled":"Y","id":"200","selected":"N"},"201":{"name":"GNF","longname":"Guinea Franc","symbol":"GNF","rank":"71","mercacode":"","paypalcode":"","enabled":"Y","id":"201","selected":"N"},"202":{"name":"GTQ","longname":"Guatemala Quetzal","symbol":"GTQ","rank":"72","mercacode":"","paypalcode":"","enabled":"Y","id":"202","selected":"N"},"203":{"name":"GYD","longname":"Guyana Dollar","symbol":"GYD","rank":"73","mercacode":"","paypalcode":"","enabled":"Y","id":"203","selected":"N"},"204":{"name":"HKD","longname":"Hong Kong Dollar","symbol":"HKD","rank":"74","mercacode":"","paypalcode":"","enabled":"Y","id":"204","selected":"N"},"205":{"name":"HNL","longname":"Honduras Lempira","symbol":"HNL","rank":"75","mercacode":"","paypalcode":"","enabled":"Y","id":"205","selected":"N"},"206":{"name":"HRK","longname":"Croatia Kuna","symbol":"HRK","rank":"76","mercacode":"","paypalcode":"","enabled":"Y","id":"206","selected":"N"},"207":{"name":"HTG","longname":"Haiti Gourde","symbol":"HTG","rank":"77","mercacode":"","paypalcode":"","enabled":"Y","id":"207","selected":"N"},"208":{"name":"HUF","longname":"Hungary Forint","symbol":"HUF","rank":"78","mercacode":"","paypalcode":"","enabled":"Y","id":"208","selected":"N"},"209":{"name":"ILS","longname":"Israel Shekel","symbol":"ILS","rank":"79","mercacode":"","paypalcode":"","enabled":"Y","id":"209","selected":"N"},"210":{"name":"IMP","longname":"Isle of Man Pound","symbol":"IMP","rank":"80","mercacode":"","paypalcode":"","enabled":"Y","id":"210","selected":"N"},"211":{"name":"IQD","longname":"Iraq Dinar","symbol":"IQD","rank":"81","mercacode":"","paypalcode":"","enabled":"Y","id":"211","selected":"N"},"212":{"name":"IRR","longname":"Iran Rial","symbol":"IRR","rank":"82","mercacode":"","paypalcode":"","enabled":"Y","id":"212","selected":"N"},"213":{"name":"ISK","longname":"Iceland Krona","symbol":"ISK","rank":"83","mercacode":"","paypalcode":"","enabled":"Y","id":"213","selected":"N"},"214":{"name":"JEP","longname":"Jersey Pound","symbol":"JEP","rank":"84","mercacode":"","paypalcode":"","enabled":"Y","id":"214","selected":"N"},"215":{"name":"JMD","longname":"Jamaica Dollar","symbol":"JMD","rank":"85","mercacode":"","paypalcode":"","enabled":"Y","id":","symbol":"JMD","rank":"85","mercacode":"","paypalcode":"","enabled":"Y","id":"215","selected":"N"},"216":{"name":"JOD","longname":"Jordan Dinar","symbol":"JOD","rank":"86","mercacode":"","paypalcode":"","enabled":"Y","id":"216","selected":"N"},"217":{"name":"JPY","longname":"Japan Yen","symbol":"JPY","rank":"87","mercacode":"","paypalcode":"","enabled":"Y","id":"217","selected":"N"},"218":{"name":"KES","longname":"Kenya Shilling","symbol":"KES","rank":"88","mercacode":"","paypalcode":"","enabled":"Y","id":"218","selected":"N"},"219":{"name":"KGS","longname":"Kyrgyzstan Som","symbol":"KGS","rank":"89","mercacode":"","paypalcode":"","enabled":"Y","id":"219","selected":"N"},"220":{"name":"KHR","longname":"Cambodia Riel","symbol":"KHR","rank":"90","mercacode":"","paypalcode":"","enabled":"Y","id":"220","selected":"N"},"221":{"name":"KMF","longname":"Comoros Franc","symbol":"KMF","rank":"91","mercacode":"","paypalcode":"","enabled":"Y","id":"221","selected":"N"},"222":{"name":"KPW","longname":"Korea (North) Won","symbol":"KPW","rank":"92","mercacode":"","paypalcode":"","enabled":"Y","id":"222","selected":"N"},"223":{"name":"KRW","longname":"Korea (South) Won","symbol":"KRW","rank":"93","mercacode":"","paypalcode":"","enabled":"Y","id":"223","selected":"N"},"224":{"name":"KWD","longname":"Kuwait Dinar","symbol":"KWD","rank":"94","mercacode":"","paypalcode":"","enabled":"Y","id":"224","selected":"N"},"225":{"name":"KYD","longname":"Cayman Islands Dollar","symbol":"KYD","rank":"95","mercacode":"","paypalcode":"","enabled":"Y","id":"225","selected":"N"},"226":{"name":"KZT","longname":"Kazakhstan Tenge","symbol":"KZT","rank":"96","mercacode":"","paypalcode":"","enabled":"Y","id":"226","selected":"N"},"227":{"name":"LAK","longname":"Laos Kip","symbol":"LAK","rank":"97","mercacode":"","paypalcode":"","enabled":"Y","id":"227","selected":"N"},"228":{"name":"LBP","longname":"Lebanon Pound","symbol":"LBP","rank":"98","mercacode":"","paypalcode":"","enabled":"Y","id":"228","selected":"N"},"229":{"name":"LKR","longname":"Sri Lanka Rupee","symbol":"LKR","rank":"99","mercacode":"","paypalcode":"","enabled":"Y","id":"229","selected":"N"},"230":{"name":"LRD","longname":"Liberia Dollar","symbol":"LRD","rank":"100","mercacode":"","paypalcode":"","enabled":"Y","id":"230","selected":"N"},"231":{"name":"LSL","longname":"Lesotho Loti","symbol":"LSL","rank":"101","mercacode":"","paypalcode":"","enabled":"Y","id":"231","selected":"N"},"232":{"name":"LTL","longname":"Lithuania Litas","symbol":"LTL","rank":"102","mercacode":"","paypalcode":"","enabled":"Y","id":"232","selected":"N"},"233":{"name":"LVL","longname":"Latvia Lat","symbol":"LVL","rank":"103","mercacode":"","paypalcode":"","enabled":"Y","id":"233","selected":"N"},"234":{"name":"LYD","longname":"Libya Dinar","symbol":"LYD","rank":"104","mercacode":"","paypalcode":"","enabled":"Y","id":"234","selected":"N"},"235":{"name":"MDL","longname":"Moldova Leu","symbol":"MDL","rank":"105","mercacode":"","paypalcode":"","enabled":"Y","id":"235","selected":"N"},"236":{"name":"MGA","longname":"Madagascar Ariary","symbol":"MGA","rank":"106","mercacode":"","paypalcode":"","enabled":"Y","id":"236","selected":"N"},"237":{"name":"MKD","longname":"Macedonia Denar","symbol":"MKD","rank":"107","mercacode":"","paypalcode":"","enabled":"Y","id":"237","selected":"N"},"238":{"name":"MMK","longname":"Myanmar (Burma) Kyat","symbol":"MMK","rank":"108","mercacode":"","paypalcode":"","enabled":"Y","id":"238","selected":"N"},"239":{"name":"MOP","longname":"Macau Pataca","symbol":"MOP","rank":"109","mercacode":"","paypalcode":"","enabled":"Y","id":"239","selected":"N"},"240":{"name":"MRO","longname":"Mauritania Ouguiya","symbol":"MRO","rank":"110","mercacode":"","paypalcode":"","enabled":"Y","id":"240","selected":"N"},"241":{"name":"MUR","longname":"Mauritius Rupee","symbol":"MUR","rank":"111","mercacode":"","paypalcode":"","enabled":"Y","id":"241","selected":"N"},"242":{"name":"MVR","longname":"Maldives (Maldive Islands) Rufiyaa","symbol":"MVR","rank":"112","mercacode":"","paypalcode":"","enabled":"Y","id":"242","selected":"N"},"243":{"name":"MWK","longname":"Malawi Kwacha","symbol":"MWK","rank":"113","mercacode":"","paypalcode":"","enabled":"Y","id":"243","selected":"N"},"244":{"name":"MXN","longname":"Mexico Peso","symbol":"MXN","rank":"114","mercacode":"","paypalcode":"","enabled":"Y","id":"244","selected":"N"},"245":{"name":"MZN","longname":"Mozambique Metical","symbol":"MZN","rank":"115","mercacode":"","paypalcode":"","enabled":"Y","id":"245","selected":"N"},"246":{"name":"NAD","longname":"Namibia Dollar","symbol":"NAD","rank":"116","mercacode":"","paypalcode":"","enabled":"Y","id":"246","selected":"N"},"247":{"name":"NIO","longname":"Nicaragua Cordoba","symbol":"NIO","rank":"117","mercacode":"","paypalcode":"","enabled":"Y","id":"247","selected":"N"},"248":{"name":"NPR","longname":"Nepal Rupee","symbol":"NPR","rank":"118","mercacode":"","paypalcode":"","enabled":"Y","id":"248","selected":"N"},"249":{"name":"OMR","longname":"Oman Rial","symbol":"OMR","rank":"119","mercacode":"","paypalcode":"","enabled":"Y","id":"249","selected":"N"},"250":{"name":"PAB","longname":"Panama Balboa","symbol":"PAB","rank":"120","mercacode":"","paypalcode":"","enabled":"Y","id":"250","selected":"N"},"251":{"name":"PEN","longname":"Peru Nuevo Sol","symbol":"PEN","rank":"121","mercacode":"","paypalcode":"","enabled":"Y","id":"251","selected":"N"},"252":{"name":"PGK","longname":"Papua New Guinea Kina","symbol":"PGK","rank":"122","mercacode":"","paypalcode":"","enabled":"Y","id":"252","selected":"N"},"253":{"name":"PHP","longname":"Philippines Peso","symbol":"PHP","rank":"123","mercacode":"","paypalcode":"","enabled":"Y","id":"253","selected":"N"},"254":{"name":"PKR","longname":"Pakistan Rupee","symbol":"PKR","rank":"124","mercacode":"","paypalcode":"","enabled":"Y","id":"254","selected":"N"},"255":{"name":"PLN","longname":"Poland Zloty","symbol":"PLN","rank":"125","mercacode":"","paypalcode":"","enabled":"Y","id":"255","selected":"N"},"256":{"name":"PYG","longname":"Paraguay Guarani","symbol":"PYG","rank":"126","mercacode":"","paypalcode":"","enabled":"Y","id":"256","selected":"N"},"257":{"name":"QAR","longname":"Qatar Riyal","symbol":"QAR","rank":"127","mercacode":"","paypalcode":"","enabled":"Y","id":"257","selected":"N"},"258":{"name":"RON","longname":"Romania New Leu","symbol":"RON","rank":"128","mercacode":"","paypalcode":"","enabled":"Y","id":"258","selected":"N"},"259":{"name":"RSD","longname":"Serbia Dinar","symbol":"RSD","rank":"129","mercacode":"","paypalcode":"","enabled":"Y","id":"259","selected":"N"},"260":{"name":"RUB","longname":"Russia Ruble","symbol":"RUB","rank":"130","mercacode":"","paypalcode":"","enabled":"Y","id":"260","selected":"N"},"261":{"name":"RWF","longname":"Rwanda Franc","symbol":"RWF","rank":"131","mercacode":"","paypalcode":"","enabled":"Y","id":"261","selected":"N"},"262":{"name":"SAR","longname":"Saudi Arabia Riyal","symbol":"SAR","rank":"132","mercacode":"","paypalcode":"","enabled":"Y","id":"262","selected":"N"},"263":{"name":"SBD","longname":"Solomon Islands Dollar","symbol":"SBD","rank":"133","mercacode":"","paypalcode":"","enabled":"Y","id":"263","selected":"N"},"264":{"name":"SCR","longname":"Seychelles Rupee","symbol":"SCR","rank":"134","mercacode":"","paypalcode":"","enabled":"Y","id":"264","selected":"N"},"265":{"name":"SDG","longname":"Sudan Pound","symbol":"SDG","rank":"135","mercacode":"","paypalcode":"","enabled":"Y","id":"265","selected":"N"},"266":{"name":"SEK","longname":"Sweden Krona","symbol":"SEK","rank":"136","mercacode":"","paypalcode":"","enabled":"Y","id":"266","selected":"N"},"267":{"name":"SHP","longname":"Saint Helena Pound","symbol":"SHP","rank":"137","mercacode":"","paypalcode":"","enabled":"Y","id":"267","selected":"N"},"268":{"name":"SLL","longname":"Sierra Leone Leone","symbol":"SLL","rank":"138","mercacode":"","paypalcode":"","enabled":"Y","id":"268","selected":"N"},"269":{"name":"SOS","longname":"Somalia Shilling","symbol":"SOS","rank":"139","mercacode":"","paypalcode":"","enabled":"Y","id":"269","selected":"N"},"270":{"name":"SPL*","longname":"Seborga Luigino","symbol":"SPL*","rank":"140","mercacode":"","paypalcode":"","enabled":"Y","id":"270","selected":"N"},"271":{"name":"SRD","longname":"Suriname Dollar","symbol":"SRD","rank":"141","mercacode":"","paypalcode":"","enabled":"Y","id":"271","selected":"N"},"272":{"name":"STD","longname":"S\u2039o Tom\u017d and Pr\u2019ncipe Dobra","symbol":"STD","rank":"142","mercacode":"","paypalcode":"","enabled":"Y","id":"272","selected":"N"},"273":{"name":"SVC","longname":"El Salvador Colon","symbol":"SVC","rank":"143","mercacode":"","paypalcode":"","enabled":"Y","id":"273","selected":"N"},"274":{"name":"SYP","longname":"Syria Pound","symbol":"SYP","rank":"144","mercacode":"","paypalcode":"","enabled":"Y","id":"274","selected":"N"},"275":{"name":"SZL","longname":"Swaziland Lilangeni","symbol":"SZL","rank":"145","mercacode":"","paypalcode":"","enabled":"Y","id":"275","selected":"N"},"276":{"name":"TJS","longname":"Tajikistan Somoni","symbol":"TJS","rank":"146","mercacode":"","paypalcode":"","enabled":"Y","id":"276","selected":"N"},"277":{"name":"TMT","longname":"Turkmenistan Manat","symbol":"TMT","rank":"147","mercacode":"","paypalcode":"","enabled":"Y","id":"277","selected":"N"},"278":{"name":"TND","longname":"Tunisia Dinar","symbol":"TND","rank":"148","mercacode":"","paypalcode":"","enabled":"Y","id":"278","selected":"N"},"279":{"name":"TOP","longname":"Tonga Pa'anga","symbol":"TOP","rank":"149","mercacode":"","paypalcode":"","enabled":"Y","id":"279","selected":"N"},"280":{"name":"TTD","longname":"Trinidad and Tobago Dollar","symbol":"TTD","rank":"150","mercacode":"","paypalcode":"","enabled":"Y","id":"280","selected":"N"},"281":{"name":"TVD","longname":"Tuvalu Dollar","symbol":"TVD","rank":"151","mercacode":"","paypalcode":"","enabled":"Y","id":"281","selected":"N"},"282":{"name":"TWD","longname":"Taiwan New Dollar","symbol":"TWD","rank":"152","mercacode":"","paypalcode":"","enabled":"Y","id":"282","selected":"N"},"283":{"name":"TZS","longname":"Tanzania Shilling","symbol":"TZS","rank":"153","mercacode":"","paypalcode":"","enabled":"Y","id":"283","selected":"N"},"284":{"name":"UAH","longname":"Ukraine Hryvna","symbol":"UAH","rank":"154","mercacode":"","paypalcode":"","enabled":"Y","id":"284","selected":"N"},"285":{"name":"UGX","longname":"Uganda Shilling","symbol":"UGX","rank":"155","mercacode":"","paypalcode":"","enabled":"Y","id":"285","selected":"N"},"286":{"name":"UYU","longname":"Uruguay Peso","symbol":"UYU","rank":"156","mercacode":"","paypalcode":"","enabled":"Y","id":"286","selected":"N"},"287":{"name":"UZS","longname":"Uzbekistan Som","symbol":"UZS","rank":"157","mercacode":"","paypalcode":"","enabled":"Y","id":"287","selected":"N"},"288":{"name":"VEF","longname":"Venezuela Bolivar","symbol":"VEF","rank":"158","mercacode":"","paypalcode":"","enabled":"Y","id":"288","selected":"N"},"289":{"name":"VND","longname":"Viet Nam Dong","symbol":"VND","rank":"159","mercacode":"","paypalcode":"","enabled":"Y","id":"289","selected":"N"},"290":{"name":"VUV","longname":"Vanuatu Vatu","symbol":"VUV","rank":"160","mercacode":"","paypalcode":"","enabled":"Y","id":"290","selected":"N"},"291":{"name":"WST","longname":"Samoa Tala","symbol":"WST","rank":"161","mercacode":"","paypalcode":"","enabled":"Y","id":"291","selected":"N"},"292":{"name":"XAF","longname":"Communaut\u00e9 Financi\u008f\u00e8re Africaine (BEAC) CFA Franc","symbol":"XAF","rank":"162","mercacode":"","paypalcode":"","enabled":"Y","id":"292","selected":"N"},"293":{"name":"XCD","longname":"East Caribbean Dollar","symbol":"XCD","rank":"163","mercacode":"","paypalcode":"","enabled":"Y","id":"293","selected":"N"},"294":{"name":"XDR","longname":"International Monetary Fund (IMF) Special Drawing Rights","symbol":"XDR","rank":"164","mercacode":"","paypalcode":"","enabled":"Y","id":"294","selected":"N"},"295":{"name":"XOF","longname":"Communaut\u00e9 Financi\u00e8\u008fre Africaine (BCEAO) Franc","symbol":"XOF","rank":"165","mercacode":"","paypalcode":"","enabled":"Y","id":"295","selected":"N"},"296":{"name":"XPF","longname":"Comptoirs Fran\u008d\u00e7ais du Pacifique (CFP) Franc","symbol":"XPF","rank":"166","mercacode":"","paypalcode":"","enabled":"Y","id":"296","selected":"N"},"297":{"name":"YER","longname":"Yemen Rial","symbol":"YER","rank":"167","mercacode":"","paypalcode":"","enabled":"Y","id":"297","selected":"N"},"298":{"name":"ZAR","longname":"South Africa Rand","symbol":"ZAR","rank":"168","mercacode":"","paypalcode":"","enabled":"Y","id":"298","selected":"N"},"299":{"name":"ZMW","longname":"Zambia Kwacha","symbol":"ZMW","rank":"169","mercacode":"","paypalcode":"","enabled":"Y","id":"299","selected":"N"},"300":{"name":"ZWD","longname":"Zimbabwe Dollar","symbol":"ZWD","rank":"170","mercacode":"","paypalcode":"","enabled":"Y","id":"300","selected":"N"},"_xml_childtag":"currency"},"currencypositions":{"_xml_childtag":"currencypos","0":{"value":"both","label":"gauche et droite"},"1":{"value":"left","label":"gauche"},"2":{"value":"right","label":"droite"},"3":{"value":"none","label":"masqu\u00e9e"}},"hasRelateds":"Y","corpName":"Sellsy","thirdName":"Activane","thirdVatNum":"","docspeaker_text":"Votre contact","paydate_text":"capouet","paydate_custom":"11\/09\/2014","paymediums_text":"a:1:{i:0;s:6:\"Paypal\";}","paycheckorder_text":"","paybankaccount_text":"","currency":"1","num_currencypos":"right","docspeaker":"86714","doclayout":"1801","num_name":"fr","num_decimals":",","num_thousands":" ","num_precision":"2","defaultTax":"86718","defaultTax2":"0","defaultUnit":"86680","defaultShipping":"280833","defaultPackaging":"280831","paydate":"86694","paydate_xdays":"0","paydate_endmonth":"N","paydate_scaledDetails":"","paymediums":{"86703":{"id":"86703","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"0","value":"Paypal","more":"","checked":"Y"},"86704":{"id":"86704","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"0","value":"Paypal","more":""},"86705":{"id":"86705","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"check","rank":"1","value":"ch\u00e8que","more":""},"86706":{"id":"86706","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"transfer","rank":"2","value":"virement bancaire","more":""},"86707":{"id":"86707","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cash","rank":"3","value":"esp\u00e8ces","more":""},"86708":{"id":"86708","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"cb","rank":"4","value":"carte bancaire","more":""},"86709":{"id":"86709","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"pick","rank":"5","value":"pr\u00e9l\u00e8vement","more":""},"86710":{"id":"86710","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"bor","rank":"6","value":"Billet \u00e0 Ordre Relev\u00e9 (BOR)","more":""},"86711":{"id":"86711","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"tip","rank":"7","value":"Titre Interbancaire de Paiement (TIP)","more":""},"86712":{"id":"86712","corpid":"1641","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"lcr","rank":"8","value":"Lettre de Change Relev\u00e9 (LCR)","more":""},"_xml_childtag":"paymedium"},"paymedium_other":"","paycheckorder":"86716","paybankaccount":"0","weightUnits":{"_xml_childtag":"weightUnit","0":{"value":"mg"},"1":{"value":"g"},"2":{"value":"kg"}},"hideableColumns":{"_xml_childtag":"column","0":{"id":"name","name":"hideColumnName","label":"Masquer la colonne \"R\u00e9f\u00e9rence\"","checked":"N"},"1":{"id":"notes","name":"hideColumnNotes","label":"Masquer la colonne \"Description\"","checked":"N"},"2":{"id":"unit","name":"hideColumnUnit","label":"Masquer la colonne \"Co\u00fbt unitaire HT\"","checked":"N"},"3":{"id":"tax","name":"hideColumnTax","label":"Masquer la colonne \"TVA\"","checked":"N"},"4":{"id":"qt","name":"hideColumnQt","label":"Masquer la colonne \"Qt\"","checked":"N"},"5":{"id":"image","name":"hideColumnImage","label":"Masquer la colonne \"Image\"","checked":"N"},"6":{"id":"discount","name":"hideColumnDiscount","label":"Masquer la colonne \"Remise\"","checked":""},"7":{"id":"amount","name":"hideColumnTaxFree","label":"Masquer la colonne \"Montant HT\"","checked":"N"},"8":{"id":"listTotal","name":"hideTotal","label":"Masquer les totaux","checked":"N"},"9":{"id":"payment","name":"hidePayment","label":"Masquer infos paiement","checked":"N"}},"doclayouts":{"_xml_childtag":"doclayout","1801":{"corpid":"1641","ownerid":"2542","status":"ok","isdefault":"Y","name":"Apparence par d\u00e9faut","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"system","bgMode":"all","bgFile":"","bgCustomFile":"","hideTopPart":"N","hideBottomSeparator":"N","documentIdentOnLeft":"N","hideFill":"N","colorFill":"000000","hideDepositRecap":"N","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","fontsize":"10","language":"FR","timeformat":"dmy","txts":"","customName":"","topMargin":"35","documentAddressOnLeft":"N","documentFormat":"A4","id":"1801"}},"currencyleft":"","currencyright":"\u20ac","discountUnits":{"_xml_childtag":"discountUnit","0":{"value":"percent","label":"%"},"1":{"value":"amount","label":"\u20ac"}},"taxes":{"86718":{"id":"86718","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"20,00","more":""},"86719":{"id":"86719","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"10,00","more":""},"86720":{"id":"86720","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"5,00","more":""},"86721":{"id":"86721","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"2,00","more":""},"86722":{"id":"86722","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"5","value":"0,00","more":""},"_xml_childtag":"tax"},"shippings":{"0":{"id":"280833","type":"shipping","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"1","name":"DHL","tradename":"","tradenametonote":"N","notes":"shipping","unitAmount":"13.900000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"1.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"transport","nameSample":"DHL","notesSample":"shipping","notesFormated":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"13.900000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"1":{"id":"280834","type":"shipping","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"2","name":"UPS","tradename":"","tradenametonote":"N","notes":"shipping","unitAmount":"4.990000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"1.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"transport","nameSample":"UPS","notesSample":"shipping","notesFormated":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"4.990000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"2":{"id":"280835","type":"shipping","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"3","name":"FedEx","tradename":"","tradenametonote":"N","notes":"shipping","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"0.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"transport","nameSample":"FedEx","notesSample":"shipping","notesFormated":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"0.000000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"3":{"id":"280836","type":"shipping","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"4","name":"Chronopost","tradename":"","tradenametonote":"N","notes":"shipping","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"0.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"transport","nameSample":"Chronopost","notesSample":"shipping","notesFormated":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"0.000000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"_xml_childtag":"shipping"},"packagings":{"0":{"id":"280831","type":"packaging","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"1","name":"cartons","tradename":"","tradenametonote":"N","notes":"packaging","unitAmount":"3.990000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"4.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"emballage","nameSample":"cartons","notesSample":"packaging","notesFormated":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"3.990000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"1":{"id":"280832","type":"packaging","corpid":"1641","ownerid":"2542","status":"ok","actif":"Y","isEnabled":"Y","inPos":"N","rank":"2","name":"palettes","tradename":"","tradenametonote":"N","notes":"packaging","unitAmount":"29.990000000","unitAmountIsTaxesFree":"Y","useEcoTax":"N","ecoTax":"0.000000000","unitid":"86680","unit":"unit\u00e9","qt":"1.000000000","taxid":"86718","taxrate":"20,00","purchaseAmount":"0.000000000","costPerHour":"0.000000000","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","useDeclination":"N","decl_id":0,"declid":0,"analyticsCode":null,"accountingPurchaseCode":"","accountingCode":"","typeLabel":"emballage","nameSample":"palettes","notesSample":"packaging","notesFormated":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","isTaxesFreeBool":"Y","purchaseAmountTaxesInc":"0.000000000","unitAmountTaxesInc":"29.990000000","defaultImage":{"file":{"public_path":"?_f=file&id=JTJDJUIzJUFGJUM1JUI5JTFEJUFEJUUzNSU3RWglMDElRjclRTlIJUI4JUY5JTk0aiVDRDZoJUVFJUQ0JUQxJTdGJUE2JUU1aXklRUUlQzhFJUE1JUIyJTA2JTIxJUE5JUEwJTg2JUJEJUVCJTNCJTA1JTlGJTVCJTlFZVNmJUI5JTA4JUY4JUExJUM2RiVDQk0lRDglRTElRDUlMUJqJUVFJThCJUY5JTk2JTBGJTVCJTNBcyVBMCUxNSVFN01xJUM0aiU0MCVEMiU3RSUwRSVDOVolOTdrJUVCJTNBJTA3JUQ1TyUxQ1IlMjIlRkElRkM=&key=59af994019d6d07d308bd6badb789409"}},"canBeSharedByLoggedStaff":"N","accounting_id":null},"_xml_childtag":"packaging"},"units":{"86680":{"id":"86680","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"0","value":"unit\u00e9","more":""},"86681":{"id":"86681","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"forfaitaire","more":""},"86682":{"id":"86682","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"m2","more":""},"86683":{"id":"86683","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"m3","more":""},"86684":{"id":"86684","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"kg","more":""},"86685":{"id":"86685","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"5","value":"tonne","more":""},"86686":{"id":"86686","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"6","value":"g","more":""},"86687":{"id":"86687","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"7","value":"km","more":""},"86688":{"id":"86688","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"8","value":"m","more":""},"86689":{"id":"86689","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"9","value":"jours","more":""},"86690":{"id":"86690","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"10","value":"heures","more":""},"86691":{"id":"86691","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"11","value":"minutes","more":""},"86692":{"id":"86692","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"12","value":"g","more":""},"86693":{"id":"86693","corpid":"1641","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"13","value":"m","more":""},"_xml_childtag":"unit"},"canWriteShippings":"Y","canWritePackagings":"Y","canWriteUnits":"Y","canWriteTaxes":"Y","canWritePaydates":"Y","paydates":{"86694":{"id":"86694","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"custom","rank":"1","value":"capouet","more":""},"86695":{"id":"86695","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"onorder","rank":"3","value":"\u00e0 la commande","more":""},"86696":{"id":"86696","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"endmonth","rank":"4","value":"fin de mois","more":""},"86697":{"id":"86697","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"30days","rank":"5","value":"\u00e0 30 jours","more":""},"86698":{"id":"86698","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"45days","rank":"6","value":"\u00e0 45 jours","more":""},"86699":{"id":"86699","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"60days","rank":"7","value":"\u00e0 60 jours","more":""},"86700":{"id":"86700","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"90days","rank":"8","value":"\u00e0 90 jours","more":""},"86701":{"id":"86701","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"xdays","rank":"9","value":"saisir un nombre de jours","more":""},"86702":{"id":"86702","corpid":"1641","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"scaled","rank":"10","value":"paiement \u00e9chelonn\u00e9","more":""},"_xml_childtag":"paydate"},"canWritePaymediums":"Y","canWritePayCheckOrders":"Y","paycheckorders":{"86713":{"id":"86713","corpid":"1641","list":"paycheckorders","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Service comptabilit\u00e9","more":""},"86716":{"id":"86716","corpid":"1641","list":"paycheckorders","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"corpname","rank":"1","value":"Sellsy","more":""},"_xml_childtag":"paycheckorder"},"bankaccounts":{"_xml_childtag":"bankaccount"},"canWriteDocSpeakers":"Y","docspeakers":{"86714":{"id":"86714","corpid":"1641","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Votre contact","more":""},"86715":{"id":"86715","corpid":"1641","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"Votre r\u00e9f\u00e9rent","more":""},"_xml_childtag":"docspeaker"},"ecoTaxes":{"86820":{"id":"86820","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"ecotax196","rank":"0","value":"19.6","more":"Eco taxe"},"86821":{"id":"86821","corpid":"1641","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"ecotax20","rank":"0","value":"20","more":"Eco taxe"}},"ecoTaxRate":"20","ecoTaxLabel":"Eco taxe","totalEcoTaxFreeDisplay":"0.000000000","formatted_totalEcoTaxFreeDisplay":"0,00 \u20ac","totalEcoTaxIncDisplay":"0.000000000","formatted_totalEcoTaxIncDisplay":"0,00 \u20ac","formatted_rowsAmount":"2,97 \u20ac","formatted_discountPercent":"0,00","formatted_discountAmount":"0,00 \u20ac","formatted_rowsAmountDiscounted":"0,00 \u20ac","formatted_offerAmount":"0,00 \u20ac","formatted_rowsAmountAllInc":"2,97 \u20ac","formatted_packagingsAmount":"0,00 \u20ac","formatted_shippingsAmount":"0,00 \u20ac","formatted_totalAmountTaxesFree":"2,97 \u20ac","formatted_taxesAmountSum":"0,59 \u20ac","formatted_totalAmount":"3,56 \u20ac","formatted_shippingWeight":"0,00 \u20ac","formatted_shippingVolume":"0,00 \u20ac","formatted_globalDiscount":"0,00","formatted_globalOffer":"0,00","formatted_deposit":"0,00 \u20ac","formatted_dueAmount":"0,00 \u20ac","formatted_totalEcoTaxDisplay":"0,00 \u20ac","tel":"0512346789","fax":"","email":".com","mobile":"","formatted_taxesAmountDetails":"a:1:{i:86718;s:8:\"0,59 \u20ac\";}","corpFooter":"Sellsy - B\u00e2timent ARPAE - Avenue Jean Monnet - 17000 La Rochelle - France Tel : 0512346789 - Email : .com","map":{"purdocid":"1304","id":"1415","rows":{"2267":{"purdocmapid":"1415","parentid":"0","status":"ok","rank":"1","type":"once","linkedid":"0","declid":"0","name":"Pack d'eau","notes":"","unitAmount":"2.970000000","unitAmountTaxesInc":"2.970000000","ecoTax":"0.000000000","useEcoTax":"N","unitid":"86680","unitText":"unit\u00e9","qt":"1.000000000","discount":"0.000000000","discountUnit":"","taxid":"86718","taxrate":"20.000000000","tax2id":"0","tax2rate":"0.000000000","isOption":"N","totalAmount":"2.970000000","totalAmountTaxesInc":"2.970000000","taxAmount":"0.590000000","tax2Amount":"0.000000000","purchaseAmount":"0.000000000","accountingCode":"","analyticsCode":"","tteid":"0","whid":"0","serialid":"0","tmpbc":"","id":"2267","discountPercent":"0,00","formatted_unitAmount":"2,97","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"20,00","formatted_tax2rate":"0,00","formatted_totalAmount":"2,97","formatted_totalAmountTaxesInc":"2,97","formatted_taxAmount":"0,59","formatted_tax2Amount":"0,00","formatted_unitAmountTaxesInc":"2,97","formatted_discountPercent":"0,00","purchaseTotalAmount":"0.000000000","formatted_purchaseAmount":"0,00","formatted_purchaseTotalAmount":"0,00","tauxMarque":"100.000000000","tauxMarge":"0.000000000","formatted_tauxMarque":"100,00","formatted_tauxMarge":"0,00","ecoTaxDisplay":"0.00","totalEcoTaxAmount":"0.000000000","totalEcoTaxAmountDisplay":"0.000000000","formatted_totalEcoTaxAmount":"0,00"},"_xml_childtag":"row"}},"vatSummary":[],"prefs":{"linkedtype":"doc","linkedid":"1304","countrycode":"FR","defaultAddressCountry":"FR","currencyid":"1","currencyposition":"right","numberformat":"fr","numberdecimals":",","numberthousands":" ","numberprecision":"2","docspeakerid":"86714","defaultTaxid":"86718","defaultTax2id":"0","defaultUnitid":"86680","defaultShippingid":"280833","defaultPackagingid":"280831","payDateid":"86694","payDateXDays":"0","payDateEndMonth":"N","payDateScaledDetails":"","payMediums":"a:1:{i:0;i:86703;}","payMediumOther":"","payCheckOrderid":"86716","bankAccountid":"0","globalDiscount":"0.000000000","globalDiscountUnit":"percent","globalOffer":"0.000000000","discountByRows":"N","addPdfToEmail":"Y","addGtuToEmail":"Y","addSenderToEmail":"N","hideColumnName":"N","hideColumnNotes":"N","hideColumnUnit":"N","hideColumnTaxFree":"N","hideColumnTax":"N","hideColumnTaxInc":"N","hideColumnQt":"N","hideColumnImage":"N","hideColumnDiscount":"","hideTotalTaxesFree":"N","hideTotal":"N","hidePayment":"N","hidePricesOnDelivery":"N","hideTaxes":"N","hasPenaltyRetardWarning":"Y","penaltyRetardWarningText":"","showContactOnPdf":"N","showParentOnPdf":"","hasCorpAgree":"N","hasThirdAgree":"N","notes":"","nbExpireDays":"30","displayAmounts":"Y","doclayoutid":"1801","display_footer":"Y","display_ident":"","display_email":"","display_tel":"","display_mobile":"","display_fax":"","display_addresse":"","displayBankAccount":"Y","displayIBAN":"Y","displayBIC":"Y","hideTips":"N","hideOrdersDocs":"N","hideDeliveriesDocs":"N","hideProformaDocs":"N","emailsSentFromCorp":"Y","hasEmailBaseline":"Y","sendRawEmails":"N","forceDisplayBankAccount":"","forceDisplayCheckOrder":"","showUnitIn":"unitamountcolumn","addBarCodeToDesc":"","addBarCodeImageToDesc":"","showNbItemOnPdf":"N","id":"1452"}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.create', 
    'params' => array(
        'purchase'  => array(
            'ident'     => {{ident}},
            'parentid'  => {{parentid}},
            'thirdid'   => {{thirdID}},
            'tags'      => {{tags}},
            'externalident' => {{externalident}},
            'displayedDate' => {{displayedDate}},
            'currency'  => {{currencyID}},
            'doctype'   => {{doctype}},
            'subject'   => {{subject}},
            'notes'     => {{notes}},
            'doclayout' => {{doclayout}},
            'useEcotaxe'    => {{useEcotaxe}}
        ),
        'rows'  => array(
            0 => array(
                # Commun à tous les types de ligne #
                'type'          => {{row_type}},
                'id'            => {{row_id}},
                'parentid'      => {{row_parentid}},
                # Applicable aux types de ligne ‘once‘, ‘item‘, ‘shipping‘ et ‘packaging‘ #
                'qt'            => {{row_qt}},
                'discountUnit'      => {{row_discountUnit}},
                'discount'      => {{row_discount}},
                'unitAmount'        => {{row_unitAmount}},
                'taxid'         => {{row_taxID}},
                'isOption'      => {{row_isOption}},
                'accountingCode'    => {{row_accountingCodeID}},
                # Applicable aux types de ligne ‘once‘ et ‘item‘ #
                'name'          => {{row_name}},
                'notes'         => {{row_notes}},
                'unit'          => {{row_unit}},
                # Applicable aux types de ligne ‘item‘ #
                'linkedid'      => {{row_linkedid}},
                'declid'        => {{row_declid}},
                'whid'          => {{row_whid}},
                'barcode'       => {{row_barcode}},
                'serial'        => {{row_serial}},
                # Applicable aux type de ligne ‘title‘ #
                'title'     => {{row_title}},
                # Applicable aux type de ligne ‘comment‘ #
                'comment'   => {{row_comment}},
                # Applicable aux type de ligne ‘shipping‘ #
                'shipping'  => {{row_shipping}},
                # Applicable aux type de ligne ‘packaging‘ #
                'packaging' => {{row_packaging}}
            )
            ),
        'payments' => array(
            0 => array(
                'mediumid'  => {{paymediumID}},
                'date'      => {{payDate}},
                'amount'    => {{payAmount}},
                'ident'     => {{payIdent}},
                'currency'  => {{payCurrencyID}}
            )
        ),
        'paydate' => array(
            'custom'    => {{custom}},
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ident}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant du document d'achat
* Paramètre: {{parentid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document du document parent. À utiliser pour effectuer une conversion de document
* Paramètre: {{thirdID}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du fournisseur
* Paramètre: {{document_tags}}
  * Requis: Non
  * Type: text
  * Défaut: Aucun
  * Description: Liste de tags séparés par des virgules
* Paramètre: {{externalident}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant externe du document
* Paramètre: {{displayedDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Date du jour
  * Description: Date du document d'achat
* Paramètre: {{currencyID}}
  * Requis: Non
  * Type: int
  * Défaut: Devise de votre compte
  * Description: Devise du document d'achat
* Paramètre: {{doctype}}
  * Requis: Oui
  * Type: enum('invoice', 'delivery', 'order', 'creditNote')
  * Défaut: Aucun
  * Description: Type du document d'achat
* Paramètre: {{subject}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Objet du document d'achat
* Paramètre: {{notes}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Notes du document d'achat
* Paramètre: {{notes}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Notes du document d'achat
* Paramètre: {{doclayout}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'apparence du document d'achat
* Paramètre: {{useEcotaxe}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Activer ou non l'éco-taxe sur le document d'achat. Valeurs possibles : ‘Y‘, ‘N‘
* Paramètre: {{row_type}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Type de la ligne. Valeur possible : ‘once‘, ‘item‘, ‘shipping‘, ‘packaging‘, ‘sum‘, ‘title‘, ‘comment‘, ‘break‘, ‘empty‘
* Paramètre: {{row_id}}
  * Requis: Oui, en mise à jour de document
  * Type: int
  * Défaut: Aucun
  * Description: ID de la ligne courante. À utiliser obligatoirement pour que votre document soit correctement mis à jour
* Paramètre: {{row_parentid}}
  * Requis: Oui, en conversion de document
  * Type: int
  * Défaut: Aucun
  * Description: ID de la ligne parente. À utiliser obligatoirement pour que votre document soit correctement converti
* Paramètre: {{row_qt}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Quantité de la ligne. Dans le cas de l'enregistrement d'un produit utilisant les stocks sérialisés, cette valeur sera forcée à 1
* Paramètre: {{row_name}}
  * Requis: Oui, si row_notes non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la ligne
* Paramètre: {{row_notes}}
  * Requis: Oui, si row_name non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Description de la ligne
* Paramètre: {{row_unitAmount}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant de la ligne
* Paramètre: {{row_taxID}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe de la ligne
* Paramètre: {{row_isOption}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Permet de préciser si la ligne est en option ou non
* Paramètre: {{row_accountingCodeID}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du code comptable de la ligne
* Paramètre: {{row_unit}}
  * Requis: Non
  * Type: int
  * Défaut: Unité par défaut du compte
  * Description: Identifiant de l'unité
* Paramètre: {{row_linkedid}}
  * Requis: Non, sauf si {{row_type}} = 'item'
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de produit
* Paramètre: {{row_declid}}
  * Requis: Non, sauf si {{row_type}} = 'item' et si le produit utilisé est décliné
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison produit
* Paramètre: {{row_whid}}
  * Requis: Non
  * Type: int
  * Défaut: Entrepôt par défaut du compte
  * Description: Identifiant de l'entrepôt à restocker
* Paramètre: {{row_barcode}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Code barre du produit restocké
* Paramètre: {{row_serial}}
  * Requis: Non, sauf si le produit utilise les stocks sérialisés
  * Type: string
  * Défaut: Aucun
  * Description: Numéro de série du produit restocké
* Paramètre: {{row_title}}
  * Requis: Oui, si {{row_type}} = 'title'
  * Type: string
  * Défaut: Aucun
  * Description: Contenu de votre titre
* Paramètre: {{row_packaging}}
  * Requis: Oui, si {{row_type}} = 'packaging'
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'emballage à utiliser
* Paramètre: {{row_shipping}}
  * Requis: Oui, si {{row_type}} = 'shipping'
  * Type: int
  * Défaut: Aucun
  * Description: ID du transporteur à utiliser
* Paramètre: {{row_comment}}
  * Requis: Oui, si {{row_type}} = 'comment'
  * Type: string
  * Défaut: Aucun
  * Description: Contenu de votre commentaire
* Paramètre: {{paymediumID}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du paiement
* Paramètre: {{payDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Date du jour
  * Description: Date du paiement
* Paramètre: {{payAmount}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant du paiement
* Paramètre: {{payIdent}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant du paiement
* Paramètre: {{payCurrencyID}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la devise du paiement
* Paramètre: {{custom}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Timestamp de la date de règlement


Retour
------

```
{"response":{{purchaseID}},"error":"","status":"success"}
```


Requête
-------

#### Information

Vous pouvez vous référer à la méthode Purchase.create. Quelques paramètres diffèrent mais sont décrits ci-dessus.

Retour
------

```
{"response":{{purchaseID}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.delete', 
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                                |
|---------|------|----|------|-------------------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du document d'achat à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.updateStep',
    'params' => array(
        'id'        => {{id}},
        'newStep'   => {{newStep}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document d'achat à éditer
* Paramètre: {{newStep}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nouveau statut. Valeurs possibles : ‘draft‘, ‘sent‘, ‘due‘, ‘read‘, ‘accepted‘, ‘refused‘, ‘expired‘, ‘advanced‘, ‘invoiced‘, ‘partialInvoiced‘, ‘payinprogress‘, ‘paid‘, ‘late‘, ‘cancelled‘, ‘stored‘, ‘partielspend‘, ‘spent‘


Retour
------

```
{"response":{"oldStep":{oldStep},"newStep":{newStep}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.updateDeliveryStep',
    'params' => array(
        'id'        => {{id}},
        'newStep'   => {{newStep}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre  |Requis|Type  |Défaut|Description                                                       |
|-----------|------|------|------|------------------------------------------------------------------|
|{{id}}     |Oui   |int   |Aucun |Identifiant du document d'achat à éditer                          |
|{{newStep}}|Oui   |string|Aucun |Nouveau statut. Valeurs possibles : ‘wait‘, ‘partial‘, ‘delivered‘|


Retour
------

```
{"response":{"oldStep":{oldStep},"newStep":{newStep}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du document d'achat |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.getPublicLink', 
    'params' => array(
        'id'    => {{purchaseID}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description                    |
|--------------|------|----|------|-------------------------------|
|{{purchaseID}}|Oui   |int |Aucun |Identifiant du document d'achat|


Retour
------

```
{"response":{"filename":"{{filename}}","pdf":"{{PDF_PublicLink}}","jpg":"{{JPG_PublicLink}}"},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Purchase.getNextIdent', 
    'params' => array(
        'doctype'   => {{doctype}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{doctype}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Type de document d'achat. Valeurs possibles : (invoice, delivery, order)


Retour
------

```
{"response":"{{ident}}","error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Purchase.getPayments',
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                    |
|---------|------|----|------|-------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du document d'achat|


Retour
------

```
{"response":[{"relatedId":1184,"relatedType":"payment","relatedDate":"2014-09-11 00:00:00","relatedAmount":3.560000000,"relatedMedium":86707,"relatedMediumTxt":"espèces","relatedIdent":"0001","relatedNotes":"","docid":1304,"doctype":"purInvoice","id":1173,"formatted_relatedAmount":"3,56 €","formatted_relatedDate":"11/09/2014","html_relatedNotes":"","relatedTypeText":"","relatedFullLabel":"N° 0001"}],"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Purchase.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description             |
|-------------|------|-----|-------|------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du document |
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requête
-------

```
$request =  array( 
    'method' => 'Addresses.getList',
    'params' => array(
        'pagination'    => array(
            'nbperpage' => {{nbperpage}},
            'pagenum'   => {{pagenum}}
        ),
        'search'    => array(
            'linkedType'    => {{linkedType}},
            'linkedIDs' => {{linkedIDs}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'adresses souhaitées par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de page
* Paramètre: {{linkedType}}
  * Requis: Non, sauf si {{linkedIDs}} fourni
  * Type: enum('people', 'corp', 'third', 'client', 'supplier', 'prospect')
  * Défaut: Aucun
  * Description: Permet de filtrer les adresses sur un seul type de liaison
* Paramètre: {{linkedIDs}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Permet de filtrer les adresses par leur liaison


Retour
------

```
{"response":{"infos":{"nbperpage":1,"nbpages":88,"pagenum":"1","nbtotal":"88"},"result":{"133744":{"id":"133744","corpid":"1033","linkedtype":"third","linkedid":"115955","status":"ok","rank":"0","name":"Work","part1":"Avenue Jean Monnet","part2":"Easy Bill","part3":"","part4":"","zip":"17000","town":"La Rochelle","state":"","townid":"0","countrycode":"FR","originalid":"0","lat":null,"lng":null}}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Addresses.getOne',
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description              |
|---------|------|----|------|-------------------------|
|{{id}}   |Oui   |int |Aucun |ID de l‘adresse souhaitée|


Retour
------

```
{"response":{"id":"133744","corpid":"1033","linkedtype":"third","linkedid":"115955","status":"ok","rank":"0","name":"Work","part1":"Avenue Jean Monnet","part2":"Easy Bill","part3":"","part4":"","zip":"17000","town":"La Rochelle","state":"","townid":"0","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":"Avenue Jean Monnet"},"1":{"txt":"Easy Bill"},"2":{"txt":"17000 La Rochelle"},"3":{"txt":"France"}}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Addresses.create',
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'name'      => {{name}},
        'part1'     => {{part1}},
        'part2'     => {{part2}},
        'part3'     => {{part3}},
        'part4'     => {{part4}},
        'zip'       => {{zip}},
        'town'      => {{town}},
        'countrycode'   => {{countrycode}},
	'isMain'   => {{isMain}},
	'isMainDeliv'   => {{isMainDeliv}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Type de l'objet Sellsy auquel rattacher l‘adresse
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'objet Sellsy auquel rattacher l‘adresse
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom de l‘adresse
* Paramètre: {{part1}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 1 de l‘adresse
* Paramètre: {{part2}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 2 de l‘adresse
* Paramètre: {{part3}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 3 de l‘adresse
* Paramètre: {{part4}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 4 de l‘adresse
* Paramètre: {{zip}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Code postal de l‘adresse
* Paramètre: {{town}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Ville de l‘adresse
* Paramètre: {{countrycode}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Code pays de l‘adresse. Doit être au format ISO 3166-1
* Paramètre: {{isMain}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de définir l‘adresse comme adresse par défaut. Assigner la valeur 'Y' à ce paramètre pour qu'il soit pris en compte
* Paramètre: {{isMainDeliv}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de définir l‘adresse comme adresse de livraison par défaut. Assigner la valeur 'Y' à ce paramètre pour qu'il soit pris en compte


Retour
------

```
{"response":{"id":{{addressID}}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Addresses.update',
    'params' => array(
        'id'        => {{id}},
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'name'      => {{name}},
        'part1'     => {{part1}},
        'part2'     => {{part2}},
        'part3'     => {{part3}},
        'part4'     => {{part4}},
        'zip'       => {{zip}},
        'town'      => {{town}},
        'countrycode'   => {{countrycode}},
	'isMain'   => {{isMain}},
	'isMainDeliv'   => {{isMainDeliv}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘adresse
* Paramètre: {{linkedtype}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Type de l'objet Sellsy auquel rattacher l‘adresse
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'objet Sellsy auquel rattacher l‘adresse
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom de l‘adresse
* Paramètre: {{part1}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 1 de l‘adresse
* Paramètre: {{part2}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 2 de l‘adresse
* Paramètre: {{part3}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 3 de l‘adresse
* Paramètre: {{part4}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Partie 4 de l‘adresse
* Paramètre: {{zip}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Code postal de l‘adresse
* Paramètre: {{town}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Ville de l‘adresse
* Paramètre: {{countrycode}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Code pays de l‘adresse. Doit être au format ISO 3166-1
* Paramètre: {{isMain}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de définir l‘adresse comme adresse par défaut. Assigner la valeur 'Y' à ce paramètre pour qu'il soit pris en compte
* Paramètre: {{isMainDeliv}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de définir l‘adresse comme adresse de livraison par défaut. Assigner la valeur 'Y' à ce paramètre pour qu'il soit pris en compte


Retour
------

```
{"response":{"id":{{addressID}}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Addresses.delete',
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description    |
|---------|------|----|------|---------------|
|{{id}}   |Oui   |int |Aucun |ID de l‘adresse|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request =  array( 
    'method' => 'Agenda.getList',
    'params' => array(
        'order' => array(
            'direction' => {{direction}}
        ),
        'search' => array(
            'type'  => {{type}},
            'period'    => array({{period}}),
            'labels'    => array({{labels}}),
            'ownerType' => {{ownerType}},
            'ownerId'   => {{ownerId}},
            'relatedType'   => {{relatedType}},
            'relatedId' => {{relatedId}},
            'status'    => array({{status}}),
            'includeRecurring'	=> {{includeRecurring}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{direction}}
  * Requis: Non
  * Type: string
  * Défaut: ASC
  * Description: ASC, DESC
* Paramètre: {{type}}
  * Requis: Non
  * Type: enum
  * Défaut: task
  * Description: task/event. Récupère les tâches ou évènements
* Paramètre: {{period}}
  * Requis: Non
  * Type: enum('late', 'today', 'tommorow')
  * Défaut: array('late', 'today', 'tommorow')
  * Description: Période concernée
* Paramètre: {{labels}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Label(s) concerné(s)
* Paramètre: {{ownerType}}
  * Requis: Non
  * Type: enum('mine', 'staff', 'all')
  * Défaut: all
  * Description: Type de propriétaire concerné
* Paramètre: {{ownerId}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID du propriétaire concerné
* Paramètre: {{relatedType}}
  * Requis: Non
  * Type: enum('opportunity', 'item', 'service', 'dashboard', 'agenda', 'none', 'third', 'prospect', 'people', 'estimate', 'creditnote', 'order', 'delivery', 'proforma', 'invoice', 'purInvoice', 'purOrder', 'purDelivery')
  * Défaut: Aucun
  * Description: Type de l‘objet Sellsy lié
* Paramètre: {{relatedId}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘objet Sellsy lié
* Paramètre: {{status}}
  * Requis: Non
  * Type: enum('ok', 'complete')
  * Défaut: ok
  * Description: Status des tâches
* Paramètre: {{includeRecurring}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Inclure les évènements récurrents dans le résultat


Retour
------

```
{"response":{"result":{"today":{"id":"14240","status":"ok","type":"event","corpid":"2502","ownertype":"staff","ownerid":"4119","created":"2017-03-27 10:29:36","updated":"2017-03-27 11:02:56","start":"2017-03-14 00:00:00","end":"2017-03-14 00:00:00","timestampStart":"1489446000","timestampEnd":"1489446000","title":"","description":"Modification de la note","relatedtype":"agenda","relatedid":"0","isPrivate":"N","allDay":"Y","labelid":"0","recurring":"Y","recurring_start":"1489446000","recurring_end":"0","recurring_params":"{\"frequency\":\"daily\",\"periodicity\":\"1\",\"week_mode\":[\"2\"],\"month_mode\":\"numDay\",\"start_date\":1489485776,\"end_mode\":\"occurences\",\"end_value\":\"4\",\"exceptions\":[\"1489532400\"]}","ownername":"Boudot","ownerforename":"Romain","owneremail":"[email protected]","isOwner":"Y","editable":"Y","ownerfullname":"Boudot","ownerEmail":"[email protected]","startFormatted":"03\/14\/2017","endFormatted":"","state":"","linkedCleanUrl":"\/home","thirdurl":"","nbAnnotations":{"main":0,"sub":0},"descriptionHtml":"Modification de la note","rrule":"FREQ=daily;INTERVAL=1;WKST=MO;EXDATE=20170315T000000Z;COUNT=4;"},"error":"","status":"success"}
{"response":{"result":{"today":{"id":"135","corpid":"191","ownerid":"400","created":"2012-09-26 11:54:30","type":"event","datefrom":"2012-09-26 00:00:00","dateto":"2012-09-26 00:00:00","title":"Alerte","description":"Salon des entrepreneurs","alerttype":"none","alertdatetime":"0000-00-00 00:00:00","status":"ok","receiver":"","linked":"http:\/\/kevin-v2.myfacture.typhon.net\/api\/client\/0\/index.php?do=agenda","relatedtype":"none","relatedid":"0","isPrivate":"Y","allDay":"Y","labelid":"6447","isStaffLinked":"N","labelname":"D\u00e9placement","labelcolor":"FFB8F5","hasEmailAlert":"Y","tags":[],"collab":[],"icon":"\/img\/common\/people.jpg","ownerfullname":"R\u00e9my Neuter (Admin)","datefromFormated":"le 26\/09\/2012"},{"id":"136","corpid":"191","ownerid":"400","created":"2012-09-26 11:55:17","type":"task","datefrom":"2012-09-26 15:00:00","dateto":"2012-09-26 16:00:00","title":"Alerte","description":"API","alerttype":"none","alertdatetime":"0000-00-00 00:00:00","status":"ok","receiver":"","linked":"http:\/\/kevin-v2.myfacture.typhon.net\/api\/client\/0\/index.php?do=agenda","relatedtype":"none","relatedid":"0","isPrivate":"Y","allDay":"N","labelid":"6444","isStaffLinked":"N","labelname":"R\u00e9union","labelcolor":"B1F0AF","hasEmailAlert":"Y","tags":[],"collab":[],"icon":"\/img\/common\/people.jpg","ownerfullname":"R\u00e9my Neuter (Admin)","datefromFormated":"le 26\/09\/2012, de 15:00 \u00e0 16:00"}]}},"error":"","status":"success"}
```


Requete
-------

```
    $request =  array( 
        'method' => 'Agenda.getOne',
        'params' => array(
            'id'    => {{id}}
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                     |
|---------|------|----|-------|--------------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant de l'évènement/tache|


Retour
------

```
    {"response":{"result":{"id":"136","corpid":"191","ownerid":"400","created":"2012-09-26 11:55:17","type":"task","datefrom":"2012-09-26 15:00:00","dateto":"2012-09-26 16:00:00","title":"Alerte","description":"API","alerttype":"none","alertdatetime":"0000-00-00 00:00:00","status":"ok","receiver":"","linked":"http:\/\/kevin-v2.myfacture.typhon.net\/api\/client\/0\/index.php?do=agenda","relatedtype":"none","relatedid":"0","isPrivate":"Y","allDay":"N","labelid":"6444","labelname":"R\u00e9union","labelcolor":"B1F0AF","isStaffLinked":"N","hasEmailAlert":"Y","tags":[],"collab":[],"icon":"\/img\/common\/people.jpg","ownerfullname":"R\u00e9my Neuter (Admin)","datefromFormated":"le 26\/09\/2012, de 15:00 \u00e0 16:00","timestatus":"today","rappels":[{"id":"169","agendataskid":"136","datetime":"2012-09-26 15:00:00","alerttype":"instant","formated":"#sp#Le jour m\u00eame#sp# (_full_1)"}}},"error":"","status":"success"}
                
```


Requete
-------

```
$request =  array( 
    'method' => 'Agenda.create',
    'params' => array(
        'type' => {{type}},
        {{type}} => array(
			'linked' => {{linked}},
			'description' => {{description}},
			'title' => {{title}},
			'label' => {{label}},
			'allDay' => {{allDay}},
			'start' => {{start}},
			'end' => {{end}},
			'isPrivate' => {{isPrivate}},
			'alerts' => {{alerts}},
			'staffids' => {{staffids}},
			'staffs' => array(
				'id'    => {{id}},
				'canEdit' => {{canEdit}}
			),
			'relatedtype' => {{relatedtype}},
			'relatedid' => {{relatedid}},
			'exceptions' => {{exceptions}},
			'use_recurrence' => {{use_recurrence}},
			'recurrence' => array(
				'frequency' => {{frequency}},
				'endMode' => {{endMode}},
				'periodicity' => {{periodicity}},
				'weekMode' => {{weekMode}},
				'monthMode' => {{monthMode}},
				'endOccurences' => {{endOccurences}},
				'endDateValue' => {{endDateValue}}
			)
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Parametre: {{type}}
  * requis: oui
  * type: enum
  * default: event
  * Description: Type de l'entrée dans l'agenda (event/task)
* Parametre: {{linked}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Adresse d'où l'évènement/tache a été enregistré
* Parametre: {{description}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Message de description de l'évènement/tâche
* Parametre: {{title}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Titre de l'évènement (non disponible pour les tâches)
* Parametre: {{label}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Id du label attaché à l'évènement/tâche
* Parametre: {{allDay}}
  * requis: oui
  * type: enum
  * default: Y
  * Description: L'évènement/tâche dure-t'il toute la journée ? (Y/N)
* Parametre: {{start}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Date de départ de l'évènement/tâche
* Parametre: {{end}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Date de fin de l'évènement/tâche
* Parametre: {{isPrivate}}
  * requis: oui
  * type: enum
  * default: Y
  * Description: L'évènement est-t'il privé ? (Y/N)
* Parametre: {{alerts}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau où chaque entrée correspond à un rappel (instant,prevHour,prevDay,prevWeek,prevMonth). Exemple : array('instant', 'prevHour')
* Parametre: {{staffids}}
  * requis: non
  * type: array
  * default: aucun
  * Description:                                 Tableau où chaque entrée correspond à un staffid. Exemple : array(318, 517).                                Les staffid fournis n'auront pas le droit en modification. Pour le mettre, voir le paramètre staffs.                            
* Parametre: {{staffs}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau contenant pour chaques staffs, l'id et le paramètre canEdit
* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: staffid
* Parametre: {{canEdit}}
  * requis: oui
  * type: enum(Y,N)
  * default: aucun
  * Description: Indique si le staff à le droit en modification sur la tâche ou l'event
* Parametre: {{relatedtype}}
  * requis: non
  * type: enum
  * default: none
  * Description: Type de l'élément lié ('opportunity', 'people', 'item', 'service', 'dashboard', 'agenda', 'none', 'third', 'prospect', 'estimate', 'creditnote', 'order', 'delivery', 'proforma', 'invoice', 'purInvoice', 'purOrder', 'purDelivery', 'purCreditNote', 'support') 
* Parametre: {{relatedid}}
  * requis: non
  * type: int
  * default: 0
  * Description: Identifiant de l'élément lié
* Parametre: {{exceptions}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau contenant le timestamp des dates à exclure de la récurrence
* Parametre: {{use_recurrence}}
  * requis: non
  * type: enum
  * default: N
  * Description: L'évènement est-il récurrent ? (Y/N)
* Parametre: {{frequency}}
  * requis: oui si use_recurrence = Y
  * type: enum(daily, weekly, monthly, yearly)
  * default: weekly
  * Description: Fréquence de l'évènement récurrent
* Parametre: {{endMode}}
  * requis: oui si use_recurrence = Y
  * type: enum(occurences, date, never)
  * default: occurences
  * Description: Type de fin de la récurrence
* Parametre: {{periodicity}}
  * requis: oui, si c'est un évènement récurrent et que la fréquence est différente de 'yearly'
  * type: int
  * default: 1
  * Description: Périodicité de l'évènement récurrent (si fréquence daily => 1 à 365, si fréquence weekly => 1 à 52, si fréquence monthly => 1 à 11)
* Parametre: {{weekMode}}
  * requis: oui, si fréquence weekly
  * type: array
  * default: aucun
  * Description: jour de répétitions de l'évènement récurrent (de 0 pour dimanche à 6 pour lundi)
* Parametre: {{monthMode}}
  * requis: oui, si fréquence monthly
  * type: enum(numDay, weekday)
  * default: numDay
  * Description: Type de répétition pour un évènement récurrent mensuellement
* Parametre: {{endOccurences}}
  * requis: oui, si end_mode = occurences
  * type: int
  * default: 5
  * Description: Nombre de fois où l'évènement récurrent sera répété
* Parametre: {{endDateValue}}
  * requis: oui, si end_mode = date
  * type: timestamp
  * default: aucun
  * Description: Jour où l'évènement récurrent sera terminé


Retour
------

```
    {"response":{"taskid":140},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Agenda.update',
        'params' => array(
            'id' => {{id}},
            'type' => {{type}},
            {{type}} => array(
                'linked' => {{linked}},
                'description' => {{description}},
                'title' => {{title}},
                'label' => {{label}},
                'allDay' => {{allDay}},
                'datefrom' => {{datefrom}},
                'dateto' => {{dateto}},
                'isPrivate' => {{isPrivate}},
                'alerts' => {{alerts}},
                'staffids' => {{staffids}},
				'exceptions' => {{exceptions}},
				'use_recurrence' => {{use_recurrence}},
				'recurrence' => array(
					'frequency' => {{frequency}},
					'endMode' => {{endMode}},
					'periodicity' => {{periodicity}},
					'weekMode' => {{weekMode}},
					'monthMode' => {{monthMode}},
					'endOccurences' => {{endOccurences}},
					'endDateValue' => {{endDateValue}}
				)
            )
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------



* Parametre: {{id}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Adresse d'où l'évènement/tache a été enregistré
* Parametre: {{type}}
  * requis: oui
  * type: enum
  * default: event
  * Description: Type de l'entrée dans l'agenda (event/task)
* Parametre: {{linked}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Adresse d'où l'évènement/tache a été enregistré
* Parametre: {{description}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Message de description de l'évènement/tâche
* Parametre: {{title}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Titre de l'évènement (non disponible pour les tâches)
* Parametre: {{label}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Id du label attaché à l'évènement/tâche
* Parametre: {{allDay}}
  * requis: oui
  * type: enum
  * default: Y
  * Description: L'évènement/tâche dure-t'il toute la journée ? (Y/N)
* Parametre: {{datefrom}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Date de départ de l'évènement/tâche
* Parametre: {{dateto}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Date de fin de l'évènement/tâche
* Parametre: {{isPrivate}}
  * requis: oui
  * type: enum
  * default: Y
  * Description: L'évènement est-t'il privé ? (Y/N)
* Parametre: {{alerts}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau où chaque entrée correspond à un rappel (instant,prevHour,prevDay,prevWeek,prevMonth). Exemple : array('instant', 'prevHour') ?>
* Parametre: {{staff}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau où chaque entrée correspond à un staffid. Exemple : array(318, 517)
* Parametre: {{exceptions}}
  * requis: non
  * type: array
  * default: aucun
  * Description: Tableau contenant le timestamp des dates à exclure de la récurrence
* Parametre: {{use_recurrence}}
  * requis: non
  * type: enum
  * default: N
  * Description: L'évènement est-il récurrent ? (Y/N)
* Parametre: {{frequency}}
  * requis: oui si use_recurrence = Y
  * type: enum(daily, weekly, monthly, yearly)
  * default: weekly
  * Description: Fréquence de l'évènement récurrent
* Parametre: {{endMode}}
  * requis: oui si use_recurrence = Y
  * type: enum(occurences, date, never)
  * default: occurences
  * Description: Type de fin de la récurrence
* Parametre: {{periodicity}}
  * requis: oui, si c'est un évènement récurrent et que la fréquence est différente de 'yearly'
  * type: int
  * default: 1
  * Description: Périodicité de l'évènement récurrent (si fréquence daily => 1 à 365, si fréquence weekly => 1 à 52, si fréquence monthly => 1 à 11)
* Parametre: {{weekMode}}
  * requis: oui, si fréquence weekly
  * type: array
  * default: aucun
  * Description: jour de répétitions de l'évènement récurrent (de 0 pour dimanche à 6 pour lundi)
* Parametre: {{monthMode}}
  * requis: oui, si fréquence monthly
  * type: enum(numDay, weekday)
  * default: numDay
  * Description: Type de répétition pour un évènement récurrent mensuellement
* Parametre: {{endOccurences}}
  * requis: oui, si end_mode = occurences
  * type: int
  * default: 5
  * Description: Nombre de fois où l'évènement récurrent sera répété
* Parametre: {{endDateValue}}
  * requis: oui, si end_mode = date
  * type: timestamp
  * default: aucun
  * Description: Jour où l'évènement récurrent sera terminé


Retour
------

```
    {"response":{"taskid":140},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array( 
        'method' => 'Agenda.delete', 
        'params' => array(
            'id'    => {{id}}
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                                 |
|---------|------|----|-------|--------------------------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant de l'évènement/tache à supprimer|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request =  array( 
    'method' => 'Agenda.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                      |
|------------|------|----|------|---------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant de la tâche/événement|
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method' => 'Agenda.updateStatus',
        'params' => array(
            'id'    => {{id}},
            'status'=> {{status}}
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Utilisable sur les tâches seulement


|Parametre |requis|type|default|Description                                     |
|----------|------|----|-------|------------------------------------------------|
|{{id}}    |oui   |int |aucun  |Identifiant de l'évènement/tache à mettre à jour|
|{{status}}|oui   |enum|aucun  |Nouveau statut (wait,ok,complete)               |


Retour
------

```
    {"response":{"taskid":"142","newstatus":"complete"},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.getAvailableRappels',
    'params' => array()
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres à cette fonction

Retour
------

```
    {"response":{"instant":"Le jour m\u00eame","prevHour":"Une heure","prevDay":"Un jour","prevWeek":"Une semaine","prevMonth":"Un mois"},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.getAvailableLabels',
    'params' => array()
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres à cette fonction

Retour
------

```
{"response":{"11685":{"id":"11685","corpid":"138","list":"labels","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"D\u00e9jeuner","more":"1B87E0"},"11686":{"id":"11686","corpid":"138","list":"labels","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"R\u00e9union","more":"FF0808"},"34240":{"id":"34240","corpid":"138","list":"labels","status":"ok","isEnabled":"N","isWriteabled":"Y","syscode":"","rank":"3","value":"TEST 2","more":"FFFFFF"}},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.getLabel',
    'params' => array(
        'id' => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description         |
|---------|------|----|-------|--------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du label|


Retour
------

```
{"response":{"corpid":"138","list":"labels","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"D\u00e9jeuner","more":"1B87E0","id":"11685"},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.createLabel',
    'params' => array(
        'label' => array(
            'isEnabled' => {{isEnabled}},
            'value' => {{value}},
            'color' => {{color}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre    |requis|type  |default|Description                           |
|-------------|------|------|-------|--------------------------------------|
|{{isEnabled}}|non   |enum  |Y      |Activer le label (Y/N)                |
|{{value}}    |oui   |string|aucun  |Valeur du label                       |
|{{color}}    |oui   |string|aucun  |Couleur du label au format hexadécimal|


Retour
------

```
 {"response":"11685","error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.updateLabel',
    'params' => array(
        'id'    => {{id}}
        'label' => array(
            'isEnabled' => {{isEnabled}},
            'value' => {{value}},
            'color' => {{color}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre    |requis|type  |default|Description                           |
|-------------|------|------|-------|--------------------------------------|
|{{id}}       |oui   |int   |aucun  |Identifiant du label                  |
|{{isEnabled}}|non   |enum  |Y      |Activer le label (Y/N)                |
|{{value}}    |oui   |string|aucun  |Valeur du label                       |
|{{color}}    |oui   |string|aucun  |Couleur du label au format hexadécimal|


Retour
------

```
 {"response":"11685","error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Agenda.deleteLabel',
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description         |
|---------|------|----|-------|--------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du label|


Retour
------

```
{"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Annotations.getList',
    'params' => array(
        'search' => array(
            'id'    => {{id}},
            'type'  => {{type}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant associé au type (ex: l'id d'un third ou encore d'une facture (invoice)). Pour avoir l'ensemble des commentaires => ident = 1 & type = dashboard
* Parametre: {{type}}
  * requis: oui
  * type: enum
  * default: dashboard
  * Description: Type lié au commentaire (dashboard, invoice, estimate, third, purchase, delivery, task). Pour avoir l'ensemble des commentaires => ident = 1 & type = dashboard
* Parametre: {{pagenum}}
  * requis: non
  * type: int
  * default: 1
  * Description: Numéro de la page voulue
* Parametre: {{nbperpage}}
  * requis: non
  * type: int
  * default: 10
  * Description: Nombre d'évènements voulu par page


Retour
------

```
{"response":{"result":{"1728":{"datas":{"ownerid":"317","id":"1728","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"06\/11\/2012, 14h41","title":"R\u00e9my Neut'","annotation":"http:\/\/www.sellsy.com","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"http:\/\/www.sellsy.com","relatedname":""},"subannots":{"1729":{"ownerid":"317","id":"1729","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"1728","date":"06\/11\/2012, 14h42","title":"R\u00e9my Neut'","annotation":"test","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"test"}}},"1327":{"datas":{"ownerid":"317","id":"1327","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"20\/07\/2012, 17h53","title":"R\u00e9my Neut'","annotation":"Test new","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Test new","relatedname":""},"subannots":{"1328":{"ownerid":"317","id":"1328","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"1327","date":"20\/07\/2012, 17h53","title":"R\u00e9my Neut'","annotation":"blablabla","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"blablabla"}}},"1294":{"datas":{"ownerid":"317","id":"1294","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"20\/07\/2012, 15h45","title":"R\u00e9my Neut'","annotation":"Checked","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Checked","relatedname":""}},"1288":{"datas":{"ownerid":"317","id":"1288","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"20\/07\/2012, 11h35","title":"R\u00e9my Neut'","annotation":"test\r\n","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"test\r\n","relatedname":""}},"1281":{"datas":{"ownerid":"317","id":"1281","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"19\/07\/2012, 15h16","title":"R\u00e9my Neut'","annotation":"New test","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"New test","relatedname":""}},"1279":{"datas":{"ownerid":"317","id":"1279","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"19\/07\/2012, 15h04","title":"R\u00e9my Neut'","annotation":"La suppression de commentaires \u00e0 l'air d'\u00eatre plut\u00f4t ok !","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"La suppression de commentaires \u00e0 l'air d'\u00eatre plut\u00f4t ok !","relatedname":""},"subannots":{"1280":{"ownerid":"317","id":"1280","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"1279","date":"19\/07\/2012, 15h16","title":"R\u00e9my Neut'","annotation":"Test sous comment via le btn +","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Test sous comment via le btn +"}}},"1231":{"datas":{"ownerid":"317","id":"1231","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"18\/07\/2012, 17h46","title":"R\u00e9my Neut'","annotation":"C'est cool !","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"C'est cool !","relatedname":""}},"1203":{"datas":{"ownerid":"317","id":"1203","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"0","date":"18\/07\/2012, 11h31","title":"R\u00e9my Neut'","annotation":"Je test les commentaires","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Je test les commentaires","relatedname":""},"subannots":{"1230":{"ownerid":"317","id":"1230","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"1203","date":"18\/07\/2012, 17h39","title":"R\u00e9my Neut'","annotation":"Et leurs sous-commentaires","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Et leurs sous-commentaires"},"1232":{"ownerid":"317","id":"1232","relatedtype":"dashboard","relatedid":"1","canEdit":"Y","parentid":"1203","date":"18\/07\/2012, 18h01","title":"R\u00e9my Neut'","annotation":"Pour les int\u00e9grer dans l'API ;)","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Pour les int\u00e9grer dans l'API ;)"}}}}"alerts":{},"error":"","status":"success"}}
```


Requete
-------

```
$request =  array( 
    'method' => 'Annotations.getOne', 
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description               |
|---------|------|----|------|--------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du commentaire|


Retour
------

```
{"response":{"datas":{"ownerid":"317","id":"2481","relatedtype":"invoice","relatedid":"14072","canEdit":"Y","parentid":"0","date":"Aujourd'hui 15h34","title":"R\u00e9my Neut'","annotation":"Grosse facture, surveiller ce client","icon":"\/img\/common\/people.jpg","embedurl":"","embedthumb":"","embedtitle":"","embeddesc":"","embed":"","isMine":"Y","annotationHtmlFormated":"Grosse facture, surveiller ce client"}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Annotations.create',
    'params' => array(
        'annotation' => array(
            'parentid'  => {{parentid}},
            'relatedtype'   => {{relatedtype}},
            'relatedid' => {{relatedid}},
            'text'      => {{text}},
            'date'      => {{date}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {parentid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du commentaire parent (obligatoire si vous souhaitez créer un sous-commentaire)
* Paramètre: {{relatedtype}}
  * Requis: Oui
  * Type: enum('dashboard', 'item', 'estimate', 'creditnote', 'order', 'delivery', 'proforma', 'invoice', 'third', 'people', 'purOrder', 'purDelivery', 'purInvoice', 'purCreditNote', 'delivery', 'opportunity', 'task')
  * Défaut: Aucun
  * Description: Type associé au commentaire
* Paramètre: {{relatedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant associé au type choisi (ex: l'identifiant d'une facture (invoice) ou d'un contact (people))
* Paramètre: {{text}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Contenu du commentaire
* Paramètre: {{date}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date du commentaire


Retour
------

```
{"response":2482,"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Annotations.update', 
    'params' => array(
        'id'    => {{id}},
        'annotation' => array(
            'parentid'  => {{parentid}},
            'relatedtype'   => {{relatedtype}},
            'relatedid' => {{relatedid}},
            'text'      => {{text}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du commentaire
* Paramètre: {parentid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du commentaire parent (obligatoire si vous souhaitez créer un sous-commentaire)
* Paramètre: {{relatedtype}}
  * Requis: Oui
  * Type: enum('dashboard', 'item', 'estimate', 'creditnote', 'order', 'delivery', 'proforma', 'invoice', 'third', 'people', 'purOrder', 'purDelivery', 'purInvoice', 'purCreditNote', 'delivery', 'opportunity', 'task')
  * Défaut: Aucun
  * Description: Type associé au commentaire
* Paramètre: {{relatedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant associé au type choisi (ex: l'identifiant d'une facture (invoice) ou d'un contact (third))
* Paramètre: {{text}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Contenu du commentaire


Retour
------

```
{"response":{"annotid":"1291"},"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Annotations.delete', 
    'params' => array(
        'id'    => {{id}}           
    )
);
```


Paramètres
----------


|Parametre|requis|type|default|Description                           |
|---------|------|----|-------|--------------------------------------|
|{id}}    |oui   |int |aucun  |Identifiant du commentaire à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Annotations.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}},
        'ownerid'   => {{ownerid}}  
    )
);
```


Paramètres
----------


|Paramètre  |Requis|Type|Défaut|Description                          |
|-----------|------|----|------|-------------------------------------|
|{linkedid}}|Oui   |int |Aucun |Identifiant du commentaire à modifier|
|{ownerid}} |oui   |int |aucun |Identifiant du nouveau propriétaire  |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'BankAccount.getList', 
    'params' => array(
        'search'    => array(
            'linkedtype'    => {{linkedtype}},
            'linkedid'      => {{linkedid}}
        )
    )
);
```


Paramètres
----------



* Parametre: {linkedtype}}
  * Requis: Non
  * Type: enum('third', 'corporation')
  * Défaut: corporation
  * Description: Type de l‘objet lié aux comptes bancaires
* Parametre: {linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘objet lié. Si linkedtype = corporation, ce paramètre ne sera pas pris en compte


Requete
-------

```
$request =  array( 
    'method' => 'BankAccount.getOne', 
    'params' => array(
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Parametre|Requis|Type|Défaut|Description          |
|---------|------|----|------|---------------------|
|{id}}    |Oui   |int |Aucun |ID du compte bancaire|


Requête
-------

```
$request = array( 
    'method' => 'BankAccount.create', 
    'params' => array(
        'bankAccount'   => array(

            'linkedtype'        => {{linkedtype}},
            'linkedid'      => {{linkedid}},
            'label'         => {{label}},
            'hasiban'       => {{hasiban}},
            'isEnabled'     => {{isEnabled}},
            'accountingCode'    => {{accountingCode}},
            
            # hasiban == 'Y'
            'bic'                   => {{bic}},
            'iban'                  => {{iban}},
            'sepa_authorizationNumber'      => {{sepa_authorizationNumber}},
            'sepa_transmitterNationalNumber'    => {{sepa_transmitterNationalNumber}},
            'sepa_signaturemandat'          => {{sepa_signaturemandat}},

            # hasiban == 'N'
            'name'          => {{name}},
            'number'        => {{number}},
            'rounting'      => {{rounting}},
            'swift'         => {{swift}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('corporation', 'third')
  * Défaut: corporation
  * Description: Type de l‘objet lié au compte bancaire
* Paramètre: {{linkedid}}
  * Requis: Oui si linkedtype = third
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘objet lié au compte bancaire
* Paramètre: {{label}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Label du compte bancaire
* Paramètre: {{hasiban}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire possède un IBAN
* Paramètre: {{isEnabled}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire est visible dans les listes
* Paramètre: {{accountingCode}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable associé au compte bancaire, obligatoire si le module d'export comptable est activé
* Paramètre: Paramètres à utiliser si le compte bancaire utilise un IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{bic}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: BIC associé au compte bancaire
* Paramètre: {{iban}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: IBAN associé au compte bancaire
* Paramètre: {{sepa_authorizationNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro d‘autorisation SEPA
* Paramètre: {{sepa_transmitterNationalNumber}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro national d‘émetteur SEPA
* Paramètre: {{sepa_signaturemandat}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de signature de mandat
* Paramètre: Paramètres à utiliser si le compte bancaire n‘utilise pas d‘IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du compte bancaire
* Paramètre: {{number}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{rounting}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{swift}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire


Retour
------

```
{"response":{"id":{{bankAccountid}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'BankAccount.update', 
    'params' => array(
        'id'          => {{id}},
        'bankAccount' => array(

            'label'          => {{label}},
            'hasiban'        => {{hasiban}},
            'isEnabled'      => {{isEnabled}},
            'accountingCode' => {{accountingCode}},
            
            # hasiban == 'Y'
            'bic'                   => {{bic}},
            'iban'                  => {{iban}},
            'sepa_authorizationNumber'      => {{sepa_authorizationNumber}},
            'sepa_transmitterNationalNumber'    => {{sepa_transmitterNationalNumber}},
            'sepa_signaturemandat'          => {{sepa_signaturemandat}},

            # hasiban == 'N'
            'name'          => {{name}},
            'number'        => {{number}},
            'rounting'      => {{rounting}},
            'swift'         => {{swift}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du compte bancaire
* Paramètre: {{label}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Label du compte bancaire
* Paramètre: {{hasiban}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire possède un IBAN
* Paramètre: {{isEnabled}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire est visible dans les listes
* Paramètre: {{accountingCode}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable associé au compte bancaire
* Paramètre: Paramètres à utiliser si le compte bancaire utilise un IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{bic}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: BIC associé au compte bancaire
* Paramètre: {{iban}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: IBAN associé au compte bancaire
* Paramètre: {{sepa_authorizationNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro d‘autorisation SEPA
* Paramètre: {{sepa_transmitterNationalNumber}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro national d‘émetteur SEPA
* Paramètre: {{sepa_signaturemandat}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de signature de mandat
* Paramètre: Paramètres à utiliser si le compte bancaire n‘utilise pas d‘IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du compte bancaire
* Paramètre: {{number}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{rounting}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{swift}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire


Retour
------

```
{"response":{"id":{{bankAccountid}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
'method' => 'BankAccount.massCreate',
'params' => array(
    'bankAccounts' => array(
        array(
            'linkedtype'        => {{linkedtype}},
            'linkedid'      => {{linkedid}},
            'label'         => {{label}},
            'hasiban'       => {{hasiban}},
            'isEnabled'     => {{isEnabled}},
            'accountingCode'    => {{accountingCode}},
            
            # hasiban == 'Y'
            'bic'                   => {{bic}},
            'iban'                  => {{iban}},
            'sepa_authorizationNumber'      => {{sepa_authorizationNumber}},
            'sepa_transmitterNationalNumber'    => {{sepa_transmitterNationalNumber}},
            'sepa_signaturemandat'          => {{sepa_signaturemandat}},

            # hasiban == 'N'
            'name'          => {{name}},
            'number'        => {{number}},
            'rounting'      => {{rounting}},
            'swift'         => {{swift}}
        )
    )
)
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('corporation', 'third')
  * Défaut: corporation
  * Description: Type de l‘objet lié au compte bancaire
* Paramètre: {{linkedid}}
  * Requis: Oui si linkedtype = third
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘objet lié au compte bancaire
* Paramètre: {{label}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Label du compte bancaire
* Paramètre: {{hasiban}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire possède un IBAN
* Paramètre: {{isEnabled}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire est visible dans les listes
* Paramètre: {{accountingCode}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable associé au compte bancaire
* Paramètre: Paramètres à utiliser si le compte bancaire utilise un IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{bic}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: BIC associé au compte bancaire
* Paramètre: {{iban}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: IBAN associé au compte bancaire
* Paramètre: {{sepa_authorizationNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro d‘autorisation SEPA
* Paramètre: {{sepa_transmitterNationalNumber}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro national d‘émetteur SEPA
* Paramètre: {{sepa_signaturemandat}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de signature de mandat
* Paramètre: Paramètres à utiliser si le compte bancaire n‘utilise pas d‘IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du compte bancaire
* Paramètre: {{number}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{rounting}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{swift}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire


Retour
------

```
{"response":{'ids' : [1, 2]}},"error":"","status":"success"}
            
```


Requête
-------

```
$request = array(
'method' => 'BankAccount.massUpdate',
'params' => array(
    'bankAccounts' => array(
        array(
            'id'                => {{id}}
            'linkedtype'        => {{linkedtype}},
            'linkedid'      => {{linkedid}},
            'label'         => {{label}},
            'hasiban'       => {{hasiban}},
            'isEnabled'     => {{isEnabled}},
            'accountingCode'    => {{accountingCode}},
            
            # hasiban == 'Y'
            'bic'                   => {{bic}},
            'iban'                  => {{iban}},
            'sepa_authorizationNumber'      => {{sepa_authorizationNumber}},
            'sepa_transmitterNationalNumber'    => {{sepa_transmitterNationalNumber}},
            'sepa_signaturemandat'          => {{sepa_signaturemandat}},

            # hasiban == 'N'
            'name'          => {{name}},
            'number'        => {{number}},
            'rounting'      => {{rounting}},
            'swift'         => {{swift}}
        )
    )
)
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du compte bancaire
* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('corporation', 'third')
  * Défaut: corporation
  * Description: Type de l‘objet lié au compte bancaire
* Paramètre: {{linkedid}}
  * Requis: Oui si linkedtype = third
  * Type: int
  * Défaut: Aucun
  * Description: ID de l‘objet lié au compte bancaire
* Paramètre: {{label}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Label du compte bancaire
* Paramètre: {{hasiban}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire possède un IBAN
* Paramètre: {{isEnabled}}
  * Requis: Oui
  * Type: enum('Y','N')
  * Défaut: Aucun
  * Description: Défini si le compte bancaire est visible dans les listes
* Paramètre: {{accountingCode}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable associé au compte bancaire
* Paramètre: Paramètres à utiliser si le compte bancaire utilise un IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{bic}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: BIC associé au compte bancaire
* Paramètre: {{iban}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: IBAN associé au compte bancaire
* Paramètre: {{sepa_authorizationNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro d‘autorisation SEPA
* Paramètre: {{sepa_transmitterNationalNumber}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro national d‘émetteur SEPA
* Paramètre: {{sepa_signaturemandat}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de signature de mandat
* Paramètre: Paramètres à utiliser si le compte bancaire n‘utilise pas d‘IBAN
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du compte bancaire
* Paramètre: {{number}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{rounting}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire
* Paramètre: {{swift}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du compte bancaire


Retour
------

```
{"response":{'ids' : [1, 2]}},"error":"","status":"success"}
            
```


Requête
-------

```
$request = array( 
    'method' => 'BankAccount.delete', 
    'params' => array(
        'id'    => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description          |
|---------|------|----|------|---------------------|
|{{id}}   |Oui   |int |Aucun |ID du compte bancaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = [
	'method' => 'BankDeposit.create',
	'params' => [
		'date'		=> {{date}},
		'bankID'	=> {{bankID}},
		'payIDs'	=> {{payIDs}}
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Parametre |Requis|Type     |Défaut|Description                                 |
|----------|------|---------|------|--------------------------------------------|
|{{date}}  |Oui   |timestamp|Aucune|Date de la remise en banque                 |
|{{bankID}}|Oui   |int      |Aucune|Banque concernée                            |
|{{payIDs}}|Oui   |Array    |Aucune|Tableau d‘IDs des règlements remis en banque|


Retour
------

```
{"response":{"id":{bankDepositID}},"error":"","status":"success"}
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = array(
    'method' => 'Catalogue.getList',
    'params' => array (
        'type'          => {{type}},
        'order' => array(
            'direction' => {{direction}},
            'order'     => {{order}},
        ),
        'pagination' => array (
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}},
        ),
        'search' => array(
            'name'          	=> {{name}},
            'tags'          	=> {{tags}},
            'inPos'         	=> {{inPos}},
            'rateCategory'      => {{rateCategory}},
            'useDeclination'    => {{useDeclination}},
            'combineDecli'      => {{combineDecli}},
            'actif'         	=> {{actif}},
            'categoryid'        => {{categoryid}},
            'stockAvailable'    => {{stockAvailable}},
            'stockEnabled'      => {{stockEnabled}},
	    'alertstock'	=> {{alertstock}},
            'containsMode'      => {{containsMode}},
	    'decliValues'	=> {{decliValues}},
	    'barcode'		=> {{barcode}},
	    'thirdid'		=> {{thirdid}},
		'shopID'		=> {{shopID}},
		'tillID'		=> {{tillID}},
        )
    )
);
```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: item ou service
* Paramètre: {{direction}}
  * Requis: Non
  * Type: string
  * Défaut: ASC
  * Description: ASC,DESC
* Paramètre: {{order}}
  * Requis: Non
  * Type: string
  * Défaut: item_name
  * Description: Valeurs possibles : item_name, item_tradename, item_qt ou item_taxrate
* Paramètre: {{name}}
  * Requis: Non
  * Type: string
  * Défaut: auncun
  * Description: Nom du produit ou service
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Tags séparés par des virgules
* Paramètre: {{inPos}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Permet de récupérer les produits visibles ou non depuis vos caisses enregistreuses
* Paramètre: {{rateCategory}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID d'une catégorie tarifaire. Les montants retournés seront alors ceux de la catégorie tarifaire
* Paramètre: {{useDeclination}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Récupération des produits déclinés ou non déclinés seulement
* Paramètre: {{combineDecli}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Récupération des déclinaisons ou des produits parents. Le paramètre useDeclination doit être à Y pour pouvoir l'utiliser
* Paramètre: {{actif}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Permet de récupérer uniquement les produits/services actifs ou non
* Paramètre: {{categoryid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Permet de récupérer les produits liés à une catégorie
* Paramètre: {{stockAvailable}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Permet de récupérer les produits disponibles (en stock + ceux n‘utilisant pas les stocks) ou hors stock
* Paramètre: {{stockEnabled}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Permet de récupérer les produits dont les stocks sont activés
* Paramètre: {{alertstock}}
  * Requis: Non
  * Type: 'Y' ou champ vide
  * Défaut: champ vide
  * Description: Permet de récupérer les produits en alerte de stock, mettez 'Y' pour l'activer (vous devez avoir le module stock activé)
* Paramètre: {{containsMode}}
  * Requis: Non
  * Type: enum('all-term', 'atleast-term', 'exact')
  * Défaut: Aucun
  * Description: Permet de modifier la méthode de recherche. all-term : tous les termes, atleast-term : au moins un terme, exact : le terme exact
* Paramètre: {{decliValues}}
  * Requis: Non
  * Type: Array
  * Défaut: Aucun
  * Description: Permet de récupérer les produits ayant les champs de déclinaisons envoyés : array( {{ variationID1 }} => array( {{ variationValue1 }}, {{ variationValue2 }} ))
* Paramètre: {{barcode}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de récupérer les produits selon le code barre envoyé
* Paramètre: {{thirdid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Permet de récupérer les exceptions tarifaires pour le client envoyé
* Paramètre: {{shopID}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Shop ID
* Paramètre: {{tillID}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Till ID


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":"1","nbtotal":"2"},"result":{"249448":{"id":"249448","type":"item","corpid":"138","ownerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"4th","tradename":"PRODUIT 4","notes":"ZORR Promo Piezo mini","unitAmount":"0.125418060","unitAmountIsTaxesFree":"N","unitid":"4728","unit":"forfaitaire","qt":"500.000000000","taxid":"4724","taxrate":"19.600000000","purchaseAmount":"0.000000000","costPerHour":"0.000000000","stock":"0","createdAt":"2013-02-25 10:40:04","updatedAt":"2013-02-28 15:48:08","minstock":null,"stockEnabled":null,"stockItemQt":null,"typeLabel":"produit","nameSample":"4th","notesSample":"ZORR Promo Piezo mini","notesHTMLSample":"ZORR Promo Piezo mini","isTaxesFree":"TTC","unitAmountTaxesInc":"0.150000000","purchaseAmountTaxesInc":"0.000000000","formatted_unitAmount":"0,13 \u20ac","formatted_unitAmountTaxesInc":"0,15 \u20ac","formatted_purchaseAmount":"0,00 \u20ac","formatted_purchaseAmountTaxesInc":"0,00 \u20ac","formatted_qt":"500,00","formatted_taxrate":"19,60","defaultImage":{"file":{"public_path":"?_f=file&id=JUFERndJJTg3JTI4JUIzJUJFJTBCJUVCJUUyJUJFJUI5JTJBJUI0RCUyRiUyNiVGOSVDN0hKJUNGJTVDJUUwQyVCMCU4QiUxNiVDRkclOTUlQjglRkMlQUJUJUJCTiU4MyVDRCU4NCVBQyUwMWklMDUlOUUlMDIlMUJBJTEzJTk4JTBCJTE5JThCLXklQzUlM0YlMTElQTglMkIlMkE0JUVET2olQkRSJTVDJTQweiVCMCVDQSVFNiU5OCVGMSVDQiU5NiU4MSVBQiUzQyUxRCU5RjR5JTk2JTg1JUMzJUZGJUJFJTBCJTkyJUE0JTEwJUM0JUMy&key=93c6a42e03541d8db0c70ce2f346ea13"}},"accountingCode":"3931","accountingPurchaseCode":"3929","analyticsCode":""},"249439":{"id":"249439","type":"item","corpid":"138","ownerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"1st","tradename":"PRODUIT 1","notes":"GO Piezofeuerzeug Frosty","unitAmount":"7.692307692","unitAmountIsTaxesFree":"N","unitid":"26592","unit":"forfaitourino","qt":"1.000000000","taxid":"26594","taxrate":"30.000000000","purchaseAmount":"0.000000000","costPerHour":"0.000000000","stock":"0","createdAt":"2013-02-22 11:02:30","updatedAt":"2013-03-07 12:20:59","minstock":null,"stockEnabled":null,"stockItemQt":null,"typeLabel":"produit","nameSample":"1st","notesSample":"GO Piezofeuerzeug Frosty","notesHTMLSample":"GO Piezofeuerzeug Frosty","isTaxesFree":"TTC","unitAmountTaxesInc":"10.000000000","purchaseAmountTaxesInc":"0.000000000","formatted_unitAmount":"7,69 \u20ac","formatted_unitAmountTaxesInc":"10,00 \u20ac","formatted_purchaseAmount":"0,00 \u20ac","formatted_purchaseAmountTaxesInc":"0,00 \u20ac","formatted_qt":"1,00","formatted_taxrate":"30,00","defaultImage":{"file":{"public_path":"?_f=file&id=JUFERndJJTg3JTI4JUIzJUJFJTBCJUVCJUUyJUJFJUI5JTJBJUI0RCUyRiUyNiVGOSVDN0hKJUNGJTVDJUUwQyVCMCU4QiUxNiVDRkclOTUlQjglRkMlQUJUJUJCTiU4MyVDRCU4NCVBQyUwMWklMDUlOUUlMDIlMUJBJTEzJTk4JTBCJTE5JThCLXklQzUlM0YlMTElQTglMkIlMkE0JUVET2olQkRSJTVDJTQweiVCMCVDQSVFNiU5OCVGMSVDQiU5NiU4MSVBQiUzQyUxRCU5RjR5JTk2JTg1JUMzJUZGJUJFJTBCJTkyJUE0JTEwJUM0JUMy&key=93c6a42e03541d8db0c70ce2f346ea13"}},"accountingCode":"3930","accountingPurchaseCode":"3928","analyticsCode":""}}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Catalogue.getOne',
    'params' => array (
        'type'                   => {{type}},
        'id'                     => {{id}},
        'includeDecli'           => {{includeDecli}},
        'includeAssociatedItems' => {{includeAssociatedItems}},
        'langID'                 => {{langID}}
    )
);
```


Paramètres
----------



* Parametre: {{type}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: item, service
* Parametre: {{id}}
  * Requis: oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit ou du service
* Parametre: {{includeDecli}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Si votre produit est décliné, ce paramètre permet d'inclure ses déclinaisons dans le résultat. Valeurs possibles : Y ou N
* Parametre: {{includeAssociatedItems}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Permet de récupérer les produits associés
* Parametre: {{langID}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de la langue à utiliser


Retour
------

```
{"response":{"id":"249439","type":"item","corpid":"138","ownerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"1st","tradename":"PRODUIT 1","notes":"GO Piezofeuerzeug Frosty","unitAmount":"7.692307692","unitAmountIsTaxesFree":"N","unitid":"26592","unit":"forfaitourino","qt":"1.000000000","taxid":"26594","taxrate":"30.000000000","purchaseAmount":"0.000000000","costPerHour":"0.000000000","stock":"0","createdAt":"2013-02-22 11:02:30","updatedAt":"2013-03-07 12:20:59","typeLabel":"produit","nameSample":"1st","notesSample":"GO Piezofeuerzeug Frosty","notesHTMLSample":"GO Piezofeuerzeug Frosty","isTaxesFree":"TTC","unitAmountTaxesInc":"10.000000000","purchaseAmountTaxesInc":"0.000000000","formatted_unitAmount":"7,69 \u20ac","formatted_unitAmountTaxesInc":"10,00 \u20ac","formatted_purchaseAmount":"0,00 \u20ac","formatted_purchaseAmountTaxesInc":"0,00 \u20ac","formatted_qt":"1,00","formatted_taxrate":"30,00","tags":{"id":"251","corpid":"138","category":"catalogue","created":"2012-10-11 11:07:50","word":"KPPLATTNER"}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Catalogue.getOneByRef',
    'params' => array (
        'type'                   => {{type}},
        'ref'                    => {{ref}},
        'includeDecli'           => {{includeDecli}},
        'includeAssociatedItems' => {{includeAssociatedItems}},
        'langID'                 => {{langID}}
    )
);
```


Paramètres
----------



* Parametre: {{type}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: item, service
* Parametre: {{ref}}
  * Requis: oui
  * Type: string
  * Défaut: Aucun
  * Description: Référence du produit ou du service
* Parametre: {{includeDecli}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Si votre produit est décliné, ce paramètre permet d'inclure ses déclinaisons dans le résultat. Valeurs possibles : Y ou N
* Parametre: {{includeAssociatedItems}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Permet de récupérer les produits associés
* Parametre: {{langID}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de la langue à utiliser


Retour
------

```
{"response":{"id":"249439","type":"item","corpid":"138","ownerid":"317","status":"ok","isEnabled":"Y","rank":"0","name":"1st","tradename":"PRODUIT 1","notes":"GO Piezofeuerzeug Frosty","unitAmount":"7.692307692","unitAmountIsTaxesFree":"N","unitid":"26592","unit":"forfaitourino","qt":"1.000000000","taxid":"26594","taxrate":"30.000000000","purchaseAmount":"0.000000000","costPerHour":"0.000000000","stock":"0","createdAt":"2013-02-22 11:02:30","updatedAt":"2013-03-07 12:20:59","typeLabel":"produit","nameSample":"1st","notesSample":"GO Piezofeuerzeug Frosty","notesHTMLSample":"GO Piezofeuerzeug Frosty","isTaxesFree":"TTC","unitAmountTaxesInc":"10.000000000","purchaseAmountTaxesInc":"0.000000000","formatted_unitAmount":"7,69 \u20ac","formatted_unitAmountTaxesInc":"10,00 \u20ac","formatted_purchaseAmount":"0,00 \u20ac","formatted_purchaseAmountTaxesInc":"0,00 \u20ac","formatted_qt":"1,00","formatted_taxrate":"30,00","tags":{"id":"251","corpid":"138","category":"catalogue","created":"2012-10-11 11:07:50","word":"KPPLATTNER"}},"error":"","status":"success"}
```


Requête
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Les champs `{{type}}).taxid` et `{{type}}).taxrate` n'accepteront plus des taux de TVA non conforme.

```
$request = array(
    'method' => 'Catalogue.create',
    'params' => array (
        'type'      => {{type}},
        {{type}}    => array(
            'id'            => {{id}}
            'name'          => {{name}},
            'tradename'     => {{tradename}},
            'tradenametonote'   => {{tradenametonote}},
            'notes'         => {{notes}},
            'tags'          => {{tags}},
            'unitAmount'        => {{unitAmount}},
            'purchaseAmount'    => {{purchaseAmount}},
            'unit'          => {{unit}},
            'qt'            => {{qt}},
            'unitAmountIsTaxesFree' => {{unitAmountIsTaxesFree}},
            'taxid'         => {{taxid}},
            'sellcode'      => {{sellcode}},
            'purchasecode'      => {{purchasecode}},
            'costPerHour'       => {{costPerHour}},
            'inPos'         => {{inPos}},
            'categoryid'        => {{categoryid}},
            'actif'         => {{actif}},
            'useEcoTax'     => {{useEcoTax}},
            'ecoTaxType'        => {{ecoTaxType}},
            'ecoTax'        => {{ecoTax}},
            'taxrate'       => {{taxrate}},
            'characteristics'   => array(
                'width'         => {{width}},
                'deepth'        => {{deepth}},
                'length'        => {{length}},
                'height'        => {{height}},
                'weight'        => {{weight}},
                'packing'       => {{packing}}
            )
        )
    )
);
```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: item ou service
* Paramètre: {{id}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Non requis lors de la création mais requis lors de la mise à jour
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom/code du produit ou du service
* Paramètre: {{tradename}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom commercial du produit ou du service
* Paramètre: {{tradenametonote}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Ajoute le nom commercial à la description
* Paramètre: {{notes}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: notes sur le produit ou le service
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Tags séparés par des virgules
* Paramètre: {{unitAmount}}
  * Requis: Non
  * Type: float
  * Défaut: Aucun
  * Description: Montant unitaire
* Paramètre: {{purchaseAmount}}
  * Requis: Non
  * Type: float
  * Défaut: Aucun
  * Description: Prix d'achat
* Paramètre: {{unit}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom de l'unité telle qu'elle est définie dans votre compte sellsy (par exemple, forfaitaire)
* Paramètre: {{qt}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Quantité de produit ou de service
* Paramètre: {{unitAmountIsTaxesFree}}
  * Requis: Non
  * Type: string
  * Défaut: N
  * Description: Y,N
* Paramètre: {{taxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant d'une des taxes définit dans votre liste de taxes
* Paramètre: {{sellcode}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable de vente
* Paramètre: {{purchasecode}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Code comptable d‘achat
* Paramètre: {{costPerHour}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Coût horaire (uniquement pour les services)
* Paramètre: {{inPos}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Le produit sera visible sur vos caisses
* Paramètre: {{categoryid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Catégorie du produit
* Paramètre: {{actif}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Rendre le produit actif/inactif
* Paramètre: {{useEcoTax}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Activer/désactiver l‘éco-taxe
* Paramètre: {{ecoTaxType}}
  * Requis: Non
  * Type: enum('inc', 'exc')
  * Défaut: inc
  * Description: Type d‘éco-taxe
* Paramètre: {{ecoTax}}
  * Requis: Non
  * Type: float
  * Défaut: Aucun
  * Description: Montant HT de l‘éco-taxe
* Paramètre: {{taxrate}}
  * Requis: Oui, si le compte utilise la TVA
  * Type: float
  * Défaut: Aucun
  * Description: Taxes du compte, peuvent être récupérées ici : Accountdatas.getTaxes
* Paramètre: {{width}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Largeur
* Paramètre: {{deepth}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Profondeur
* Paramètre: {{length}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Longueur
* Paramètre: {{height}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Hauteur
* Paramètre: {{weight}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Poids
* Paramètre: {{packing}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Nombre de produits par colis


Retour
------

```
{"response":{"item_id":{{itemid}}},"error":"","status":"success"}
```


Requete
-------

#### Réforme de la facturation électronique

Dans le cadre de la réforme de la facturation électronique en France, nous faisons évoluer la gestion des documents de vente.

  

*   Les champs `{{type}}).taxid` et `{{type}}).taxrate` n'accepteront plus des taux de TVA non conforme.

```
$request =  array(
    'method' => 'Catalogue.update',
    'params' => array (
        'type'   => {{type}},
        'id'     => {{id}}
        {{type}} => {{param_array}}
    )
);
                
```


Paramètres
----------


|Parametre      |requis|type  |default|Description                                           |
|---------------|------|------|-------|------------------------------------------------------|
|{{type}}       |oui   |string|aucun  |item, service                                         |
|{{id}}         |oui   |int   |aucun  |identifiant du produit ou du service                  |
|{{param_array}}|oui   |array |aucun  |idem que dans la création d'un produit ou d'un service|


Retour
------

```
{"response":{"{{item_or_product}}_id":"{{item_or_product_id}}"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Catalogue.delete',
    'params' => array (
        'type'  => {{type}},
        'id'    => {{id}}
    )
);
                
```


Paramètres
----------


|Parametre|requis|type  |default|Description                         |
|---------|------|------|-------|------------------------------------|
|{{type}} |oui   |string|aucun  |item,service                        |
|{{id}}   |oui   |int   |aucun  |identifiant du produit ou du service|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Catalogue.updateOwner',
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du produit/service  |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getVariations',
    'params' => array (
        'itemid' => {{itemid}}
    )
);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description           |
|----------|------|----|------|----------------------|
|{{itemid}}|Oui   |int |Aucun |Identifiant du produit|


Retour
------

```
{"response":{"136":{"id":"136","corpid":"1033","status":"ok","itemid":"274082","name":"BX80637I73770-1","tradename":"Intel Core i7-3770 3.1 Ghz 8 Mo","idf1_id":"57","idf1_syscode":"3100","idf2_id":"59","idf2_syscode":"8mo","idf3_id":"0","idf3_syscode":"","priceInc":"239.960000000","purchaseInc":"159.000000000","formatted_priceInc":"239,96 \u20ac","formatted_purchaseInc":"159,00 \u20ac","declicombinaison":"3100-8mo-","galery":[]},"137":{"id":"137","corpid":"1033","status":"ok","itemid":"274082","name":"BX80637I73770-2","tradename":"Intel Core i7-3770 3.4 Ghz 8 Mo","idf1_id":"57","idf1_syscode":"3400","idf2_id":"59","idf2_syscode":"8mo","idf3_id":"0","idf3_syscode":"","priceInc":"269.950000000","purchaseInc":"179.000000000","formatted_priceInc":"269,95 \u20ac","formatted_purchaseInc":"179,00 \u20ac","declicombinaison":"3400-8mo-","galery":[]},"138":{"id":"138","corpid":"1033","status":"ok","itemid":"274082","name":"BX80637I73770-3","tradename":"Intel Core i7-3770 3.5 Ghz 8 Mo","idf1_id":"57","idf1_syscode":"3500","idf2_id":"59","idf2_syscode":"8mo","idf3_id":"0","idf3_syscode":"","priceInc":"287.950000000","purchaseInc":"189.000000000","formatted_priceInc":"287,95 \u20ac","formatted_purchaseInc":"189,00 \u20ac","declicombinaison":"3500-8mo-","galery":[]}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getVariation',
    'params' => array (
        'itemid'    => {{itemid}},
        'declid'    => {{declid}}
    )
);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description                  |
|----------|------|----|------|-----------------------------|
|{{itemid}}|Oui   |int |Aucun |Identifiant du produit       |
|{{declid}}|Oui   |int |Aucun |Identifiant de la déclinaison|


Retour
------

```
{"response":{"id":"136","corpid":"1033","status":"ok","itemid":"274082","name":"BX80637I73770-1","tradename":"Intel Core i7-3770 3.1 Ghz 8 Mo","idf1_id":"57","idf1_syscode":"3100","idf2_id":"59","idf2_syscode":"8mo","idf3_id":"0","idf3_syscode":"","priceInc":"239.960000000","purchaseInc":"159.000000000","galery":[]},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getVariationFields',
    'params' => array()
);
                
```


Retour
------

```
{"response":{"145":{"id":"145","corpid":"1302","status":"ok","name":"Couleur","syscode":"color","array_collections":{"1":{"syscode":"red","name":"Rouge"},"3":{"syscode":"black","name":"Noir"},"4":{"syscode":"green","name":"Vert"},"5":{"syscode":"yellow","name":"Jaune"}}},"146":{"id":"146","corpid":"1302","status":"ok","name":"Taille","syscode":"size","array_collections":{"1":{"syscode":"small","name":"S"},"2":{"syscode":"medium","name":"M"},"3":{"syscode":"large","name":"L"},"4":{"syscode":"extra-large","name":"XL"}}},"153":{"id":"153","corpid":"1302","status":"ok","name":"Capacit\u00e9","syscode":"capacity","array_collections":{"1":{"name":"5go","syscode":"5giga"},"4":{"name":"25go","syscode":"25giga"},"2":{"name":"10go","syscode":"10giga"},"3":{"name":"20go","syscode":"20giga"}}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getVariationFieldsItem',
    'params' => array (
        'itemid' => {{itemid}}
    )
);
                
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description           |
|----------|------|----|------|----------------------|
|{{itemid}}|Oui   |int |Aucun |Identifiant du produit|


Retour
------

```
{"response":{"id":"283","corpid":"1302","status":"ok","itemid":"279120","idf1":"145","idf2":"146","idf3":"0","idf1_details":{"id":"145","corpid":"1302","status":"ok","name":"Couleur","syscode":"color","collections":"a:4:{i:1;a:2:{s:7:\"syscode\";s:3:\"red\";s:4:\"name\";s:5:\"Rouge\";}i:3;a:2:{s:7:\"syscode\";s:5:\"black\";s:4:\"name\";s:4:\"Noir\";}i:4;a:2:{s:7:\"syscode\";s:5:\"green\";s:4:\"name\";s:4:\"Vert\";}i:5;a:2:{s:7:\"syscode\";s:6:\"yellow\";s:4:\"name\";s:5:\"Jaune\";}}","array_collections":{"1":{"syscode":"red","name":"Rouge"},"3":{"syscode":"black","name":"Noir"},"4":{"syscode":"green","name":"Vert"},"5":{"syscode":"yellow","name":"Jaune"}}},"idf2_details":{"id":"146","corpid":"1302","status":"ok","name":"Taille","syscode":"size","collections":"a:4:{i:1;a:2:{s:7:\"syscode\";s:5:\"small\";s:4:\"name\";s:1:\"S\";}i:2;a:2:{s:7:\"syscode\";s:6:\"medium\";s:4:\"name\";s:1:\"M\";}i:3;a:2:{s:7:\"syscode\";s:5:\"large\";s:4:\"name\";s:1:\"L\";}i:4;a:2:{s:7:\"syscode\";s:11:\"extra-large\";s:4:\"name\";s:2:\"XL\";}}","array_collections":{"1":{"syscode":"small","name":"S"},"2":{"syscode":"medium","name":"M"},"3":{"syscode":"large","name":"L"},"4":{"syscode":"extra-large","name":"XL"}}}},"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.createVariationField',
    'params' => array (
        'name'      => {{name}},
        'syscode'   => {{syscode}},
        'fields'    => array(
            0 => array(
                'name'    => {{name}},
                'syscode' => {{syscode}}
            )
        )
    )
);
                
```


Paramètres
----------


|Paramètre  |Requis|Type  |Défaut|Description                         |
|-----------|------|------|------|------------------------------------|
|{{name}}   |Oui   |string|Aucun |Nom associé au syscode              |
|{{syscode}}|Oui   |string|Aucun |Identifiant du champs de déclinaison|


Retour
------

```
{"response":189,"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.updateVariationField',
    'params' => array (
        'id'        => {{id}},
        'name'      => {{name}},
        'syscode'   => {{syscode}},
        'fields'    => array(
            0 => array(
                'name'    => {{name}},
                'syscode' => {{syscode}}
            )
        )
    )
);
                
```


Paramètres
----------


|Paramètre  |Requis|Type  |Défaut|Description                                   |
|-----------|------|------|------|----------------------------------------------|
|{{id}}     |Oui   |int   |Aucun |Identifiant numérique du champs de déclinaison|
|{{name}}   |Non   |string|Aucun |Nom associé au syscode                        |
|{{syscode}}|Non   |string|Aucun |Identifiant du champs de déclinaison          |


Retour
------

```
{"response":189,"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.deleteVariationFields',
    'params' => array (
        'id'        => {{id}}
    )
);
                
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                                   |
|---------|------|----|------|----------------------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant numérique du champs de déclinaison|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.deleteVariationCollection',
    'params' => array (
        'idf' => {{idf}},
        'collection' => array(
           '0' => array(
                'syscode' => {{syscode}}
            )
        )
    )
);
                
```


Paramètres
----------


|Paramètre  |Requis|Type  |Défaut|Description                                   |
|-----------|------|------|------|----------------------------------------------|
|{{idf}}    |Oui   |int   |Aucun |Identifiant numérique du champs de déclinaison|
|{{syscode}}|Oui   |string|Aucun |Syscode de la valeur à supprimer              |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.activateVariations',
    'params' => array (
        'id'           => {{id}},
        'dec_field_1'  => {{dec_field_1}},
        'dec_field_2'  => {{dec_field_2}},
        'dec_field_3'  => {{dec_field_3}}
    )
);
                
```


Paramètres
----------


|Paramètre      |Requis|Type|Défaut|Description                                             |
|---------------|------|----|------|--------------------------------------------------------|
|{{id}}         |Oui   |int |Aucun |Identifiant numérique du produit                        |
|{{dec_field_1}}|Oui   |int |0     |Identifiant numérique du premier champs de déclinaison  |
|{{dec_field_2}}|Non   |int |0     |Identifiant numérique du deuxième champs de déclinaison |
|{{dec_field_3}}|Non   |int |0     |Identifiant numérique du troisième champs de déclinaison|


Retour
------

```
{"response":344,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.createVariations',
    'params' => array (
        'itemid'    => {{itemid}},
        'type'      => {{type}},
        'idf1_id'   => {{idf1_id}},
        'idf2_id'   => {{idf2_id}},
        'idf3_id'   => {{idf3_id}},
        'variations' => array(
            0 => array (
                'tradename' => {{tradename}},
                'name'      => {{name}},
                'idf1_syscode'  => {{idf1_syscode}},
                'idf2_syscode'  => {{idf2_syscode}},
                'idf3_syscode'  => {{idf3_syscode}},
                'priceInc'  => {{priceInc}},
                'purchaseInc'   => {{purchaseInc}}
            )
        )
    )

);
```


Paramètres
----------


|Paramètre       |Requis|Type      |Défaut|Description                                             |
|----------------|------|----------|------|--------------------------------------------------------|
|{{itemid}}      |Oui   |int       |Aucun |Identifiant numérique du produit                        |
|{{type}}        |Oui   |enum(item)|Aucun |Type de l'élément souhaitant activer les déclinaisons   |
|{{idf1_id}}     |Oui   |int       |0     |Identifiant numérique du premier champs de déclinaison  |
|{{idf2_id}}     |Non   |int       |0     |Identifiant numérique du deuxième champs de déclinaison |
|{{idf3_id}}     |Non   |int       |0     |Identifiant numérique du troisième champs de déclinaison|
|{{tradename}}   |Oui   |string    |Aucun |Nom commecial de la déclinaison                         |
|{{name}}        |Oui   |string    |Aucun |Nom de la déclinaison                                   |
|{{idf1_syscode}}|Oui   |string    |Aucun |Identifiant de la valeur du champs de déclinaison 1     |
|{{idf2_syscode}}|Non   |string    |      |Identifiant de la valeur du champs de déclinaison 2     |
|{{idf3_syscode}}|Non   |string    |      |Identifiant de la valeur du champs de déclinaison 3     |
|{{priceInc}}    |Non   |int       |Aucun |Prix du produit décliné hors-taxes                      |
|{{purchaseInc}} |Non   |int       |Aucun |Prix du produit décliné incluant les taxes              |


Retour
------

```
{"response":"1099","error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.updateVariation',
    'params' => array (
        'declid'       => {{declid}},
        'itemid'       => {{itemid}},
        'type'         => {{type}},
        'variation' => array(
            'tradename'    => {{tradename}},
            'name'         => {{name}},
            'priceInc'     => {{priceInc}},
            'purchaseInc'  => {{purchaseInc}}
        )
    )
);
```


Paramètres
----------


|Paramètre      |Requis|Type      |Défaut|Description                                          |
|---------------|------|----------|------|-----------------------------------------------------|
|{{declid}}     |Oui   |int       |Aucun |Identifiant numérique de la déclinaison              |
|{{itemid}}     |Oui   |int       |Aucun |Identifiant numérique du produit                     |
|{{type}}       |Oui   |enum(item)|Aucun |Type de l'élément souhaitant activer les déclinaisons|
|{{tradename}}  |Oui   |string    |Aucun |Nom commecial de la déclinaison                      |
|{{name}}       |Oui   |string    |Aucun |Nom de la déclinaison                                |
|{{priceInc}}   |Non   |int       |Aucun |Prix du produit décliné hors-taxes                   |
|{{purchaseInc}}|Non   |int       |Aucun |Prix du produit décliné incluant les taxes           |


Retour
------

```
{"response":"1099","error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Catalogue.deleteVariation',
    'params' => array (
        'id'        => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                            |
|---------|------|----|------|---------------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant numérique de la déclinaison|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getPrices',
    'params' => array(
        'type'      => {{type}},
        'id'        => {{id}},
        'declid'    => {{declid}}
    )
);
```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: item,service
* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit ou du service
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Identifiant de la déclinaison. Obligatoire si votre produit/service est décliné


Requete
-------

```
$request = array(
    'method' => 'Catalogue.updatePrice',
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'declid'    => {{declid}},
        'rateCategory'  => array(
            'id'        => {{rcid}},
            'amount'    => {{amount}}
        )
    )
);
```


Paramètres
----------



* Parametre: {{linkedtype}}
  * requis: oui
  * type: enum
  * default: aucun
  * Description: item,service
* Parametre: {{linkedid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du produit ou du service
* Parametre: {{declid}}
  * requis: Non
  * type: int
  * default: 0
  * Description: Identifiant de la déclinaison. Obligatoire si votre produit/service est décliné
* Parametre: {{rcid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant de la catégorie tarifaire
* Parametre: {{amount}}
  * requis: oui
  * type: float
  * default: aucun
  * Description: Prix du produit/service pour la catégorie tarifaire donnée


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Catalogue.getBarCodes',
    'params' => array (
        'type'  => {{type}},
        'id'    => {{id}}
    )
);
                
```


Paramètres
----------


|Parametre|requis|type  |default|Description                         |
|---------|------|------|-------|------------------------------------|
|{{type}} |oui   |string|aucun  |item,service                        |
|{{id}}   |oui   |int   |aucun  |identifiant du produit ou du service|


Retour
------

```
{"response":{"693":{"id":"693","corpid":"138","status":"ok","label":"TEST","value":"123456789","itemid":"249980"}},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Catalogue.createBarCode',
    'params' => array (
        'linkedid'  => {{linkedid}},
        'declid'    => {{declid}},
        'barcode'   => array(
            'label'     => {{label}},
            'value'     => {{value}}
        )
    )
);
                
```


Paramètres
----------


|Paramètre   |Requis|Type  |Défaut|Description                         |
|------------|------|------|------|------------------------------------|
|{{linkedid}}|Oui   |int   |Aucun |identifiant du produit ou du service|
|{{declid}}  |Non   |int   |Aucun |Identifiant de la déclinaison       |
|{{label}}   |non   |string|aucun |Label du code barre                 |
|{{value}}   |oui   |string|aucun |Valeur du code barre                |


Retour
------

```
{"response":694,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Catalogue.updateBarCode',
    'params' => array (
        'linkedid'  => {{linkedid}},
        'declid'    => {{declid}},
        'bcid'      => {{bcid}},
        'barcode'   => array(
            'label'     => {{label}},
            'value'     => {{value}}
        )
    )
);
                
```


Paramètres
----------


|Parametre   |requis|type  |default|Description                         |
|------------|------|------|-------|------------------------------------|
|{{linkedid}}|oui   |int   |aucun  |identifiant du produit ou du service|
|{{declid}}  |Non   |int   |Aucun  |Identifiant de la déclinaison       |
|{{bcid}}    |oui   |int   |aucun  |identifiant du code barre           |
|{{label}}   |non   |string|aucun  |Label du code barre                 |
|{{value}}   |oui   |string|aucun  |Valeur du code barre                |


Retour
------

```
{"response":694,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Catalogue.deleteBarCode',
    'params' => array (
        'linkedid'  => {{linkedid}},
        'bcid'      => {{bcid}}
    )
);
                
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                         |
|------------|------|----|------|------------------------------------|
|{{linkedid}}|oui   |int |aucun |identifiant du produit ou du service|
|{{bcid}}    |oui   |int |aucun |identifiant du code barre           |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getCategories',
    'params' => array (
        'includeImages' => {{includeImages}}
    )
);
```


Paramètres
----------


|Paramètre        |Requis|Type          |Défaut|Description                          |
|-----------------|------|--------------|------|-------------------------------------|
|{{includeImages}}|Non   |enum('Y', 'N')|Aucun |Inclure le lien publique vers le logo|


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getCategory',
    'params' => array (
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                           |
|---------|------|----|------|--------------------------------------|
|{{id}}   |Oui   |int |Aucun |ID de la catégorie produit à récupérer|


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getParentCategories',
    'params' => array (
        'childrenID' => {{childrenID}}
    )
);
```


Paramètres
----------



* Paramètre: {{childrenID}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la catégorie enfante pour laquelle vous souhaitez récupérer les parents


Requête
-------

```
$request = array(
    'method' => 'Catalogue.getChildrenFromParentId',
    'params' => array (
        'parentid' => {{parentid}}
    )
);
```


Paramètres
----------



* Paramètre: {{parentid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la catégorie parente pour laquelle vous souhaitez récupérer les enfants


Requête
-------

```
$request = array(
    'method' => 'Catalogue.createCategory',
    'params' => array (
        'category' => array(
            'name'      => {{name}},
            'description'   => {{description}},
            'parentid'  => {{parentid}},
        ),
        'translations'  => array(
            array(
                'name'        => {{name_translated}},
                'description' => {{description_translated}},
                'langid'      => {{langid}}
            )
        )
    )
);
```


Paramètres
----------



* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la catégorie produit dans la langue par défaut de votre compte
* Paramètre: {{description}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Description de la catégorie produit dans la langue par défaut de votre compte
* Paramètre: {{parentid}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: ID de la catégorie parente à laquelle rattacher la catégorie à créer
* Paramètre: {{name_translated}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Version traduite du nom de la catégorie
* Paramètre: {{description_translated}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Version traduite de la description de la catégorie
* Paramètre: {{langid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la langue à utiliser


Retour
------

```
{"response":{"id":{{category_id}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.updateCategory',
    'params' => array (
        'id'        => {{id}},
        'category'  => array(
            'name'      => {{name}},
            'description'   => {{description}},
            'parentid'  => {{parentid}},
            'translations'  => array(
                0       => array(
                    'name'      => {{name_translated}},
                    'description'   => {{description_translated}},
                    'langid'    => {{langid}}
                )
            )
        )
    )
);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: ID de la catégorie à mettre à jour
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la catégorie produit dans la langue par défaut de votre compte
* Paramètre: {{description}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Description de la catégorie produit dans la langue par défaut de votre compte
* Paramètre: {{parentid}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: ID de la catégorie parente à laquelle rattacher la catégorie à créer
* Paramètre: {{name_translated}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Version traduite du nom de la catégorie
* Paramètre: {{description_translated}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Version traduite de la description de la catégorie
* Paramètre: {{langid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la langue à utiliser


Retour
------

```
{"response":{"id":{{category_id}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.deleteCategory',
    'params' => array (
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type  |Défaut|Description                   |
|---------|------|------|------|------------------------------|
|{{id}}   |Oui   |string|Aucun |ID de la catégorie à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Catalogue.addPictureToGallery',
    'params' => array (
        'id'    => {{id}},
        'declid'    => {{declid}},
        'isDefault'    => {{isDefault}}
    )
);
```


Vous devez avoir la dernière version du connecteur curl pour envoyer des fichiers

Paramètres
----------


|Paramètre    |Requis|Type  |Défaut|Description                        |
|-------------|------|------|------|-----------------------------------|
|{{id}}       |Oui   |string|Aucun |ID du produit/service              |
|{{declid}}   |Non   |string|Aucun |ID de la déclinaison               |
|{{isDefault}}|Non   |string|Aucun |Définir en tant qu'image par défaut|


Retour
------

```
{"response":{"name":"pictureStaff2854_b.jpg","public_path":"?_f=file&id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCJTA5JTExJTA3JTA1JTE3JThCJUJEJUYwJUQxYiUzQiU4MyVBNyUxQiU0MGglRTclMTAwJUJEJTAzLiUxOCVGRSVERSU1QyUxRiUyOCUwNyVBQTQlRTAlQUUlMkYlMTMlODMlMEYlRTZTJTE1JTA2JTEwJTE1UkJNJTFEJUZEJTA0JTlDeiUwRCVGNyVCQyU4N1IlQjAlMDklREIlM0NRJUU5QWM==&key=4ebcc74bb180ccfeb515c978eeeaae15","extension":"jpg"},"error":"","status":"success"}
```


Requête
-------

```
$request = [
    'method' => 'Catalogue.updateTranslations',
    'params' => [
        'langId'		=> {{langId}},
        'itemId'		=> {{itemId}},
        'variationId'		=> {{variationId}},
        'tradename'		=> {{tradename}},
        'notes'			=> {{notes}}
    ]
];
```


Paramètres
----------


|Paramètre      |Requis|Type  |Default|Description                            |
|---------------|------|------|-------|---------------------------------------|
|{{langId}}     |Oui   |int   |Aucun  |ID de la langue à utiliser             |
|{{itemId}}     |Oui   |int   |Aucun  |ID du produit/service                  |
|{{variationId}}|Non   |int   |Aucun  |ID de la déclinaison                   |
|{{tradename}}  |Oui   |string|Aucun  |Nom commercial du produit ou du service|
|{{notes}}      |Oui   |string|Aucun  |notes sur le produit ou le service     |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Catalogue.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description                   |
|-------------|------|-----|-------|------------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du produit/service|
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes      |


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.getList',
    'params' => array(
        'order'     => array(
            'direction'     => {{direction}},
            'order'     => {{order}}
        ),
        'pagination'    => array(
            'nbperpage' => {{nbperpage}},
            'pagenum'   => {{pagenum}},
        ),
        'search'    => array(
            'useOn'     => {{useOn}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{direction}}
  * Requis: Non
  * Type: string
  * Défaut: ASC
  * Description: ASC, DESC
* Paramètre: {{order}}
  * Requis: Non
  * Type: enum
  * Défaut: cf_name
  * Description: cf_name, cf_code, cf_type
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de résultats souhaités par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numero de la page
* Paramètre: {{useOn}}
  * Requis: Non
  * Type: enum('client', 'prospect', 'supplier', 'people', 'item', 'service', 'ticket', 'opportunity', 'site', 'document', 'purchase')
  * Défaut: Aucun
  * Description: Permet de filtrer les champs personnalisés par utilisation


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":2,"pagenum":1,"nbtotal":"13"},"result":{"188":{"id":"188","corpid":"644","ownerid":"1174","status":"ok","type":"boolean","name":"Boolean name","code":"boolean","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"188","isRequired":"N","description":"Boolean description","min":"","max":"","defaultValue":"Y","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Yes \/ No","prefsList":[]},"181":{"id":"181","corpid":"644","ownerid":"1174","status":"ok","type":"radio","name":"Bouton radios name","code":"radios_btn","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"181","isRequired":"N","description":"Bouton radios description","min":"","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Radio button","prefsList":{"232":{"id":"232","status":"ok","corpid":"644","cfid":"181","prefsid":"170","label":null,"value":"Value 1","isDefault":"Y","rank":"0"},"233":{"id":"233","status":"ok","corpid":"644","cfid":"181","prefsid":"170","label":null,"value":"Value 2","isDefault":"N","rank":"1"},"234":{"id":"234","status":"ok","corpid":"644","cfid":"181","prefsid":"170","label":null,"value":"Value 3","isDefault":"N","rank":"2"}}},"180":{"id":"180","corpid":"644","ownerid":"1174","status":"ok","type":"unit","name":"Champ num\u00e9rique avec unit\u00e9 name","code":"numeric_unit","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"180","isRequired":"N","description":"Champ num\u00e9rique avec unit\u00e9 description","min":"","max":"","defaultValue":"","listType":"unit","listId":"33669","groupid":null,"groupname":null,"rank":null,"formatted_type":"Numeric field with unit","prefsList":[]},"183":{"id":"183","corpid":"644","ownerid":"1174","status":"ok","type":"checkbox","name":"Choix multiple name","code":"multiple_choices","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"183","isRequired":"N","description":"Choix multiple description","min":"0","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Multiple choice","prefsList":{"239":{"id":"239","status":"ok","corpid":"644","cfid":"183","prefsid":"172","label":null,"value":"Choix 1","isDefault":"Y","rank":"0"},"240":{"id":"240","status":"ok","corpid":"644","cfid":"183","prefsid":"172","label":null,"value":"Choix 2","isDefault":"N","rank":"1"},"241":{"id":"241","status":"ok","corpid":"644","cfid":"183","prefsid":"172","label":null,"value":"Choix 3","isDefault":"Y","rank":"2"}}},"184":{"id":"184","corpid":"644","ownerid":"1174","status":"ok","type":"date","name":"Date name","code":"date","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"184","isRequired":"N","description":"Date description","min":"-2211667761","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Date","prefsList":[]},"185":{"id":"185","corpid":"644","ownerid":"1174","status":"ok","type":"time","name":"Heure name","code":"hour","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"185","isRequired":"N","description":"Heure description","min":"","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Hour","prefsList":[]},"182":{"id":"182","corpid":"644","ownerid":"1174","status":"ok","type":"select","name":"Liste de choix name","code":"choices_list","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"182","isRequired":"N","description":"Liste de choix description","min":"","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Select","prefsList":{"235":{"id":"235","status":"ok","corpid":"644","cfid":"182","prefsid":"171","label":null,"value":"Choix 1","isDefault":"N","rank":"0"},"236":{"id":"236","status":"ok","corpid":"644","cfid":"182","prefsid":"171","label":null,"value":"Choix 2","isDefault":"Y","rank":"1"},"237":{"id":"237","status":"ok","corpid":"644","cfid":"182","prefsid":"171","label":null,"value":"Choix 3","isDefault":"N","rank":"2"},"238":{"id":"238","status":"ok","corpid":"644","cfid":"182","prefsid":"171","label":null,"value":"Choix 4","isDefault":"N","rank":"3"}}},"186":{"id":"186","corpid":"644","ownerid":"1174","status":"ok","type":"email","name":"Mail name","code":"mail","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"186","isRequired":"N","description":"Mail description","min":"","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Email address","prefsList":[]},"179":{"id":"179","corpid":"644","ownerid":"1174","status":"ok","type":"amount","name":"Montant avec devise name","code":"amount_currency","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"179","isRequired":"N","description":"Montant avec devise description","min":"","max":"","defaultValue":"","listType":"currency","listId":"1","groupid":null,"groupname":null,"rank":null,"formatted_type":"Amount with currency","prefsList":[]},"177":{"id":"177","corpid":"644","ownerid":"1174","status":"ok","type":"richtext","name":"Text riche name","code":"text_rich","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"177","isRequired":"N","description":"Text riche description","min":"","max":"1000","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Rich text","prefsList":[]},"176":{"id":"176","corpid":"644","ownerid":"1174","status":"ok","type":"simpletext","name":"Text simple name","code":"text_simple","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"176","isRequired":"N","description":"Text simple description","min":"0","max":"100","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Simple text","prefsList":[]},"178":{"id":"178","corpid":"644","ownerid":"1174","status":"ok","type":"numeric","name":"Valeur num\u00e9rique name","code":"numeric_value","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"178","isRequired":"N","description":"Valeur num\u00e9rique description","min":"0","max":"100","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Numeric value","prefsList":[]},"187":{"id":"187","corpid":"644","ownerid":"1174","status":"ok","type":"url","name":"Web name","code":"web","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"N","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","cfid":"187","isRequired":"N","description":"Web description","min":"","max":"","defaultValue":"","listType":"","listId":"0","groupid":null,"groupname":null,"rank":null,"formatted_type":"Url","prefsList":[]}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.getOne',
    'params' => array(
        'id'    => {{id}},
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description             |
|---------|------|----|------|------------------------|
|{{id}}   |Oui   |int |Aucun |ID du champ personnalisé|


Retour
------

```
{"response":{"id":"583","corpid":"1466","ownerid":"2319","status":"ok","type":"unit","name":"unite","code":"unite","showIn_list":"Y","showIn_filter":"Y","showOn_pdf":"N","showOn_desc":"N","useOn_document":"N","useOn_people":"N","useOn_client":"Y","useOn_prospect":"N","useOn_supplier":"N","useOn_item":"Y","useOn_service":"Y","useOn_ticket":"N","useOn_task":"N","useOn_purchase":"N","useOn_opportunity":"N","useOn_staff":"N","useOn_project":"N","preferences":{"id":"566","status":"ok","corpid":"1466","cfid":"583","isRequired":"N","description":"unit\u00e9 de mesure","min":"0.000000000","max":"100.000000000","defaultValue":"12.000000000","listType":"unit","listId":"79079","formatted_min":"0.00","formatted_max":"100.00","formatted_defaultValue":"12.00"},"preferencesList":[]},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
	'method' => 'CustomFields.create',
	'params' => array(
		'type' 	=> {{type}},
		'name' 	=> {{name}},
		'code' 	=> {{code}},
		'useOn'	=> array(
			{{useOn}}
		),
		'preferences'	=> array(
			'isRequired'	=> {{isRequired}},
			'description'	=> {{description}},
			'min' 		=> {{min}},
			'max'		=> {{max}},
			'defaultValue'	=> {{defaultValue}},
			'unitid'		=> {{unitid}},
			'currencyid'	=> {{currencyid}},
		),
		'preferenceslist'	=> array(
			'value'		=> {{value}},
			'isDefault'	=> {{isDefault}},
			'checked'	=> {{checked}},
			'rank'	    => {{rank}},
		),
	)
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum('simpletext', 'richtext', 'numeric', 'amount', 'unit', 'radio', 'select', 'checkbox', 'date', 'time', 'email', 'url', 'boolean', 'third', 'item', 'people', 'staff')
  * Défaut: Aucun
  * Description: Type
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Libellé
* Paramètre: {{code}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code
* Paramètre: {{useOn}}
  * Requis: Oui
  * Type: enum('showIn_list', 'showIn_filter', 'showIn_ecommerce', 'showOn_pdf', 'showOn_site', 'showOn_desc', 'useOn_document', 'useOn_people', 'useOn_client', 'useOn_prospect', 'useOn_supplier', 'useOn_item', 'useOn_service', 'useOn_ticket', 'useOn_purchase')
  * Défaut: Aucun
  * Description: Indique sur quels élements les champs personnalisés seront visibles
* Paramètre: {{preferences}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant les préférences
* Paramètre: {{isRequired}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Champ obligatoire
* Paramètre: {{description}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Description du champ personnalisé
* Paramètre: {{min}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Minimum de caractéres ou chiffre minimum (selon le type)
* Paramètre: {{max}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Maximum de caractéres ou chiffre maximum (selon le type)
* Paramètre: {{defaultValue}}
  * Requis: Non
  * Type: int/string (Selon le type)
  * Défaut: Aucun
  * Description: Valeur par défaut
* Paramètre: {{unitid}}
  * Requis: Non, Sauf si type = champ numérique avec unité
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'unité de mesure
* Paramètre: {{currencyid}}
  * Requis: Non, Sauf si type = montant avec devise
  * Type: int
  * Défaut: Aucun
  * Description: ID de la devise
* Paramètre: {{preferenceslist}}
  * Requis: Oui (Si type = list de choix ou bouton radios ou choix multiple)
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant la liste des préférences
* Paramètre: {{value}}
  * Requis: Oui
  * Type: int/string/array (Selon le type)
  * Défaut: Aucun
  * Description: Si le type du champ personnalisé est checkbox, le champ sera un tableau. Sinon se référer au type du champ personnalisé
* Paramètre: {{isDefault}}
  * Requis: Non, Sauf si type = list de choix ou bouton radios
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Indique si cette valeur est la valeur par défaut
* Paramètre: {{checked}}
  * Requis: Non, si type = choix multiple
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Indique si la checkbox sera pré-coché
* Paramètre: {{rank}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Ordre dans la liste


Retour
------

```
 {"response":"74","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.update',
    'params' => array(
        'id'    => {{id}},
        'name'  => {{name}},
        'code'  => {{code}},
        'useOn' => array(
            {{useOn}}
        ),
        'preferences'   => array(
            'isRequired'    => {{isRequired}},
            'description'   => {{description}},
            'min'       => {{min}},
            'max'       => {{max}},
            'defaultValue'  => {{defaultValue}},
            'unitid'    => {{unitid}},
            'currencyid'    => {{currencyid}},
        ),
        'preferenceslist'   => array(
			'id'     => {{id}},
            'value'     => {{value}},
            'isDefault' => {{isDefault}},
            'checked'   => {{checked}},
            'rank'      => {{rank}},
        ),
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du champ personnalisé
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Libellé
* Paramètre: {{code}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code
* Paramètre: {{useOn}}
  * Requis: Oui
  * Type: enum('showIn_list', 'showIn_filter', 'showIn_ecommerce', 'showOn_pdf', 'showOn_site', 'showOn_desc', 'useOn_document', 'useOn_people', 'useOn_client', 'useOn_prospect', 'useOn_supplier', 'useOn_item', 'useOn_service', 'useOn_ticket', 'useOn_purchase')
  * Défaut: Aucun
  * Description: Indique sur quels élements les champs personnalisés seront visibles
* Paramètre: {{preferences}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant les préférences
* Paramètre: {{isRequired}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Champ obligatoire
* Paramètre: {{description}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Description du champ personnalisé
* Paramètre: {{min}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Minimum de caractéres ou chiffre minimum (selon le type)
* Paramètre: {{max}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Maximum de caractéres ou chiffre maximum (selon le type)
* Paramètre: {{defaultValue}}
  * Requis: Non
  * Type: int/string (Selon le type)
  * Défaut: Aucun
  * Description: Valeur par défaut
* Paramètre: {{unitid}}
  * Requis: Non, Sauf si type = champ numérique avec unité
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'unité de mesure
* Paramètre: {{currencyid}}
  * Requis: Non, Sauf si type = montant avec devise
  * Type: int
  * Défaut: Aucun
  * Description: ID de la devise
* Paramètre: {{preferenceslist}}
  * Requis: Oui (Si type = list de choix ou bouton radios ou choix multiple)
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant la liste des préférences
* Paramètre: {{id}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Renseigner ce champ avec l'id de la préférence pour la mettre à jour. Ne pas fournir ce paramètre pour créer une nouvelle valeur
* Paramètre: {{value}}
  * Requis: Oui
  * Type: int/string/array (Selon le type)
  * Défaut: Aucun
  * Description: Si le type du champ personnalisé est checkbox, le champ sera un tableau. Sinon se référer au type du champ personnalisé
* Paramètre: {{isDefault}}
  * Requis: Non, Sauf si type = list de choix ou bouton radios
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Indique si cette valeur est la valeur par défaut
* Paramètre: {{checked}}
  * Requis: Non, si type = choix multiple
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Indique si la checkbox sera pré-coché
* Paramètre: {{rank}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Ordre dans la liste


Retour
------

```
 {"response":"74","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.delete',
    'params' => array(
        'id' => {{id}},
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description             |
|---------|------|----|------|------------------------|
|{{id}}   |Oui   |int |Aucun |ID du champ personnalisé|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.recordValues',
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'deleteUnprovided'  => {{deleteUnprovided}},
        'values'    => array(
            0 => array(
                'cfid'      => {{cfid}},
                'value'     => {{value}},
                'currencyid'    => {{currencyid}},
                'unitid'    => {{unitid}}
            )
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


#### Attention

Si aucune valeur n'existe, celle-ci sera créée. Si une valeur est déjà présente elle sera mise à jour.

Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Oui
  * Type: enum('item', 'client', 'prospect', 'people', 'supplier', 'service', 'ticket', 'ticket', 'opportunity', 'project', 'document', 'purchase')
  * Défaut: Aucun
  * Description: Type d'élément sur lequel le champ personnalisé sera présent
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'élément sur lequel le champ personnalisé sera présent.
* Paramètre: {{deleteUnprovided}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Si le paramétre est à 'Y' les valeurs des champs personnalisés non fournies seront supprimées
* Paramètre: {{values}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant les valeurs des champs personnalisés à enregistrer
* Paramètre: {{cfid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du champ personnalisé
* Paramètre: {{value}}
  * Requis: Oui
  * Type: Si le type du champ personnalisé est checkbox, le champ sera un tableau. Sinon se référer au type du champ personnalisé
  * Défaut: Aucun
  * Description: Valeur du custom field value
* Paramètre: {{unitid}}
  * Requis: Non, Sauf si type = champ numérique avec unité
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'unité de mesure
* Paramètre: {{currencyid}}
  * Requis: Non, Sauf si type = montant avec devise
  * Type: int
  * Défaut: Aucun
  * Description: ID de la devise
* Paramètre: {{date}}
  * Requis: Non, Sauf si type = date
  * Type: timestamp
  * Défaut: Aucun
  * Description: Timestamp
* Paramètre: {{time}}
  * Requis: Non, Sauf si type = time
  * Type: int
  * Défaut: Aucun
  * Description: Temps en secondes


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.getGroupsList',
    'params' => array(
        'order'     => array(
            'direction'     => {{direction}},
            'order'     => {{order}}
        ),
        'pagination'    => array(
            'nbperpage' => {{nbperpage}},
            'pagenum'   => {{pagenum}},
        ),
    )
);
```


Paramètres
----------


|Paramètre    |Requis|Type  |Défaut |Description                           |
|-------------|------|------|-------|--------------------------------------|
|{{direction}}|Non   |string|ASC    |ASC, DESC                             |
|{{order}}    |Non   |enum  |cf_name|cf_name, cf_code, cf_type             |
|{{nbperpage}}|Non   |int   |10     |Nombre de résultats souhaités par page|
|{{pagenum}}  |Non   |int   |1      |Numero de la page                     |


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"2"},"result":{"59":{"id":"59","corpid":"1466","ownerid":"2319","status":"ok","name":"Contact principal","code":"contact_principal"},"46":{"id":"46","corpid":"1466","ownerid":"2319","status":"ok","name":"Date prochaine r\u00e9union","code":"next_meeting"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.createGroup',
    'params' => array(
        'code'  => {{code}},
        'name'  => {{name}},
        'customFields'=> array(
            'cfid'  => {{code}},
            'rank'  => {{rank}},
        ),
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{code}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code du groupe
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Libellé du groupe
* Paramètre: {{customFields}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant les champs personnalisés à ajouter au groupe
* Paramètre: {{cfid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du champ personnalisé
* Paramètre: {{rank}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Rang du champ personnalisé lors de l'affichage du groupe


Retour
------

```
{"response":"74","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.updateGroup',
    'params' => array(
        'id'    => {{id}},
        'code'  => {{code}},
        'name'  => {{name}},
        'customFields'  => array(
            'cfid' => {{cfid}},
            'rank' => {{rank}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du groupe
* Paramètre: {{code}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code du groupe
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Libellé du groupe
* Paramètre: {{customFiels}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau contenant les valeurs des champs personnalisés à enregistrer
* Paramètre: {{cfid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du champs personnalisés
* Paramètre: {{rank}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Rang du champ personnalisé lors de l'affichage du groupe


Retour
------

```
{"response":"72","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'CustomFields.deleteGroup',
    'params' => array(
        'id'    => {{id}},
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description |
|---------|------|----|------|------------|
|{{id}}   |Oui   |int |Aucun |ID du groupe|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


#### Informations

Les paramètres de recherche par valeur de champs personnalisés sont à fournir dans le tableau search de votre requête API.

La recherche par valeur de champs personnalisés est disponible sur les méthodes suivantes :

*   Catalogue.getList
*   Peoples.getList
*   Opportunities.getList
*   Support.getList
*   Client.getList
*   Supplier.getList
*   Prospects.getList
*   Timetracking.getList
*   Document.getList

Requête
-------

```
$request = array(
    'params' => array(
        'search'    => array(
	   'customfields' => array(
		array(
		    'cfid'   => {{cfid}},
		    'linkedtype'   => {{linkedtype}},
		    'unspecified'   => {{unspecified}},

			Oui/Non / Bouton radios / Liste de choix / Choix multiple
			'value'  => array(
			  array({{idval1}}, {{idval2}})
			),

			Valeur numérique / Montant avec devise / Date / Champ numérique avec unité
			'value'  => array(
			 'start' => {{start}},
			 'stop'	=> {{stop}},
			 'currency' => {{currency}},
			 'unit' => {{unit}}
			),

			Heure / Adresse email / Texte simple / Text riche / Adresse web 
			'value'  => {{value}}
			)
		  )
	  )
  )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{cfid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du champ personnalisé
* Paramètre: {{linkedtype}}
  * Requis: --
  * Type: string
  * Défaut: Aucun
  * Description: 																	Obligatoire pour les méthodes suivantes :									- Document.getList									- Timetracking.getList																Type de l'entité où va s'effectuer la recherche.								- Valeurs possibles pour Document.getList : 'client' , 'prospect', 'document'								- Valeurs possibles pour Timetracking.getList : 'service', 'client' , 'prospect', 'document'							
* Paramètre: {{unspecified}}
  * Requis: Oui
  * Type: Y/N
  * Défaut: N
  * Description: Si Y, alors la recherche se fera sur les champs personnalisés qui n'ont pas de valeur
* Paramètre: {{value}}
  * Requis: Oui
  * Type: --
  * Défaut: Aucun
  * Description: Voir exemple requête


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request = array(
    'method' => 'Client.getList',
    'params' => array(
        'order' => array(
            'direction'	=> {{direction}},
            'order'			=> {{order}}
        ),
        'pagination' => array(
            'nbperpage' => {{nbperpage}},
            'pagenum'   => {{pagenum}}
        ),
        'search' => array(
            'type'			=> {{type}},
            'contains'				=> {{contains}},
            'containstel'			=> {{containstel}},
            'name'			=> {{name}},
            'ident'			=> {{ident}},
            'email'			=> {{email}},
            'web'			=> {{web}},
            'tags'			=> {{tags}},
            'periodecreated_start'	=> {{periodecreated_start}},
            'periodecreated_end'	=> {{periodecreated_end}},
		'containssiret'			=> {{containssiret}},
		'containssiren'			=> {{containssiren}},
			'actif'				=> {{actif}}
        )
    )
);
```


Paramètres
----------



* Parametre: {{direction}}
  * requis: non
  * type: string
  * default: ASC
  * Description: ASC, DESC
* Parametre: {{order}}
  * requis: non
  * type: string
  * default: third_id
  * Description: third_id | name
* Parametre: {{nbperpage}}
  * requis: non
  * type: int
  * default: 10
  * Description: Nombre de résultats souhaité par page
* Parametre: {{pagenum}}
  * requis: non
  * type: int
  * default: 1
  * Description: numero de la page
* Parametre: {{type}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Rechercher par type (société ou particulier). Valeurs possibles : corporation, person
* Parametre: {{contains}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: recherche dans le nom/prénom + email
* Parametre: {{containstel}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Recherche dans les numéros de téléphone
* Parametre: {{web}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Recherche dans les sites web
* Parametre: {{periodecreated_start}}
  * requis: non
  * type: timestamp
  * default: aucun
  * Description: debut de la fourchette de date de création
* Parametre: {{periodecreated_end}}
  * requis: non
  * type: timestamp
  * default: aucun
  * Description: fin de la fourchette de date de création
* Parametre: {{tags}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: tags séparés par des virgules
* Parametre: {{containssiren}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: SIREN
* Parametre: {{containssiret}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: SIRET
* Parametre: {{actif}}
  * requis: Non
  * type: enum(Y,N)
  * default: Aucun
  * Description: Actif


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":"1","nbtotal":"1"},"result":{"corporation_2739":{"contactType":"corporation","status":"ok","contactId":"2739","contactDetails":"corporation","name":"","fullName":"TESTDOCUMENTATION","position":"","pic":"","tel":"","fax":"","email":"","id":"corporation_2739","contactMore":""}}},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Client.getOne',
    'params' => array(
        'clientid'  =>  {{clientid}}
    )
);
                
```


Paramètres
----------


|Parametre   |requis|type|default|Description          |
|------------|------|----|-------|---------------------|
|{{clientid}}|oui   |int |aucun  |identifiant du client|


Retour
------

```
{"response":{"client":{"detailsid":"2850","corpid":"2","ownerid":"2","joindate":"2012-04-03 09:58:36","type":"corporation","relationType":"client","status":"ok","maincontactid":"0","ident":"","id":"2739","name":"TESTDOCUMENTATION"},"corporation":{"linkedtype":"third","linkedid":"2739","prefsid":"14855","logo":"","name":"TESTDOCUMENTATION","email":"","web":"","tel":"","mobile":"","fax":"","siret":"","vat":"","apenaf":"","rcs":"","type":"","capital":"","mainaddressid":"0","id":"2850"},"contacts":[],"address":[],"tags":[]},"error":"","status":"success"}}
```


Requete
-------

```
$request = array(
    'method' => 'Client.getAddress',
    'params' => array (
        'clientid' => {{clientid}},
        'addressid' => {{addressid}}
    )
);
                
```


Paramètres
----------


|Parametre    |requis|type|default|Description                |
|-------------|------|----|-------|---------------------------|
|{{clientid}} |oui   |int |aucun  |identifiant du client      |
|{{addressid}}|oui   |int |aucun  |l'identifiant de l'addresse|


Retour
------

```
{"response":{"corpid":"2","linkedtype":"third","linkedid":"2739","status":"ok","rank":"0","name":"TestNom","part1":"19 rue du test","part2":"","zip":"17000","town":"La Rochelle","townid":"3834604","countrycode":"FR","originalid":"0","id":"36134","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"19 rue du test"},"1":{"txt":"17000 - La Rochelle"},"2":{"txt":"France"}}},"error":"","status":"success"}}
```


Requete
-------

```
$request = array(
    'method' => 'Client.getContact',
    'params' => array (
        'clientid' => {{clientid}},
        'contactid' => {{contactid}}
    )
);
                
```


Paramètres
----------


|Parametre    |requis|type|default|Description             |
|-------------|------|----|-------|------------------------|
|{{clientid}} |oui   |int |aucun  |identifiant du client   |
|{{contactid}}|oui   |int |aucun  |l'identifiant du contact|


Retour
------

```
{"response":"corpid":"2","ownerid":"2","linkedtype":"thirdcontact","linkedid":"2961","status":"ok","rank":"0","gender":"","civil":"man","forename":"Testcontact","name":"ANTOINE","email":"[email protected]","web":"www.sellsy.com","tel":"","mobile":"","fax":"","position":"","pic":"","sign":"","birthdate":"0000-00-00","id":"3233","fullName":"M. Testcontact ANTOINE", "isBillingContact":"N"},"error":"","status":"success"}}
```


Requete
-------

```
$request = array(
    'method' => 'Client.getBillingContact',
    'params' => array (
        'clientid' => {{clientid}}
    )
);
                
```


Paramètres
----------


|Parametre   |requis|type|default|Description          |
|------------|------|----|-------|---------------------|
|{{clientid}}|oui   |int |aucun  |identifiant du client|


Retour
------

```
{"response":"corpid":"2","ownerid":"2","linkedtype":"thirdcontact","linkedid":"2961","status":"ok","rank":"0","gender":"","civil":"man","forename":"Testcontact","name":"ANTOINE","email":"[email protected]","web":"www.sellsy.com","tel":"","mobile":"","fax":"","position":"","pic":"","sign":"","birthdate":"0000-00-00","id":"3233","fullName":"M. Testcontact ANTOINE", "isBillingContact":"Y"},"error":"","status":"success"}}
```


Requete
-------

```
$request = array (
    'method' => 'Client.create',
    'params' => array(
        'third' => array(
            'name'    				=> {{name}},
            'ident'   				=> {{ident}},
            'type'    				=> {{type}},
            'email'   				=> {{email}},
            'tel'     				=> {{tel}},
            'fax'     				=> {{fax}},
            'mobile'  				=> {{mobile}},
            'joinDate'				=> {{joinDate}},
            'web'     				=> {{web}},
            'siret'   				=> {{siret}},
            'siren'   				=> {{siren}},
            'vat'     				=> {{vat}},
            'rcs'     				=> {{rcs}},
            'apenaf'  				=> {{apenaf}},
            'capital' 				=> {{capital}},
            'tags'    				=> {{tags}},
            'stickyNote'			=> {{stickyNote}},
            'rateCategory'			=> {{rateCategory}},
            'massmailingUnsubscribed'		=> {{massmailingUnsubscribed}},
            'massmailingUnsubscribedSMS'	=> {{massmailingUnsubscribedSMS}},
            'phoningUnsubscribed'			=> {{phoningUnsubscribed}},
            'massmailingUnsubscribedMail'	=> {{massmailingUnsubscribedMail}},
            'massmailingUnsubscribedCustom'	=> {{massmailingUnsubscribedCustom}},
            'facebook'						=> {{facebook}},
            'viadeo'						=> {{viadeo}},
            'twitter'						=> {{twitter}},
            'linkedin'						=> {{linkedin}},
            'accountingcode'				=> {{accountingcode}},
            'auxcode'						=> {{auxcode}},
            'accountingpurchasecode'		=> {{accountingpurchasecode}},
        ),
        'contact' => array(
            'name'          => {{name}},
            'forename'      => {{forename}},
            'email'         => {{email}},
            'tel'           => {{tel}},
            'fax'           => {{fax}},
            'mobile'        => {{mobile}},
            'web'           => {{web}},
            'position'      => {{position}},
            'civil'         => {{civil}},
            'birthdate'     => {{birthdate}},
            'stickyNote'    => {{stickyNote}},
			'mcoptin'		=> {{mcoptin}},
			'mjoptin'		=> {{mjoptin}},
			'smoptin'		=> {{smoptin}}
        ),
        'address' => array(
            'name'      => {{name}},
            'part1'     => {{part1}},
            'part2'     => {{part2}},
            'part3'     => {{part3}},
            'part4'     => {{part4}},
            'zip'       => {{zip}},
            'town'      => {{town}},
            'countrycode'   => {{countrycode}}
        )
    )
);
```


Paramètres
----------



* Third: Parametre
  * requis
  * type
  * default
  * Description
* Third: {{name}}
  * Oui
  * string
  * Aucun
  * nom de la societe
* Third: {{ident}}
  * Non
  * string
  * Aucun
  * Référence du client
* Third: {{type}}
  * Non
  * string
  * corporation
  * corporation, person
* Third: {{email}}
  * Non
  * string
  * Aucun
  * Adresse email de la société
* Third: {{tel}}
  * Non
  * string
  * Aucun
  * Téléphone de la société
* Third: {{fax}}
  * Non
  * string
  * Aucun
  * Fax de la société
* Third: {{mobile}}
  * Non
  * string
  * Aucun
  * Téléphone portable de la société
* Third: {{joinDate}}
  * Non
  * timestamp
  * Maintenant
  * Date de création
* Third: {{web}}
  * Non
  * string
  * Aucun
  * Site web de la société
* Third: {{siret}}
  * Non
  * string
  * Aucun
  * Siret de la société
* Third: {{siren}}
  * Non
  * string
  * Aucun
  * Siren de la société
* Third: {{vat}}
  * Non
  * string
  * Aucun
  * Numéro de tva de la société
* Third: {{rcs}}
  * Non
  * string
  * Aucun
  * RCS de la société
* Third: {{apenaf}}
  * Non
  * string
  * Aucun
  * Code naf de la société
* Third: {{capital}}
  * Non
  * string
  * Aucun
  * Capital de la société
* Third: {{tags}}
  * Non
  * string
  * Aucun
  * Liste de tags séparé par des virgules
* Third: {{stickyNote}}
  * Non
  * string
  * Aucun
  * Note sur la société
* Third: {{rateCategory}}
  * Non
  * string
  * Aucun
  * Catégorie tarifaire du client
* Third: {{massmailingUnsubscribed}}
  * Non
  * enum('Y', 'N')
  * Aucun
  * Désinscrire le client aux campagnes email
* Third: {{massmailingUnsubscribedSMS}}
  * Non
  * enum('Y', 'N')
  * Aucun
  * Désinscrire le client aux campagnes SMS
* Third: {{phoningUnsubscribed}}
  * Non
  * enum('Y', 'N')
  * Aucun
  * Désinscrire le client des campagnes téléphonique
* Third: {{massmailingUnsubscribedMail}}
  * Non
  * enum('Y', 'N')
  * Aucun
  * Désinscrire le client aux campagnes courrier
* Third: {{massmailingUnsubscribedCustom}}
  * Non
  * enum('Y', 'N')
  * Aucun
  * Désinscrire le client aux campagnes marketing personnalisé
* Third: {{facebook}}
  * Non
  * string
  * Aucun
  * Identifiant du compte
* Third: {{twitter}}
  * Non
  * string
  * Aucun
  * Identifiant du compte
* Third: {{viadeo}}
  * Non
  * string
  * Aucun
  * Identifiant du compte
* Third: {{linkedin}}
  * Non
  * string
  * Aucun
  * Identifiant du compte
* Third: {{accountingcode}}
  * Non
  * string
  * Aucun
  * Code comptable (valeur alphanumérique existante dans le compte)
* Third: {{auxcode}}
  * Non
  * string
  * Aucun
  * Code comptable auxiliaire (valeur alphanumérique)
* Third: {{accountingpurchasecode}}
  * Non
  * string
  * Aucun
  * Code comptable du compte de charge (valeur alphanumérique existante dans le compte)


#### Attention

Le paramètre contact n'est obligatoire que si le type du third est person


|Contact      |      |      |       |                                                      |
|-------------|------|------|-------|------------------------------------------------------|
|Parametre    |requis|type  |default|Description                                           |
|{{name}}     |oui   |string|aucun  |nom du contact                                        |
|{{forename}} |oui   |string|aucun  |prénom du contact                                     |
|{{tel}}      |non   |string|aucun  |téléphone du contact                                  |
|{{fax}}      |non   |string|aucun  |fax du contact                                        |
|{{mobile}}   |non   |string|aucun  |téléphone portable du contact                         |
|{{web}}      |non   |string|aucun  |site web du contact                                   |
|{{position}} |non   |string|aucun  |Fonction du contact                                   |
|{{civil}}    |non   |string|aucun  |Civilité du contact - '', 'man','woman','lady'        |
|{{birthdate}}|non   |string|aucun  |date de naissance du contact - Timestamp              |
|{{mcoptin}}  |Non   |string|Aucun  |Activation de la synchronisation MailChimp ('Y', 'N') |
|{{mjoptin}}  |Non   |string|Aucun  |Activation de la synchronisation MailJet ('Y', 'N')   |
|{{smoptin}}  |Non   |string|Aucun  |Activation de la synchronisation SimpleMail ('Y', 'N')|


#### Attention

Le paramètre address n'est pas obligatoire


|Address        |      |      |       |                              |
|---------------|------|------|-------|------------------------------|
|Parametre      |requis|type  |default|Description                   |
|{{name}}       |oui   |string|aucun  |nom de l'addresse             |
|{{part1}}      |non   |string|aucun  |premiere partie de l'addresse |
|{{part2}}      |non   |string|aucun  |Deuxième partie de l'addresse |
|{{part3}}      |non   |string|aucun  |Troisème partie de l'addresse |
|{{part4}}      |non   |string|aucun  |Quatrième partie de l'addresse|
|{{zip}}        |non   |string|aucun  |Code postal de l'addresse     |
|{{town}}       |non   |string|aucun  |Ville de l'addresse           |
|{{countrycode}}|non   |string|FR     |Code du pays                  |


Retour
------

```
    {"response":{"client_id":{{id_new_client}}},"error":"","status":"success"}
                
```


Requete
-------

idem que Client.create en rajoutant dans le clientid

```
    $request = array (
        'method' => 'Client.update',
        'params' => array(
            'clientid' =>  {{clientid}}
    .
    .
    .
                
```


Paramètres
----------

idem que Client.create

Retour
------

```
    {"response":{"id":{{id_client}}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array (
        'method' => 'Client.delete',
        'params' => array(
            'clientid' =>  {{clientid}}
        )
    );
                
```


Paramètres
----------


|Parametre   |requis|type|default|Description           |
|------------|------|----|-------|----------------------|
|{{clientid}}|oui   |int |aucun  |Identifiant du contact|


```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request =  array(
    'method' => 'Client.updateOwner',
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du client           |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method' => 'Client.addAddress',
        'params' => array (
            'clientid' => {{clientid}},
            'address' => {{address_array}}
        )
    );
                
```


Paramètres
----------


|Parametre        |requis|type |default|Description                                      |
|-----------------|------|-----|-------|-------------------------------------------------|
|{{client}}       |oui   |int  |aucun  |identifiant du contact                           |
|{{address_array}}|oui   |array|aucun  |le même tableau que dans la création d'un contact|


Retour
------

```
    {"response":{"address_id"{{address_id}}},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Client.addContact',
    'params' => array (
        'clientid'  => {{clientid}},
        'contact'   => {{contact_array}}
    )
);
```


Paramètres
----------


|Parametre        |requis|type |default|Description                                      |
|-----------------|------|-----|-------|-------------------------------------------------|
|{{clientid}}     |oui   |int  |aucun  |identifiant du contact                           |
|{{contact_array}}|oui   |array|aucun  |le même tableau que dans la création d'un contact|


Retour
------

```
{"response":{"contact_id":{{contact_id}}},"error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method' => 'Client.updateAddress',
        'params' => array (
            'clientid'  => {{clientid}},
            'addressid' => {{addressid}}
            'address'   => {{address_array}}
        )
    );
                
```


Paramètres
----------


|Parametre        |requis|type |default|Description                                      |
|-----------------|------|-----|-------|-------------------------------------------------|
|{{clientid}}     |oui   |int  |aucun  |identifiant du contact                           |
|{{addressid}}    |oui   |int  |aucun  |identifiant de l'addresse                        |
|{{address_array}}|oui   |array|aucun  |le même tableau que dans la création d'un contact|


Retour
------

```
    {"response":{"address_id":"{{addressid}}"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Client.updateContact',
        'params' => array (
            'clientid'  => {{clientid}},
            'contactid' => {{contactid}}
            'contact'   => {{address_array}}
        )
    );
                
```


Paramètres
----------


|Parametre        |requis|type |default|Description                                      |
|-----------------|------|-----|-------|-------------------------------------------------|
|{{clientid}}     |oui   |int  |aucun  |identifiant du contact                           |
|{{contactid}}    |oui   |int  |aucun  |identifiant du contact                           |
|{{contact_array}}|oui   |array|aucun  |le même tableau que dans la création d'un contact|


Retour
------

```
         {"response":{"contact_id":"{{contactid}}"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Client.deleteAddress',
        'params' => array (
            'clientid' => {{clientid}},
            'addressid' => {{addressid}}
        )
    );
                
```


Paramètres
----------


|Parametre    |requis|type|default|Description              |
|-------------|------|----|-------|-------------------------|
|{{clientid}} |oui   |int |aucun  |identifiant du contact   |
|{{addressid}}|oui   |int |aucun  |identifiant de l'addresse|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


#### Attention

Le client ne doit pas avoir de documents liés autres que des devis et il ne doit pas avoir d'abonnements.

Requete
-------

```
$request = array(
    'method'    =>  'Client.transformToProspect',
    'params'    =>  array (
            "thirdid"           =>  {{thirdid}},
            "enableCustomfieldsOnProspect"  =>  {{enableCustomfieldsOnProspect}}
        )
);
```


Paramètres
----------



* Parametre: {{thirdid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du client
* Parametre: {{enableCustomfieldsOnProspect}}
  * requis: non
  * type: enum(Y,N)
  * default: N
  * Description: Indique si les champs personnalisés visibles sur les clients seront visibles sur les prospects.


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Client.getBankAccountList',
    'params' => array (
            "thirdid" =>    {{thirdid}}
        )
);
```


Paramètres
----------


|Paramètre  |Requis|Type|Défaut|Description          |
|-----------|------|----|------|---------------------|
|{{thirdid}}|Oui   |int |Aucun |Identifiant du client|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method' => 'Client.deleteContact',
        'params' => array (
            'clientid' => {{clientid}},
            'contactid' => {{contactid}}
        )
    );
                
```


Paramètres
----------


|Parametre    |requis|type|default|Description           |
|-------------|------|----|-------|----------------------|
|{{clientid}} |oui   |int |aucun  |identifiant du contact|
|{{contactid}}|oui   |int |aucun  |identifiant du contact|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method'    =>  'Client.updateContactPicture',
    'params'    =>  array (
            "thirdid"   =>  {{thirdid}}
            "contactid" =>  {{contactid}},
            "image"     =>  array(
                "type"      =>  {{type}},
                "url"       =>  {{url}}
            )
        )
);
```


Paramètres
----------


|Parametre    |requis|type       |default|Description                   |
|-------------|------|-----------|-------|------------------------------|
|{{thirdid}}  |oui   |int        |aucun  |Identifiant du client         |
|{{contactid}}|oui   |int        |aucun  |Identifiant du contact        |
|{{type}}     |oui   |enum('url')|aucun  |Type de l'image               |
|{{url}}      |oui   |string     |aucun  |Url de l'image (si type = url)|


Retour
------

```
    {"response":"?_f=file&id=JTBDJUM1UkwlMjJGJTVCViVBNyVDNiVCMXglQzIlQjQlMjglN0YlRUQlMTElNUMlMDUlOEQlQjElMEZuJUQ1JUVCJUYzJTlBJUI1JUJFcFpKbyVFQSU5RWclQzJLayVFQSUwOSU3QyUxRiVBNCU4RCt5UCUzRlUlQUElRTElREQlRTglOUQlMDglOUYlRTElRUMlMTIlMjUlMTgrJUY4eCU4MyUxQS4lRTRqRyU5NiUxRCUwNyVCOWMlRkElRUUlREElQUUlRTElMEZRUyU3RCVBRiVGOSU4NSUyMSVCNiVEMiVEMWolRURQJUFGJUJEJTI2JTkxJTNFJUUwJUY1VyVGRCVBM1ltJUFBJTkxJTA5JUVCJUQ3JTQwJUUzJUEyJTI5JTgxJTdGJTAwbCU1RWl3JTg2JTNENCVCQg==&key=8fe3022967cf1073a8aefa32f3b70248","error":"","status":"success"}
                
```


Requête
-------

```
$request = array(
    'method' => 'Client.updatePrefs',
    'params' => array(
        'thirdid'   => {{thirdid}},
        'prefs'     => array(
            'currencyid'		=> {{currencyid}},
            'defaultShippingid'		=> {{defaultShippingid}},
            'defaultTaxid'		=> {{defaultTaxid}},
            'payDateid'			=> {{payDateid}},
            'payDateEndMonth'		=> {{payDateEndMonth}},
            'payDateXDays'		=> {{payDateXDays}},
            'nbExpireDays'		=> {{nbExpireDays}},
            'globalDiscount'		=> {{globalDiscount}},
            'globalDiscountUnit'	=> {{globalDiscountUnit}},
            'discountByRows'		=> {{discountByRows}},
            'bankAccountid'		=> {{bankAccountid}}
            'payMediums'		=> {{payMediums}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{thirdid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du client
* Paramètre: {{currencyid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la monnaie
* Paramètre: {{defaultShippingid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du moyen de livraison
* Paramètre: {{defaultTaxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe
* Paramètre: {{payDateid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du délai de règlement
* Paramètre: {{payDateEndMonth}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: N
  * Description: Paiement à la fin du mois? (valable uniquement pour des payDate correspondant a 30, 45, 60 ou 90 days)
* Paramètre: {{payDateXDays}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Delai de paiement (valable uniquement pour une paydate de xdays)
* Paramètre: {{nbExpireDays}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Durée de validité en jours
* Paramètre: {{globalDiscount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant/pourcentage de votre remise. Si c'est un pourcentage, la valeur doit être un entier compris entre 0 et 100
* Paramètre: {{discountByRows}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: N
  * Description: Chaque ligne peut avoir sa remise specifique?
* Paramètre: {{bankAccountid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du compte banquaire : AccountPrefs.getBankAccountList
* Paramètre: {{payMediums}}
  * Requis: Non
  * Type: Array
  * Défaut: Aucun
  * Description: Tableau contenant les id des moyens de paiement


Retour
------

```
{"response":{"prefsId":"111294"},"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Client.updateThirdPicture',
			'params'    =>  array (
				"thirdid"   =>  {{thirdid}}
			)
		);
	
```


Paramètres
----------


|Parametre  |requis|type|default|Description          |
|-----------|------|----|-------|---------------------|
|{{thirdid}}|oui   |int |aucun  |Identifiant du client|


Retour
------

```
		{"response":{"name":"1-apple-desk-designer-display-1.jpg","public_path":"?_f=file&id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCJUZBdCVGQyVBNXglRTIlMjklRjMlQUMlNUQ0JTdGJUU0JUNFJTYwJUM2JTg4JTdDJUE1JTI5JTA0JTFGJUUwJUMzcCVDMSVGMyU3RiVDNiU5NiU4RCVBQyU5NCVDOSU1REwlNUUlNjAlRTMlQkElREQlM0FaOCVCME9pJTg2SiVFQiUxMyVENyU5MiUxMCVGRCU5MSUzQyVCRiUxRSUwRXAlQjYlOTUlRDQ==&key=ad49d4d6a54e1a722c7946f27c200554","extension":"image\/jpeg"},"error":"","status":"success"}
	
```


Requete
-------

```
		$request = array(
			'method'    =>  'Client.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description             |
|-------------|------|-----|-------|------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du client   |
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
    $request = array(
        'method'    =>  'Client.updateSharingStaffs',
        'params'    =>  array (
            "linkedid"   =>  {{linkedid}},
            "staffsIds"   => {{staffsIds}}
        )
    );
    
```


Paramètres
----------


|Parametre    |requis|type |default|Description            |
|-------------|------|-----|-------|-----------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du client  |
|{{staffsIds}}|oui   |array|aucun  |Identifiants des staffs|


Retour
------

```
{"response":"","error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Client.getMargin',
			'params'    =>  array (
				"clientid"      => {{clientid}},
				"period_start"  => {{period_start}},
				"period_end"    => {{period_end}},
				"currency"      => {{currency}}
			)
		);
	
```


Paramètres
----------


|Parametre       |requis|type     |default|Description             |
|----------------|------|---------|-------|------------------------|
|{{clientid}}    |oui   |int      |aucun  |Identifiant du client   |
|{{period_start}}|oui   |timestamp|aucun  |Date de début           |
|{{period_end}}  |oui   |timestamp|aucun  |Date de fin             |
|{{currency}}    |oui   |int      |aucun  |Identifiant de la devise|


Retour
------

```
    {
    "response": {
        "globalMarge": 70,
        "globalMargePercent": 35
    },
    "error": "",
    "status": "success"
    }
	
```


Requete
-------

```
$request =  array(
	'method' => 'Staffs.getList',
	'params' => array (
		'pagination' => array (
			'nbperpage' => {{nbperpage}},
			'pagenum' => {{pagenum}}
		)
	)
);
```


La réponse peut ne contenir que votre propre staff, en fonction de votre plan d'abonnement.

Paramètres
----------


|Parametre    |requis|type|default|Description                               |
|-------------|------|----|-------|------------------------------------------|
|{{nbperpage}}|non   |int |10     |Nombre de collaborateurs souhaité par page|
|{{pagenum}}  |non   |int |1      |Numéro de page souhaité                   |


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"2"},"result":{"staff_317":{"contactType":"staff","status":"ok","contactId":"317","isAccountant":"N","contactDetails":"","fullName":"R\u00e9my Neuter","pic":"","position":"Dev chez Sellsy","tel":"topsecret","fax":"0123456789","email":"[email protected]","id":"staff_317","privileges":{"level":"admin"},"contactMore":"Collaborateur - Acc\u00e8s Administrateur"},"staff_322":{"contactType":"staff","status":"ok","contactId":"322","isAccountant":"N","contactDetails":"","fullName":"Test DeTest","pic":"","position":"","tel":"","fax":"","email":"[email protected]","id":"staff_322","privileges":{"level":"staff","docs":"all","thirds":"all","catalogue":"all","writethirds":"Y","writedocestimates":"Y","writedocinvoices":"Y","writedoccreditnotes":"Y","writedocdeliveries":"Y","writedocorders":"Y","writedocproformas":"Y","docestimates":"all","docinvoices":"all","docdeliveries":"all","docorders":"all","doccreditnotes":"all","docproformas":"all","payments":"all","writepay":"Y","writeservices":"Y","writeitems":"Y","exports":"Y","briefcase":"all","chase":"Y"},"contactMore":"Collaborateur - Acc\u00e8s classique"}}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
	'method' => 'Staffs.getOne',
	'params' => array (
'id' => {{id}}
	)
);
```


#### Attention

La réponse peut être E\_OBJ\_NOT\_LOADABLE en fonction de votre plan d'abonnement.

Paramètres
----------


|Parametre|requis|type|default|Description|
|---------|------|----|-------|-----------|
|{{id}}   |Oui   |int |       |ID du staff|


Retour
------

```
{"prefsid":"165536","corpid":"1869","ownerid":"0","sessionid":"70767","peopleid":"74635","status":"ok","footer":"","footerAuto":"Y","isAccountant":"N","optin":"N","alertsEmail":"",,"catalogueOpen":"items","dashboardOpen":"sales","fastsearchOpen":"people","timezone":"Europe\/Paris","uilang":"fr","showNotif":"Y","notifs":"{\u0022InvoiceLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022ClientAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022PeopleAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022PeopleEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022ClientEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022ThirdPartyContactLog\u0022:{\u0022login\u0022:\u0022on\u0022},\u0022ItemAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ServiceAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022InvoiceEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022InvoiceAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022EstimateLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022EstimateEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022EstimateAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022DeliveryLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022DeliveryEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022DeliveryAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022OrderLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022OrderEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022OrderAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022CreditNoteLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022CreditNoteEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022CreditNoteAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ProformaLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022logged_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022},\u0022ProformaEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022ProformaAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ModelEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022ModelAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022OpportunityEmaiLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022OpportunityAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ProspectEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022ProspectAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022PurInvoiceEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022PurInvoiceLog\u0022:{\u0022paymentadd\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022},\u0022PurInvoiceAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022PurCreditNoteEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022PurCreditNoteAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022PurDeliveryEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022PurdeliveryAnnotationLog\u0022:{\u0022updated\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022},\u0022PurOrderEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022PurOrderAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022SupplierAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022SupplierEmailLog\u0022:{\u0022bounce\u0022:\u0022on\u0022,\u0022open\u0022:\u0022on\u0022},\u0022CampaignAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ExpenseLog\u0022:{\u0022step\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022},\u0022RentAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022BookAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ShopAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022EsignLog\u0022:{\u0022signature\u0022:\u0022on\u0022},\u0022ProposalTemplateAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022ProposalDocumentLog\u0022:{\u0022logged_view\u0022:\u0022on\u0022,\u0022anonymous_view\u0022:\u0022on\u0022,\u0022logged_download\u0022:\u0022on\u0022,\u0022anonymous_download\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022},\u0022ProposalDocumentAnnotationLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022repliedTo\u0022:\u0022on\u0022},\u0022StaffLog\u0022:{\u0022export\u0022:\u0022on\u0022},\u0022ClientLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022PeopleLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022ItemLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022ServiceLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022ModelLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022OpportunityLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022step\u0022:\u0022on\u0022,\u0022status\u0022:\u0022on\u0022},\u0022ProspectLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022PurCreditNoteLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022PurDeliveryLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022paymentadd\u0022:\u0022on\u0022},\u0022PurOrderLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022paymentadd\u0022:\u0022on\u0022},\u0022SupplierLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022CampaignLog\u0022:{\u0022sendingFinished\u0022:\u0022on\u0022,\u0022created\u0022:\u0022on\u0022},\u0022RentLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022BookLog\u0022:{\u0022created\u0022:\u0022on\u0022,\u0022converted\u0022:\u0022on\u0022},\u0022ShopLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022ProposalTemplateLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022TimetrackingLog\u0022:{\u0022created\u0022:\u0022on\u0022},\u0022ProjectLog\u0022:{\u0022ProjectCreated\u0022:\u0022on\u0022},\u0022ImportLog\u0022:{\u0022started\u0022:\u0022on\u0022,\u0022ended\u0022:\u0022on\u0022}}","offlinemobileisactive":"N","id":"2854","fullName":"M. Maxime RAT","linkedtype":"staff","linkedid":"2854","rank":"0","gender":"","civil":"man","forename":"Maxime","name":"RAT","email":"[email protected]","web":"","tel":"+33546778899","mobile":"+33546555555","fax":"+33546555555","position":"","pic":"","sign":"","birthdate":null,"twitter":"","linkedin":"","facebook":"","viadeo":"","stickyNote":"","mainAddressID":"0","mainDelivAddressID":"0","mailchimp":"Y","mailjet":"Y","simplemail":"Y","massmailingUnsubscribed":"N","massmailingUnsubscribedSMS":"N","phoningUnsubscribed":"N","langid":"0","actif":"Y","created":"0","lastUpdate":"1461658891","formatted_tel":"05 46 77 88 99","formatted_mobile":"05 46 55 55 55","formatted_fax":"05 46 55 55 55","avatar":{"type":"initials","value":"MR","class":12},"timezones":{"Pacific\/Pago_Pago":{"name":"[GMT-11:00] Pago Pago","value":"Pacific\/Pago_Pago"},"Pacific\/Niue":{"name":"[GMT-11:00] Niue","value":"Pacific\/Niue"},"Pacific\/Midway":{"name":"[GMT-11:00] Midway","value":"Pacific\/Midway"},"Pacific\/Marquesas":{"name":"[GMT-10:30] Marquesas","value":"Pacific\/Marquesas"},"Pacific\/Tahiti":{"name":"[GMT-10:00] Tahiti","value":"Pacific\/Tahiti"},"Pacific\/Rarotonga":{"name":"[GMT-10:00] Rarotonga","value":"Pacific\/Rarotonga"},"Pacific\/Johnston":{"name":"[GMT-10:00] Johnston","value":"Pacific\/Johnston"},"Pacific\/Honolulu":{"name":"[GMT-10:00] Honolulu","value":"Pacific\/Honolulu"},"Pacific\/Gambier":{"name":"[GMT-09:00] Gambier","value":"Pacific\/Gambier"},"America\/Adak":{"name":"[GMT-09:00] Adak","value":"America\/Adak"},"America\/Yakutat":{"name":"[GMT-08:00] Yakutat","value":"America\/Yakutat"},"America\/Sitka":{"name":"[GMT-08:00] Sitka","value":"America\/Sitka"},"Pacific\/Pitcairn":{"name":"[GMT-08:00] Pitcairn","value":"Pacific\/Pitcairn"},"America\/Nome":{"name":"[GMT-08:00] Nome","value":"America\/Nome"},"America\/Metlakatla":{"name":"[GMT-08:00] Metlakatla","value":"America\/Metlakatla"},"America\/Juneau":{"name":"[GMT-08:00] Juneau","value":"America\/Juneau"},"America\/Anchorage":{"name":"[GMT-08:00] Anchorage","value":"America\/Anchorage"},"America\/Whitehorse":{"name":"[GMT-07:00] Whitehorse","value":"America\/Whitehorse"},"America\/Vancouver":{"name":"[GMT-07:00] Vancouver","value":"America\/Vancouver"},"America\/Tijuana":{"name":"[GMT-07:00] Tijuana","value":"America\/Tijuana"},"America\/Santa_Isabel":{"name":"[GMT-07:00] Santa Isabel","value":"America\/Santa_Isabel"},"America\/Phoenix":{"name":"[GMT-07:00] Phoenix","value":"America\/Phoenix"},"America\/Los_Angeles":{"name":"[GMT-07:00] Los Angeles","value":"America\/Los_Angeles"},"America\/Hermosillo":{"name":"[GMT-07:00] Hermosillo","value":"America\/Hermosillo"},"America\/Fort_Nelson":{"name":"[GMT-07:00] Fort Nelson","value":"America\/Fort_Nelson"},"America\/Dawson_Creek":{"name":"[GMT-07:00] Dawson Creek","value":"America\/Dawson_Creek"},"America\/Dawson":{"name":"[GMT-07:00] Dawson","value":"America\/Dawson"},"America\/Creston":{"name":"[GMT-07:00] Creston","value":"America\/Creston"},"America\/Yellowknife":{"name":"[GMT-06:00] Yellowknife","value":"America\/Yellowknife"},"America\/Tegucigalpa":{"name":"[GMT-06:00] Tegucigalpa","value":"America\/Tegucigalpa"},"America\/Swift_Current":{"name":"[GMT-06:00] Swift Current","value":"America\/Swift_Current"},"America\/Regina":{"name":"[GMT-06:00] Regina","value":"America\/Regina"},"America\/Ojinaga":{"name":"[GMT-06:00] Ojinaga","value":"America\/Ojinaga"},"America\/Mazatlan":{"name":"[GMT-06:00] Mazatlan","value":"America\/Mazatlan"},"America\/Managua":{"name":"[GMT-06:00] Managua","value":"America\/Managua"},"America\/Inuvik":{"name":"[GMT-06:00] Inuvik","value":"America\/Inuvik"},"America\/Guatemala":{"name":"[GMT-06:00] Guatemala","value":"America\/Guatemala"},"Pacific\/Galapagos":{"name":"[GMT-06:00] Galapagos","value":"Pacific\/Galapagos"},"America\/El_Salvador":{"name":"[GMT-06:00] El Salvador","value":"America\/El_Salvador"},"America\/Edmonton":{"name":"[GMT-06:00] Edmonton","value":"America\/Edmonton"},"America\/Denver":{"name":"[GMT-06:00] Denver","value":"America\/Denver"},"America\/Costa_Rica":{"name":"[GMT-06:00] Costa Rica","value":"America\/Costa_Rica"},"America\/Chihuahua":{"name":"[GMT-06:00] Chihuahua","value":"America\/Chihuahua"},"America\/Cambridge_Bay":{"name":"[GMT-06:00] Cambridge Bay","value":"America\/Cambridge_Bay"},"America\/Boise":{"name":"[GMT-06:00] Boise","value":"America\/Boise"},"America\/Belize":{"name":"[GMT-06:00] Belize","value":"America\/Belize"},"America\/Caracas":{"name":"[GMT-05:30] Caracas","value":"America\/Caracas"},"America\/Winnipeg":{"name":"[GMT-05:00] Winnipeg","value":"America\/Winnipeg"},"America\/Rio_Branco":{"name":"[GMT-05:00] Rio Branco","value":"America\/Rio_Branco"},"America\/Resolute":{"name":"[GMT-05:00] Resolute","value":"America\/Resolute"},"America\/Rankin_Inlet":{"name":"[GMT-05:00] Rankin Inlet","value":"America\/Rankin_Inlet"},"America\/Rainy_River":{"name":"[GMT-05:00] Rainy River","value":"America\/Rainy_River"},"America\/Panama":{"name":"[GMT-05:00] Panama","value":"America\/Panama"},"America\/North_Dakota\/New_Salem":{"name":"[GMT-05:00] North Dakota (New Salem)","value":"America\/North_Dakota\/New_Salem"},"America\/North_Dakota\/Center":{"name":"[GMT-05:00] North Dakota (Center)","value":"America\/North_Dakota\/Center"},"America\/North_Dakota\/Beulah":{"name":"[GMT-05:00] North Dakota (Beulah)","value":"America\/North_Dakota\/Beulah"},"America\/Monterrey":{"name":"[GMT-05:00] Monterrey","value":"America\/Monterrey"},"America\/Mexico_City":{"name":"[GMT-05:00] Mexico City","value":"America\/Mexico_City"},"America\/Merida":{"name":"[GMT-05:00] Merida","value":"America\/Merida"},"America\/Menominee":{"name":"[GMT-05:00] Menominee","value":"America\/Menominee"},"America\/Matamoros":{"name":"[GMT-05:00] Matamoros","value":"America\/Matamoros"},"America\/Lima":{"name":"[GMT-05:00] Lima","value":"America\/Lima"},"America\/Jamaica":{"name":"[GMT-05:00] Jamaica","value":"America\/Jamaica"},"America\/Indiana\/Tell_City":{"name":"[GMT-05:00] Indiana (Tell City)","value":"America\/Indiana\/Tell_City"},"America\/Indiana\/Knox":{"name":"[GMT-05:00] Indiana (Knox)","value":"America\/Indiana\/Knox"},"America\/Guayaquil":{"name":"[GMT-05:00] Guayaquil","value":"America\/Guayaquil"},"America\/Eirunepe":{"name":"[GMT-05:00] Eirunepe","value":"America\/Eirunepe"},"Pacific\/Easter":{"name":"[GMT-05:00] Easter","value":"Pacific\/Easter"},"America\/Chicago":{"name":"[GMT-05:00] Chicago","value":"America\/Chicago"},"America\/Cancun":{"name":"[GMT-05:00] Cancun","value":"America\/Cancun"},"America\/Bogota":{"name":"[GMT-05:00] Bogota","value":"America\/Bogota"},"America\/Bahia_Banderas":{"name":"[GMT-05:00] Bahia Banderas","value":"America\/Bahia_Banderas"},"America\/Atikokan":{"name":"[GMT-05:00] Atikokan","value":"America\/Atikokan"},"America\/Tortola":{"name":"[GMT-04:00] Tortola","value":"America\/Tortola"},"America\/Toronto":{"name":"[GMT-04:00] Toronto","value":"America\/Toronto"},"America\/Thunder_Bay":{"name":"[GMT-04:00] Thunder Bay","value":"America\/Thunder_Bay"},"America\/St_Vincent":{"name":"[GMT-04:00] St Vincent","value":"America\/St_Vincent"},"America\/St_Thomas":{"name":"[GMT-04:00] St Thomas","value":"America\/St_Thomas"},"America\/St_Lucia":{"name":"[GMT-04:00] St Lucia","value":"America\/St_Lucia"},"America\/St_Kitts":{"name":"[GMT-04:00] St Kitts","value":"America\/St_Kitts"},"America\/St_Barthelemy":{"name":"[GMT-04:00] St Barthelemy","value":"America\/St_Barthelemy"},"America\/Santo_Domingo":{"name":"[GMT-04:00] Santo Domingo","value":"America\/Santo_Domingo"},"America\/Puerto_Rico":{"name":"[GMT-04:00] Puerto Rico","value":"America\/Puerto_Rico"},"America\/Porto_Velho":{"name":"[GMT-04:00] Porto Velho","value":"America\/Porto_Velho"},"America\/Port-au-Prince":{"name":"[GMT-04:00] Port-au-Prince","value":"America\/Port-au-Prince"},"America\/Port_of_Spain":{"name":"[GMT-04:00] Port of Spain","value":"America\/Port_of_Spain"},"America\/Pangnirtung":{"name":"[GMT-04:00] Pangnirtung","value":"America\/Pangnirtung"},"America\/Nipigon":{"name":"[GMT-04:00] Nipigon","value":"America\/Nipigon"},"America\/New_York":{"name":"[GMT-04:00] New York","value":"America\/New_York"},"America\/Nassau":{"name":"[GMT-04:00] Nassau","value":"America\/Nassau"},"America\/Montserrat":{"name":"[GMT-04:00] Montserrat","value":"America\/Montserrat"},"America\/Martinique":{"name":"[GMT-04:00] Martinique","value":"America\/Martinique"},"America\/Marigot":{"name":"[GMT-04:00] Marigot","value":"America\/Marigot"},"America\/Manaus":{"name":"[GMT-04:00] Manaus","value":"America\/Manaus"},"America\/Lower_Princes":{"name":"[GMT-04:00] Lower Princes","value":"America\/Lower_Princes"},"America\/La_Paz":{"name":"[GMT-04:00] La Paz","value":"America\/La_Paz"},"America\/Kralendijk":{"name":"[GMT-04:00] Kralendijk","value":"America\/Kralendijk"},"America\/Kentucky\/Monticello":{"name":"[GMT-04:00] Kentucky (Monticello)","value":"America\/Kentucky\/Monticello"},"America\/Kentucky\/Louisville":{"name":"[GMT-04:00] Kentucky (Louisville)","value":"America\/Kentucky\/Louisville"},"America\/Iqaluit":{"name":"[GMT-04:00] Iqaluit","value":"America\/Iqaluit"},"America\/Indiana\/Winamac":{"name":"[GMT-04:00] Indiana (Winamac)","value":"America\/Indiana\/Winamac"},"America\/Indiana\/Vincennes":{"name":"[GMT-04:00] Indiana (Vincennes)","value":"America\/Indiana\/Vincennes"},"America\/Indiana\/Vevay":{"name":"[GMT-04:00] Indiana (Vevay)","value":"America\/Indiana\/Vevay"},"America\/Indiana\/Petersburg":{"name":"[GMT-04:00] Indiana (Petersburg)","value":"America\/Indiana\/Petersburg"},"America\/Indiana\/Marengo":{"name":"[GMT-04:00] Indiana (Marengo)","value":"America\/Indiana\/Marengo"},"America\/Indiana\/Indianapolis":{"name":"[GMT-04:00] Indiana (Indianapolis)","value":"America\/Indiana\/Indianapolis"},"America\/Havana":{"name":"[GMT-04:00] Havana","value":"America\/Havana"},"America\/Guyana":{"name":"[GMT-04:00] Guyana","value":"America\/Guyana"},"America\/Guadeloupe":{"name":"[GMT-04:00] Guadeloupe","value":"America\/Guadeloupe"},"America\/Grenada":{"name":"[GMT-04:00] Grenada","value":"America\/Grenada"},"America\/Grand_Turk":{"name":"[GMT-04:00] Grand Turk","value":"America\/Grand_Turk"},"America\/Dominica":{"name":"[GMT-04:00] Dominica","value":"America\/Dominica"},"America\/Detroit":{"name":"[GMT-04:00] Detroit","value":"America\/Detroit"},"America\/Curacao":{"name":"[GMT-04:00] Curacao","value":"America\/Curacao"},"America\/Cuiaba":{"name":"[GMT-04:00] Cuiaba","value":"America\/Cuiaba"},"America\/Cayman":{"name":"[GMT-04:00] Cayman","value":"America\/Cayman"},"America\/Campo_Grande":{"name":"[GMT-04:00] Campo Grande","value":"America\/Campo_Grande"},"America\/Boa_Vista":{"name":"[GMT-04:00] Boa Vista","value":"America\/Boa_Vista"},"America\/Blanc-Sablon":{"name":"[GMT-04:00] Blanc-Sablon","value":"America\/Blanc-Sablon"},"America\/Barbados":{"name":"[GMT-04:00] Barbados","value":"America\/Barbados"},"America\/Asuncion":{"name":"[GMT-04:00] Asuncion","value":"America\/Asuncion"},"America\/Aruba":{"name":"[GMT-04:00] Aruba","value":"America\/Aruba"},"America\/Antigua":{"name":"[GMT-04:00] Antigua","value":"America\/Antigua"},"America\/Anguilla":{"name":"[GMT-04:00] Anguilla","value":"America\/Anguilla"},"America\/St_Johns":{"name":"[GMT-03:30] St Johns","value":"America\/St_Johns"},"America\/Thule":{"name":"[GMT-03:00] Thule","value":"America\/Thule"},"Atlantic\/Stanley":{"name":"[GMT-03:00] Stanley","value":"Atlantic\/Stanley"},"America\/Sao_Paulo":{"name":"[GMT-03:00] Sao Paulo","value":"America\/Sao_Paulo"},"America\/Santiago":{"name":"[GMT-03:00] Santiago","value":"America\/Santiago"},"America\/Santarem":{"name":"[GMT-03:00] Santarem","value":"America\/Santarem"},"America\/Recife":{"name":"[GMT-03:00] Recife","value":"America\/Recife"},"America\/Paramaribo":{"name":"[GMT-03:00] Paramaribo","value":"America\/Paramaribo"},"America\/Montevideo":{"name":"[GMT-03:00] Montevideo","value":"America\/Montevideo"},"America\/Moncton":{"name":"[GMT-03:00] Moncton","value":"America\/Moncton"},"America\/Maceio":{"name":"[GMT-03:00] Maceio","value":"America\/Maceio"},"America\/Halifax":{"name":"[GMT-03:00] Halifax","value":"America\/Halifax"},"America\/Goose_Bay":{"name":"[GMT-03:00] Goose Bay","value":"America\/Goose_Bay"},"America\/Glace_Bay":{"name":"[GMT-03:00] Glace Bay","value":"America\/Glace_Bay"},"America\/Fortaleza":{"name":"[GMT-03:00] Fortaleza","value":"America\/Fortaleza"},"America\/Cayenne":{"name":"[GMT-03:00] Cayenne","value":"America\/Cayenne"},"Atlantic\/Bermuda":{"name":"[GMT-03:00] Bermuda","value":"Atlantic\/Bermuda"},"America\/Belem":{"name":"[GMT-03:00] Belem","value":"America\/Belem"},"America\/Bahia":{"name":"[GMT-03:00] Bahia","value":"America\/Bahia"},"America\/Argentina\/Ushuaia":{"name":"[GMT-03:00] Argentina (Ushuaia)","value":"America\/Argentina\/Ushuaia"},"America\/Argentina\/Tucuman":{"name":"[GMT-03:00] Argentina (Tucuman)","value":"America\/Argentina\/Tucuman"},"America\/Argentina\/San_Luis":{"name":"[GMT-03:00] Argentina (San Luis)","value":"America\/Argentina\/San_Luis"},"America\/Argentina\/San_Juan":{"name":"[GMT-03:00] Argentina (San Juan)","value":"America\/Argentina\/San_Juan"},"America\/Argentina\/Salta":{"name":"[GMT-03:00] Argentina (Salta)","value":"America\/Argentina\/Salta"},"America\/Argentina\/Rio_Gallegos":{"name":"[GMT-03:00] Argentina (Rio Gallegos)","value":"America\/Argentina\/Rio_Gallegos"},"America\/Argentina\/Mendoza":{"name":"[GMT-03:00] Argentina (Mendoza)","value":"America\/Argentina\/Mendoza"},"America\/Argentina\/La_Rioja":{"name":"[GMT-03:00] Argentina (La Rioja)","value":"America\/Argentina\/La_Rioja"},"America\/Argentina\/Jujuy":{"name":"[GMT-03:00] Argentina (Jujuy)","value":"America\/Argentina\/Jujuy"},"America\/Argentina\/Cordoba":{"name":"[GMT-03:00] Argentina (Cordoba)","value":"America\/Argentina\/Cordoba"},"America\/Argentina\/Catamarca":{"name":"[GMT-03:00] Argentina (Catamarca)","value":"America\/Argentina\/Catamarca"},"America\/Argentina\/Buenos_Aires":{"name":"[GMT-03:00] Argentina (Buenos Aires)","value":"America\/Argentina\/Buenos_Aires"},"America\/Araguaina":{"name":"[GMT-03:00] Araguaina","value":"America\/Araguaina"},"Atlantic\/South_Georgia":{"name":"[GMT-02:00] South Georgia","value":"Atlantic\/South_Georgia"},"America\/Noronha":{"name":"[GMT-02:00] Noronha","value":"America\/Noronha"},"America\/Miquelon":{"name":"[GMT-02:00] Miquelon","value":"America\/Miquelon"},"America\/Godthab":{"name":"[GMT-02:00] Godthab","value":"America\/Godthab"},"Atlantic\/Cape_Verde":{"name":"[GMT-01:00] Cape Verde","value":"Atlantic\/Cape_Verde"},"Africa\/Abidjan":{"name":"[GMT] Abidjan","value":"Africa\/Abidjan"},"Africa\/Accra":{"name":"[GMT] Accra","value":"Africa\/Accra"},"Africa\/Bamako":{"name":"[GMT] Bamako","value":"Africa\/Bamako"},"Africa\/Banjul":{"name":"[GMT] Banjul","value":"Africa\/Banjul"},"Africa\/Bissau":{"name":"[GMT] Bissau","value":"Africa\/Bissau"},"Africa\/Conakry":{"name":"[GMT] Conakry","value":"Africa\/Conakry"},"Africa\/Dakar":{"name":"[GMT] Dakar","value":"Africa\/Dakar"},"Africa\/Freetown":{"name":"[GMT] Freetown","value":"Africa\/Freetown"},"Africa\/Lome":{"name":"[GMT] Lome","value":"Africa\/Lome"},"Africa\/Monrovia":{"name":"[GMT] Monrovia","value":"Africa\/Monrovia"},"Africa\/Nouakchott":{"name":"[GMT] Nouakchott","value":"Africa\/Nouakchott"},"Africa\/Ouagadougou":{"name":"[GMT] Ouagadougou","value":"Africa\/Ouagadougou"},"Africa\/Sao_Tome":{"name":"[GMT] Sao Tome","value":"Africa\/Sao_Tome"},"America\/Danmarkshavn":{"name":"[GMT] Danmarkshavn","value":"America\/Danmarkshavn"},"America\/Scoresbysund":{"name":"[GMT] Scoresbysund","value":"America\/Scoresbysund"},"Atlantic\/Azores":{"name":"[GMT] Azores","value":"Atlantic\/Azores"},"Atlantic\/Reykjavik":{"name":"[GMT] Reykjavik","value":"Atlantic\/Reykjavik"},"Atlantic\/St_Helena":{"name":"[GMT] St Helena","value":"Atlantic\/St_Helena"},"Africa\/Algiers":{"name":"[GMT+01:00] Algiers","value":"Africa\/Algiers"},"Africa\/Bangui":{"name":"[GMT+01:00] Bangui","value":"Africa\/Bangui"},"Africa\/Brazzaville":{"name":"[GMT+01:00] Brazzaville","value":"Africa\/Brazzaville"},"Atlantic\/Canary":{"name":"[GMT+01:00] Canary","value":"Atlantic\/Canary"},"Africa\/Casablanca":{"name":"[GMT+01:00] Casablanca","value":"Africa\/Casablanca"},"Africa\/Douala":{"name":"[GMT+01:00] Douala","value":"Africa\/Douala"},"Europe\/Dublin":{"name":"[GMT+01:00] Dublin","value":"Europe\/Dublin"},"Africa\/El_Aaiun":{"name":"[GMT+01:00] El Aaiun","value":"Africa\/El_Aaiun"},"Atlantic\/Faroe":{"name":"[GMT+01:00] Faroe","value":"Atlantic\/Faroe"},"Europe\/Guernsey":{"name":"[GMT+01:00] Guernsey","value":"Europe\/Guernsey"},"Europe\/Isle_of_Man":{"name":"[GMT+01:00] Isle of Man","value":"Europe\/Isle_of_Man"},"Europe\/Jersey":{"name":"[GMT+01:00] Jersey","value":"Europe\/Jersey"},"Africa\/Kinshasa":{"name":"[GMT+01:00] Kinshasa","value":"Africa\/Kinshasa"},"Africa\/Lagos":{"name":"[GMT+01:00] Lagos","value":"Africa\/Lagos"},"Africa\/Libreville":{"name":"[GMT+01:00] Libreville","value":"Africa\/Libreville"},"Europe\/Lisbon":{"name":"[GMT+01:00] Lisbon","value":"Europe\/Lisbon"},"Europe\/London":{"name":"[GMT+01:00] London","value":"Europe\/London"},"Africa\/Luanda":{"name":"[GMT+01:00] Luanda","value":"Africa\/Luanda"},"Atlantic\/Madeira":{"name":"[GMT+01:00] Madeira","value":"Atlantic\/Madeira"},"Africa\/Malabo":{"name":"[GMT+01:00] Malabo","value":"Africa\/Malabo"},"Africa\/Ndjamena":{"name":"[GMT+01:00] Ndjamena","value":"Africa\/Ndjamena"},"Africa\/Niamey":{"name":"[GMT+01:00] Niamey","value":"Africa\/Niamey"},"Africa\/Porto-Novo":{"name":"[GMT+01:00] Porto-Novo","value":"Africa\/Porto-Novo"},"Africa\/Tunis":{"name":"[GMT+01:00] Tunis","value":"Africa\/Tunis"},"Africa\/Windhoek":{"name":"[GMT+01:00] Windhoek","value":"Africa\/Windhoek"},"Europe\/Amsterdam":{"name":"[GMT+02:00] Amsterdam","value":"Europe\/Amsterdam"},"Europe\/Andorra":{"name":"[GMT+02:00] Andorra","value":"Europe\/Andorra"},"Europe\/Belgrade":{"name":"[GMT+02:00] Belgrade","value":"Europe\/Belgrade"},"Europe\/Berlin":{"name":"[GMT+02:00] Berlin","value":"Europe\/Berlin"},"Africa\/Blantyre":{"name":"[GMT+02:00] Blantyre","value":"Africa\/Blantyre"},"Europe\/Bratislava":{"name":"[GMT+02:00] Bratislava","value":"Europe\/Bratislava"},"Europe\/Brussels":{"name":"[GMT+02:00] Brussels","value":"Europe\/Brussels"},"Europe\/Budapest":{"name":"[GMT+02:00] Budapest","value":"Europe\/Budapest"},"Africa\/Bujumbura":{"name":"[GMT+02:00] Bujumbura","value":"Africa\/Bujumbura"},"Europe\/Busingen":{"name":"[GMT+02:00] Busingen","value":"Europe\/Busingen"},"Africa\/Cairo":{"name":"[GMT+02:00] Cairo","value":"Africa\/Cairo"},"Africa\/Ceuta":{"name":"[GMT+02:00] Ceuta","value":"Africa\/Ceuta"},"Europe\/Copenhagen":{"name":"[GMT+02:00] Copenhagen","value":"Europe\/Copenhagen"},"Africa\/Gaborone":{"name":"[GMT+02:00] Gaborone","value":"Africa\/Gaborone"},"Europe\/Gibraltar":{"name":"[GMT+02:00] Gibraltar","value":"Europe\/Gibraltar"},"Africa\/Harare":{"name":"[GMT+02:00] Harare","value":"Africa\/Harare"},"Africa\/Johannesburg":{"name":"[GMT+02:00] Johannesburg","value":"Africa\/Johannesburg"},"Europe\/Kaliningrad":{"name":"[GMT+02:00] Kaliningrad","value":"Europe\/Kaliningrad"},"Africa\/Kigali":{"name":"[GMT+02:00] Kigali","value":"Africa\/Kigali"},"Europe\/Ljubljana":{"name":"[GMT+02:00] Ljubljana","value":"Europe\/Ljubljana"},"Arctic\/Longyearbyen":{"name":"[GMT+02:00] Longyearbyen","value":"Arctic\/Longyearbyen"},"Africa\/Lubumbashi":{"name":"[GMT+02:00] Lubumbashi","value":"Africa\/Lubumbashi"},"Africa\/Lusaka":{"name":"[GMT+02:00] Lusaka","value":"Africa\/Lusaka"},"Europe\/Luxembourg":{"name":"[GMT+02:00] Luxembourg","value":"Europe\/Luxembourg"},"Europe\/Madrid":{"name":"[GMT+02:00] Madrid","value":"Europe\/Madrid"},"Europe\/Malta":{"name":"[GMT+02:00] Malta","value":"Europe\/Malta"},"Africa\/Maputo":{"name":"[GMT+02:00] Maputo","value":"Africa\/Maputo"},"Africa\/Maseru":{"name":"[GMT+02:00] Maseru","value":"Africa\/Maseru"},"Africa\/Mbabane":{"name":"[GMT+02:00] Mbabane","value":"Africa\/Mbabane"},"Europe\/Monaco":{"name":"[GMT+02:00] Monaco","value":"Europe\/Monaco"},"Europe\/Oslo":{"name":"[GMT+02:00] Oslo","value":"Europe\/Oslo"},"Europe\/Paris":{"name":"[GMT+02:00] Paris","value":"Europe\/Paris"},"Europe\/Podgorica":{"name":"[GMT+02:00] Podgorica","value":"Europe\/Podgorica"},"Europe\/Prague":{"name":"[GMT+02:00] Prague","value":"Europe\/Prague"},"Europe\/Rome":{"name":"[GMT+02:00] Rome","value":"Europe\/Rome"},"Europe\/San_Marino":{"name":"[GMT+02:00] San Marino","value":"Europe\/San_Marino"},"Europe\/Sarajevo":{"name":"[GMT+02:00] Sarajevo","value":"Europe\/Sarajevo"},"Europe\/Skopje":{"name":"[GMT+02:00] Skopje","value":"Europe\/Skopje"},"Europe\/Stockholm":{"name":"[GMT+02:00] Stockholm","value":"Europe\/Stockholm"},"Europe\/Tirane":{"name":"[GMT+02:00] Tirane","value":"Europe\/Tirane"},"Africa\/Tripoli":{"name":"[GMT+02:00] Tripoli","value":"Africa\/Tripoli"},"Europe\/Vaduz":{"name":"[GMT+02:00] Vaduz","value":"Europe\/Vaduz"},"Europe\/Vatican":{"name":"[GMT+02:00] Vatican","value":"Europe\/Vatican"},"Europe\/Vienna":{"name":"[GMT+02:00] Vienna","value":"Europe\/Vienna"},"Europe\/Warsaw":{"name":"[GMT+02:00] Warsaw","value":"Europe\/Warsaw"},"Europe\/Zagreb":{"name":"[GMT+02:00] Zagreb","value":"Europe\/Zagreb"},"Europe\/Zurich":{"name":"[GMT+02:00] Zurich","value":"Europe\/Zurich"},"Africa\/Addis_Ababa":{"name":"[GMT+03:00] Addis Ababa","value":"Africa\/Addis_Ababa"},"Asia\/Aden":{"name":"[GMT+03:00] Aden","value":"Asia\/Aden"},"Asia\/Amman":{"name":"[GMT+03:00] Amman","value":"Asia\/Amman"},"Indian\/Antananarivo":{"name":"[GMT+03:00] Antananarivo","value":"Indian\/Antananarivo"},"Africa\/Asmara":{"name":"[GMT+03:00] Asmara","value":"Africa\/Asmara"},"Europe\/Athens":{"name":"[GMT+03:00] Athens","value":"Europe\/Athens"},"Asia\/Baghdad":{"name":"[GMT+03:00] Baghdad","value":"Asia\/Baghdad"},"Asia\/Bahrain":{"name":"[GMT+03:00] Bahrain","value":"Asia\/Bahrain"},"Asia\/Beirut":{"name":"[GMT+03:00] Beirut","value":"Asia\/Beirut"},"Europe\/Bucharest":{"name":"[GMT+03:00] Bucharest","value":"Europe\/Bucharest"},"Europe\/Chisinau":{"name":"[GMT+03:00] Chisinau","value":"Europe\/Chisinau"},"Indian\/Comoro":{"name":"[GMT+03:00] Comoro","value":"Indian\/Comoro"},"Asia\/Damascus":{"name":"[GMT+03:00] Damascus","value":"Asia\/Damascus"},"Africa\/Dar_es_Salaam":{"name":"[GMT+03:00] Dar es Salaam","value":"Africa\/Dar_es_Salaam"},"Africa\/Djibouti":{"name":"[GMT+03:00] Djibouti","value":"Africa\/Djibouti"},"Asia\/Gaza":{"name":"[GMT+03:00] Gaza","value":"Asia\/Gaza"},"Asia\/Hebron":{"name":"[GMT+03:00] Hebron","value":"Asia\/Hebron"},"Europe\/Helsinki":{"name":"[GMT+03:00] Helsinki","value":"Europe\/Helsinki"},"Europe\/Istanbul":{"name":"[GMT+03:00] Istanbul","value":"Europe\/Istanbul"},"Asia\/Jerusalem":{"name":"[GMT+03:00] Jerusalem","value":"Asia\/Jerusalem"},"Africa\/Juba":{"name":"[GMT+03:00] Juba","value":"Africa\/Juba"},"Africa\/Kampala":{"name":"[GMT+03:00] Kampala","value":"Africa\/Kampala"},"Africa\/Khartoum":{"name":"[GMT+03:00] Khartoum","value":"Africa\/Khartoum"},"Europe\/Kiev":{"name":"[GMT+03:00] Kiev","value":"Europe\/Kiev"},"Asia\/Kuwait":{"name":"[GMT+03:00] Kuwait","value":"Asia\/Kuwait"},"Europe\/Mariehamn":{"name":"[GMT+03:00] Mariehamn","value":"Europe\/Mariehamn"},"Indian\/Mayotte":{"name":"[GMT+03:00] Mayotte","value":"Indian\/Mayotte"},"Europe\/Minsk":{"name":"[GMT+03:00] Minsk","value":"Europe\/Minsk"},"Africa\/Mogadishu":{"name":"[GMT+03:00] Mogadishu","value":"Africa\/Mogadishu"},"Europe\/Moscow":{"name":"[GMT+03:00] Moscow","value":"Europe\/Moscow"},"Africa\/Nairobi":{"name":"[GMT+03:00] Nairobi","value":"Africa\/Nairobi"},"Asia\/Nicosia":{"name":"[GMT+03:00] Nicosia","value":"Asia\/Nicosia"},"Asia\/Qatar":{"name":"[GMT+03:00] Qatar","value":"Asia\/Qatar"},"Europe\/Riga":{"name":"[GMT+03:00] Riga","value":"Europe\/Riga"},"Asia\/Riyadh":{"name":"[GMT+03:00] Riyadh","value":"Asia\/Riyadh"},"Europe\/Simferopol":{"name":"[GMT+03:00] Simferopol","value":"Europe\/Simferopol"},"Europe\/Sofia":{"name":"[GMT+03:00] Sofia","value":"Europe\/Sofia"},"Europe\/Tallinn":{"name":"[GMT+03:00] Tallinn","value":"Europe\/Tallinn"},"Europe\/Uzhgorod":{"name":"[GMT+03:00] Uzhgorod","value":"Europe\/Uzhgorod"},"Europe\/Vilnius":{"name":"[GMT+03:00] Vilnius","value":"Europe\/Vilnius"},"Europe\/Volgograd":{"name":"[GMT+03:00] Volgograd","value":"Europe\/Volgograd"},"Europe\/Zaporozhye":{"name":"[GMT+03:00] Zaporozhye","value":"Europe\/Zaporozhye"},"Asia\/Dubai":{"name":"[GMT+04:00] Dubai","value":"Asia\/Dubai"},"Indian\/Mahe":{"name":"[GMT+04:00] Mahe","value":"Indian\/Mahe"},"Indian\/Mauritius":{"name":"[GMT+04:00] Mauritius","value":"Indian\/Mauritius"},"Asia\/Muscat":{"name":"[GMT+04:00] Muscat","value":"Asia\/Muscat"},"Indian\/Reunion":{"name":"[GMT+04:00] Reunion","value":"Indian\/Reunion"},"Europe\/Samara":{"name":"[GMT+04:00] Samara","value":"Europe\/Samara"},"Asia\/Tbilisi":{"name":"[GMT+04:00] Tbilisi","value":"Asia\/Tbilisi"},"Asia\/Yerevan":{"name":"[GMT+04:00] Yerevan","value":"Asia\/Yerevan"},"Asia\/Kabul":{"name":"[GMT+04:30] Kabul","value":"Asia\/Kabul"},"Asia\/Tehran":{"name":"[GMT+04:30] Tehran","value":"Asia\/Tehran"},"Asia\/Aqtau":{"name":"[GMT+05:00] Aqtau","value":"Asia\/Aqtau"},"Asia\/Aqtobe":{"name":"[GMT+05:00] Aqtobe","value":"Asia\/Aqtobe"},"Asia\/Ashgabat":{"name":"[GMT+05:00] Ashgabat","value":"Asia\/Ashgabat"},"Asia\/Baku":{"name":"[GMT+05:00] Baku","value":"Asia\/Baku"},"Asia\/Dushanbe":{"name":"[GMT+05:00] Dushanbe","value":"Asia\/Dushanbe"},"Asia\/Karachi":{"name":"[GMT+05:00] Karachi","value":"Asia\/Karachi"},"Indian\/Kerguelen":{"name":"[GMT+05:00] Kerguelen","value":"Indian\/Kerguelen"},"Indian\/Maldives":{"name":"[GMT+05:00] Maldives","value":"Indian\/Maldives"},"Asia\/Oral":{"name":"[GMT+05:00] Oral","value":"Asia\/Oral"},"Asia\/Samarkand":{"name":"[GMT+05:00] Samarkand","value":"Asia\/Samarkand"},"Asia\/Tashkent":{"name":"[GMT+05:00] Tashkent","value":"Asia\/Tashkent"},"Asia\/Yekaterinburg":{"name":"[GMT+05:00] Yekaterinburg","value":"Asia\/Yekaterinburg"},"Asia\/Colombo":{"name":"[GMT+05:30] Colombo","value":"Asia\/Colombo"},"Asia\/Kolkata":{"name":"[GMT+05:30] Kolkata","value":"Asia\/Kolkata"},"Asia\/Kathmandu":{"name":"[GMT+05:45] Kathmandu","value":"Asia\/Kathmandu"},"Asia\/Almaty":{"name":"[GMT+06:00] Almaty","value":"Asia\/Almaty"},"Asia\/Bishkek":{"name":"[GMT+06:00] Bishkek","value":"Asia\/Bishkek"},"Indian\/Chagos":{"name":"[GMT+06:00] Chagos","value":"Indian\/Chagos"},"Asia\/Dhaka":{"name":"[GMT+06:00] Dhaka","value":"Asia\/Dhaka"},"Asia\/Novosibirsk":{"name":"[GMT+06:00] Novosibirsk","value":"Asia\/Novosibirsk"},"Asia\/Omsk":{"name":"[GMT+06:00] Omsk","value":"Asia\/Omsk"},"Asia\/Qyzylorda":{"name":"[GMT+06:00] Qyzylorda","value":"Asia\/Qyzylorda"},"Asia\/Thimphu":{"name":"[GMT+06:00] Thimphu","value":"Asia\/Thimphu"},"Asia\/Urumqi":{"name":"[GMT+06:00] Urumqi","value":"Asia\/Urumqi"},"Indian\/Cocos":{"name":"[GMT+06:30] Cocos","value":"Indian\/Cocos"},"Asia\/Rangoon":{"name":"[GMT+06:30] Rangoon","value":"Asia\/Rangoon"},"Asia\/Bangkok":{"name":"[GMT+07:00] Bangkok","value":"Asia\/Bangkok"},"Indian\/Christmas":{"name":"[GMT+07:00] Christmas","value":"Indian\/Christmas"},"Asia\/Ho_Chi_Minh":{"name":"[GMT+07:00] Ho Chi Minh","value":"Asia\/Ho_Chi_Minh"},"Asia\/Jakarta":{"name":"[GMT+07:00] Jakarta","value":"Asia\/Jakarta"},"Asia\/Krasnoyarsk":{"name":"[GMT+07:00] Krasnoyarsk","value":"Asia\/Krasnoyarsk"},"Asia\/Novokuznetsk":{"name":"[GMT+07:00] Novokuznetsk","value":"Asia\/Novokuznetsk"},"Asia\/Phnom_Penh":{"name":"[GMT+07:00] Phnom Penh","value":"Asia\/Phnom_Penh"},"Asia\/Pontianak":{"name":"[GMT+07:00] Pontianak","value":"Asia\/Pontianak"},"Asia\/Vientiane":{"name":"[GMT+07:00] Vientiane","value":"Asia\/Vientiane"},"Asia\/Brunei":{"name":"[GMT+08:00] Brunei","value":"Asia\/Brunei"},"Asia\/Chita":{"name":"[GMT+08:00] Chita","value":"Asia\/Chita"},"Asia\/Hong_Kong":{"name":"[GMT+08:00] Hong Kong","value":"Asia\/Hong_Kong"},"Asia\/Hovd":{"name":"[GMT+08:00] Hovd","value":"Asia\/Hovd"},"Asia\/Irkutsk":{"name":"[GMT+08:00] Irkutsk","value":"Asia\/Irkutsk"},"Asia\/Kuala_Lumpur":{"name":"[GMT+08:00] Kuala Lumpur","value":"Asia\/Kuala_Lumpur"},"Asia\/Kuching":{"name":"[GMT+08:00] Kuching","value":"Asia\/Kuching"},"Asia\/Macau":{"name":"[GMT+08:00] Macau","value":"Asia\/Macau"},"Asia\/Makassar":{"name":"[GMT+08:00] Makassar","value":"Asia\/Makassar"},"Asia\/Manila":{"name":"[GMT+08:00] Manila","value":"Asia\/Manila"},"Australia\/Perth":{"name":"[GMT+08:00] Perth","value":"Australia\/Perth"},"Asia\/Shanghai":{"name":"[GMT+08:00] Shanghai","value":"Asia\/Shanghai"},"Asia\/Singapore":{"name":"[GMT+08:00] Singapore","value":"Asia\/Singapore"},"Asia\/Taipei":{"name":"[GMT+08:00] Taipei","value":"Asia\/Taipei"},"Asia\/Pyongyang":{"name":"[GMT+08:30] Pyongyang","value":"Asia\/Pyongyang"},"Australia\/Eucla":{"name":"[GMT+08:45] Eucla","value":"Australia\/Eucla"},"Asia\/Choibalsan":{"name":"[GMT+09:00] Choibalsan","value":"Asia\/Choibalsan"},"Asia\/Dili":{"name":"[GMT+09:00] Dili","value":"Asia\/Dili"},"Asia\/Jayapura":{"name":"[GMT+09:00] Jayapura","value":"Asia\/Jayapura"},"Asia\/Khandyga":{"name":"[GMT+09:00] Khandyga","value":"Asia\/Khandyga"},"Pacific\/Palau":{"name":"[GMT+09:00] Palau","value":"Pacific\/Palau"},"Asia\/Seoul":{"name":"[GMT+09:00] Seoul","value":"Asia\/Seoul"},"Asia\/Tokyo":{"name":"[GMT+09:00] Tokyo","value":"Asia\/Tokyo"},"Asia\/Ulaanbaatar":{"name":"[GMT+09:00] Ulaanbaatar","value":"Asia\/Ulaanbaatar"},"Asia\/Yakutsk":{"name":"[GMT+09:00] Yakutsk","value":"Asia\/Yakutsk"},"Australia\/Adelaide":{"name":"[GMT+09:30] Adelaide","value":"Australia\/Adelaide"},"Australia\/Broken_Hill":{"name":"[GMT+09:30] Broken Hill","value":"Australia\/Broken_Hill"},"Australia\/Darwin":{"name":"[GMT+09:30] Darwin","value":"Australia\/Darwin"},"Australia\/Brisbane":{"name":"[GMT+10:00] Brisbane","value":"Australia\/Brisbane"},"Pacific\/Chuuk":{"name":"[GMT+10:00] Chuuk","value":"Pacific\/Chuuk"},"Australia\/Currie":{"name":"[GMT+10:00] Currie","value":"Australia\/Currie"},"Pacific\/Guam":{"name":"[GMT+10:00] Guam","value":"Pacific\/Guam"},"Australia\/Hobart":{"name":"[GMT+10:00] Hobart","value":"Australia\/Hobart"},"Australia\/Lindeman":{"name":"[GMT+10:00] Lindeman","value":"Australia\/Lindeman"},"Asia\/Magadan":{"name":"[GMT+10:00] Magadan","value":"Asia\/Magadan"},"Australia\/Melbourne":{"name":"[GMT+10:00] Melbourne","value":"Australia\/Melbourne"},"Pacific\/Port_Moresby":{"name":"[GMT+10:00] Port Moresby","value":"Pacific\/Port_Moresby"},"Pacific\/Saipan":{"name":"[GMT+10:00] Saipan","value":"Pacific\/Saipan"},"Asia\/Sakhalin":{"name":"[GMT+10:00] Sakhalin","value":"Asia\/Sakhalin"},"Australia\/Sydney":{"name":"[GMT+10:00] Sydney","value":"Australia\/Sydney"},"Asia\/Ust-Nera":{"name":"[GMT+10:00] Ust-Nera","value":"Asia\/Ust-Nera"},"Asia\/Vladivostok":{"name":"[GMT+10:00] Vladivostok","value":"Asia\/Vladivostok"},"Australia\/Lord_Howe":{"name":"[GMT+10:30] Lord Howe","value":"Australia\/Lord_Howe"},"Pacific\/Bougainville":{"name":"[GMT+11:00] Bougainville","value":"Pacific\/Bougainville"},"Pacific\/Efate":{"name":"[GMT+11:00] Efate","value":"Pacific\/Efate"},"Pacific\/Guadalcanal":{"name":"[GMT+11:00] Guadalcanal","value":"Pacific\/Guadalcanal"},"Pacific\/Kosrae":{"name":"[GMT+11:00] Kosrae","value":"Pacific\/Kosrae"},"Pacific\/Norfolk":{"name":"[GMT+11:00] Norfolk","value":"Pacific\/Norfolk"},"Pacific\/Noumea":{"name":"[GMT+11:00] Noumea","value":"Pacific\/Noumea"},"Pacific\/Pohnpei":{"name":"[GMT+11:00] Pohnpei","value":"Pacific\/Pohnpei"},"Asia\/Srednekolymsk":{"name":"[GMT+11:00] Srednekolymsk","value":"Asia\/Srednekolymsk"},"Asia\/Anadyr":{"name":"[GMT+12:00] Anadyr","value":"Asia\/Anadyr"},"Pacific\/Auckland":{"name":"[GMT+12:00] Auckland","value":"Pacific\/Auckland"},"Pacific\/Fiji":{"name":"[GMT+12:00] Fiji","value":"Pacific\/Fiji"},"Pacific\/Funafuti":{"name":"[GMT+12:00] Funafuti","value":"Pacific\/Funafuti"},"Asia\/Kamchatka":{"name":"[GMT+12:00] Kamchatka","value":"Asia\/Kamchatka"},"Pacific\/Kwajalein":{"name":"[GMT+12:00] Kwajalein","value":"Pacific\/Kwajalein"},"Pacific\/Majuro":{"name":"[GMT+12:00] Majuro","value":"Pacific\/Majuro"},"Pacific\/Nauru":{"name":"[GMT+12:00] Nauru","value":"Pacific\/Nauru"},"Pacific\/Tarawa":{"name":"[GMT+12:00] Tarawa","value":"Pacific\/Tarawa"},"Pacific\/Wake":{"name":"[GMT+12:00] Wake","value":"Pacific\/Wake"},"Pacific\/Wallis":{"name":"[GMT+12:00] Wallis","value":"Pacific\/Wallis"},"Pacific\/Chatham":{"name":"[GMT+12:45] Chatham","value":"Pacific\/Chatham"},"Pacific\/Apia":{"name":"[GMT+13:00] Apia","value":"Pacific\/Apia"},"Pacific\/Enderbury":{"name":"[GMT+13:00] Enderbury","value":"Pacific\/Enderbury"},"Pacific\/Fakaofo":{"name":"[GMT+13:00] Fakaofo","value":"Pacific\/Fakaofo"},"Pacific\/Tongatapu":{"name":"[GMT+13:00] Tongatapu","value":"Pacific\/Tongatapu"},"Pacific\/Kiritimati":{"name":"[GMT+14:00] Kiritimati","value":"Pacific\/Kiritimati"}}}
```


Requete
-------

```
$request =  array(
	'method' => 'Staffs.getGroups',
	'params' => array (
		'pagination' => array (
			'nbperpage' => {{nbperpage}},
			'pagenum' => {{pagenum}}
		)
	)
);
```


Paramètres
----------

Retour
------

```
{"response":{"81":{"id":"81","corpid":"2336","ownerid":"3726","status":"ok","name":"DEV","staffs":{"197":{"id":"197","corpid":"2336","status":"ok","groupid":"81","staffid":"3745"},"198":{"id":"198","corpid":"2336","status":"ok","groupid":"81","staffid":"3726"}}},"82":{"id":"82","corpid":"2336","ownerid":"3726","status":"ok","name":"COMPTA","staffs":{"195":{"id":"195","corpid":"2336","status":"ok","groupid":"82","staffid":"3726"},"196":{"id":"196","corpid":"2336","status":"ok","groupid":"82","staffid":"4146"}}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Accounting.getList',
    'params' => array ( 
        'pagination'    => array (
            'pagenum'   => {{pagenum}}
        )
        'search'    => array(
            'view'      => {{view}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de page souhaité
* Paramètre: {{view}}
  * Requis: Non
  * Type: enum
  * Défaut: Aucun
  * Description: Permet de filtrer votre plan comptable en fonction de son usage. Valeurs possible : ‘sell‘, ‘purchase‘, ‘bank‘, ‘third‘


Requête
-------

```
$request = array( 
    'method' => 'Accounting.getOne',
    'params' => array ( 
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                  |
|---------|------|----|------|-----------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du code comptable|


Requête
-------

```
$request = array( 
    'method' => 'Accounting.create',
    'params' => array ( 
        'accountingcode' => array(
            'code' => {{code}},
            'label' => {{label}},
            'sellView' => {{sellView}},
            'purchaseView' => {{purchaseView}},
            'thirdView' => {{thirdView}},
            'bankView' => {{bankView}}
            'reconciliationView' => {{reconciliationView}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{code}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Valeur numérique du code comptable
* Paramètre: {{label}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Label associé à votre code comptable
* Paramètre: {{sellView}}
  * Requis: Non
  * Type: enum('Y','N')
  * Défaut: N
  * Description: Rendre le code comptable disponible dans la vue vente
* Paramètre: {{purchaseView}}
  * Requis: Non
  * Type: enum('Y','N')
  * Défaut: N
  * Description: Rendre le code comptable disponible dans la vue achat
* Paramètre: {{thirdView}}
  * Requis: Non
  * Type: enum('Y','N')
  * Défaut: N
  * Description: Rendre le code comptable disponible dans la vue tiers
* Paramètre: {{bankView}}
  * Requis: Non
  * Type: enum('Y','N')
  * Défaut: N
  * Description: Rendre le code comptable disponible dans la vue banque
* Paramètre: {{reconciliationView}}
  * Requis: Non
  * Type: enum('Y','N')
  * Défaut: N
  * Description: Rendre le code comptable disponible dans la vue rapprochement bancaire


Requête
-------

```
$request = array( 
    'method' => 'Accounting.update',
    'params' => array (
        'id' => {{id}},
        'accountingcode'    => array(
            'code'          => {{code}},
            'label'         => {{label}},
            'sellView'      => {{sellView}},
            'purchaseView'  => {{purchaseView}},
            'thirdView'     => {{thirdView}}
            'bankView'      => {{bankView}}
        )
    )
);
```


Paramètres
----------


|Paramètre       |Requis|Type         |Défaut|Description                                           |
|----------------|------|-------------|------|------------------------------------------------------|
|{{id}}          |Oui   |int          |Aucun |Identifiant du code comptable à mettre à jour         |
|{{code}}        |Oui   |int          |Aucun |Valeur numérique du code comptable                    |
|{{label}}       |Non   |string       |Aucun |Label associé à votre code comptable                  |
|{{sellView}}    |Non   |enum('Y','N')|N     |Rendre le code comptable disponible dans la vue vente |
|{{purchaseView}}|Non   |enum('Y','N')|N     |Rendre le code comptable disponible dans la vue achat |
|{{thirdView}}   |Non   |enum('Y','N')|N     |Rendre le code comptable disponible dans la vue tiers |
|{{bankView}}    |Non   |enum('Y','N')|N     |Rendre le code comptable disponible dans la vue banque|


Requête
-------

```
$request = array( 
    'method' => 'Accounting.delete',
    'params' => array (
        'id' => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                              |
|---------|------|----|------|-----------------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du code comptable à supprimer|


Requête
-------

```
$request = array( 
    'method' => 'Accounting.getPrefs',
    'params' => array ()
);
```


Paramètres
----------

#### Attention

Aucun paramètre attendu pour cette méthode

Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = array( 
    'method' => 'Peoples.getList', 
    'params' => array ( 
        'pagination'    => array (
            'nbperpage' => {{nbperpage}},
            'pagenum'   => {{pagenum}}
        ),
        'order'     => array(
            'direction' => {{direction}},
            'order'     => {{order}}
        )
        'search'    => array(
            'contains'              => {{contains}},
            'tags'                  => {{tags}},
            'birthdate'             => {{birthdate}},
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end}},
            'periodeupdated_start'  => {{periodecreated_start}},
            'periodeupdated_end'    => {{periodecreated_end}},
            'actif'                 => {{actif}},
            'mobile'                => [{{mobile}}, {{mobile}}],
            'tel'                   => [{{tel}}, {{tel}}],
        )
    )
);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de contacts souhaité par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de page souhaité
* Paramètre: {{direction}}
  * Requis: Non
  * Type: enum('ASC', DESC')
  * Défaut: Aucun
  * Description: Direction souhaitée
* Paramètre: {{order}}
  * Requis: Non
  * Type: enum('created', 'lastUpdate')
  * Défaut: Aucun
  * Description: Champ de tri
* Paramètre: {{contains}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Filtre globale (nom, prénom, email, numéro de téléphone)
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: tags séparés par des virgules
* Paramètre: {{birthdate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'anniversaire du/des contact(s)
* Paramètre: {{periodecreated_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de création
* Paramètre: {{periodecreated_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de création
* Paramètre: {{periodeupdated_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de mise à jour
* Paramètre: {{periodeupdated_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par date de mise à jour
* Paramètre: {{actif}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: Aucun
  * Description: Actif
* Paramètre: {{mobile}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par numéro de mobile
* Paramètre: {{tel}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Permet de filtrer la liste par numéro de téléphone


Retour
------

```
{"response":{"infos":{"nbperpage":100,"nbpages":3,"pagenum":1,"nbtotal":"297"},"result":{"61235":{"id":"61235","corpid":"1033","ownerid":"1675","linkedtype":"thirdcontact","linkedid":"58443","status":"ok","rank":"0","gender":"","civil":"man","forename":"","name":"3268840001008","email":"","web":"","tel":"","mobile":"","fax":"","position":"","pic":"","sign":"","birthdate":"NC.","twitter":"","linkedin":"","facebook":"","viadeo":"","stickyNote":"","mainAddressID":"0","mailchimp":"Y","mailjet":"Y","simplemail":"Y","thirdid":"115874","addr_name":null,"addr_part1":null,"addr_part2":null,"addr_part3":null,"addr_part4":null,"addr_zip":null,"addr_town":null,"addr_state":null,"addr_lat":null,"addr_lng":null,"addr_countrycode":null,"avatar":{"type":"initials","class":-12,"value":"3"},"linked":{"prospect":"N\/A","supplier":"N\/A","client":"3268840001008"}}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Peoples.getOne', 
    'params' => array ( 
        'id'            => {{id}},
        'thirdcontactid'    => {{thirdcontactid}},
        'includeAddresses'  => {{includeAddresses}},
        'includeLinkeds'    => {{includeLinkeds}}
    )
);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui si {thirdcontactid}} non fourni
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant numérique du contact
* Paramètre: {{thirdcontactid}}
  * Requis: Oui si {{id}} non fourni
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant numérique du third contact
* Paramètre: {{includeAddresses}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Inclure les adresses du contact dans le résultat
* Paramètre: {{includeLinkeds}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Inclure les sociétés auxquelles est lié le contact dans le résultat


Retour
------

```
{"response":{"id":"54449","corpid":"1033","ownerid":"1675","linkedtype":"thirdcontact","linkedid":"52266","status":"ok","rank":"0","gender":"","civil":"man","forename":"R\u00e9my","name":"Neuter","email":"","web":"","tel":"","mobile":"","fax":"","position":"","pic":"","sign":"","birthdate":"","twitter":"","linkedin":"","facebook":"","viadeo":"","stickyNote":"","mainAddressID":"0","mailchimp":"Y","mailjet":"Y","simplemail":"Y","fullName":"M. R\u00e9my Neuter","avatar":{"type":"initials","class":0,"value":"RN"},"formatted_birthdate":""},"error":"","status":"success"}
```


Requête
-------

```
$request = [ 
    'method' => 'Peoples.create', 
    'params' => [ 
        'people' => [
            'name'          => {{name}},
            'forename'      => {{forename}},
            'email'         => {{email}},
            'tel'           => {{tel}},
            'fax'           => {{fax}},
            'mobile'        => {{mobile}},
            'web'           => {{web}},
            'position'      => {{position}},
            'civil'         => {{civil}},
            'birthdate'     => {{birthdate}},
            'stickyNote'	=> {{stickyNote}},
            'tags'          => {{tags}},
            'thirdids'      => {{thirdids}},
			'mailchimp'		=> {{mailchimp}},
			'mailjet'		=> {{mailjet}},
			'simplemail'	=> {{simplemail}},
			'massmailingUnsubscribed'		=> {{massmailingUnsubscribed}},
			'massmailingUnsubscribedSMS'	=> {{massmailingUnsubscribedSMS}},
			'phoningUnsubscribed'			=> {{phoningUnsubscribed}},
			'massmailingUnsubscribedMail'	=> {{massmailingUnsubscribedMail}},
			'massmailingUnsubscribedCustom'	=> {{massmailingUnsubscribedCustom}}
        ]
    ]
];
```


Paramètres
----------



* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du contact
* Paramètre: {{forename}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Prénom du contact
* Paramètre: {{email}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Email du contact
* Paramètre: {{tel}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Téléphone du contact
* Paramètre: {{mobile}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Téléphone mobile du contact
* Paramètre: {{fax}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Fax du contact
* Paramètre: {{web}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Site web du contact
* Paramètre: {{position}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Poste du contact
* Paramètre: {{civil}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Civilité du contact - '', 'man','woman','lady'
* Paramètre: {{birthdate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'anniversaire du contact
* Paramètre: {{stickyNote}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Note sur le contact
* Paramètre: {{tags}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau de smart-tags
* Paramètre: {{mailchimp}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation MailChimp ('Y', 'N')
* Paramètre: {{mailjet}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation MailJet ('Y', 'N')
* Paramètre: {{simplemail}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation SimpleMail ('Y', 'N')
* Paramètre: {{massmailingUnsubscribed}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes email
* Paramètre: {{massmailingUnsubscribedSMS}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes SMS
* Paramètre: {{phoningUnsubscribed}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact des campagnes téléphonique
* Paramètre: {{massmailingUnsubscribedMail}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes courrier
* Paramètre: {{massmailingUnsubscribedCustom}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes marketing personnalisé
* Paramètre: {{thirdids}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d‘identifiant de tiers (client/prospect/fournisseur) auxquels lier le contact


Retour
------

```
{"response":{{peopleID}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Peoples.update', 
    'params' => array (
        'id'        => {{id}},
        'people'    => array(
            'name'      => {{name}},
            'forename'  => {{forename}},
            'email'     => {{email}},
            'tel'       => {{tel}},
            'fax'       => {{fax}},
            'mobile'    => {{mobile}},
            'web'       => {{web}},
            'position'  => {{position}},
            'civil'     => {{civil}},
            'birthdate' => {{birthdate}},
            'tags'      => {{tags}},
            'thirdids'  => {{thirdids}},
			'mailchimp'	=> {{mailchimp}},
			'mailjet'	=> {{mailjet}},
			'simplemail'	=> {{simplemail}},
			'massmailingUnsubscribed'		=> {{massmailingUnsubscribed}},
			'massmailingUnsubscribedSMS'	=> {{massmailingUnsubscribedSMS}},
			'phoningUnsubscribed'			=> {{phoningUnsubscribed}},
			'massmailingUnsubscribedMail'	=> {{massmailingUnsubscribedMail}},
			'massmailingUnsubscribedCustom'	=> {{massmailingUnsubscribedCustom}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant numérique du contact
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom du contact
* Paramètre: {{forename}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Prénom du contact
* Paramètre: {{email}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Email du contact
* Paramètre: {{tel}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Téléphone du contact
* Paramètre: {{mobile}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Téléphone mobile du contact
* Paramètre: {{fax}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Fax du contact
* Paramètre: {{web}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Site web du contact
* Paramètre: {{position}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Poste du contact
* Paramètre: {{civil}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Civilité du contact - '', 'man','woman','lady'
* Paramètre: {{birthdate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'anniversaire du contact
* Paramètre: {{tags}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau de smart-tags
* Paramètre: {{mailchimp}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation MailChimp ('Y', 'N')
* Paramètre: {{mailjet}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation MailJet ('Y', 'N')
* Paramètre: {{simplemail}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Activation de la synchronisation SimpleMail ('Y', 'N')
* Paramètre: {{massmailingUnsubscribed}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes email
* Paramètre: {{massmailingUnsubscribedSMS}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes SMS
* Paramètre: {{phoningUnsubscribed}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact des campagnes téléphonique
* Paramètre: {{massmailingUnsubscribedMail}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes courrier
* Paramètre: {{massmailingUnsubscribedCustom}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Désinscrire le contact aux campagnes marketing personnalisé
* Paramètre: {{thirdids}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d‘identifiant de tiers (client/prospect/fournisseur) auxquels lier le contact


Retour
------

```
{"response":{{peopleID}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Peoples.delete', 
    'params' => array (
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                     |
|---------|------|----|------|--------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant numérique du contact|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Peoples.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du contact          |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Peoples.getAddresses',
    'params' => array (
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                     |
|---------|------|----|------|--------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant numérique du contact|


Retour
------

```

```


Requête
-------

```
$request = array( 
    'method' => 'Peoples.unlinkThirds',
    'params' => array (
        'id'        => {{id}},
        'thirdids'  => {{thirdids}}
    )
);
```


Paramètres
----------


|Paramètre   |Requis|Type |Défaut|Description                                       |
|------------|------|-----|------|--------------------------------------------------|
|{{id}}      |Oui   |int  |Aucun |Identifiant numérique du contact                  |
|{{thirdids}}|Oui   |array|Aucun |Tableau d‘identifiant numérique des tiers à délier|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Peoples.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description             |
|-------------|------|-----|-------|------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du contact  |
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
    $request = array(
        'method'    =>  'Peoples.updateSharingStaffs',
        'params'    =>  array (
            "linkedid"   =>  {{linkedid}},
            "staffsIds"   => {{staffsIds}}
        )
    );
    
```


Paramètres
----------


|Parametre    |requis|type |default|Description            |
|-------------|------|-----|-------|-----------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du contact |
|{{staffsIds}}|oui   |array|aucun  |Identifiants des staffs|


Retour
------

```
{"response":"","error":"","status":"success"}
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request =  array(
    'method' => 'Document.getList',
    'params' => array (
        'doctype'       => {{doctype}},
        'includePayments'   => {{includePayments}}
        'order' => array(
            'direction' => {{direction}},
            'order'     => {{order}},
        ),
        'pagination' => array (
            'nbperpage' => {{nbperpage}}
            'pagenum'   => {{pagenum}},
        ),
        'search' => array(
            'ident'         => {{ident}},
            'steps'         => {{steps}},
            'thirds'        => {{thirds}},
            'owner'         => {{owner}},
            'shops'         => {{shops}},
            'tags'          => {{tags}},
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end}},
            'periodecreationDate_start'  => {{periodecreationDate_start}},
            'periodecreationDate_end'    => {{periodecreationDate_end}},
            'periodeexpired_start'  => {{periodeexpired_start}},
            'periodeexpired_end'    => {{periodeexpired_end}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{doctype}}
  * Requis: oui
  * Type: string
  * Défaut: aucun
  * Description: Le type de document : invoice ou estimate ou proforma ou delivery ou order ou model
* Paramètre: {{includePayments}}
  * Requis: non
  * Type: enum
  * Défaut: Non
  * Description: Inclure les infos de paiements dans le listing (ne fonctionne qu'avec les factures). Valeurs possibles : Y/N
* Paramètre: {{direction}}
  * Requis: non
  * Type: string
  * Défaut: ASC
  * Description: ASC ou DESC
* Paramètre: {{order}}
  * Requis: non
  * Type: string
  * Défaut: doc_displayedDate
  * Description: doc_ident ou doc_thirdname ou doc_displayedDate ou doc_totalAmountTaxesFree
* Paramètre: {{nbperpage}}
  * Requis: non
  * Type: int
  * Défaut: 10
  * Description: Nombre de résultats souhaité par page
* Paramètre: {{pagenum}}
  * Requis: non
  * Type: int
  * Défaut: 1
  * Description: numero de la page voulue
* Paramètre: {{ident}}
  * Requis: non
  * Type: string
  * Défaut: aucun
  * Description: numero du document
* Paramètre: {{steps}}
  * Requis: non
  * Type: array
  * Défaut: aucun
  * Description: voir les listes des étapes des documents dans la catégorie 'Règles et principes'
* Paramètre: {{thirds}}
  * Requis: non
  * Type: array
  * Défaut: aucun
  * Description: identifiant des clients
* Paramètre: {{owner}}
  * Requis: non
  * Type: int
  * Défaut: aucun
  * Description: identifiant du propriétaire
* Paramètre: {{shops}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Identifiant des boutiques
* Paramètre: {{tags}}
  * Requis: non
  * Type: string
  * Défaut: aucun
  * Description: tags séparés par des virgules
* Paramètre: {{periodecreated_start}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: debut de la fourchette de date du document
* Paramètre: {{periodecreated_end}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: fin de la fourchette de date du document
* Paramètre: {{periodecreationDate_start}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: debut de la fourchette de date de création
* Paramètre: {{periodecreationDate_end}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: fin de la fourchette de date de création
* Paramètre: {{periodeexpired_start}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: début de la fourchette de date d'expiration du document
* Paramètre: {{periodeexpired_end}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: début de la fourchette de date d'expiration du document


Retour
------

```
    {"response":{"infos":{"nbperpage":10,"nbpages":6,"pagenum":"1","nbtotal":"58"},"result":{"952674":{"id":"952674","corpname":"FR Corp","ownerFullName":"M. Max Admin","status":"ok","filename":"DEV-20150427-00058_1430119930.9607","fileid":"40277","nbpages":"2","ident":"DEV-20150427-00058","thirdident":"","thirdname":"Save","thirdid":"729859","thirdvatnum":"","contactId":"68183","contactName":"M. Jean test6","displayedDate":"2015-04-27","currencysymbol":"\u20ac","subject":"Votre commande E-commerce","docspeakerText":"Votre contact","docspeakerStaffId":"2854","docspeakerStaffFullName":"M. Max Admin","corpaddressid":"130356","thirdaddressid":"130357","shipaddressid":"130358","rowsAmount":"7.000000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"7.000000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"7.000000000","taxesAmountSum":"1.370000000","taxesAmountDetails":"a:1:{i:97574;s:11:\"1.370000000\";}","totalAmount":"8.370000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"98060","payDateText":"capouet","payDateCustom":"2015-04-27","payMediumsText":"a:1:{i:0;s:14:\"carte bancaire\";}","payCheckOrderText":"Service comptabilit\u00e9","payBankAccountText":"","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","shippingDate":"0000-00-00","saveThirdPrefs":"N","displayShipAddress":"Y","analyticsCode":"","recorded":"N","recordable":"N","rateCategory":"2337","isTaxesInc":"N","hasDoubleVat":"N","stockImpact":"Y","isFromPresta":"N","eCommerceShopId":"284","corpid":"1869","ownerid":"2854","linkedtype":"estimate","linkedid":"3810","created":"2015-04-27 09:32:10","prefsid":"772094","parentid":"0","docmapid":"36918","hasVat":"Y","thirdRelationType":"client","doctypeid":"3810","step":"draft","expireDate":"2015-05-27","showSignAndStamp":"N","currencyid":"1","currencyposition":"right","numberformat":"","numberdecimals":",","numberthousands":" ","numberprecision":"2","notes":"","bankaccountid":"157","marge":"7.000000000","percentmarge":"100.000000000","marge_tauxMarque":"100.00","marge_tauxMarge":null,"formatted_tauxMarque":"100,00 %","formatted_tauxMarge":"0,00 %","formatted_marge":"7,00 \u20ac","note":"","step_color":"pink","step_hex":"#C86BDA","step_label":"Draft","step_css":"colorDraft","step_id":"draft","canBeSharedByLoggedStaff":"Y","displayed_payMediumsText":"carte bancaire","formatted_totalAmount":"8,37 \u20ac","formatted_totalAmountTaxesFree":"7,00 \u20ac","formatted_created":"27\/04\/2015, 00:00","formatted_displayedDate":"27\/04\/2015","formatted_payDateCustom":"27\/04\/2015","formatted_lastSepaExportDate":"N\/A","formatted_expireDate":"27\/05\/2015","noedit":"N","rateCategoryFormated":"Tarif HT","tags":[{"2397":{"id":"2397","corpid":"1869","status":"ok","category":"doc","created":"2015-04-27 11:18:15","word":"smartag1","tagid":"2397","linkedtype":"estimate","linkedid":"952674","tagLinkId":"183736"},"2398":{"id":"2398","corpid":"1869","status":"ok","category":"doc","created":"2015-04-27 11:18:20","word":"smartarg2","tagid":"2398","linkedtype":"estimate","linkedid":"952674","tagLinkId":"183737"},"2399":{"id":"2399","corpid":"1869","status":"ok","category":"doc","created":"2015-04-27 11:18:30","word":"smartag3","tagid":"2399","linkedtype":"estimate","linkedid":"952674","tagLinkId":"183738"}}]},"952646":{"id":"952646","corpname":"FR Corp","ownerFullName":"M. Max Admin","status":"ok","filename":"DEV-20150424-00053_1429868940.4183","fileid":"40163","nbpages":"2","ident":"DEV-20150424-00053","thirdident":"","thirdname":"Save","thirdid":"729859","thirdvatnum":"","contactId":"68183","contactName":"M. Jean test6","displayedDate":"2015-04-24","currencysymbol":"\u20ac","subject":"Votre commande E-commerce","docspeakerText":"Votre contact","docspeakerStaffId":"2854","docspeakerStaffFullName":"M. Max Admin","corpaddressid":"130266","thirdaddressid":"130267","shipaddressid":"130268","rowsAmount":"7.000000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"7.000000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"7.000000000","taxesAmountSum":"1.370000000","taxesAmountDetails":"a:1:{i:97574;s:11:\"1.370000000\";}","totalAmount":"8.370000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"98060","payDateText":"capouet","payDateCustom":"2015-04-24","payMediumsText":"a:1:{i:0;s:14:\"carte bancaire\";}","payCheckOrderText":"Service comptabilit\u00e9","payBankAccountText":"","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","shippingDate":"0000-00-00","saveThirdPrefs":"N","displayShipAddress":"Y","analyticsCode":"","recorded":"N","recordable":"N","rateCategory":"2337","isTaxesInc":"N","hasDoubleVat":"N","stockImpact":"Y","isFromPresta":"N","eCommerceShopId":"284","corpid":"1869","ownerid":"2854","linkedtype":"estimate","linkedid":"3801","created":"2015-04-24 11:49:00","prefsid":"772050","parentid":"0","docmapid":"36883","hasVat":"Y","thirdRelationType":"client","doctypeid":"3801","step":"draft","expireDate":"2015-05-24","showSignAndStamp":"N","currencyid":"1","currencyposition":"right","numberformat":"","numberdecimals":",","numberthousands":" ","numberprecision":"2","notes":"","bankaccountid":"157","marge":"7.000000000","percentmarge":"100.000000000","marge_tauxMarque":"100.00","marge_tauxMarge":null,"formatted_tauxMarque":"100,00 %","formatted_tauxMarge":"0,00 %","formatted_marge":"7,00 \u20ac","note":"","step_color":"pink","step_hex":"#C86BDA","step_label":"Draft","step_css":"colorDraft","step_id":"draft","canBeSharedByLoggedStaff":"Y","displayed_payMediumsText":"carte bancaire","formatted_totalAmount":"8,37 \u20ac","formatted_totalAmountTaxesFree":"7,00 \u20ac","formatted_created":"24\/04\/2015, 00:00","formatted_displayedDate":"24\/04\/2015","formatted_payDateCustom":"24\/04\/2015","formatted_lastSepaExportDate":"N\/A","formatted_expireDate":"24\/05\/2015","noedit":"N","rateCategoryFormated":"Tarif HT","tags":[]}}},"error":"","status":"success"}
                
```


Paramètres
----------

#### Attention

Les adresses se trouvant dans les documents ne sont pas modifiables. Vous pouvez les remplacer par de nouvelles adresses clients en passant par la méthode **document.update**.

#### Attention

L'utilisation de **relateds** est déprécié, il est vivement recommandé d'utiliser **related**.

Requete
-------

```
    $request = array(
        'method' => 'Document.getOne',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid'     => {{docid}}
        )
    );
                
```


Paramètres
----------


|Parametre  |requis|type  |default|Description            |
|-----------|------|------|-------|-----------------------|
|{{doctype}}|oui   |string|aucun  |type du document       |
|{{docid}}  |oui   |int   |aucun  |identifiant du document|


Retour
------

```
    {
        "response": {
            "id": "11027",
            "ownerFullName": "M. Antoine Loux",
            "status": "ok",
            "filename": "FACT-20120321-00098_1333530803.5021",
            "fileid": "2157",
            "nbpages": "1",
            "ident": "FACT-20120321-00098",
            "thirdident": "",
            "thirdid": "2655",
            "contactId": "0",
            "contactName": "",
            "displayedDate": "04/04/2012",
            "currencysymbol": "€",
            "subject": "test objet",
            "corpaddressid": "36059",
            "thirdaddressid": "36060",
            "shipaddressid": "36061",
            "rowsAmount": "191.725000000",
            "discountPercent": "0.000000000",
            "discountAmount": "0.000000000",
            "rowsAmountDiscounted": "191.725000000",
            "offerAmount": "0.000000000",
            "rowsAmountAllInc": "191.725000000",
            "packagingsAmount": "49.900000000",
            "shippingsAmount": "60.000000000",
            "totalAmountTaxesFree": "301.625000000",
            "taxesAmountSum": "59.118500000",
            "taxesAmountDetails": "a:1:{s:12:\"19.600000000\";s:12:\"59.118500000\";}",
            "totalAmount": "360.743500000",
            "shippingNbParcels": "0",
            "shippingWeight": "0.000000000",
            "shippingWeightUnit": "g",
            "shippingVolume": "0.000000000",
            "shippingTrackingNumber": "",
            "shippingTrackingUrl": "",
            "saveThirdPrefs": "N",
            "displayShipAddress": "N",
            "corpid": "2",
            "ownerid": "2",
            "linkedtype": "invoice",
            "linkedid": "9516",
            "created": "2012-03-21 14:43:18",
            "prefsid": "14683",
            "parentid": "0",
            "docmapid": "11603",
            "hasVat": "Y",
            "doctypeid": "9516",
            "step": "draft",
            "isDeposit": "N",
            "dueAmount": "360.743500000",
            "countrycode": "FR",
            "globalDiscount": "0.000000000",
            "globalDiscountUnit": "percent",
            "globalOffer": "0.000000000",
            "useDeposit": "N",
            "deposit": "0.000000000",
            "depositUnit": "percent",
            "discountByRows": "N",
            "addPdfToEmail": "Y",
            "addGtuToEmail": "Y",
            "addSenderToEmail": "N",
            "hideColumnName": "N",
            "hideColumnNotes": "N",
            "hideColumnUnit": "N",
            "hideColumnTaxFree": "N",
            "hideColumnTax": "N",
            "hideColumnTaxInc": "N",
            "hideColumnQt": "N",
            "hideTotalTaxesFree": "N",
            "hideTotal": "N",
            "hidePayment": "N",
            "hideTaxes": "N",
            "hasPenaltyRetardWarning": "Y",
            "penaltyRetardWarningText": "La loi n°92/1442 du 31 décembre 1992...",
            "showContactOnPdf": "N",
            "hasCorpAgree": "N",
            "hasThirdAgree": "N",
            "notes": "test note",
            "nbExpireDays": "30",
            "displayAmounts": "Y",
            "display_footer": "Y",
            "display_ident": "Y",
            "display_email": "Y",
            "display_tel": "Y",
            "display_mobile": "Y",
            "display_fax": "Y",
            "displayBankAccount": "Y",
            "displayIBAN": "Y",
            "displayBIC": "Y",
            "hideTips": "N",
            "hideOrdersDocs": "N",
            "hideDeliveriesDocs": "N",
            "hideProformaDocs": "N",
            "emailsSentFromCorp": "Y",
            "isdefault": "Y",
            "name": "default",
            "headerMode": "all",
            "footerMode": "all",
            "logoMode": "first",
            "useBg": "custom",
            "bgMode": "all",
            "bgFile": "custom",
            "bgCustomFile": "",
            "hideTopPart": "N",
            "hideFill": "N",
            "colorFill": "000000",
            "colorText": "000000",
            "colorHeaderRow": "000000",
            "colorNotes": "000000",
            "colorDiscreet": "000000",
            "colorHeaderFooter": "000000",
            "font": "helvetica",
            "type": "invoice",
            "map": {
                "docid": "11027",
                "id": "11603",
                "rows": {
                    "_xml_childtag": "row",
                    "16562": {
                        "parentid": "0",
                        "status": "ok",
                        "rank": "1",
                        "type": "packaging",
                        "linkedid": "0",
                        "name": "",
                        "notes": "",
                        "unitAmount": "4.990000000",
                        "unitid": "2750",
                        "unitText": "",
                        "qt": "10.000000000",
                        "discount": "0.000000000",
                        "discountUnit": "percent",
                        "taxid": "66",
                        "taxrate": "19.600000000",
                        "isOption": "N",
                        "totalAmount": "49.900000000",
                        "taxAmount": "9.780400000",
                        "purchaseAmount": "0.000000000",
                        "id": "16562",
                        "discountPercent": "0.000000000",
                        "formatted_unitAmount": "4,99",
                        "formatted_qt": "10,00",
                        "formatted_discount": "0,00",
                        "formatted_taxrate": "19,60",
                        "formatted_totalAmount": "49,90 €",
                        "formatted_taxAmount": "9,78",
                        "formatted_discountPercent": "0,00"
                    },
                    "16563": {
                        "parentid": "0",
                        "status": "ok",
                        "rank": "2",
                        "type": "shipping",
                        "linkedid": "0",
                        "name": "",
                        "notes": "",
                        "unitAmount": "5.000000000",
                        "unitid": "2751",
                        "unitText": "",
                        "qt": "12.000000000",
                        "discount": "0.000000000",
                        "discountUnit": "percent",
                        "taxid": "66",
                        "taxrate": "19.600000000",
                        "isOption": "N",
                        "totalAmount": "60.000000000",
                        "taxAmount": "11.760000000",
                        "purchaseAmount": "0.000000000",
                        "id": "16563",
                        "discountPercent": "0.000000000",
                        "formatted_unitAmount": "5,00",
                        "formatted_qt": "12,00",
                        "formatted_discount": "0,00",
                        "formatted_taxrate": "19,60",
                        "formatted_totalAmount": "60,00 €",
                        "formatted_taxAmount": "11,76",
                        "formatted_discountPercent": "0,00"
                    },
                    "16648": {
                        "parentid": "0",
                        "status": "ok",
                        "rank": "3",
                        "type": "item",
                        "linkedid": "13",
                        "name": "item",
                        "notes": "item",
                        "unitAmount": "41.800000000",
                        "unitid": "70",
                        "unitText": "forfaitaire",
                        "qt": "1.000000000",
                        "discount": "0.000000000",
                        "discountUnit": "percent",
                        "taxid": "66",
                        "taxrate": "19.600000000",
                        "isOption": "N",
                        "totalAmount": "41.800000000",
                        "taxAmount": "8.192800000",
                        "purchaseAmount": "0.000000000",
                        "id": "16648",
                        "discountPercent": "0.000000000",
                        "formatted_unitAmount": "41,80",
                        "formatted_qt": "1,00",
                        "formatted_discount": "0,00",
                        "formatted_taxrate": "19,60",
                        "formatted_totalAmount": "41,80 €",
                        "formatted_taxAmount": "8,19",
                        "formatted_discountPercent": "0,00"
                    },
                    "16649": {
                        "parentid": "0",
                        "status": "ok",
                        "rank": "4",
                        "type": "item",
                        "linkedid": "14",
                        "name": "service",
                        "notes": "service",
                        "unitAmount": "19.990000000",
                        "unitid": "70",
                        "unitText": "forfaitaire",
                        "qt": "7.500000000",
                        "discount": "0.000000000",
                        "discountUnit": "percent",
                        "taxid": "66",
                        "taxrate": "19.600000000",
                        "isOption": "N",
                        "totalAmount": "149.925000000",
                        "taxAmount": "29.385300000",
                        "purchaseAmount": "0.000000000",
                        "id": "16649",
                        "discountPercent": "0.000000000",
                        "formatted_unitAmount": "19,99",
                        "formatted_qt": "7,50",
                        "formatted_discount": "0,00",
                        "formatted_taxrate": "19,60",
                        "formatted_totalAmount": "149,93 €",
                        "formatted_taxAmount": "29,39",
                        "formatted_discountPercent": "0,00"
                    },
                    "16650": {
                        "parentid": "0",
                        "status": "ok",
                        "rank": "5",
                        "type": "item",
                        "linkedid": "2619",
                        "name": "test",
                        "notes": "test",
                        "unitAmount": "0.000000000",
                        "unitid": "71",
                        "unitText": "m2",
                        "qt": "1.000000000",
                        "discount": "0.000000000",
                        "discountUnit": "percent",
                        "taxid": "66",
                        "taxrate": "19.600000000",
                        "isOption": "Y",
                        "totalAmount": "0.000000000",
                        "taxAmount": "0.000000000",
                        "purchaseAmount": "0.000000000",
                        "id": "16650",
                        "discountPercent": "0.000000000",
                        "formatted_unitAmount": "0,00",
                        "formatted_qt": "1,00",
                        "formatted_discount": "0,00",
                        "formatted_taxrate": "19,60",
                        "formatted_totalAmount": "0,00 €",
                        "formatted_taxAmount": "0,00",
                        "formatted_discountPercent": "0,00"
                    }
                }
            },
            "relateds_amount": "0.000000000",
            "corpAddress": {
                "name": "Rue du four",
                "part1": "10 rue du four",
                "part2": "",
                "zip": "79200",
                "town": "Adilly",
                "townid": "3835224",
                "countrycode": "FR",
                "originalid": "0",
                "id": "36059",
                "partsToDisplay": {
                    "_xml_childtag": "part",
                    "0": {
                        "txt": "10 rue du four"
                    },
                    "1": {
                        "txt": "79200 - Adilly"
                    },
                    "2": {
                        "txt": "France"
                    }
                }
            },
            "hasThird": "Y",
            "thirdType": "corporation",
            "thirdAddress": {
                "name": "test2",
                "part1": "2 rue du moulin",
                "part2": "",
                "zip": "17000",
                "town": "la rochelle",
                "townid": "0",
                "countrycode": "FR",
                "originalid": "0",
                "id": "36060",
                "partsToDisplay": {
                    "_xml_childtag": "part",
                    "0": {
                        "txt": "2 rue du moulin"
                    },
                    "1": {
                        "txt": "17000 - la rochelle"
                    },
                    "2": {
                        "txt": "France"
                    }
                }
            },
            "shipAddress": {
                "name": "",
                "part1": "",
                "part2": "",
                "zip": "",
                "town": "",
                "townid": "0",
                "countrycode": "FR",
                "originalid": "0",
                "id": "36061",
                "partsToDisplay": {
                    "_xml_childtag": "part",
                    "0": {
                        "txt": ""
                    },
                    "1": {
                        "txt": " - "
                    },
                    "2": {
                        "txt": "France"
                    }
                }
            },
            "canWriteDocNamespace": "Y",
            "logoFile": "",
            "logoFile_system": "",
            "logoHeight": 0,
            "logoWidth": 0,
            "label": "Facture",
            "fullIdent": "Facture N° FACT-20120321-00098",
            "numformat": {
                "name": "fr",
                "decimals": ",",
                "thousands": " ",
                "currencypos": "right",
                "currencysymbol": "€",
                "precision": "2"
            },
            "numformats": {
                "_xml_childtag": "format",
                "0": {
                    "label": "français [1 234,57 #]",
                    "decimals": ",",
                    "thousands": " ",
                    "currencypos": "right",
                    "name": "fr"
                },
                "1": {
                    "label": "anglais [# 1,234.57]",
                    "decimals": ".",
                    "thousands": ",",
                    "currencypos": "left",
                    "name": "en"
                }
            },
            "precisions": {
                "_xml_childtag": "precision",
                "0": {
                    "value": 0
                },
                "1": {
                    "value": 1
                },
                "2": {
                    "value": 2
                },
                "3": {
                    "value": 3
                },
                "4": {
                    "value": 4
                },
                "5": {
                    "value": 5
                },
                "6": {
                    "value": 6
                },
                "7": {
                    "value": 7
                },
                "8": {
                    "value": 8
                },
                "9": {
                    "value": 9
                }
            },
            "currencies": {
                "1": {
                    "name": "EUR",
                    "symbol": "€",
                    "rank": "1",
                    "enabled": "Y",
                    "id": "1"
                },
                "2": {
                    "name": "USD",
                    "symbol": "$",
                    "rank": "2",
                    "enabled": "Y",
                    "id": "2"
                },
                "4": {
                    "name": "PND",
                    "symbol": "£",
                    "rank": "3",
                    "enabled": "Y",
                    "id": "4"
                },
                "_xml_childtag": "currency"
            },
            "currencypositions": {
                "_xml_childtag": "currencypos",
                "0": {
                    "value": "both",
                    "label": "gauche et droite"
                },
                "1": {
                    "value": "left",
                    "label": "gauche"
                },
                "2": {
                    "value": "right",
                    "label": "droite"
                },
                "3": {
                    "value": "none",
                    "label": "masquée"
                }
            },
            "hasRelateds": "Y",
            "corpName": "Antoine Loux",
            "thirdName": "Alain",
            "thirdVatNum": "",
            "docspeaker_text": "Votre contact",
            "paydate_text": "à 90 jours",
            "paydate_custom": "03/07/2012",
            "paymediums_text": "a:1:{i:0;s:7:\"chèque\";}",
            "paycheckorder_text": "Service comptabilité",
            "paybankaccount_text": "",
            "currency": "1",
            "num_currencypos": "right",
            "docspeaker": "95",
            "doclayout": "2",
            "num_name": "fr",
            "num_decimals": ",",
            "num_thousands": " ",
            "num_precision": "2",
            "defaultTax": "66",
            "defaultUnit": "70",
            "defaultShipping": "17",
            "defaultPackaging": "15",
            "paydate": "81",
            "paydate_xdays": "0",
            "paydate_endmonth": "N",
            "paydate_scaledDetails": "",
            "paymediums": {
                "86": {
                    "id": "86",
                    "corpid": "2",
                    "list": "paymediums",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "N",
                    "syscode": "check",
                    "rank": "1",
                    "value": "chèque",
                    "checked": "Y"
                },
                "89": {
                    "id": "89",
                    "corpid": "2",
                    "list": "paymediums",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "cb",
                    "rank": "4",
                    "value": "carte bancaire"
                },
                "_xml_childtag": "paymedium"
            },
            "paymedium_other": "",
            "paycheckorder": "89",
            "paybankaccount": "0",
            "weightUnits": {
                "_xml_childtag": "weightUnit",
                "0": {
                    "value": "mg"
                },
                "1": {
                    "value": "g"
                },
                "2": {
                    "value": "kg"
                }
            },
            "hideableColumns": {
                "_xml_childtag": "column",
                "0": {
                    "id": "name",
                    "name": "hideColumnName",
                    "label": "Masquer la colonne \"Nom/Code\"",
                    "checked": "N"
                },
                "1": {
                    "id": "notes",
                    "name": "hideColumnNotes",
                    "label": "Masquer la colonne \"Libellé\"",
                    "checked": "N"
                },
                "2": {
                    "id": "unit",
                    "name": "hideColumnUnit",
                    "label": "Masquer la colonne \"Coût unitaire HT\"",
                    "checked": "N"
                },
                "3": {
                    "id": "tax",
                    "name": "hideColumnTax",
                    "label": "Masquer la colonne \"TVA\"",
                    "checked": "N"
                },
                "4": {
                    "id": "qt",
                    "name": "hideColumnQt",
                    "label": "Masquer la colonne \"Qt\"",
                    "checked": "N"
                },
                "5": {
                    "id": "amount",
                    "name": "hideColumnTaxFree",
                    "label": "Masquer la colonne \"Montant HT\"",
                    "checked": "N"
                },
                "6": {
                    "id": "listTotal",
                    "name": "hideTotal",
                    "label": "Masquer les totaux",
                    "checked": "N"
                },
                "7": {
                    "id": "payment",
                    "name": "hidePayment",
                    "label": "Masquer infos paiement",
                    "checked": "N"
                }
            },
            "doclayouts": {
                "_xml_childtag": "doclayout",
                "2": {
                    "corpid": "2",
                    "ownerid": "2",
                    "status": "ok",
                    "isdefault": "Y",
                    "name": "default",
                    "headerMode": "all",
                    "footerMode": "all",
                    "logoMode": "first",
                    "useBg": "custom",
                    "bgMode": "all",
                    "bgFile": "custom",
                    "bgCustomFile": "",
                    "hideTopPart": "N",
                    "hideFill": "N",
                    "colorFill": "000000",
                    "colorText": "000000",
                    "colorHeaderRow": "000000",
                    "colorNotes": "000000",
                    "colorDiscreet": "000000",
                    "colorHeaderFooter": "000000",
                    "font": "helvetica",
                    "id": "2"
                }
            },
            "currencyleft": "",
            "currencyright": "€",
            "discountUnits": {
                "_xml_childtag": "discountUnit",
                "0": {
                    "value": "percent",
                    "label": "%"
                },
                "1": {
                    "value": "amount",
                    "label": "€"
                }
            },
            "taxes": {
                "66": {
                    "id": "66",
                    "corpid": "2",
                    "list": "taxes",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "1",
                    "value": "20,00"
                },
                "67": {
                    "id": "67",
                    "corpid": "2",
                    "list": "taxes",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "2",
                    "value": "5,50"
                },
                "69": {
                    "id": "69",
                    "corpid": "2",
                    "list": "taxes",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "4",
                    "value": "0,00"
                },
                "_xml_childtag": "tax"
            },
            "shippings": {
                "17": {
                    "type": "shipping",
                    "corpid": "2",
                    "ownerid": "2",
                    "status": "ok",
                    "isEnabled": "Y",
                    "rank": "1",
                    "name": "shipping",
                    "notes": "shipping",
                    "unitAmount": "13.900000000",
                    "unitAmountIsTaxesFree": "Y",
                    "unitid": "70",
                    "unit": "",
                    "qt": "1.000000000",
                    "taxid": "66",
                    "taxrate": "0.000000000",
                    "purchaseAmount": "0.000000000",
                    "stock": "0",
                    "createdAt": "0000-00-00 00:00:00",
                    "updatedAt": "0000-00-00 00:00:00",
                    "id": "17",
                    "typeLabel": "transport",
                    "nameSample": "shipping",
                    "notesSample": "shipping",
                    "notesHTMLSample": "shipping",
                    "isTaxesFree": "HT",
                    "unitAmountTaxesFree": "13.900000000",
                    "formatted_unitAmount": "13.900000000",
                    "formatted_unitAmount_ht": "13.900000000",
                    "formatted_unitAmount_ttc": 13.9,
                    "formatted_qt": "1.000000000",
                    "formatted_taxrate": "0.000000000",
                    "formatted_full_qt": "1.000000000 ",
                    "formatted_full_unitAmount": "13.900000000"
                },
                "_xml_childtag": "shipping"
            },
            "packagings": {
                "15": {
                    "type": "packaging",
                    "corpid": "2",
                    "ownerid": "2",
                    "status": "ok",
                    "isEnabled": "Y",
                    "rank": "1",
                    "name": "packaging",
                    "notes": "packaging",
                    "unitAmount": "3.990000000",
                    "unitAmountIsTaxesFree": "Y",
                    "unitid": "70",
                    "unit": "",
                    "qt": "4.000000000",
                    "taxid": "66",
                    "taxrate": "0.000000000",
                    "purchaseAmount": "0.000000000",
                    "stock": "0",
                    "createdAt": "0000-00-00 00:00:00",
                    "updatedAt": "0000-00-00 00:00:00",
                    "id": "15",
                    "typeLabel": "emballage",
                    "nameSample": "packaging",
                    "notesSample": "packaging",
                    "notesHTMLSample": "packaging",
                    "isTaxesFree": "HT",
                    "unitAmountTaxesFree": "3.990000000",
                    "formatted_unitAmount": "3.990000000",
                    "formatted_unitAmount_ht": "3.990000000",
                    "formatted_unitAmount_ttc": 3.99,
                    "formatted_qt": "4.000000000",
                    "formatted_taxrate": "0.000000000",
                    "formatted_full_qt": "4.000000000 ",
                    "formatted_full_unitAmount": "3.990000000"
                },
                "_xml_childtag": "packaging"
            },
            "units": {
                "70": {
                    "id": "70",
                    "corpid": "2",
                    "list": "units",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "1",
                    "value": "forfaitaire"
                },
                "71": {
                    "id": "71",
                    "corpid": "2",
                    "list": "units",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "2",
                    "value": "m2"
                },
                "73": {
                    "id": "73",
                    "corpid": "2",
                    "list": "units",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "4",
                    "value": "kg"
                },
                "_xml_childtag": "unit"
            },
            "canWriteShippings": "Y",
            "canWritePackagings": "Y",
            "canWriteUnits": "Y",
            "canWriteTaxes": "Y",
            "canWritePaydates": "Y",
            "paydates": {
                "75": {
                    "id": "75",
                    "corpid": "2",
                    "list": "paydates",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "N",
                    "syscode": "custom",
                    "rank": "1",
                    "value": "à date"
                },
                "77": {
                    "id": "77",
                    "corpid": "2",
                    "list": "paydates",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "N",
                    "syscode": "endmonth",
                    "rank": "4",
                    "value": "fin de mois"
                },
                "78": {
                    "id": "78",
                    "corpid": "2",
                    "list": "paydates",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "N",
                    "syscode": "30days",
                    "rank": "5",
                    "value": "à 30 jours"
                },
                "_xml_childtag": "paydate"
            },
            "canWritePaymediums": "Y",
            "canWritePayCheckOrders": "Y",
            "paycheckorders": {
                "94": {
                    "id": "94",
                    "corpid": "2",
                    "list": "paycheckorders",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "1",
                    "value": "Service comptabilité"
                },
                "_xml_childtag": "paycheckorder"
            },
            "bankaccounts": {
                "_xml_childtag": "bankaccount"
            },
            "canWriteDocSpeakers": "Y",
            "docspeakers": {
                "95": {
                    "id": "95",
                    "corpid": "2",
                    "list": "docspeakers",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "1",
                    "value": "Votre contact"
                },
                "96": {
                    "id": "96",
                    "corpid": "2",
                    "list": "docspeakers",
                    "status": "ok",
                    "isEnabled": "Y",
                    "isWriteabled": "Y",
                    "syscode": "",
                    "rank": "2",
                    "value": "Votre référent"
                },
                "_xml_childtag": "docspeaker"
            },
            "formatted_rowsAmount": "191,73 €",
            "formatted_discountPercent": "0,00",
            "formatted_discountAmount": "0,00 €",
            "formatted_rowsAmountDiscounted": "191,73 €",
            "formatted_offerAmount": "0,00 €",
            "formatted_rowsAmountAllInc": "191,73 €",
            "formatted_packagingsAmount": "49,90 €",
            "formatted_shippingsAmount": "60,00 €",
            "formatted_totalAmountTaxesFree": "301,63 €",
            "formatted_taxesAmountSum": "59,12 €",
            "formatted_totalAmount": "360,74 €",
            "formatted_shippingWeight": "0,00 €",
            "formatted_shippingVolume": "0,00 €",
            "formatted_globalDiscount": "0,00 €",
            "formatted_globalOffer": "0,00",
            "formatted_deposit": "0,00 €",
            "formatted_dueAmount": "360,74 €",
            "tel": "0620365895",
            "fax": "",
            "email": "[email protected]",
            "mobile": "",
            "formatted_taxesAmountDetails": "a:1:{s:5:\"19,60\";s:9:\"59,12 €\";}",
            "corpFooter": "Antoine [email protected]",
            "tags": [
                {
                    "id": "112",
                    "corpid": "2",
                    "category": "doc",
                    "created": "2012-04-04 11:13:29",
                    "word": "tags_test"
                }
            ],
            "amountToBeBilled": 200.00
        },
        "error": "",
        "status": "success"
        }
    
```


Requete
-------

```
    $request = array(
        'method' => 'Document.getPublicLink',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid' => {{id}},
        )
    );
                
```


#### Attention

Le hash renvoyé par cette méthode est regénéré à chaque modification du document.

Paramètres
----------


|Parametre  |requis|type  |default|Description            |
|-----------|------|------|-------|-----------------------|
|{{doctype}}|oui   |string|aucun  |type du document       |
|{{id}}     |oui   |int   |aucun  |identifiant du document|


Retour
------

```
    {"response":"?_f=file&id={{hash_public_link}}","error":"","status":"success"}}
                
```


#### Attention

Cet endpoint retourne une URL partielle pointant vers un document. Il faut rajouter l'URL Sellsy au lien que vous recevez de cette fonction. Exemple : `https://sellsy.com/{{partial_pdf_url}}`

Par défaut, l'URL retournée permet de télécharger directement le fichier. Si vous souhaitez consulter le document directement dans votre navigateur, ajoutez simplement `&display=Y` à la fin de l'URL.

L'endpoint `Document.getPublicLink_v2` fonctionne de manière identique à `Document.getPublicLink`, avec un format de retour différent.

Requete
-------

```
    $request = array(
        'method' => 'Document.getPublicLink_v2',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid'     => {{id}},
        )
    );
                
```


Paramètres
----------


|Parametre  |requis|type  |default|Description            |
|-----------|------|------|-------|-----------------------|
|{{doctype}}|oui   |string|aucun  |type du document       |
|{{id}}     |oui   |int   |aucun  |identifiant du document|


Retour
------

```
{"response":{"pdf":"?_f=file\u0026id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCJUE5JUE3NSVCMCVCMSVFNiVFOCUxNCVDN0clMEUlMDclMEMlOEYlQkIlOTAlRTFFRyVENiUxNCU5QyUzQ0slMEMlN0IlOEQlRjAlQTIlM0ElRDIlRUYlRUElMUElQUUlNUMlQUQlQ0YlQTAlRTUlRDQlNUIlQjV1XyVCQyVEOCVCRTUlQkMlMEMlMUV6JTA3JUE3JUVFJUM4JUQ4RVglOUIlMEQlQUElQ0E==\u0026key=db25d9658c4911b086e69f629ddfde9e"},"error":"","status":"success"}}
```


#### Attention

Cet endpoint retourne une URL partielle pointant vers un document. Il faut rajouter l'URL Sellsy au lien que vous recevez de cette fonction. Exemple : `https://sellsy.com/{{partial_pdf_url}}`

Par défaut, l'URL retournée permet de télécharger directement le fichier. Si vous souhaitez consulter le document directement dans votre navigateur, ajoutez simplement `&display=Y` à la fin de l'URL.

Requete
-------

```
    $request = array(
        'method' => 'Document.getNextIdent',
        'params' => array(
			'doctype'       => {{doctype}},
		)
    );
                
```


Paramètres
----------


|Parametre  |requis|type  |default|Description     |
|-----------|------|------|-------|----------------|
|{{doctype}}|oui   |string|aucun  |type du document|


Retour
------

```
    {"response":"DEV-20160428-00179","error":"","status":"success"}}
                
```


Requête
-------

#### Attention

La structure d'une ligne peut varier en fonction de son type. Il existe 9 types de ligne :

*   Les lignes simple de type : **once**
*   Les lignes catalogue de type : **item**
*   Les lignes de livraison de type : **shipping**
*   Les lignes d'emballage de type : **packaging**
*   Les lignes de sous total de type : **sum**
*   Les lignes de titre de type : **title**
*   Les lignes de commentaire de type : **comment**
*   Les lignes de saut de page de type : **break**
*   Les lignes de saut de ligne de type : **empty**

Si vous utilisez des échéances de paiements multiples, assurez vous que le montant total de ces échéances soit égales au montant total TTC du document

```
$request = array(
    'method' => 'Document.create',
    'params' => Array (
        'document' => Array (
            'doctype'           => {{doctype}},
            'parentId'          => {{parentId}},
            'thirdid'           => {{clientid}},
            'thirdident'        => {{thirdident}},
            'ident'             => {{ident}},
            'displayedDate'     => {{displayedDate}},
            'expireDate'        => {{expireDate}},
            'subject'           => {{document_subject}},
            'notes'             => {{document_notes}},
            'tags'              => {{document_tags}},
            'displayShipAddress' => {{displayshippaddress_enum}},
            'rateCategory'      => {{rateCategory}},
            'globalDiscount'    => {{globalDiscount}},
            'globalDiscountUnit' => {{globalDiscountUnit}},
            'hasDoubleVat'      => {{hasDoubleVat}},
            'hasTvaLawText'     => {{hasTvaLawText}},
            'currency'          => {{currency}},
            'doclayout'         => {{doclayout}},
            'doclang'           => {{doclang}},
            'payMediums'        => array(
                {{payMediums}}
            ),
            'docspeakerStaffId'	=> {{docspeakerStaffId}},
            'useServiceDates'	=> {{useServiceDates}},
            'serviceDateStart'	=> {{serviceDateStart}},
            'serviceDateStop'	=> {{serviceDateStop}},
            'showContactOnPdf'	=> {{showContactOnPdf}},
            'showParentOnPdf'	=> {{showParentOnPdf}},
            'conditionDocShow'  => {{conditionDocShow}}
            'corpAddressId'     => {{corpAddressId}},
            'enabledPaymentGateways' => {{enabledPaymentGateways}}
            'directDebitPaymentGateway' => {{directDebitPaymentGateway}}
            'enable_draft_number' => {{enable_draft_number}},
            'orderIdent' => {{orderIdent}}
        ),
        'paydate'   => array(
            'id'            => {{paydate_id}},
            'xdays'         => {{paydate_xdays}},
            'endmonth'      => {{paydate_endmonth}},
            'scaledDetails' => {{paydate_scaledDetails}},
            'custom'        => {{paydate_custom}}
            'scaledDetails' => {{paydate_scaledDetails}},
            'deadlines' => array(
                array(
                    'date'      => {{date}},
					'amount'    => {{amount}},
                ),
                array(
                    'date'      => {{date}},
                    'amount'    => {{amount}},
                ),
            )
        ),
        'shipping' => array(
            'nbParcels'     => {{shipping_nbParcels}},
            'weight'        => {{shipping_weight}},
            'weightUnit'    => {{shipping_weightUnit}},
            'volume'        => {{shipping_volume}},
            'trackingNumber' => {{shipping_trackingNumber}},
            'trackingUrl'   => {{shipping_trackingUrl}},
            'date'          => {{shipping_date}}
        ),
        'num_format' => array(
            'currencyid'    => {{currencyid}},
            'currencypos'   => {{currencypos}},
            'decimals'	    => {{decimals}},
            'thousands'	    => {{thousands}},
            'precision'     => {{precision}}
        ),
        'thirdaddress' => array(
            'id' => {{thirdaddress_id}}
        ),
        'shipaddress' => array(
            'id' => {{shipaddress_id}}
        ),
        'row' => array (
            '1' => array (
                'row_type'      => 'packaging',
                'row_packaging' => {{packagin_name}},
                'row_name'      => {{row_name}},
                'row_unitAmount' => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'    => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'  => {{row_option}},
                'row_discount'  => {{row_discount}},
                'row_discountUnit'   => {{row_discountUnit}},
                'row_accountingCode' => {{row_accountingCode}}
            ),
            '2' => array (
                'row_type'      => 'shipping',
                'row_shipping'  => {{shipping_name}},
                'row_name'      => {{row_name}},
                'row_unitAmount' => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'    => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'  => {{row_option}},
                'row_discount'  => {{row_discount}},
                'row_discountUnit'   => {{row_discountUnit}},
                'row_accountingCode' => {{row_accountingCode}}
            ),
            '3' => array (
                'row_type'      => 'item',
                'row_linkedid'  => {{catalogue_id_link}},
                'row_declid'    => {{catalogue_declid_link}},
                'row_name'      => {{row_name}},
                'row_notes'     => {{row_notes}},
                'row_unit'      => {{row_unit}},
                'row_unitAmount' => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'    => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_whid'      => {{row_whid}},
                'row_isOption'  => {{row_option}},
                'row_purchaseAmount' => {{row_purchaseAmount}},
                'row_discount'       => {{row_discount}},
                'row_discountUnit'   => {{row_discountUnit}},
                'row_serial'         => {{row_serial}},
                'row_barcode'        => {{row_barcode}},
                'row_accountingCode' => {{row_accountingCode}}
            ),
            '4' => array (
                'row_type'      => 'once',
                'row_name'      => {{row_name}},
                'row_notes'     => {{row_notes}},
                'row_unit'      => {{row_unit}},
                'row_unitAmount' => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'    => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'  => {{row_option}},
                'row_discount'  => {{row_discount}},
                'row_discountUnit'   => {{row_discountUnit}},
                'row_accountingCode' => {{row_accountingCode}}
            ),
            '5' => array(
                'row_type'  => 'sum'
            ),
            '6' => array(
                'row_type'  => 'title',
                'row_title' => {{row_title}}
            ),
            '7' => array(
                'row_type'  => 'comment',
                'row_comment'   => {{row_comment}}
            ),
            '8' => array(
                'row_type'  => 'break'
            ),
            '9' => array(
                'row_type'  => 'empty'
            )
        )
    )
);
```


Paramètres
----------



* Paramètre: {{doctype}}
  * Requis: oui
  * Type: string
  * Défaut: aucun
  * Description: Le type de document : invoice ou estimate ou proforma ou delivery ou order ou creditnote
* Paramètre: {{parentId}}
  * Requis: non
  * Type: int
  * Défaut: aucun
  * Description: Identifiant du document parent. À préciser lorsque vous souhaitez transformer vos documents. Exemple : Pour facturer un devis, créer une nouvelle facture en précisant l'identifiant du devis à facturer en parentId
* Paramètre: {{clientid}}
  * Requis: oui
  * Type: int
  * Défaut: aucun
  * Description: l'identifiant du client
* Paramètre: {{thirdident}}
  * Requis: Non
  * Type: string
  * Défaut: Référence du client associé au document
  * Description: Référence client
* Paramètre: {{contactId}}
  * Requis: Non
  * Type: int
  * Défaut: Identifiant du contact associé au client
  * Description: Identifiant du contact associé au client
* Paramètre: {{contactName}}
  * Requis: Non
  * Type: string
  * Défaut: Nom du contact associé
  * Description: Nom du contact associé
* Paramètre: {{docspeakerStaffId}}
  * Requis: Non
  * Type: int
  * Défaut: Créateur du document
  * Description: Collaborateur référent
* Paramètre: {{useServiceDates}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: aucun
  * Description: Utiliser les dates de service
* Paramètre: {{serviceDateStart}}
  * Requis: Oui si useServiceDates à Y
  * Type: Timestamp
  * Défaut: aucun
  * Description: Date de début de service
* Paramètre: {{serviceDateStop}}
  * Requis: Oui si useServiceDates à Y
  * Type: Timestamp
  * Défaut: aucun
  * Description: Date de fin de service
* Paramètre: {{showContactOnPdf}}
  * Requis: Non
  * Type: Y/N
  * Défaut: N
  * Description: Afficher le contact sur le PDF
* Paramètre: {{showParentOnPdf}}
  * Requis: Non
  * Type: Y/N
  * Défaut: Selon préférence
  * Description: Afficher le document parent sur le PDF
* Paramètre: {{conditionDocShow}}
  * Requis: Non
  * Type: Y/N
  * Défaut: Selon préférence
  * Description: Demander la confirmation d‘acceptation des conditions
* Paramètre: {{ident}}
  * Requis: non
  * Type: string
  * Défaut: aucun
  * Description: numéro du document
* Paramètre: {{displayedDate}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: La date souhaitée du document
* Paramètre: {{expireDate}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: Date de validité du document (devis et proforma seulement
* Paramètre: {{displayshippaddress_enum}}
  * Requis: non
  * Type: string
  * Défaut: N
  * Description: affiche l'addresse de livraison sur le document (Y/N)
* Paramètre: {{rateCategory}}
  * Requis: non
  * Type: int
  * Défaut: Valeur par défaut du compte
  * Description: Affecte la catégorie tarifaire souhaitée au document
* Paramètre: {{globalDiscount}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Remise globale souhaitée
* Paramètre: {{globalDiscountUnit}}
  * Requis: Non
  * Type: enum
  * Défaut: percent
  * Description: Unité de la remise globale souhaitée (percent/amount)
* Paramètre: {{hasDoubleVat}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Utiliser ou non la double TVA
* Paramètre: {{hasTvaLawText}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Utiliser ou non le texte de loi dédié à la TVA intracommunautaire
* Paramètre: {{currency}}
  * Requis: Non
  * Type: int
  * Défaut: Devise par défaut
  * Description: ID de la devise de votre document
* Paramètre: {{doclayout}}
  * Requis: Non
  * Type: int
  * Défaut: Apparence par défaut
  * Description: ID de l'apparence souhaitée de votre document
* Paramètre: {{doclang}}
  * Requis: Non
  * Type: int
  * Défaut: Langue de traduction
  * Description: ID de la langue (Méthode pour récupérer les langues de traduction : Accountdatas.getTranslationLanguages)
* Paramètre: {{payMediums}}
  * Requis: Non
  * Type: array
  * Défaut: Moyen(s) de paiement par défaut
  * Description: Tableau d'IDs du/des moyen(s) de paiement souhaité(s)
* Paramètre: {{enabledPaymentGateways}}
  * Requis: Non
  * Type: array( enum(paypal, stripe, atos, adyen) )
  * Défaut: Les passerelles de paiement par défaut
  * Description:                 Liste des passerelles de paiement à activer pour le document                                Si spécifiée, même à vide, elle sera utilisée pour le document, à la place des passerelles définies dans vos préférences de module            
* Paramètre: {{directDebitPaymentGateway}}
  * Requis: Non
  * Type: enum(N, stripe, gocardless) )
  * Défaut: Le module de prélèvement activé par défaut (si activé)
  * Description: Défini si le prélèvement est activé sur le document, si oui, la passerelle de paiement à utiliser
* Paramètre: {{document_subject}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Le champ object de votre document
* Paramètre: {{document_notes}}
  * Requis: Non
  * Type: text
  * Défaut: Aucun
  * Description: Le champs note de votre document
* Paramètre: {{document_tags}}
  * Requis: Non
  * Type: text
  * Défaut: Aucun
  * Description: Liste de tags séparés par des virgules
* Paramètre: {{thirdaddress_id}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: L'ID d'une des adresses du client pour la facturation
* Paramètre: {{shipaddress_id}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: L'ID d'une des adresses du client pour la livraison
* Paramètre: {{corpAddressId}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: L'ID d'une des adresses de votre société
* Paramètre: {{packagin_name}}
  * Requis: Oui
  * Type: text
  * Défaut: Aucun
  * Description: Le nom du packaging tel qu'il est définit dans votre compte
* Paramètre: {{shipping_name}}
  * Requis: Oui
  * Type: text
  * Défaut: Aucun
  * Description: Le nom du shipping tel qu'il est définit dans votre compte
* Paramètre: {{row_name}}
  * Requis: Non
  * Type: text
  * Défaut: Aucun
  * Description: Nom de la ligne
* Paramètre: {{row_notes}}
  * Requis: non
  * Type: text
  * Défaut: Aucun
  * Description: Description de la ligne
* Paramètre: {{row_unit}}
  * Requis: Oui
  * Type: text
  * Défaut: Aucun
  * Description: unité de la ligne, tel quelle est définit dans votre compte (ex, kg, m3)
* Paramètre: {{row_unit_amount}}
  * Requis: Oui
  * Type: int, if 0 use string (ex : "0") 
  * Défaut: Aucun
  * Description: Montant unitaire de la ligne
* Paramètre: {{row_purchaseAmount}}
  * Requis: Oui
  * Type: int, if 0 use string (ex : "0") 
  * Défaut: Aucun
  * Description: Montant d’achat
* Paramètre: {{row_taxid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la TVA
* Paramètre: {{row_tax2id}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la TVA (à utiliser si hasDoubleVat est égal à Y)
* Paramètre: {{row_useEcoTax}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Utiliser ou non l'éco taxe
* Paramètre: {{row_ecoTaxType}}
  * Requis: Non
  * Type: enum('inc', 'exc')
  * Défaut: Aucun
  * Description: Type de votre éco taxe. Inc : Dont, Exc : En sus
* Paramètre: {{row_ecoTax}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant de votre éco taxe
* Paramètre: {{row_quantity}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Quantité
* Paramètre: {{row_option}}
  * Requis: Non
  * Type: string
  * Défaut: N
  * Description: Y, N
* Paramètre: {{row_discount}}
  * Requis: Non
  * Type: float
  * Défaut: Aucun
  * Description: Montant/pourcentage de votre remise. Si c'est un pourcentage, la valeur doit être un entier compris entre 0 et 100
* Paramètre: {{row_discountUnit}}
  * Requis: Non
  * Type: enum
  * Défaut: Aucun
  * Description: amount, percent
* Paramètre: {{row_whid}}
  * Requis: Non
  * Type: int
  * Défaut: Entrepôt par défaut du compte
  * Description: Entrepôt à utiliser pour impacter les stocks
* Paramètre: {{row_serial}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro de série du produit. Obligatoire si votre produit utilise les stocks sérialisés et que le document impacte les stocks
* Paramètre: {{row_barcode}}
  * Requis: Non
  * Type: string
  * Défaut: Si votre produit possède un seul et unique code barre, il sera utilisé par défaut. Sinon, aucun
  * Description: Code barre de votre produit
* Paramètre: {{row_comment}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Commentaire
* Paramètre: {{row_title}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Titre
* Paramètre: {{paydate_id}}
  * Requis: Oui, si le tableau 'paydate' existe
  * Type: enum
  * Défaut: Aucun
  * Description: ID du délai de règlement souhaité
* Paramètre: {{paydate_xdays}}
  * Requis: Non
  * Type: int
  * Défaut: Valeur par défaut dans votre compte
  * Description: Nombre jours souhaité avant de passer la facture en retard
* Paramètre: {{paydate_endmonth}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Valeur par défaut dans votre compte
  * Description: Passe la facture en retard à la fin du mois
* Paramètre: {{paydate_scaledDetail}}
  * Requis: Oui, si le délai de règlement choisi possède le syscode 'scaled'
  * Type: string
  * Défaut: Valeur par défaut dans votre compte
  * Description: Détail du paiement échelonné
* Paramètre: {{paydate_custom}}
  * Requis: Oui, si le délai de règlement choisi possède le syscode 'custom'
  * Type: timestamp
  * Défaut: Valeur par défaut dans votre compte
  * Description: Date à laquelle la facture doit passer en retard
* Paramètre: Paramètre d'une échéance de paiement, Obligatoire si le document utilise des échéances multiples(paydate syscode : deadlines)
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{date}}
  * Requis: Oui, en création
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de l'échéance de paiement
* Paramètre: {{amount}}
  * Requis: Oui, en création
  * Type: float
  * Défaut: Aucun
  * Description: Montant de l'échéance de paiement
* Paramètre: Paramètres de livraison
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{shipping_nbParcels}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Nombre de colis
* Paramètre: {{shipping_weight}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Poids total
* Paramètre: {{shipping_weightUnit}}
  * Requis: Non
  * Type: enum('g', 'kg')
  * Défaut: g
  * Description: Unité du poids total
* Paramètre: {{shipping_volume}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Volume
* Paramètre: {{shipping_trackingNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du colis
* Paramètre: {{shipping_trackingUrl}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: URL de suivi
* Paramètre: {{shipping_date}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de livraison estimée
* Paramètre: Paramètres spéciaux
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{enable_draft_number}}
  * Requis: Non
  * Type: enum('0','1')
  * Défaut: Account default value
  * Description: Numérotation brouillon
* Paramètre: {{orderIdent}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro bon de commande


Retour
------

```
{"response":{"doc_id":{{docid}}},"error":"","status":"success"}
```


Requête
-------

#### Attention

La structure d'une ligne peut varier en fonction de son type. De plus il faut penser à conserver le {{row\_id}} pour les anciennes lignes. Les nouvelles lignes n'en n'ont pas besoin.

Si vous utilisez des échéances de paiements multiples, assurez vous que le montant total de ces échéances soit égales au montant total TTC du document

```
$request = array(
    'method' => 'Document.update',
    'params' => Array (
        'document' => Array (
            'doctype'            => {{doctype}},
            'ident'              => {{ident}},
            'displayedDate'      => {{displayedDate}},
            'expireDate'         => {{expireDate}},
            'subject'            => {{document_subject}},
            'notes'              => {{document_notes}},
            'tags'               => {{document_tags}},
            'displayShipAddress' => {{displayshippaddress_enum}},
            'showParentOnPdf'    => {{showParentOnPdf}}
            'conditionDocShow'   => {{conditionDocShow}}
            'enabledPaymentGateways' => {{enabledPaymentGateways}}
        ),
        'docid' => {{docid}},
        'thirdaddress' => array(
            'id' => {{thirdaddress_id}}
        ),
        'shipaddress' => array(
            'id' => {{shipaddress_id}}
        ),
		'paydate'   => array(
            'id'            => {{paydate_id}},
            'xdays'         => {{paydate_xdays}},
            'endmonth'      => {{paydate_endmonth}},
            'scaledDetails'     => {{paydate_scaledDetails}},
            'custom'        => {{paydate_custom}}
			'scaledDetails'		=> {{paydate_scaledDetails}},
			'deadlines' => array(
				array(
					'id'		=> {{id}},
					'action'	=> {{action}},
					'date'		=> {{date}},
					'amount'	=> {{amount}},
				),
				array(
					'id'		=> {{id}},
					'action'	=> {{action}},
					'date'		=> {{date}},
					'amount'	=> {{amount}},
				),
			)
        ),
        'row' => Array (
            '1' => Array (
                'row_id'        => {{row_id}},
                'row_type'      => 'packaging',
                'row_packaging'     => {{packagin_name}},
                'row_name'      => {{row_name}},
                'row_unitAmount'    => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'        => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'      => {{row_option}}
            ),
            '2' => Array (
                'row_id'        => {{row_id}},
                'row_type'      => 'shipping',
                'row_shipping'      => {{shipping_name}},
                'row_name'      => {{row_name}},
                'row_unitAmount'    => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'        => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'      => {{row_option}}
            ),
            '3' => Array (
                'row_id'        => {{row_id}},
                'row_type'      => 'item',
                'row_linkedid'      => {{catalogue_id_link}},
                'row_name'      => {{row_name}},
                'row_notes'     => {{row_notes}},
                'row_unit'      => {{row_unit}},
                'row_unitAmount'    => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'        => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'      => {{row_option}},
                'row_purchaseAmount'    => {{row_purchaseAmount}}
            ),
            '4' => Array (
                'row_id'        => {{row_id}},
                'row_type'      => 'once',
                'row_name'      => {{row_name}},
                'row_notes'     => {{row_notes}},
                'row_unit'      => {{row_unit}},
                'row_unitAmount'    => {{row_unit_amount}},
                'row_taxid'     => {{row_taxid}},
                'row_tax2id'        => {{row_tax2id}},
                'row_qt'        => {{row_quantity}},
                'row_isOption'      => {{row_option}}
            ),
            '5' => array(
                'row_id'    => {{row_id}},
                'row_type'  => 'sum'
            ),
            '6' => array(
                'row_id'    => {{row_id}},
                'row_type'  => 'title',
                'row_title' => {{row_title}}
            ),
            '7' => array(
                'row_id'    => {{row_id}},
                'row_type'  => 'comment',
                'row_comment'   => {{row_comment}}
            ),
            '8' => array(
                'row_id'    => {{row_id}},
                'row_type'  => 'break'
            ),
            '9' => array(
                'row_id'    => {{row_id}},
                'row_type'  => 'empty'
            )
        )
    )
);
```


Paramètres
----------

Idem que Document.create



* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du document
* Parametre: {{row_id}}
  * requis: non
  * type: int
  * default: aucun
  * Description: identifiant de la ligne
* Parametre: Paramètre d'une échéance de paiement, Obligatoire si le document utilise des échéances multiples(paydate syscode : deadlines)
  * requis: 
  * type: 
  * default: 
  * Description: 
* Parametre: {{id}}
  * requis: Oui, si l'action est update ou remove
  * type: int
  * default: Aucun
  * Description: Identifiant de l'échéance
* Parametre: {{expireDate}}
  * requis: non
  * type: timestamp
  * default: aucun
  * Description: Date de validité du document (devis et proforma seulement
* Parametre: {{date}}
  * requis: Oui, si l'action est add
  * type: timestamp
  * default: Aucun
  * Description: Date de l'échéance de paiement
* Parametre: {{amount}}
  * requis: Oui, si l'action est add
  * type: float
  * default: Aucun
  * Description: Montant de l'échéance de paiement
* Parametre: {{action}}
  * requis: Oui
  * type: enum('add','update','delete')
  * default: update
  * Description: Action a éffectuer sur l'échéance de paiement (ajout, modification, suppression)
* Parametre: {{enabledPaymentGateways}}
  * requis: Non
  * type: array( enum(paypal, stripe, atos, adyen) )
  * default: Les passerelles de paiement par défaut
  * Description:                 Liste des passerelles de paiement à activer pour le document                                Si spécifiée, même à vide, elle sera utilisée pour le document, à la place des passerelles définies dans vos préférences de module            


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Si vous utilisez des échéances de paiements multiples, assurez vous que le montant total de ces échéances soit égales au montant total TTC du document

Requête
-------

```
$request = array(
    'method' => 'Document.updateDeadlines',
    'params' => Array (
'docid'		=> {{docid}},
'doctype'	=> {{doctype}},
'deadlines' => array(
		array(
			'id'		=> {{id}},
			'date'		=> {{date}},
			'amount'	=> {{amount}},
			'action'	=> {{action}},
		),
		array(
			'id'		=> {{id}},
			'date'		=> {{date}},
			'amount'	=> {{amount}},
			'action'	=> {{action}},
		),
	),
    )
);
```


Paramètres
----------



* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du document
* Parametre: {{doctype}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Type du document de vente
* Parametre: Paramètre d'une échéance de paiement, Obligatoire
  * requis: 
  * type: 
  * default: 
  * Description: 
* Parametre: {{id}}
  * requis: Oui, si l'action est update ou remove
  * type: int
  * default: Aucun
  * Description: Identifiant de l'échéance
* Parametre: {{date}}
  * requis: Oui, si l'action est add
  * type: timestamp
  * default: Aucun
  * Description: Date de l'échéance de paiement
* Parametre: {{amount}}
  * requis: Oui, si l'action est add
  * type: float
  * default: Aucun
  * Description: Montant de l'échéance de paiement
* Parametre: {{action}}
  * requis: Oui
  * type: enum('add','update','delete')
  * default: update
  * Description: Action a éffectuer sur l'échéance de paiement (ajout, modification, suppression)


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Document.updateOwner',
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du document de vente|
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request =  array(
    'method' => 'Document.updateFields',
    'params' => array(
        'id'    => {{id}}
        'document'  => array(
            'ident'         => {{ident}},
            'tags'          => {{tags}},
            'expireDate'    => {{expireDate}},
            'thirdident' => {{thirdident}},
            'enabledPaymentGateways' => {{enabledPaymentGateways}}
        ),
        'shipping'  => array(
            'nbParcels'     => {{shipping_nbParcels}},
            'weight'        => {{shipping_weight}},
            'weightUnit'        => {{shipping_weightUnit}},
            'volume'        => {{shipping_volume}},
            'trackingNumber'    => {{shipping_trackingNumber}},
            'trackingUrl'       => {{shipping_trackingUrl}},
            'date'          => {{shipping_date}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document de vente
* Paramètre: {{ident}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du document de vente
* Paramètre: {{tags}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau de smart-tags
* Paramètre: {{expireDate}}
  * Requis: non
  * Type: timestamp
  * Défaut: aucun
  * Description: Date de validité du document (devis et proforma seulement
* Paramètre: {{thirdident}}
  * Requis: non
  * Type: string
  * Défaut: aucun
  * Description: Réf client
* Paramètre: Paramètres de livraison
  * Requis: 
  * Type: 
  * Défaut: 
  * Description: 
* Paramètre: {{shipping_nbParcels}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Nombre de colis
* Paramètre: {{shipping_weight}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Poids total
* Paramètre: {{shipping_weightUnit}}
  * Requis: Non
  * Type: enum('g', 'kg')
  * Défaut: g
  * Description: Unité du poids total
* Paramètre: {{shipping_volume}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Volume
* Paramètre: {{shipping_trackingNumber}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro du colis
* Paramètre: {{shipping_trackingUrl}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: URL de suivi
* Paramètre: {{shipping_date}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date de livraison estimée
* Paramètre: {{enabledPaymentGateways}}
  * Requis: Non
  * Type: array( enum(paypal, stripe, atos, adyen) )
  * Défaut: Les passerelles de paiement par défaut
  * Description:                 Liste des passerelles de paiement à activer pour le document                                Si spécifiée, même à vide, elle sera utilisée pour le document, à la place des passerelles définies dans vos préférences de module            


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Document.getLinkedDocuments',
    'params' => array (
        'docid'     => {{docid}},
        'doctype'   => {{doctype}}
    ),
);
```


Paramètres
----------


|Parametre  |requis|type  |default|Description                     |
|-----------|------|------|-------|--------------------------------|
|{{docid}}  |Oui   |int   |Aucun  |Identifiant du document de vente|
|{{doctype}}|oui   |string|Aucun  |Type du document de vente       |


Retour
------

```
{"response":{"creditnote_955650":{"corpid":"1869","status":"ok","parenttype":"invoice","parentid":"955649","childtype":"creditnote","childid":"955650","more":"{\"linkedAmount\":\"10\"}","id":"955650","ident":"AVR-20151116-00056","linkedtype":"creditnote","displayedDate":"2015-11-16","thirdid":"127242","thirdname":"ANPES","totalAmount":"50.000000000","currencysymbol":"\u20ac","created":"2015-11-16 17:59:31","subject":"","dpid":"3998","step":"","doctype":"creditnote"},"creditnote_955651":{"corpid":"1869","status":"ok","parenttype":"invoice","parentid":"955649","childtype":"creditnote","childid":"955651","more":"{\"linkedAmount\":\"20\"}","id":"955651","ident":"AVR-20151116-00057","linkedtype":"creditnote","displayedDate":"2015-11-16","thirdid":"127242","thirdname":"ANPES","totalAmount":"50.000000000","currencysymbol":"\u20ac","created":"2015-11-16 17:59:57","subject":"","dpid":"3999","step":"","doctype":"creditnote"}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array(
    'method' => 'Document.getTree',
    'params' => array (
        'docid'     => {{docid}},
        'doctype'   => {{doctype}}
    ),
);
```


Paramètres
----------


|Parametre  |requis|type  |default|Description                     |
|-----------|------|------|-------|--------------------------------|
|{{docid}}  |Oui   |int   |Aucun  |Identifiant du document de vente|
|{{doctype}}|oui   |string|Aucun  |Type du document de vente       |


Retour
------

```
{"response":{"957599":{"id":"957599","doctype":"estimate","level":0,"json_parents":"[\"0\"]","left":30,"top":30},"957614":{"id":"957614","doctype":"invoice","level":1,"json_parents":"[\"957599\"]","left":330,"top":30},"957617":{"id":"957617","doctype":"delivery","level":2,"json_parents":"[\"957614\"]","left":630,"top":30}},"error":"","status":"success"}
```


doc\_api\_alert\_document.updatestep

Requete
-------

```
$request =  array(
    'method' => 'Document.updateStep',
    'params' => array (
        'docid' => {{docid}},
        'document' => array(
            'doctype'   => {{doctype}},
            'step'      => {{step}}
        )
    ),
);
```


Paramètres
----------



* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du document
* Parametre: {{doctype}}
  * requis: oui
  * type: enum('invoice', 'estimate', 'proforma', 'delivery', 'order', 'creditnote')
  * default: aucun
  * Description: Type de document
* Parametre: {{step}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Voir les étapes disponiblent pour les documents dans 'Règles et principes'


Retour
------

```
{"response":null,"error":"","status":"success"}
```


doc\_api\_alert\_document.validate

Requete
-------

```
$request =  array(
    'method' => 'Document.validate',
    'params' => array (
        'docid'   => {{docid}},
        'date'    => {{date}}
    ),
);
```


Paramètres
----------


|Parametre|requis|type     |default     |Description                  |
|---------|------|---------|------------|-----------------------------|
|{{docid}}|oui   |int      |aucun       |identifiant du document      |
|{{date}} |non   |timestamp|Date du jour|La date souhaitée du document|


Retour
------

```
        {
            "response":{
                "ident":"FACT-OOO1"
            },
            "error":"",
            "status":"success"
        }
    
```


Requete
-------

```
$request =  array(
    'method' => 'Document.updateDeliveryStep',
    'params' => array (
        'docid' => {{docid}},
        'document' => array(
            'step'      => {{step}}
        )
    ),
);
```


Paramètres
----------



* Parametre: {{docid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document
* Parametre: {{step}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Valeurs possibles : (none, wait, sent) pour les bons de livraison, (none, wait, picking, partialsent, sent) pour les bons de commande


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Document.sendDocByMail',
    'params' => array (
        'docid' => {{docid}},
        'email' => array(
            'doctype'       => {{doctype}},
            'emails'        => {{email_array}},
            'addsendertoemail'  => {{addsendertoemail}},
            'includeAttachments'    => {{includeAttachments}},
            'scheduled_timestamp'   => {{scheduled_timestamp}}
        )
    )
);
```


Paramètres
----------



* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du document
* Parametre: {{doctype}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Voir les différents type de documents
* Parametre: {{email_array}}
  * requis: oui
  * type: array
  * default: aucun
  * Description: un tableau contenant les addresses mails
* Parametre: {{addsendertoemail}}
  * requis: non
  * type: string
  * default: N
  * Description: Ajouter le sender en copie, Y ou N
* Parametre: {{includeAttachments}}
  * requis: Non
  * type: string
  * default: N
  * Description: Ajouter les pièces jointes au mail. Valeurs possible : Y ou N
* Parametre: {{scheduled_timestamp}}
  * requis: Non
  * type: timestamp
  * default: Envoi immédiat
  * Description: Date et heure d'envoi du mail. Uniquement à fournir pour un envoi de mail programmé.


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.getPaymentList',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid'     => {{docid}}
        )
    );
                
```


Paramètres
----------


|Parametre  |requis|type  |default|Description             |
|-----------|------|------|-------|------------------------|
|{{doctype}}|oui   |string|aucun  |Type du document        |
|{{docid}}  |oui   |int   |aucun  |Identifiant de documents|


Retour
------

```
    {"response":{"_xml_childtag":"payment","0":{"relatedId":"7793","relatedType":"payment","relatedDate":"2012-07-04","relatedAmount":"1250.000000000","relatedMedium":"4744","relatedMediumTxt":"ch\u00e8que","relatedIdent":"0156489","relatedNotes":"il a pay\u00e9 cher","formatted_relatedAmount":"1 250,00 \u20ac","formatted_relatedDate":"04\/07\/2012","html_relatedNotes":"il a pay\u00e9 cher","relatedTypeText":"Paiement","relatedFullLabel":"Paiement N\u00b0 0156489"},"1":{"relatedId":"7794","relatedType":"payment","relatedDate":"2012-07-04","relatedAmount":"1001.000000000","relatedMedium":"4745","relatedMediumTxt":"virement bancaire","relatedIdent":"12345","relatedNotes":"1001\u20ac","formatted_relatedAmount":"1 001,00 \u20ac","formatted_relatedDate":"04\/07\/2012","html_relatedNotes":"1001\u20ac","relatedTypeText":"Paiement","relatedFullLabel":"Paiement N\u00b0 12345"},"2":{"relatedId":"7803","relatedType":"payment","relatedDate":"2012-07-04","relatedAmount":"100.000000000","relatedMedium":"4746","relatedMediumTxt":"esp\u00e8ces","relatedIdent":"0156489","relatedNotes":"il a pay\u00e9","formatted_relatedAmount":"100,00 \u20ac","formatted_relatedDate":"04\/07\/2012","html_relatedNotes":"il a pay\u00e9","relatedTypeText":"Paiement","relatedFullLabel":"Paiement N\u00b0 0156489"},"3":{"relatedId":"7804","relatedType":"payment","relatedDate":"2012-07-04","relatedAmount":"100.000000000","relatedMedium":"4746","relatedMediumTxt":"test","relatedIdent":"01","relatedNotes":"","formatted_relatedAmount":"100,00 \u20ac","formatted_relatedDate":"04\/07\/2012","html_relatedNotes":"","relatedTypeText":"Paiement","relatedFullLabel":"Paiement N\u00b0 01"},"dueAmount":"380500.680000000","formatted_dueAmount":"380500,68"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.getForCopy',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid'     => {{docid}},
            'thirdid'       => {{thirdid}}
        )
    );
                
```


Paramètres
----------



* Parametre: {{doctype}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Type du document
* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant de documents
* Parametre: {{thirdid}}
  * requis: Non
  * type: int
  * default: aucun
  * Description: Identifiant du third. Si le paramètre est vide, le third du document d'origine sera conservé.


Retour
------

```
    {"response":{"id":"11027","ownerFullName":"M. Antoine Loux","status":"ok","filename":"FACT-20120321-00098_1333530803.5021","fileid":"2157","nbpages":"1","ident":"FACT-20120321-00098","thirdident":"","thirdid":"2655","contactId":"0","contactName":"","displayedDate":"04\/04\/2012","currencysymbol":"\u20ac","subject":"test objet","corpaddressid":"36059","thirdaddressid":"36060","shipaddressid":"36061","rowsAmount":"191.725000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"191.725000000","offerAmount":"0.000000000","rowsAmountAllInc":"191.725000000","packagingsAmount":"49.900000000","shippingsAmount":"60.000000000","totalAmountTaxesFree":"301.625000000","taxesAmountSum":"59.118500000","taxesAmountDetails":"a:1:{s:12:\"19.600000000\";s:12:\"59.118500000\";}","totalAmount":"360.743500000","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","saveThirdPrefs":"N","displayShipAddress":"N","corpid":"2","ownerid":"2","linkedtype":"invoice","linkedid":"9516","created":"2012-03-21 14:43:18","prefsid":"14683","parentid":"0","docmapid":"11603","hasVat":"Y","doctypeid":"9516","step":"draft","isDeposit":"N","dueAmount":"360.743500000","countrycode":"FR","globalDiscount":"0.000000000","globalDiscountUnit":"percent","globalOffer":"0.000000000","useDeposit":"N","deposit":"0.000000000","depositUnit":"percent","discountByRows":"N","addPdfToEmail":"Y","addGtuToEmail":"Y","addSenderToEmail":"N","hideColumnName":"N","hideColumnNotes":"N","hideColumnUnit":"N","hideColumnTaxFree":"N","hideColumnTax":"N","hideColumnTaxInc":"N","hideColumnQt":"N","hideTotalTaxesFree":"N","hideTotal":"N","hidePayment":"N","hideTaxes":"N","hasPenaltyRetardWarning":"Y","penaltyRetardWarningText":"La loi n\u00b092\/1442 du 31 d\u00e9cembre 1992 nous fait l'obligation de vous indiquer que le non respect des conditions de paiement entra\u00eene des int\u00e9r\u00eats de retard suivant modalit\u00e9s et taux minima d\u00e9finis par la loi.","showContactOnPdf":"N","hasCorpAgree":"N","hasThirdAgree":"N","notes":"test note","nbExpireDays":"30","displayAmounts":"Y","display_footer":"Y","display_ident":"Y","display_email":"Y","display_tel":"Y","display_mobile":"Y","display_fax":"Y","displayBankAccount":"Y","displayIBAN":"Y","displayBIC":"Y","hideTips":"N","hideOrdersDocs":"N","hideDeliveriesDocs":"N","hideProformaDocs":"N","emailsSentFromCorp":"Y","isdefault":"Y","name":"default","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"custom","bgMode":"all","bgFile":"custom","bgCustomFile":"","hideTopPart":"N","hideFill":"N","colorFill":"000000","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","type":"invoice","map":{"docid":"11027","id":"11603","rows":{"_xml_childtag":"row","16562":{"parentid":"0","status":"ok","rank":"1","type":"packaging","linkedid":"0","name":"","notes":"","unitAmount":"4.990000000","unitid":"2750","unitText":"","qt":"10.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"49.900000000","taxAmount":"9.780400000","purchaseAmount":"0.000000000","id":"16562","discountPercent":"0.000000000","formatted_unitAmount":"4,99","formatted_qt":"10,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"49,90 \u20ac","formatted_taxAmount":"9,78","formatted_discountPercent":"0,00"},"16563":{"parentid":"0","status":"ok","rank":"2","type":"shipping","linkedid":"0","name":"","notes":"","unitAmount":"5.000000000","unitid":"2751","unitText":"","qt":"12.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"60.000000000","taxAmount":"11.760000000","purchaseAmount":"0.000000000","id":"16563","discountPercent":"0.000000000","formatted_unitAmount":"5,00","formatted_qt":"12,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"60,00 \u20ac","formatted_taxAmount":"11,76","formatted_discountPercent":"0,00"},"16648":{"parentid":"0","status":"ok","rank":"3","type":"item","linkedid":"13","name":"item","notes":"item","unitAmount":"41.800000000","unitid":"70","unitText":"forfaitaire","qt":"1.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"41.800000000","taxAmount":"8.192800000","purchaseAmount":"0.000000000","id":"16648","discountPercent":"0.000000000","formatted_unitAmount":"41,80","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"41,80 \u20ac","formatted_taxAmount":"8,19","formatted_discountPercent":"0,00"},"16649":{"parentid":"0","status":"ok","rank":"4","type":"item","linkedid":"14","name":"service","notes":"service","unitAmount":"19.990000000","unitid":"70","unitText":"forfaitaire","qt":"7.500000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"149.925000000","taxAmount":"29.385300000","purchaseAmount":"0.000000000","id":"16649","discountPercent":"0.000000000","formatted_unitAmount":"19,99","formatted_qt":"7,50","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"149,93 \u20ac","formatted_taxAmount":"29,39","formatted_discountPercent":"0,00"},"16650":{"parentid":"0","status":"ok","rank":"5","type":"item","linkedid":"2619","name":"test","notes":"test","unitAmount":"0.000000000","unitid":"71","unitText":"m2","qt":"1.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"Y","totalAmount":"0.000000000","taxAmount":"0.000000000","purchaseAmount":"0.000000000","id":"16650","discountPercent":"0.000000000","formatted_unitAmount":"0,00","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"0,00 \u20ac","formatted_taxAmount":"0,00","formatted_discountPercent":"0,00"}}},"relateds_amount":"0.000000000","relateds":{"_xml_childtag":"related"},"corpAddress":{"name":"Rue du four","part1":"10 rue du four","part2":"","zip":"79200","town":"Adilly","townid":"3835224","countrycode":"FR","originalid":"0","id":"36059","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"10 rue du four"},"1":{"txt":"79200 - Adilly"},"2":{"txt":"France"}}},"hasThird":"Y","thirdType":"corporation","thirdAddress":{"name":"test2","part1":"2 rue du moulin","part2":"","zip":"17000","town":"la rochelle","townid":"0","countrycode":"FR","originalid":"0","id":"36060","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"2 rue du moulin"},"1":{"txt":"17000 - la rochelle"},"2":{"txt":"France"}}},"shipAddress":{"name":"","part1":"","part2":"","zip":"","town":"","townid":"0","countrycode":"FR","originalid":"0","id":"36061","partsToDisplay":{"_xml_childtag":"part","0":{"txt":""},"1":{"txt":" - "},"2":{"txt":"France"}}},"canWriteDocNamespace":"Y","logoFile":"","logoFile_system":"","logoHeight":0,"logoWidth":0,"label":"Facture","fullIdent":"Facture N\u00b0 FACT-20120321-00098","numformat":{"name":"fr","decimals":",","thousands":" ","currencypos":"right","currencysymbol":"\u20ac","precision":"2"},"numformats":{"_xml_childtag":"format","0":{"label":"fran\u00e7ais [1 234,57 #]","decimals":",","thousands":" ","currencypos":"right","name":"fr"},"1":{"label":"anglais [# 1,234.57]","decimals":".","thousands":",","currencypos":"left","name":"en"}},"precisions":{"_xml_childtag":"precision","0":{"value":0},"1":{"value":1},"2":{"value":2},"3":{"value":3},"4":{"value":4},"5":{"value":5},"6":{"value":6},"7":{"value":7},"8":{"value":8},"9":{"value":9}},"currencies":{"1":{"name":"EUR","symbol":"\u20ac","rank":"1","enabled":"Y","id":"1"},"2":{"name":"USD","symbol":"$","rank":"2","enabled":"Y","id":"2"},"4":{"name":"PND","symbol":"\u00a3","rank":"3","enabled":"Y","id":"4"},"3":{"name":"YEN","symbol":"\u00a5","rank":"4","enabled":"Y","id":"3"},"5":{"name":"CFA","symbol":"CFA","rank":"9","enabled":"Y","id":"5"},"_xml_childtag":"currency"},"currencypositions":{"_xml_childtag":"currencypos","0":{"value":"both","label":"gauche et droite"},"1":{"value":"left","label":"gauche"},"2":{"value":"right","label":"droite"},"3":{"value":"none","label":"masqu\u00e9e"}},"hasRelateds":"Y","corpName":"Antoine Loux","thirdName":"Alain","thirdVatNum":"","docspeaker_text":"Votre contact","paydate_text":"\u00e0 90 jours","paydate_custom":"03\/07\/2012","paymediums_text":"a:1:{i:0;s:7:\"ch\u00e8que\";}","paycheckorder_text":"Service comptabilit\u00e9","paybankaccount_text":"","currency":"1","num_currencypos":"right","docspeaker":"95","doclayout":"2","num_name":"fr","num_decimals":",","num_thousands":" ","num_precision":"2","defaultTax":"66","defaultUnit":"70","defaultShipping":"17","defaultPackaging":"15","paydate":"81","paydate_xdays":"0","paydate_endmonth":"N","paydate_scaledDetails":"","paymediums":{"86":{"id":"86","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"check","rank":"1","value":"ch\u00e8que","checked":"Y"},"87":{"id":"87","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"transfer","rank":"2","value":"virement bancaire"},"88":{"id":"88","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cash","rank":"3","value":"esp\u00e8ces"},"89":{"id":"89","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cb","rank":"4","value":"carte bancaire"},"90":{"id":"90","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"pick","rank":"5","value":"pr\u00e9l\u00e8vement"},"91":{"id":"91","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"bor","rank":"6","value":"Billet \u00e0 Ordre Relev\u00e9 (BOR)"},"92":{"id":"92","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"tip","rank":"7","value":"Titre Interbancaire de Paiement (TIP)"},"93":{"id":"93","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"lcr","rank":"8","value":"Lettre de Change Relev\u00e9 (LCR)"},"_xml_childtag":"paymedium"},"paymedium_other":"","paycheckorder":"94","paybankaccount":"0","weightUnits":{"_xml_childtag":"weightUnit","0":{"value":"mg"},"1":{"value":"g"},"2":{"value":"kg"}},"hideableColumns":{"_xml_childtag":"column","0":{"id":"name","name":"hideColumnName","label":"Masquer la colonne \"Nom\/Code\"","checked":"N"},"1":{"id":"notes","name":"hideColumnNotes","label":"Masquer la colonne \"Libell\u00e9\"","checked":"N"},"2":{"id":"unit","name":"hideColumnUnit","label":"Masquer la colonne \"Co\u00fbt unitaire HT\"","checked":"N"},"3":{"id":"tax","name":"hideColumnTax","label":"Masquer la colonne \"TVA\"","checked":"N"},"4":{"id":"qt","name":"hideColumnQt","label":"Masquer la colonne \"Qt\"","checked":"N"},"5":{"id":"amount","name":"hideColumnTaxFree","label":"Masquer la colonne \"Montant HT\"","checked":"N"},"6":{"id":"listTotal","name":"hideTotal","label":"Masquer les totaux","checked":"N"},"7":{"id":"payment","name":"hidePayment","label":"Masquer infos paiement","checked":"N"}},"doclayouts":{"_xml_childtag":"doclayout","2":{"corpid":"2","ownerid":"2","status":"ok","isdefault":"Y","name":"default","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"custom","bgMode":"all","bgFile":"custom","bgCustomFile":"","hideTopPart":"N","hideFill":"N","colorFill":"000000","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","id":"2"}},"currencyleft":"","currencyright":"\u20ac","discountUnits":{"_xml_childtag":"discountUnit","0":{"value":"percent","label":"%"},"1":{"value":"amount","label":"\u20ac"}},"taxes":{"66":{"id":"66","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"19,60"},"67":{"id":"67","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"5,50"},"68":{"id":"68","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"2,10"},"69":{"id":"69","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"0,00"},"_xml_childtag":"tax"},"shippings":{"17":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"1","name":"shipping","notes":"shipping","unitAmount":"13.900000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"17","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"13.900000000","formatted_unitAmount":"13.900000000","formatted_unitAmount_ht":"13.900000000","formatted_unitAmount_ttc":13.9,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"13.900000000"},"18":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"2","name":"shipping","notes":"shipping","unitAmount":"4.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"18","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"4.990000000","formatted_unitAmount":"4.990000000","formatted_unitAmount_ht":"4.990000000","formatted_unitAmount_ttc":4.99,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"4.990000000"},"2751":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"3","name":"sApi","notes":"","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"0.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"2751","typeLabel":"transport","nameSample":"sApi","notesSample":"","notesHTMLSample":"","isTaxesFree":"HT","unitAmountTaxesFree":"0.000000000","formatted_unitAmount":"0.000000000","formatted_unitAmount_ht":"0.000000000","formatted_unitAmount_ttc":0,"formatted_qt":"0.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"0.000000000 ","formatted_full_unitAmount":"0.000000000"},"_xml_childtag":"shipping"},"packagings":{"15":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"1","name":"packaging","notes":"packaging","unitAmount":"3.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"4.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"15","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"3.990000000","formatted_unitAmount":"3.990000000","formatted_unitAmount_ht":"3.990000000","formatted_unitAmount_ttc":3.99,"formatted_qt":"4.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"4.000000000 ","formatted_full_unitAmount":"3.990000000"},"16":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"2","name":"packaging","notes":"packaging","unitAmount":"29.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"16","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"29.990000000","formatted_unitAmount":"29.990000000","formatted_unitAmount_ht":"29.990000000","formatted_unitAmount_ttc":29.99,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"29.990000000"},"2750":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"3","name":"pApi","notes":"","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"0.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"2750","typeLabel":"emballage","nameSample":"pApi","notesSample":"","notesHTMLSample":"","isTaxesFree":"HT","unitAmountTaxesFree":"0.000000000","formatted_unitAmount":"0.000000000","formatted_unitAmount_ht":"0.000000000","formatted_unitAmount_ttc":0,"formatted_qt":"0.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"0.000000000 ","formatted_full_unitAmount":"0.000000000"},"_xml_childtag":"packaging"},"units":{"70":{"id":"70","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"forfaitaire"},"71":{"id":"71","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"m2"},"72":{"id":"72","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"m3"},"73":{"id":"73","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"kg"},"74":{"id":"74","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"5","value":"tonne"},"_xml_childtag":"unit"},"canWriteShippings":"Y","canWritePackagings":"Y","canWriteUnits":"Y","canWriteTaxes":"Y","canWritePaydates":"Y","paydates":{"75":{"id":"75","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"custom","rank":"1","value":"\u00e0 date"},"76":{"id":"76","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"onorder","rank":"3","value":"\u00e0 la commande"},"77":{"id":"77","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"endmonth","rank":"4","value":"fin de mois"},"78":{"id":"78","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"30days","rank":"5","value":"\u00e0 30 jours"},"79":{"id":"79","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"45days","rank":"6","value":"\u00e0 45 jours"},"80":{"id":"80","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"60days","rank":"7","value":"\u00e0 60 jours"},"81":{"id":"81","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"90days","rank":"8","value":"\u00e0 90 jours"},"82":{"id":"82","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"xdays","rank":"9","value":"saisir un nombre de jours"},"83":{"id":"83","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"scaled","rank":"10","value":"paiement \u00e9chelonn\u00e9"},"84":{"id":"84","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"received","rank":"11","value":"\u00e0 r\u00e9ception"},"85":{"id":"85","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"none","rank":"11","value":"aucun"},"_xml_childtag":"paydate"},"canWritePaymediums":"Y","canWritePayCheckOrders":"Y","paycheckorders":{"94":{"id":"94","corpid":"2","list":"paycheckorders","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Service comptabilit\u00e9"},"_xml_childtag":"paycheckorder"},"bankaccounts":{"_xml_childtag":"bankaccount"},"canWriteDocSpeakers":"Y","docspeakers":{"95":{"id":"95","corpid":"2","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Votre contact"},"96":{"id":"96","corpid":"2","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"Votre r\u00e9f\u00e9rent"},"_xml_childtag":"docspeaker"},"formatted_rowsAmount":"191,73 \u20ac","formatted_discountPercent":"0,00","formatted_discountAmount":"0,00 \u20ac","formatted_rowsAmountDiscounted":"191,73 \u20ac","formatted_offerAmount":"0,00 \u20ac","formatted_rowsAmountAllInc":"191,73 \u20ac","formatted_packagingsAmount":"49,90 \u20ac","formatted_shippingsAmount":"60,00 \u20ac","formatted_totalAmountTaxesFree":"301,63 \u20ac","formatted_taxesAmountSum":"59,12 \u20ac","formatted_totalAmount":"360,74 \u20ac","formatted_shippingWeight":"0,00 \u20ac","formatted_shippingVolume":"0,00 \u20ac","formatted_globalDiscount":"0,00 \u20ac","formatted_globalOffer":"0,00","formatted_deposit":"0,00 \u20ac","formatted_dueAmount":"360,74 \u20ac","tel":"0620365895","fax":"","email":"[email protected]","mobile":"","formatted_taxesAmountDetails":"a:1:{s:5:\"19,60\";s:9:\"59,12 \u20ac\";}","corpFooter":"Antoine [email protected]","tags":[{"id":"112","corpid":"2","category":"doc","created":"2012-04-04 11:13:29","word":"tags_test"}]},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.getModel',
        'params' => array(
            'docid'     => {{docid}},
            'newDoctype'        => {{newDoctype}}
            'thirdid'       => {{thirdid}},
            'updatePrice'       => {{updatePrice}}
        )
    );
                
```


Paramètres
----------



* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant de documents
* Parametre: {{thirdid}}
  * requis: Non
  * type: int
  * default: aucun
  * Description: Identifiant du third. Si le paramètre est vide, le third du document d'origine sera conservé.
* Parametre: {{newDoctype}}
  * requis: oui
  * type: enum('invoice', 'estimate', 'proforma', 'delivery', 'order', 'creditnote','model')
  * default: aucun
  * Description: Type du document à créer
* Parametre: {{updatePrice}}
  * requis: Non
  * type: Y,N
  * default: aucun
  * Description: Mettre à jour les tarifs


Retour
------

```
    {"response":{"id":"11027","ownerFullName":"M. Antoine Loux","status":"ok","filename":"FACT-20120321-00098_1333530803.5021","fileid":"2157","nbpages":"1","ident":"FACT-20120321-00098","thirdident":"","thirdid":"2655","contactId":"0","contactName":"","displayedDate":"04\/04\/2012","currencysymbol":"\u20ac","subject":"test objet","corpaddressid":"36059","thirdaddressid":"36060","shipaddressid":"36061","rowsAmount":"191.725000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"191.725000000","offerAmount":"0.000000000","rowsAmountAllInc":"191.725000000","packagingsAmount":"49.900000000","shippingsAmount":"60.000000000","totalAmountTaxesFree":"301.625000000","taxesAmountSum":"59.118500000","taxesAmountDetails":"a:1:{s:12:\"19.600000000\";s:12:\"59.118500000\";}","totalAmount":"360.743500000","shippingNbParcels":"0","shippingWeight":"0.000000000","shippingWeightUnit":"g","shippingVolume":"0.000000000","shippingTrackingNumber":"","shippingTrackingUrl":"","saveThirdPrefs":"N","displayShipAddress":"N","corpid":"2","ownerid":"2","linkedtype":"invoice","linkedid":"9516","created":"2012-03-21 14:43:18","prefsid":"14683","parentid":"0","docmapid":"11603","hasVat":"Y","doctypeid":"9516","step":"draft","isDeposit":"N","dueAmount":"360.743500000","countrycode":"FR","globalDiscount":"0.000000000","globalDiscountUnit":"percent","globalOffer":"0.000000000","useDeposit":"N","deposit":"0.000000000","depositUnit":"percent","discountByRows":"N","addPdfToEmail":"Y","addGtuToEmail":"Y","addSenderToEmail":"N","hideColumnName":"N","hideColumnNotes":"N","hideColumnUnit":"N","hideColumnTaxFree":"N","hideColumnTax":"N","hideColumnTaxInc":"N","hideColumnQt":"N","hideTotalTaxesFree":"N","hideTotal":"N","hidePayment":"N","hideTaxes":"N","hasPenaltyRetardWarning":"Y","penaltyRetardWarningText":"La loi n\u00b092\/1442 du 31 d\u00e9cembre 1992 nous fait l'obligation de vous indiquer que le non respect des conditions de paiement entra\u00eene des int\u00e9r\u00eats de retard suivant modalit\u00e9s et taux minima d\u00e9finis par la loi.","showContactOnPdf":"N","hasCorpAgree":"N","hasThirdAgree":"N","notes":"test note","nbExpireDays":"30","displayAmounts":"Y","display_footer":"Y","display_ident":"Y","display_email":"Y","display_tel":"Y","display_mobile":"Y","display_fax":"Y","displayBankAccount":"Y","displayIBAN":"Y","displayBIC":"Y","hideTips":"N","hideOrdersDocs":"N","hideDeliveriesDocs":"N","hideProformaDocs":"N","emailsSentFromCorp":"Y","isdefault":"Y","name":"default","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"custom","bgMode":"all","bgFile":"custom","bgCustomFile":"","hideTopPart":"N","hideFill":"N","colorFill":"000000","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","type":"invoice","map":{"docid":"11027","id":"11603","rows":{"_xml_childtag":"row","16562":{"parentid":"0","status":"ok","rank":"1","type":"packaging","linkedid":"0","name":"","notes":"","unitAmount":"4.990000000","unitid":"2750","unitText":"","qt":"10.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"49.900000000","taxAmount":"9.780400000","purchaseAmount":"0.000000000","id":"16562","discountPercent":"0.000000000","formatted_unitAmount":"4,99","formatted_qt":"10,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"49,90 \u20ac","formatted_taxAmount":"9,78","formatted_discountPercent":"0,00"},"16563":{"parentid":"0","status":"ok","rank":"2","type":"shipping","linkedid":"0","name":"","notes":"","unitAmount":"5.000000000","unitid":"2751","unitText":"","qt":"12.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"60.000000000","taxAmount":"11.760000000","purchaseAmount":"0.000000000","id":"16563","discountPercent":"0.000000000","formatted_unitAmount":"5,00","formatted_qt":"12,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"60,00 \u20ac","formatted_taxAmount":"11,76","formatted_discountPercent":"0,00"},"16648":{"parentid":"0","status":"ok","rank":"3","type":"item","linkedid":"13","name":"item","notes":"item","unitAmount":"41.800000000","unitid":"70","unitText":"forfaitaire","qt":"1.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"41.800000000","taxAmount":"8.192800000","purchaseAmount":"0.000000000","id":"16648","discountPercent":"0.000000000","formatted_unitAmount":"41,80","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"41,80 \u20ac","formatted_taxAmount":"8,19","formatted_discountPercent":"0,00"},"16649":{"parentid":"0","status":"ok","rank":"4","type":"item","linkedid":"14","name":"service","notes":"service","unitAmount":"19.990000000","unitid":"70","unitText":"forfaitaire","qt":"7.500000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"N","totalAmount":"149.925000000","taxAmount":"29.385300000","purchaseAmount":"0.000000000","id":"16649","discountPercent":"0.000000000","formatted_unitAmount":"19,99","formatted_qt":"7,50","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"149,93 \u20ac","formatted_taxAmount":"29,39","formatted_discountPercent":"0,00"},"16650":{"parentid":"0","status":"ok","rank":"5","type":"item","linkedid":"2619","name":"test","notes":"test","unitAmount":"0.000000000","unitid":"71","unitText":"m2","qt":"1.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"66","taxrate":"19.600000000","isOption":"Y","totalAmount":"0.000000000","taxAmount":"0.000000000","purchaseAmount":"0.000000000","id":"16650","discountPercent":"0.000000000","formatted_unitAmount":"0,00","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"19,60","formatted_totalAmount":"0,00 \u20ac","formatted_taxAmount":"0,00","formatted_discountPercent":"0,00"}}},"relateds_amount":"0.000000000","relateds":{"_xml_childtag":"related"},"corpAddress":{"name":"Rue du four","part1":"10 rue du four","part2":"","zip":"79200","town":"Adilly","townid":"3835224","countrycode":"FR","originalid":"0","id":"36059","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"10 rue du four"},"1":{"txt":"79200 - Adilly"},"2":{"txt":"France"}}},"hasThird":"Y","thirdType":"corporation","thirdAddress":{"name":"test2","part1":"2 rue du moulin","part2":"","zip":"17000","town":"la rochelle","townid":"0","countrycode":"FR","originalid":"0","id":"36060","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"2 rue du moulin"},"1":{"txt":"17000 - la rochelle"},"2":{"txt":"France"}}},"shipAddress":{"name":"","part1":"","part2":"","zip":"","town":"","townid":"0","countrycode":"FR","originalid":"0","id":"36061","partsToDisplay":{"_xml_childtag":"part","0":{"txt":""},"1":{"txt":" - "},"2":{"txt":"France"}}},"canWriteDocNamespace":"Y","logoFile":"","logoFile_system":"","logoHeight":0,"logoWidth":0,"label":"Facture","fullIdent":"Facture N\u00b0 FACT-20120321-00098","numformat":{"name":"fr","decimals":",","thousands":" ","currencypos":"right","currencysymbol":"\u20ac","precision":"2"},"numformats":{"_xml_childtag":"format","0":{"label":"fran\u00e7ais [1 234,57 #]","decimals":",","thousands":" ","currencypos":"right","name":"fr"},"1":{"label":"anglais [# 1,234.57]","decimals":".","thousands":",","currencypos":"left","name":"en"}},"precisions":{"_xml_childtag":"precision","0":{"value":0},"1":{"value":1},"2":{"value":2},"3":{"value":3},"4":{"value":4},"5":{"value":5},"6":{"value":6},"7":{"value":7},"8":{"value":8},"9":{"value":9}},"currencies":{"1":{"name":"EUR","symbol":"\u20ac","rank":"1","enabled":"Y","id":"1"},"2":{"name":"USD","symbol":"$","rank":"2","enabled":"Y","id":"2"},"4":{"name":"PND","symbol":"\u00a3","rank":"3","enabled":"Y","id":"4"},"3":{"name":"YEN","symbol":"\u00a5","rank":"4","enabled":"Y","id":"3"},"5":{"name":"CFA","symbol":"CFA","rank":"9","enabled":"Y","id":"5"},"_xml_childtag":"currency"},"currencypositions":{"_xml_childtag":"currencypos","0":{"value":"both","label":"gauche et droite"},"1":{"value":"left","label":"gauche"},"2":{"value":"right","label":"droite"},"3":{"value":"none","label":"masqu\u00e9e"}},"hasRelateds":"Y","corpName":"Antoine Loux","thirdName":"Alain","thirdVatNum":"","docspeaker_text":"Votre contact","paydate_text":"\u00e0 90 jours","paydate_custom":"03\/07\/2012","paymediums_text":"a:1:{i:0;s:7:\"ch\u00e8que\";}","paycheckorder_text":"Service comptabilit\u00e9","paybankaccount_text":"","currency":"1","num_currencypos":"right","docspeaker":"95","doclayout":"2","num_name":"fr","num_decimals":",","num_thousands":" ","num_precision":"2","defaultTax":"66","defaultUnit":"70","defaultShipping":"17","defaultPackaging":"15","paydate":"81","paydate_xdays":"0","paydate_endmonth":"N","paydate_scaledDetails":"","paymediums":{"86":{"id":"86","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"check","rank":"1","value":"ch\u00e8que","checked":"Y"},"87":{"id":"87","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"transfer","rank":"2","value":"virement bancaire"},"88":{"id":"88","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cash","rank":"3","value":"esp\u00e8ces"},"89":{"id":"89","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"cb","rank":"4","value":"carte bancaire"},"90":{"id":"90","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"pick","rank":"5","value":"pr\u00e9l\u00e8vement"},"91":{"id":"91","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"bor","rank":"6","value":"Billet \u00e0 Ordre Relev\u00e9 (BOR)"},"92":{"id":"92","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"tip","rank":"7","value":"Titre Interbancaire de Paiement (TIP)"},"93":{"id":"93","corpid":"2","list":"paymediums","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"lcr","rank":"8","value":"Lettre de Change Relev\u00e9 (LCR)"},"_xml_childtag":"paymedium"},"paymedium_other":"","paycheckorder":"94","paybankaccount":"0","weightUnits":{"_xml_childtag":"weightUnit","0":{"value":"mg"},"1":{"value":"g"},"2":{"value":"kg"}},"hideableColumns":{"_xml_childtag":"column","0":{"id":"name","name":"hideColumnName","label":"Masquer la colonne \"Nom\/Code\"","checked":"N"},"1":{"id":"notes","name":"hideColumnNotes","label":"Masquer la colonne \"Libell\u00e9\"","checked":"N"},"2":{"id":"unit","name":"hideColumnUnit","label":"Masquer la colonne \"Co\u00fbt unitaire HT\"","checked":"N"},"3":{"id":"tax","name":"hideColumnTax","label":"Masquer la colonne \"TVA\"","checked":"N"},"4":{"id":"qt","name":"hideColumnQt","label":"Masquer la colonne \"Qt\"","checked":"N"},"5":{"id":"amount","name":"hideColumnTaxFree","label":"Masquer la colonne \"Montant HT\"","checked":"N"},"6":{"id":"listTotal","name":"hideTotal","label":"Masquer les totaux","checked":"N"},"7":{"id":"payment","name":"hidePayment","label":"Masquer infos paiement","checked":"N"}},"doclayouts":{"_xml_childtag":"doclayout","2":{"corpid":"2","ownerid":"2","status":"ok","isdefault":"Y","name":"default","headerMode":"all","footerMode":"all","logoMode":"first","useBg":"custom","bgMode":"all","bgFile":"custom","bgCustomFile":"","hideTopPart":"N","hideFill":"N","colorFill":"000000","colorText":"000000","colorHeaderRow":"000000","colorNotes":"000000","colorDiscreet":"000000","colorHeaderFooter":"000000","font":"helvetica","id":"2"}},"currencyleft":"","currencyright":"\u20ac","discountUnits":{"_xml_childtag":"discountUnit","0":{"value":"percent","label":"%"},"1":{"value":"amount","label":"\u20ac"}},"taxes":{"66":{"id":"66","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"19,60"},"67":{"id":"67","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"5,50"},"68":{"id":"68","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"2,10"},"69":{"id":"69","corpid":"2","list":"taxes","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"0,00"},"_xml_childtag":"tax"},"shippings":{"17":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"1","name":"shipping","notes":"shipping","unitAmount":"13.900000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"17","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"13.900000000","formatted_unitAmount":"13.900000000","formatted_unitAmount_ht":"13.900000000","formatted_unitAmount_ttc":13.9,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"13.900000000"},"18":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"2","name":"shipping","notes":"shipping","unitAmount":"4.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"18","typeLabel":"transport","nameSample":"shipping","notesSample":"shipping","notesHTMLSample":"shipping","isTaxesFree":"HT","unitAmountTaxesFree":"4.990000000","formatted_unitAmount":"4.990000000","formatted_unitAmount_ht":"4.990000000","formatted_unitAmount_ttc":4.99,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"4.990000000"},"2751":{"type":"shipping","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"3","name":"sApi","notes":"","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"0.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"2751","typeLabel":"transport","nameSample":"sApi","notesSample":"","notesHTMLSample":"","isTaxesFree":"HT","unitAmountTaxesFree":"0.000000000","formatted_unitAmount":"0.000000000","formatted_unitAmount_ht":"0.000000000","formatted_unitAmount_ttc":0,"formatted_qt":"0.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"0.000000000 ","formatted_full_unitAmount":"0.000000000"},"_xml_childtag":"shipping"},"packagings":{"15":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"1","name":"packaging","notes":"packaging","unitAmount":"3.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"4.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"15","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"3.990000000","formatted_unitAmount":"3.990000000","formatted_unitAmount_ht":"3.990000000","formatted_unitAmount_ttc":3.99,"formatted_qt":"4.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"4.000000000 ","formatted_full_unitAmount":"3.990000000"},"16":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"2","name":"packaging","notes":"packaging","unitAmount":"29.990000000","unitAmountIsTaxesFree":"Y","unitid":"70","unit":"","qt":"1.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"16","typeLabel":"emballage","nameSample":"packaging","notesSample":"packaging","notesHTMLSample":"packaging","isTaxesFree":"HT","unitAmountTaxesFree":"29.990000000","formatted_unitAmount":"29.990000000","formatted_unitAmount_ht":"29.990000000","formatted_unitAmount_ttc":29.99,"formatted_qt":"1.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"1.000000000 ","formatted_full_unitAmount":"29.990000000"},"2750":{"type":"packaging","corpid":"2","ownerid":"2","status":"ok","isEnabled":"Y","rank":"3","name":"pApi","notes":"","unitAmount":"0.000000000","unitAmountIsTaxesFree":"Y","unitid":"0","unit":"","qt":"0.000000000","taxid":"66","taxrate":"0.000000000","purchaseAmount":"0.000000000","stock":"0","createdAt":"0000-00-00 00:00:00","updatedAt":"0000-00-00 00:00:00","id":"2750","typeLabel":"emballage","nameSample":"pApi","notesSample":"","notesHTMLSample":"","isTaxesFree":"HT","unitAmountTaxesFree":"0.000000000","formatted_unitAmount":"0.000000000","formatted_unitAmount_ht":"0.000000000","formatted_unitAmount_ttc":0,"formatted_qt":"0.000000000","formatted_taxrate":"0.000000000","formatted_full_qt":"0.000000000 ","formatted_full_unitAmount":"0.000000000"},"_xml_childtag":"packaging"},"units":{"70":{"id":"70","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"forfaitaire"},"71":{"id":"71","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"m2"},"72":{"id":"72","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"3","value":"m3"},"73":{"id":"73","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"4","value":"kg"},"74":{"id":"74","corpid":"2","list":"units","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"5","value":"tonne"},"_xml_childtag":"unit"},"canWriteShippings":"Y","canWritePackagings":"Y","canWriteUnits":"Y","canWriteTaxes":"Y","canWritePaydates":"Y","paydates":{"75":{"id":"75","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"custom","rank":"1","value":"\u00e0 date"},"76":{"id":"76","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"onorder","rank":"3","value":"\u00e0 la commande"},"77":{"id":"77","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"endmonth","rank":"4","value":"fin de mois"},"78":{"id":"78","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"30days","rank":"5","value":"\u00e0 30 jours"},"79":{"id":"79","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"45days","rank":"6","value":"\u00e0 45 jours"},"80":{"id":"80","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"60days","rank":"7","value":"\u00e0 60 jours"},"81":{"id":"81","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"90days","rank":"8","value":"\u00e0 90 jours"},"82":{"id":"82","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"xdays","rank":"9","value":"saisir un nombre de jours"},"83":{"id":"83","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"scaled","rank":"10","value":"paiement \u00e9chelonn\u00e9"},"84":{"id":"84","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"received","rank":"11","value":"\u00e0 r\u00e9ception"},"85":{"id":"85","corpid":"2","list":"paydates","status":"ok","isEnabled":"Y","isWriteabled":"N","syscode":"none","rank":"11","value":"aucun"},"_xml_childtag":"paydate"},"canWritePaymediums":"Y","canWritePayCheckOrders":"Y","paycheckorders":{"94":{"id":"94","corpid":"2","list":"paycheckorders","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Service comptabilit\u00e9"},"_xml_childtag":"paycheckorder"},"bankaccounts":{"_xml_childtag":"bankaccount"},"canWriteDocSpeakers":"Y","docspeakers":{"95":{"id":"95","corpid":"2","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"1","value":"Votre contact"},"96":{"id":"96","corpid":"2","list":"docspeakers","status":"ok","isEnabled":"Y","isWriteabled":"Y","syscode":"","rank":"2","value":"Votre r\u00e9f\u00e9rent"},"_xml_childtag":"docspeaker"},"formatted_rowsAmount":"191,73 \u20ac","formatted_discountPercent":"0,00","formatted_discountAmount":"0,00 \u20ac","formatted_rowsAmountDiscounted":"191,73 \u20ac","formatted_offerAmount":"0,00 \u20ac","formatted_rowsAmountAllInc":"191,73 \u20ac","formatted_packagingsAmount":"49,90 \u20ac","formatted_shippingsAmount":"60,00 \u20ac","formatted_totalAmountTaxesFree":"301,63 \u20ac","formatted_taxesAmountSum":"59,12 \u20ac","formatted_totalAmount":"360,74 \u20ac","formatted_shippingWeight":"0,00 \u20ac","formatted_shippingVolume":"0,00 \u20ac","formatted_globalDiscount":"0,00 \u20ac","formatted_globalOffer":"0,00","formatted_deposit":"0,00 \u20ac","formatted_dueAmount":"360,74 \u20ac","tel":"0620365895","fax":"","email":"[email protected]","mobile":"","formatted_taxesAmountDetails":"a:1:{s:5:\"19,60\";s:9:\"59,12 \u20ac\";}","corpFooter":"Antoine [email protected]","tags":[{"id":"112","corpid":"2","category":"doc","created":"2012-04-04 11:13:29","word":"tags_test"}]},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.getPayment',
        'params' => array(
            'doctype'   => {{doctype}},
            'docid'     => {{docid}},
            'payid'     => {{payid}}
        )
    );
                
```


Paramètres
----------


|Parametre  |requis|type  |default|Description             |
|-----------|------|------|-------|------------------------|
|{{doctype}}|oui   |string|aucun  |Type du document        |
|{{docid}}  |oui   |int   |aucun  |Identifiant de documents|
|{{payid}}  |oui   |int   |aucun  |Identifiant du paiement |


Retour
------

```
    {"response":{"status":"ok","date":"2012-07-04","amount":"380951.680000000","medium":"4744","mediumTxt":"ch\u00e8que","ident":"0156489","notes":"il a pay\u00e9 cher","corpid":"138","ownerid":"317","docid":"11359","id":"7793","formatted_displayedDate":"04\/07\/2012","dueAmount":"381850.680000000"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.createPayment',
        'params' => array (
            'payment' => array(
                'date'      => {{date}},
                'amount'    => {{amount}},
                'medium'    => {{medium}},
                'ident'     => {{ident}},
                'notes'     => {{notes}},
                'email'     => {{email}},
                'doctype'   => {{doctype}},
                'docid'     => {{docid}},
		'deadlineid'=> {{deadlineid}}
            )
        )
    );
                
```


Paramètres
----------



* Parametre: {{date}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Date d'ajout du paiement
* Parametre: {{amount}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Montant du paiment
* Parametre: {{medium}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du moyen de paiment (chèque, carte banquaire, ...)
* Parametre: {{ident}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Référence du paiement
* Parametre: {{notes}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Commentaire sur le paiement
* Parametre: {{email}}
  * requis: non
  * type: enum
  * default: N
  * Description: Y ou N pour envoyer un email de remerciement au client
* Parametre: {{doctype}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Type du document
* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant de documents
* Parametre: {{deadlineid}}
  * requis: non
  * type: array
  * default: aucun
  * Description: tableau d'identifants des échéances de paiement à solder


Retour
------

```
    {"response":{{payid}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request =  array(
        'method' => 'Document.deletePayment',
        'params' => array (
            'payment' => array(
                'payid'     => {{relatedid}},
                'doctype'   => {{doctype}},
                'docid'     => {{docid}}
            )
        )
    );
    
```


Paramètres
----------



* Parametre: {{relatedid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du paiement.                Pour identifier le relatedid, référez-vous à la propriété relatedId de la méthode Document.getPaymentList
* Parametre: {{doctype}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Type du document
* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du document


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Document.getPaymentUrl',
    'params' => array (
        'docID' => {{docID}}
    )
);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description            |
|---------|------|----|------|-----------------------|
|{{docID}}|oui   |int |Aucun |Identifiant du document|


Retour
------

```
{"response":{"url":"payment_url"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Document.linkPurchase',
    'params' => array (
        'doctype'	=> {{doctype}},
		'docid'		=> {{docid}},
		'computemarge' => {{computemarge}},
		'doctolink' => Array(
			'docid'		=> {{docid}},
			'doctype'	=> {{doctype}},
			'linkedamount'	=> {{linkedamount}}
		)
    )
);
```


Paramètres
----------



* Paramètre: {{docID}}
  * Requis: oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document
* Paramètre: {{doctype}}
  * Requis: oui
  * Type: enum
  * Défaut: 'invoice', 'estimate'
  * Description: Type du document
* Paramètre: {{computemarge}}
  * Requis: oui
  * Type: enum
  * Défaut: N
  * Description: Recalcul des marges
* Paramètre: {{doctolink->docID}}
  * Requis: oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document
* Paramètre: {{doctolink->doctype}}
  * Requis: oui
  * Type: enum
  * Défaut: 'purOrder', 'purInvoice', 'purDelivery'
  * Description: Type du document
* Paramètre: {{doctolink->linkedamount}}
  * Requis: oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant à lier


Retour
------

```
{"response":{"url":"payment_url"},"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Document.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description             |
|-------------|------|-----|-------|------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du document |
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
		$request = array(
			'method'    =>  'Document.enablePublicLink',
			'params'    =>  array (
                "docids"   => {{docid}}
			)
		);
	
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{docid}}|oui   |int |aucun  |Identifiant du document|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
		$request = array(
			'method'    =>  'Document.disablePublicLink',
			'params'    =>  array (
                "docids"   => {{docid}}
			)
		);
	
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{docid}}|oui   |int |aucun  |Identifiant du document|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
        $request = array(
            'method'    =>  'Document.getNumberingDraftStatus',
            'params'    =>  array ()
        );
    
```


Retour
------

```
        {"response":{"enabled":"Y"},"error":"","status":"success"}
    
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = [
	'method'	=> 'DocRows.getList',
	'params'	=> [
		'search'	=> [ 
			'periodecreated_start'	    => {{periodecreated_start}},
			'periodecreated_end'	    => {{periodecreated_end}},
			'periodecreationDate_start'	=> {{periodecreationDate_start}},
			'periodecreationDate_end'	=> {{periodecreationDate_end}},
			'doctype'		=> {{doctype}},
			'rowtype'		=> {{rowtype}},
			'docs'			=> {{docs}},
			'thirds'		=> {{thirds}},
			'items'			=> {{items}},
			'accountingCodes'	=> {{accountingCodes}},
			'tags_select'		=> {{tags_select}},
			'tags'			=> {{tags}}
		],
		'order'		=> [
			'direction'	=> {{direction}},
			'order'		=> {{order}}
		],
		'pagination' 	=> [
			'nbperpage'	=> {{nbperpage}},
			'pagenum'	=> {{pagenum}} 
		]
	]
]
	
```


Paramètres
----------



* Paramètre: {{periodecreated_start}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date du document minimale (si created_date a pour valeur 'custom')
* Paramètre: {{periodecreated_end}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date du document maximale (si created_date a pour valeur 'custom')
* Paramètre: {{periodecreationDate_start}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date de creation minimale (si created_date a pour valeur 'custom')
* Paramètre: {{periodecreationDate_end}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Timestamp de la date de creation maximale (si created_date a pour valeur 'custom')
* Paramètre: {{doctype}}
  * Requis: Non
  * Type: enum('creditnote', 'estimate', 'invoice', 'proforma', 'order', 'delivery')
[]
  * Défaut: Tous
  * Description: Tableau contenant les doctypes
* Paramètre: {{rowtype}}
  * Requis: Non
  * Type: enum('once', 'item', 'service', 'packaging', 'shipping', 'deposit')
[]
  * Défaut: Tous
  * Description: Tableau contenant les rowtypes
* Paramètre: {{docs}}
  * Requis: Non
  * Type: int[]
  * Défaut: Tous
  * Description: Tableau contenant les id des documents que vous souhaitez voir
* Paramètre: {{thirds}}
  * Requis: Non
  * Type: int[]
  * Défaut: Tous
  * Description: Tableau contenant les id des third
* Paramètre: {{items}}
  * Requis: Non
  * Type: string[]
  * Défaut: Tous
  * Description: Tableau contenant les id des items sous la forme 'itemid_declinaisonid', si l'element n'est pas decline il faut mettre 0 comme id de declinaison
* Paramètre: {{accountingCodes}}
  * Requis: Non
  * Type: int[]
  * Défaut: Tous
  * Description: Tableau contenant les id des codes comptables
* Paramètre: {{tags_select}}
  * Requis: Non
  * Type: enum('only', 'with', 'without', 'and', 'or', 'not-either', 'neither')
  * Défaut: Aucun
  * Description: Type de selection sur les smart-tags
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string[]
  * Défaut: Aucun
  * Description: Tableau contenant les smart-tags
* Paramètre: {{direction}}
  * Requis: Non
  * Type: enum('desc', 'asc')
  * Défaut: desc
  * Description: Sens de l'ordre des documents
* Paramètre: {{order}}
  * Requis: Non
  * Type: enum('doc_id', 'doc_ident', 'doc_displayedDate','type','doc_thirdname', 'name', 'qt', 'unitAmount', 'totalAmount')
  * Défaut: doc_id
  * Description: Colonne sur laquelle appliquer l'ordre
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'elements par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numero de page


Retour
------

```
{
	"response":{
		"infos":{
			"nbperpage":"2",
			"nbpages":70,
			"pagenum":1,
			"nbtotal":"140"
		},
		"result":{
			"3324556":{
				"id":"3324556",
				"docmapid":"55977",
				"parentid":"0",
				"status":"ok",
				"rank":"1",
				"type":"once",
				"linkedid":"0",
				"declid":"0",
				"name":"",
				"notes":"",
				"unitAmount":"42.000000000",
				"unitAmountTaxesInc":"42.000000000",
				"ecoTax":"0.000000000",
				"useEcoTax":"N",
				"ecoTaxType":"",
				"unitid":"139791",
				"unitText":"unit\u00e9",
				"qt":"1.000000000",
				"discount":"0.000000000",
				"discountUnit":"",
				"taxid":"139787",
				"taxrate":"20.000000000",
				"tax2id":"0",
				"tax2rate":"0.000000000",
				"isOption":"N",
				"totalAmount":"42.000000000",
				"totalAmountTaxesInc":"42.000000000",
				"taxAmount":"8.400000000",
				"tax2Amount":"0.000000000",
				"purchaseAmount":"0.000000000",
				"accountingCode":"",
				"analyticsCode":"",
				"tteid":"0",
				"whid":"441",
				"serialid":"0",
				"promotionid":"0",
				"bcid":"0",
				"stockmove":"0000-00-00 00:00:00",
				"doc_id":"965721",
				"doc_corpid":"2719",
				"doc_corpname":"T Toto",
				"doc_ownerid":"4668",
				"doc_docmapid":"55977",
				"doc_prefsid":"937908",
				"doc_linkedtype":"order",
				"doc_linkedid":"2149",
				"doc_parentid":"0",
				"doc_thirdid":"1121790",
				"doc_thirdname":"M. Azertyuiop Qwertyuiop",
				"doc_thirdvatnum":"",
				"doc_hasVat":"Y",
				"doc_status":"ok",
				"doc_fileid":"92073",
				"doc_filename":"BDC-20170515-00018_1494842255.8154",
				"doc_nbpages":"1",
				"doc_ident":"BDC-20170515-00018",
				"doc_thirdident":"",
				"doc_created":"2017-05-15 11:57:35",
				"doc_displayedDate":"1970-01-01",
				"doc_currencysymbol":"\u20ac",
				"doc_docspeakerText":"Votre contact",
				"doc_docspeakerStaffId":"4668",
				"doc_docspeakerStaffFullName":"Tata Toto",
				"doc_ownerFullName":"Tata Toto",
				"doc_subject":"",
				"doc_corpaddressid":"587414",
				"doc_thirdaddressid":"587415",
				"doc_shipaddressid":"587416",
				"doc_rowsAmount":"42.000000000",
				"doc_discountPercent":"0.000000000",
				"doc_discountAmount":"0.000000000",
				"doc_rowsAmountDiscounted":"0.000000000",
				"doc_offerAmount":"0.000000000",
				"doc_rowsAmountAllInc":"42.000000000",
				"doc_packagingsAmount":"0.000000000",
				"doc_shippingsAmount":"0.000000000",
				"doc_totalAmountTaxesFree":"42.000000000",
				"doc_taxesAmountSum":"8.400000000",
				"doc_taxesAmountDetails":"a:1:{i:139787;s:11:\"8.400000000\";}",
				"doc_totalAmount":"50.400000000",
				"doc_useEcotaxe":"Y",
				"doc_totalEcoTaxFree":"0.000000000",
				"doc_totalEcoTaxInc":"0.000000000",
				"doc_ecoTaxId":"144454",
				"doc_taxBasis":"{\"tax\":[{\"rate\":\"20.00\",\"amount\":\"8.40\",\"totalBaseAmount\":\"42.000000000\",\"isEcoTax\":\"N\"}]}",
				"doc_payDateText":"capouet",
				"doc_payDateCustom":"1970-01-01",
				"doc_hasDeadlines":"N",
				"doc_payMediumsText":"a:4:{i:0;s:5:\"Paypa\";i:1;s:17:\"virement bancaire\";i:2;s:8:\"esp\u00e8ces\";i:3;s:30:\"Lettre de Change Relev\u00e9 (LCR)\";}",
				"doc_payCheckOrderText":"T Toto",
				"doc_payBankAccountText":"",
				"doc_shippingNbParcels":"0",
				"doc_shippingWeight":"0.000000000",
				"doc_shippingWeightUnit":"g",
				"doc_shippingVolume":"0.000000000",
				"doc_shippingTrackingNumber":"",
				"doc_shippingTrackingUrl":"",
				"doc_shippingDate":"0000-00-00",
				"doc_saveThirdPrefs":"N",
				"doc_displayShipAddress":"N",
				"doc_contactId":"233388",
				"doc_contactName":"M. Azertyuiop qwertyuiop",
				"doc_analyticsCode":"",
				"doc_recordable":"N",
				"doc_recorded":"N",
				"doc_rateCategory":"4080",
				"doc_isTaxesInc":"N",
				"doc_hasDoubleVat":"N",
				"doc_stockImpact":"N",
				"doc_isFromPresta":"N",
				"doc_eCommerceShopId":"0",
				"doc_signcoords":"{\"xstart\":298,\"xend\":598,\"ystart\":320,\"yend\":200,\"page\":1}",
				"doc_esignID":"0",
				"doc_useServiceDates":"N",
				"doc_serviceDateStart":"0000-00-00",
				"doc_serviceDateStop":"0000-00-00",
				"doc_promotionid":"0",
				"doc_locked":"",
				"itemType":null,
				"smarttags":null,
				"doc_url":"?_f=orderOverview&id=965721",
				"rowTypeFormatted":"Simple",
				"formatted_doc_displayedDate":"01\/01\/1970",
                "address":"44 RUE DU PLATEAU 01440 VIRIAT FR",
				"shippingAddress":"5 RUE LEROUX 75116 PARIS FR",
				"stepDoc":{
					"style":{
						"color":"pink",
						"hex":"#C86BDA",
						"label":"#sp#Brouillon#sp#",
						"css":"colorDraft",
						"banner":"draft"
					},
					"label":"Brouillon"
				},
				"thirdDetails":{
					"linkedtype":"third",
					"linkedid":"1121790",
					"prefsid":"937612",
					"accountingPrefsId":"0",
					"logo":"",
					"name":"qsdfghjklm",
					"email":"",
					"web":"",
					"tel":"",
					"mobile":"",
					"fax":"",
					"siret":"",
					"vat":"",
					"apenaf":"",
					"rcs":"",
					"type":"person",
					"capital":"",
					"mainaddressid":"0",
					"maindelivaddressid":"0",
					"siren":"",
					"thirdid":"1121790",
					"accountingCode":"",
					"auxCode":"",
					"relationType":"client",
					"status":"ok",
					"corpid":"2719",
					"corpdetail_logo":"",
					"thirdUrl":"?_f=third&thirdid=1121790",
					"avatar":{
						"type":"initials",
						"value":"qs",
						"class":16
					}
				},
				"itemUrl":"",
				"itemRef":"",
				"accountingCodeFormatted":"N\/A",
				"qteFormatted":"1.00",
				"vatFormatted":"20.00% - 8.40 \u20ac",
				"puhtFormatted":"42.00 \u20ac",
				"totalhtFormatted":"42.00 \u20ac",
				"tags":[
				],
				"customfields":{
					"0":{
						"id":0,
						"status":"ok",
						"corpid":"2719",
						"cfid":1485,
						"groupid":null,
						"type":"simpletext",
						"linkedtype":"document",
						"linkedid":"965721",
						"textval":"",
						"boolval":false,
						"timestampval":0,
						"decimalval":0,
						"numericval":0,
						"stringval":"",
						"formatted_value":"",
						"currency":"",
						"unit":"",
						"formattedVal":""
					},
					"_xml_childtag":"customfield"
				}
			},
			"3324555":{
				"id":"3324555",
				"docmapid":"55976",
				"parentid":"0",
				"status":"ok",
				"rank":"1",
				"type":"once",
				"linkedid":"0",
				"declid":"0",
				"name":"",
				"notes":"",
				"unitAmount":"42.000000000",
				"unitAmountTaxesInc":"42.000000000",
				"ecoTax":"0.000000000",
				"useEcoTax":"N",
				"ecoTaxType":"",
				"unitid":"139791",
				"unitText":"unit\u00e9",
				"qt":"1.000000000",
				"discount":"0.000000000",
				"discountUnit":"",
				"taxid":"139787",
				"taxrate":"20.000000000",
				"tax2id":"0",
				"tax2rate":"0.000000000",
				"isOption":"N",
				"totalAmount":"42.000000000",
				"totalAmountTaxesInc":"42.000000000",
				"taxAmount":"8.400000000",
				"tax2Amount":"0.000000000",
				"purchaseAmount":"0.000000000",
				"accountingCode":"",
				"analyticsCode":"",
				"tteid":"0",
				"whid":"441",
				"serialid":"0",
				"promotionid":"0",
				"bcid":"0",
				"stockmove":"0000-00-00 00:00:00",
				"doc_id":"965720",
				"doc_corpid":"2719",
				"doc_corpname":"T Toto",
				"doc_ownerid":"4668",
				"doc_docmapid":"55976",
				"doc_prefsid":"937907",
				"doc_linkedtype":"proforma",
				"doc_linkedid":"243",
				"doc_parentid":"0",
				"doc_thirdid":"1121790",
				"doc_thirdname":"M. Azertyuiop qwertyuiop",
				"doc_thirdvatnum":"",
				"doc_hasVat":"Y",
				"doc_status":"ok",
				"doc_fileid":"92072",
				"doc_filename":"PRO-20170515-00016_1494842254.1364",
				"doc_nbpages":"1",
				"doc_ident":"PRO-20170515-00016",
				"doc_thirdident":"",
				"doc_created":"2017-05-15 11:57:33",
				"doc_displayedDate":"1970-01-01",
				"doc_currencysymbol":"\u20ac",
				"doc_docspeakerText":"Votre contact",
				"doc_docspeakerStaffId":"4668",
				"doc_docspeakerStaffFullName":"Tata Toto",
				"doc_ownerFullName":"Tata Toto",
				"doc_subject":"",
				"doc_corpaddressid":"587411",
				"doc_thirdaddressid":"587412",
				"doc_shipaddressid":"587413",
				"doc_rowsAmount":"42.000000000",
				"doc_discountPercent":"0.000000000",
				"doc_discountAmount":"0.000000000",
				"doc_rowsAmountDiscounted":"0.000000000",
				"doc_offerAmount":"0.000000000",
				"doc_rowsAmountAllInc":"42.000000000",
				"doc_packagingsAmount":"0.000000000",
				"doc_shippingsAmount":"0.000000000",
				"doc_totalAmountTaxesFree":"42.000000000",
				"doc_taxesAmountSum":"8.400000000",
				"doc_taxesAmountDetails":"a:1:{i:139787;s:11:\"8.400000000\";}",
				"doc_totalAmount":"50.400000000",
				"doc_useEcotaxe":"Y",
				"doc_totalEcoTaxFree":"0.000000000",
				"doc_totalEcoTaxInc":"0.000000000",
				"doc_ecoTaxId":"144454",
				"doc_taxBasis":"{\"tax\":[{\"rate\":\"20.00\",\"amount\":\"8.40\",\"totalBaseAmount\":\"42.000000000\",\"isEcoTax\":\"N\"}]}",
				"doc_payDateText":"capouet",
				"doc_payDateCustom":"1970-01-01",
				"doc_hasDeadlines":"N",
				"doc_payMediumsText":"a:4:{i:0;s:5:\"Paypa\";i:1;s:17:\"virement bancaire\";i:2;s:8:\"esp\u00e8ces\";i:3;s:30:\"Lettre de Change Relev\u00e9 (LCR)\";}",
				"doc_payCheckOrderText":"T Toto",
				"doc_payBankAccountText":"",
				"doc_shippingNbParcels":"0",
				"doc_shippingWeight":"0.000000000",
				"doc_shippingWeightUnit":"g",
				"doc_shippingVolume":"0.000000000",
				"doc_shippingTrackingNumber":"",
				"doc_shippingTrackingUrl":"",
				"doc_shippingDate":"0000-00-00",
				"doc_saveThirdPrefs":"N",
				"doc_displayShipAddress":"N",
				"doc_contactId":"233388",
				"doc_contactName":"M. Azertyuiop qwertyuiop",
				"doc_analyticsCode":"",
				"doc_recordable":"N",
				"doc_recorded":"N",
				"doc_rateCategory":"4080",
				"doc_isTaxesInc":"N",
				"doc_hasDoubleVat":"N",
				"doc_stockImpact":"N",
				"doc_isFromPresta":"N",
				"doc_eCommerceShopId":"0",
				"doc_signcoords":"",
				"doc_esignID":"0",
				"doc_useServiceDates":"N",
				"doc_serviceDateStart":"0000-00-00",
				"doc_serviceDateStop":"0000-00-00",
				"doc_promotionid":"0",
				"doc_locked":"",
				"itemType":null,
				"smarttags":null,
				"doc_url":"?_f=proformaOverview&id=965720",
				"rowTypeFormatted":"Simple",
				"formatted_doc_displayedDate":"01\/01\/1970",
                "address":"44 RUE DU PLATEAU 01440 VIRIAT FR",
				"shippingAddress":"5 RUE LEROUX 75116 PARIS FR",
				"stepDoc":{
					"style":{
						"color":"pink",
						"hex":"#C86BDA",
						"label":"#sp#Brouillon#sp#",
						"css":"colorDraft",
						"banner":"draft"
					},
					"label":"Brouillon"
				},
				"thirdDetails":{
					"linkedtype":"third",
					"linkedid":"1121790",
					"prefsid":"937612",
					"accountingPrefsId":"0",
					"logo":"",
					"name":"qsdfghjklm",
					"email":"",
					"web":"",
					"tel":"",
					"mobile":"",
					"fax":"",
					"siret":"",
					"vat":"",
					"apenaf":"",
					"rcs":"",
					"type":"person",
					"capital":"",
					"mainaddressid":"0",
					"maindelivaddressid":"0",
					"siren":"",
					"thirdid":"1121790",
					"accountingCode":"",
					"auxCode":"",
					"relationType":"client",
					"status":"ok",
					"corpid":"2719",
					"corpdetail_logo":"",
					"thirdUrl":"?_f=third&thirdid=1121790",
					"avatar":{
						"type":"initials",
						"value":"qs",
						"class":16
					}
				},
				"itemUrl":"",
				"itemRef":"",
				"accountingCodeFormatted":"N\/A",
				"qteFormatted":"1.00",
				"vatFormatted":"20.00% - 8.40 \u20ac",
				"puhtFormatted":"42.00 \u20ac",
				"totalhtFormatted":"42.00 \u20ac",
				"tags":[
				],
				"customfields":{
					"0":{
						"id":0,
						"status":"ok",
						"corpid":"2719",
						"cfid":1485,
						"groupid":null,
						"type":"simpletext",
						"linkedtype":"document",
						"linkedid":"965720",
						"textval":"",
						"boolval":false,
						"timestampval":0,
						"decimalval":0,
						"numericval":0,
						"stringval":"",
						"formatted_value":"",
						"currency":"",
						"unit":"",
						"formattedVal":""
					},
					"_xml_childtag":"customfield"
				}
			}
		}
	},
	"error":"",
	"status":"success"
}	
	
```


Requete
-------

```
$request = array(
    'method': 'ElectronicSign.create',
    'params': array(
        'document': array(
            'doctype': {{doctype}},
            'docid': {{docid}}
        ),
        'esign': array(
            'authMode': {{authMode}},
            'subject': {{emailSubject}},
            'content': {{emailContent}}
        ),
        'cosigners': array(
            {{peopleId}},
            {{peopleId}},
            ...
        )
    )
);
    
```


Paramètres
----------



* Parametre: {{doctype}}
  * requis: oui
  * type: enum('estimate','delivery','order')
  * default: aucun
  * Description: Type du document de vente
* Parametre: {{docid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du document
* Parametre: {{authMode}}
  * requis: Non
  * type: enum('email','sms')
  * default: Valeur définie dans les préférences du module
  * Description: Lorsque vos clients signent vos documents, un code de vérification leur est envoyé pour valider la signature.
* Parametre: {{emailSubject}}
  * requis: Non
  * type: string
  * default: Valeur définie dans les préférences du module
  * Description: Objet de l'email envoyé au client à la création de la signature électronique                                                            Utiliser les tags suivants pour les références du document (tous disponibles pour l'objet et le contenu de l'email)                                            Lien vers la signature %linkPayment%                        Prénom du signataire %thirdForename%                        Nom du signataire %thirdName%                        Numéro du document %ident%                        Date d'expiration du document %docExpireDate%                                    
* Parametre: {{emailContent}}
  * requis: Non
  * type: string
  * default: Valeur définie dans les préférences du module
  * Description: Contenu de l'email envoyé au client à la création de la signature électronique
* Parametre: {{peopleId}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: identifiant du contact, le contact doit avoir une addresse email et un numéro de mobile, peu importe la valeur de {{authMode}})


Retour
------

```
{
    "response": {
        "created": true,
        "esign": {
            "id": "{{id}}",
            "corpid": "{{corpid}}",
            "ownerid": "{{userid}}",
            "linkedid": "{{documentId}}",
            "linkedtype": "{{documentType}}",
            "demandid": "{{external_id}}",
            "authMode": "mail",
            "cosigners": [{
                "token": "{{token}}",
                "mail": "{{email}}",
                "url": "{{urlToSign}}"
            },{...}],
            "step": "pending",
            "status": "ok",
            "apiUpdate": "0",
            "quotaSpentLogId": "9"
        }
    },
    "error": "",
    "status": "success"
}
    
```


Requete
-------

```
$request = array(
    'method': 'ElectronicSign.delete',
    'params': array(
        'id' : {{id}}
    )
);
    
```


Paramètres
----------


|Parametre|requis|type|default|Description                |
|---------|------|----|-------|---------------------------|
|{{id}}   |oui   |int |aucun  |identifiant de la signature|


Retour
------

```
{
    "response": null,
    "error": "",
    "status": "success"
}
    
```


Requete
-------

```
$request = array(
    'method': 'ElectronicSign.getStatus',
    'params': array(
        'id' : {{id}}
    )
);
    
```


Paramètres
----------


|Parametre|requis|type|default|Description                |
|---------|------|----|-------|---------------------------|
|{{id}}   |oui   |int |aucun  |identifiant de la signature|


Retour
------

```
{
    "response": {
        "status": "pending" || "processing" || "partially_signed" || "signed" || "cancelled"
    },
    "error": "",
    "status": "success"
}
    
```


Requete
-------

```
$request = array(
    'method': 'ElectronicSign.create',
    'params': array(
        'document': array(
            'doctype': {{doctype}},
            'docid': {{docid}}
        )
    )
);
    
```


Paramètres
----------


|Parametre  |requis|type                               |default|Description              |
|-----------|------|-----------------------------------|-------|-------------------------|
|{{doctype}}|oui   |enum('estimate','delivery','order')|aucun  |Type du document de vente|
|{{docid}}  |oui   |int                                |aucun  |identifiant du document  |


Retour
------

```
{
    "response": {
        "esign": {
            "id": {{id}},
            "corpid": {{corpid}},
            "ownerid": {{userid}},
            "linkedid": {{docid}},
            "linkedtype": {{doctype}},
            "demandid": "{{external_id}}",
            "authMode": "mail",
            "cosigners": [{
                "token": "{{token}}",
                "mail": "{{email}}",
                "url": "{{urlToSign}}"
            },{...}],
            "step": "pending",
            "status": "ok",
            "apiUpdate": "0",
            "quotaSpentLogId": "11"
        }
    },
    "error": "",
    "status": "success"
}
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.getList', 
    'params' => array(
        'search'    => array(
            'linkedtype'    => {{linkedtype}},
            'linkedid'      => {{linkedid}},
            'box'           => {{box}},
        ),
        'pagination'    => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('third')
  * Défaut: Aucun
  * Description: Permet de récupérer des emails liés à un type d'objet en particulier
* Paramètre: {{linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'objet lié
* Paramètre: {{box}}
  * Requis: Non
  * Type: enum('inbox', 'outbox', 'scheduled', 'trash')
  * Défaut: inbox
  * Description: Type de boîte email à récupérer
* Paramètre: {{pagenum}}
  * Requis: non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page voulue
* Paramètre: {{nbperpage}}
  * Requis: non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'évènements voulu par page


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"1"},"result":[{"id":"3928","parentid":"0","corpid":"1033","ownerid":"1677","linkedtype":"system","linkedid":"0","relatedtype":"alert","relatedid":"662","box":"inbox","sender":[{"email":"[email protected]","name":"Alerte Sellsy"}],"recipients":[{"email":".com","name":"","datetime":"30\/03\/2014, 10:00","copy":false}],"cc":"","bcc":"","attachment":"a:0:{}","subject":"Nouvelle alerte Sellsy. Synaptech","message":"","scheduled_date":"0000-00-00 00:00:00","scheduled_timestamp":"0","created_date":"1400497965","updated_date":"0","sent_date":"0","step":"unread","status":"ok","star":"N","chase":"N","owner":"Remy Neuter","picurl":"?_f=file&id=JUY1JUZEcSUxNzklOUQlN0UlMkIlQjclQTIlRjElQzRUJUNEK0V5JUFCYyU4N3klQjQlRDAlQTQlMUMlQzUlQTklMkZsJUQxJUE3JThBJTg0JTg5JTlBekclQTRmJTExJTNBaUglMjlGJUE5ZyUwNyVCOFAlMjZmJUU0JTVEWiVEOSVERSVEQSVBNSVDMSU5MyU4RSUxNyVGNzVOJTA4JUM3JUNDJTk5JUU1WiUzRCUyNHMlMjIlMDYlOUZxaHclRTFEJTVDJTI5JUM4JUY1dyUxMjQlODUlMEUlREMlMUQlQkMlQTQ=&key=08996b8a1a46bf535f187bab05462561","linked":"Non affect\u00e9","related":"","attachments":{"_xml_childtag":"file"},"lastEvent":"","snippet_message":"\nAlerte email\nBonjour, voici votre alerte sur  Synaptech\nNote sur la t\u00e2che ...","snippetmini_message":"\nAlerte email\nBonjour, voici votre alert...","formatted_date":"19\/05\/2014, 13:12","computed_date":"19\/05\/2014, 13:12","formatted_scheduled_date":"01\/01\/1970, 01:00","recipients_formatted":".com","sender_formatted":"Alerte Sellsy","lastEventIcon":""}],"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.sendOne', 
    'params' => array(
        'email'    => array(
            'linkedtype'    => {{linkedtype}},
            'linkedid'      => {{linkedid}},
            'relatedtype'   => {{relatedtype}},
            'relatedid'     => {{relatedid}},
            'emails'        => {{emails}},
            'emailsCC'      => {{emailsCC}},
            'emailsBCC'     => {{emailsBCC}},
            'addsendertoemail'      => {{addsendertoemail}},
            'scheduled_timestamp'   => {{scheduled_timestamp}},
            'content'       => {{content}},
            'subject'       => {{subject}},
            'includeDoc'    => {{includeDoc}},
            'templateId'    => {{templateId}},
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('third', 'people')
  * Défaut: Aucun
  * Description: Type de l'objet lié
* Paramètre: {{linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID lié au paramètre linkedtype
* Paramètre: {{relatedtype}}
  * Requis: Non
  * Type: enum('email','opportunity','creditnote','delivery','estimate','invoice','order','proforma','purchase','alert','support','                                purOrder','purDelivery','purInvoice','purCreditNote','purTemplate','snippet','proposal','proptemplate','propdocument')                            
  * Défaut: mail
  * Description: Type de l'objet lié
* Paramètre: {{relatedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID lié au paramètre relatedtype
* Paramètre: {{emails}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Destinataires principaux
* Paramètre: {{emailsCC}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Destinataires en CC
* Paramètre: {{emailsBCC}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Destinataires en BCC
* Paramètre: {{addsendertoemail}}
  * Requis: Non
  * Type: Y, N
  * Défaut: N
  * Description: Mettre à Y pour que l'emetteur reçoive le mail
* Paramètre: {{scheduled_timestamp}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'envoie programmée du mail
* Paramètre: {{content}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Contenu
* Paramètre: {{subject}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Objet
* Paramètre: {{includeDoc}}
  * Requis: Non
  * Type: Y,N
  * Défaut: N
  * Description: Pour les documents de ventes seulement : inclure le document en pièce jointe
* Paramètre: {{templateId}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Pour utiliser  le contenu/sujet/pièces jointes d'un modèle d'email. Le sujet/contenu peuvent être surchargés par les champs subjet/content


Retour
------

```
{"response":"42","error":"","status":"success"}
```


**Utilisation de la méthode getCustomTemplate :**  
Vous devez envoyer en paramètre la combinaison linkedid/linkedtype ou relatedid/relatedtype en fonction de l'objet que voulez pour remplir votre modèle d'email :  
Si votre modèle d'email se rempli avec les informations d'un client, il faut passer en linkedtype _third_ et en linkedid _l'identifiant du client_  
Si votre modèle d'email reprend les information d'une facture il faut passer en relatedtype _invoice_ et en relatedid _l'identifiant du document_

Requête
-------

```
$request =  array( 
    'method' => 'Mails.getCustomTemplates', 
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'relatedtype'   => {{relatedtype}},
        'relatedid' => {{relatedid}},
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum('third', 'people')
  * Défaut: Aucun
  * Description: Type de l'objet lié
* Paramètre: {{linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID lié au paramètre linkedtype
* Paramètre: {{relatedtype}}
  * Requis: Non
  * Type: enum('opportunity','creditnote','delivery','estimate','invoice','order','proforma','purchase','alert','support','                                purOrder','purDelivery','purInvoice','purCreditNote','purTemplate','snippet','email','proposal','proptemplate','propdocument')                            
  * Défaut: Aucun
  * Description: Type de l'objet lié
* Paramètre: {{relatedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID lié au paramètre relatedtype


Retour
------

```
{"response":"{"models":[{"id":"81","corpid":"1869","ownerid":"2854","name":"MODELE1","subject":"","message":"FR Corp\u003Cbr \/\u003E\u003Cbr \/\u003E05 46 55 66 77\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\[email protected]\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E------------------------------------------------\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E\u003Cbr \/\u003E------------------------------------------------\u003Cbr \/\u003E\u003Cbr \/\u003ERAT\u003Cbr \/\u003E\u003Cbr \/\u003EMaxime\u003Cbr \/\u003E\u003Cbr \/\[email protected]\u003Cbr \/\u003E\u003Cbr \/\u003E------------------------------------------------\u003Cbr \/\u003E\u003Cbr \/\u003E \u003Cbr \/\u003E\u003Cbr \/\u003E","status":"ok"},{"id":"105","corpid":"1869","ownerid":"2854","name":"test","subject":"","message":"","status":"ok"}]}","error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.delete', 
    'params' => array(
        'search'    => array(
            'id'    => {{id}},
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description|
|---------|------|----|------|-----------|
|{{id}}   |Non   |int |Aucun |ID du mail |


Retour
------

```
{"response":"42","error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.getOne', 
    'params' => array(
        'id'    => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description              |
|---------|------|----|------|-------------------------|
|{{id}}   |Oui   |int |Aucun |ID de l'email à récupérer|


Retour
------

```
{"response":{"id":"3928","parentid":"0","corpid":"1033","ownerid":"1677","linkedtype":"system","linkedid":"0","relatedtype":"alert","relatedid":"662","box":"inbox","sender":"a:2:{s:5:\"email\";s:17:\"[email protected]\";s:4:\"name\";s:13:\"Alerte Sellsy\";}","recipients":"a:1:{i:0;a:4:{s:5:\"email\";s:18:\".com\";s:4:\"name\";s:0:\"\";s:8:\"datetime\";s:17:\"30\/03\/2014, 10:00\";s:4:\"copy\";b:0;}}","cc":"","bcc":"","attachment":"a:0:{}","subject":"Nouvelle alerte Sellsy. Synaptech","message":"Alerte email Bonjour, voici votre alerte sur  Synaptech Note sur la t\u00e2che :Rappeler le client Collaborateurs associ\u00e9s \u00e0 cette alerte : Remy Neuter Alerte envoy\u00e9e le 30\/04\/2014, 10:00","scheduled_date":"0000-00-00 00:00:00","scheduled_timestamp":"0","created_date":"1400497965","updated_date":"0","sent_date":"0","step":"unread","status":"ok","star":"N","chase":"N"},"error":"","status":"success"}
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.getAttachments', 
    'params' => array(
        'filter' => {{filter}},
        'pagination' => array(
            'nbperpage' => {{nbperpage}},
            'pagenum' => {{pagenum}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
    
```


Paramètres
----------


|Paramètre    |Requis|Type  |Défaut|Description                            |
|-------------|------|------|------|---------------------------------------|
|{{filter}}   |Non   |string|-     |Filtrer sur le nom du fichier          |
|{{nbperpage}}|Non   |int   |50    |Nombre de fichiers par page de résultat|
|{{pagenum}}  |Non   |int   |1     |Page de résultats                      |


Retour
------

```
{
    "response": [
        {
            "ownerid": "",
            "ownertype": "",
            "id": "",
            "name": "",
            "size": "",
            "created": "",
            "public_url": ""
        },
        {
            "ownerid": "",
            "ownertype": "",
            "id": "",
            "name": "",
            "size": "",
            "created": "",
            "public_url": ""
        },
        ...
    ],
    "error": "",
    "status": "success"
}
```


Requête
-------

```
    $request =  array(
        'method' => 'Mails.getCustomTags',
        'params' => array()
    );
    sellsyConnect::load()->requestApi($request);
```


Retour
------

```
    {
        "response":[
        {
            "name":"corpName", /* identifier */
            "label":"", /* description */
            "value":"" /* example using your own data (if possible) */
        },
        {
            "name":"corpTel",
            "label":"",
            "value":""
        },
        ...
        ],
        "error":"",
        "status":"success"
    }
    
```


**Utilisation de la méthode createCustomTemplate :**  
La liste des pièces jointes disponibles est obtenue via la route Mails.getAttachments  
La liste des custom tags disponibles est obtenue via la route Mails.getCustomTags  
Les custom tags s'ajoutent au message et au sujet en les entourant des caractères "%". Par exemple : _%corpName%_

Requête
-------

```
$request =  array( 
    'method' => 'Mails.createCustomTemplate', 
    'params' => array(
        'name' => {{name}},
        'subject' => {{subject}},
        'message' => {{message}},
        'attachments' => {{attachments}}, /* [attachment_id, attachment_id, ..] */
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description                    |
|---------------|------|------|------|-------------------------------|
|{{name}}       |Oui   |string|Aucun |Nom associé au template        |
|{{subject}}    |Oui   |text  |Aucun |Sujet de l'email               |
|{{message}}    |Oui   |text  |Aucun |Contenu de l'email             |
|{{attachments}}|Non   |array |Aucun |Identifiants des pièces jointes|


Retour
------

```
    {
        "response": {
            "template_id": {{ id }}
        },
        "error": "",
        "status": "success"
    }
```


**Utilisation de la méthode updateCustomTemplate :**  
La liste des pièces jointes disponibles est obtenue via la route Mails.getAttachments  
La liste des custom tags disponibles est obtenue via la route Mails.getCustomTags  
Les custom tags s'ajoutent au message et au sujet en les entourant des caractères "%". Par exemple : _%corpName%_

Requête
-------

```
$request =  array( 
    'method' => 'Mails.updateCustomTemplate', 
    'params' => array(
        'template_id' => {{id}},
        'name' => {{name}},
        'subject' => {{subject}},
        'message' => {{message}},
        'attachments' => {{attachments}}, /* [attachment_id, attachment_id, ..] */
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description                       |
|---------------|------|------|------|----------------------------------|
|{{id}}         |Oui   |int   |Aucun |Identifiant du template à modifier|
|{{name}}       |Oui   |string|Aucun |Nom associé au template           |
|{{subject}}    |Oui   |text  |Aucun |Sujet de l'email                  |
|{{message}}    |Oui   |text  |Aucun |Contenu de l'email                |
|{{attachments}}|Non   |array |Aucun |Identifiants des pièces jointes   |


Retour
------

```
    {
        "response": null,
        "error": "",
        "status": "success"
    }
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.deleteCustomTemplate', 
    'params' => array(
        'template_id' => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                        |
|---------|------|----|------|-----------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du template à supprimer|


Retour
------

```
    {
        "response": null,
        "error": "",
        "status": "success"
    }
```


Requête
-------

```
$request =  array( 
    'method' => 'Mails.getCustomTemplate', 
    'params' => array(
        'template_id' => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                        |
|---------|------|----|------|-----------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du template à récupérer|


Retour
------

```
    {
        "response": {
            "id": "",
            "corpid": "",
            "ownerid": "",
            "name": "",
            "subject": "",
            "message": "",
            "attachments": [
                "",
                ""
            ],
            "status": "ok"
        },
        "error": "",
        "status": "success"
    }
```


Requête
-------

```
$request =  array( 
    'method' => 'Event.getList', 
    'params' => array(
        'search'    => array(
            'relatedid' => {{relatedid}},
            'relatedtype'   => {{relatedtype}},
			'start' => {{start}},
			'end' => {{end}}
        ),
        'pagination'    => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{relatedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant associé au type
* Paramètre: {{relatedtype}}
  * Requis: Oui
  * Type: enum('staff', 'client', 'people', 'item', 'service', 'invoice', 'estimate', 'delivery', 'order', 'creditnote', 'proforma', 'model', 'opportunity', 'prospect', 'project', 'proptemplate', 'propdocument', 'timetracking', 'ticket', 'shop', 'campaign', 'purInvoice', 'purCreditnote', 'purDelivery', 'purOrder', 'supplier', 'rent', 'book')
  * Défaut: Aucun
  * Description: Type associé aux évènements
* Paramètre: {{start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de récupérer les évènements à partir d'une date
* Paramètre: {{end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Permet de récupérer les évènements jusqu'à une certaine date
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page voulue
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'évènements voulu par page


Retour
------

```
{"response":{"infos":{"nbperpage":20,"pagenum":1},"result":[{"id":"97643","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426589009","date":"17\/03\/2015, 11:43","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97642","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426589008","date":"17\/03\/2015, 11:43","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97641","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588952","date":"17\/03\/2015, 11:42","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97640","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588951","date":"17\/03\/2015, 11:42","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97639","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588893","date":"17\/03\/2015, 11:41","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97638","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588892","date":"17\/03\/2015, 11:41","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97636","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588773","date":"17\/03\/2015, 11:39","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97637","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588773","date":"17\/03\/2015, 11:39","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97634","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588716","date":"17\/03\/2015, 11:38","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97635","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426588716","date":"17\/03\/2015, 11:38","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97632","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426584909","date":"17\/03\/2015, 10:35","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97631","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426584907","date":"17\/03\/2015, 10:35","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97630","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426583336","date":"17\/03\/2015, 10:08","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97629","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426583335","date":"17\/03\/2015, 10:08","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-repeat","action":"a modifi\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"},{"id":"97627","logType":"peopleLog","relatedtype":"people","relatedid":"90817","timestamp":"1426582771","date":"17\/03\/2015, 09:59","avatar":"","owner":"Valentin Navarrete","related":"212 RESTAURANT<\/a>","relatedLabel":"contact","relatedFa":" fa-user ","fa":"fa-plus","action":"a cr\u00e9\u00e9 le contact","relatedNoLink":"212 RESTAURANT","upperRelatedLabel":"Contact"}]},"error":"","status":"success"}             
```


[](\"http:\/\/antoine2.myfacture.typhon.net\/?_f=people&id=90817\")

[](\"http:\/\/antoine2.myfacture.typhon.net\/?_f=people&id=90817\")

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request =  array( 
    'method' => 'Expense.getList',
    'params' => array(
        'search'    => array(
            'ident'     => {{ident}},
            'steps'     => {{steps}}
        ),
        'pagination'    => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ident}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Recherche de note de frais par identifiant
* Paramètre: {{steps}}
  * Requis: Non
  * Type: array
  * Défaut: 
  * Description: Recherche de note de frais par étape. Valeurs possibles : (draft, accepted ou refused)
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page voulue
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de notes de frais voulu par page


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"1"},"result":[{"id":"562","corpid":"1641","ownerid":"2542","corpname":"Sellsy","prefsid":"0","thirdid":"119304","thirdname":"Activane","hasVat":"Y","status":"ok","step":"draft","fileid":"0","filename":"","nbpages":"1","ident":"EXP-20140912-00001","externalIdent":"","created":"2014-09-12 16:20:50","displayedDate":"2014-09-12","currencysymbol":"\u20ac","docspeakerText":"","docspeakerStaffId":"2542","docspeakerStaffFullName":"R\u00e9my Neuter","ownerFullName":"R\u00e9my Neuter","subject":"","corpaddressid":"0","thirdaddressid":"0","rowsAmount":"58.330000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"58.330000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"58.330000000","taxesAmountSum":"11.670000000","taxesAmountDetails":"a:1:{i:86718;s:12:\"11.670000000\";}","totalAmount":"70.000000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"0","payDateText":"","payDateCustom":"0000-00-00","payMediumsText":"","payCheckOrderText":"","payBankAccountText":"","contactId":"0","contactName":"","analyticsCode":"","recordable":"N","recorded":"N","isTaxesInc":"N","hasDoubleVat":"N","isFromPresta":"N","oldid":"0","note":"","nbPay":"0","step_color":"pink","step_hex":"#C033DA","step_label":"\u00c0 valider","step_css":"colorDraft","step_banner":"draft","step_id":"draft","formatted_totalAmount":"70.00 \u20ac","formatted_totalAmountTaxesFree":"58.33 \u20ac","formatted_displayedDate":"12\/09\/2014","staff_name":"R\u00e9my Neuter","staff_img":"\/ressources\/logged\/img\/common\/people.jpg"}]},"error":"","status":"success"}
```


Requete
-------

```
$request = array( 
    'method' => 'Expense.getOne',
    'params' => array(
        'id'    => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                    |
|---------|------|----|------|-------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant de la note de frais|


Retour
------

```
{"response":{"id":"562","corpid":"1641","ownerid":"2542","corpname":"Sellsy","prefsid":"0","thirdid":"119304","thirdname":"Activane","hasVat":"Y","status":"ok","step":"draft","fileid":"0","filename":"","nbpages":"1","ident":"EXP-20140912-00001","externalIdent":"","created":"2014-09-12 16:20:50","displayedDate":"2014-09-12","currencysymbol":"\u20ac","docspeakerText":"","docspeakerStaffId":"2542","docspeakerStaffFullName":"R\u00e9my Neuter","ownerFullName":"R\u00e9my Neuter","subject":"","corpaddressid":"0","thirdaddressid":"0","rowsAmount":"58.330000000","discountPercent":"0.000000000","discountAmount":"0.000000000","rowsAmountDiscounted":"0.000000000","offerAmount":"0.000000000","rowsAmountAllInc":"58.330000000","packagingsAmount":"0.000000000","shippingsAmount":"0.000000000","totalAmountTaxesFree":"58.330000000","taxesAmountSum":"11.670000000","taxesAmountDetails":"a:1:{i:86718;s:12:\"11.670000000\";}","totalAmount":"70.000000000","totalEcoTaxFree":"0.000000000","totalEcoTaxInc":"0.000000000","ecoTaxId":"0","payDateText":"","payDateCustom":"0000-00-00","payMediumsText":"","payCheckOrderText":"","payBankAccountText":"","contactId":"0","contactName":"","analyticsCode":"","recordable":"N","recorded":"N","isTaxesInc":"N","hasDoubleVat":"N","isFromPresta":"N","oldid":"0","note":"","rows":{"1061":{"parentid":"0","expid":"562","status":"ok","rank":"1","type":"once","linkedid":"0","declid":"0","name":"Essence","notes":"Plein du v\u00e9hicule de service CP-0001","unitAmount":"58.330000000","unitAmountTaxesInc":"69.996000000","ecoTax":"0.000000000","useEcoTax":"N","unitid":"86680","unitText":"unit\u00e9","qt":"1.000000000","discount":"0.000000000","discountUnit":"percent","taxid":"86718","taxrate":"20.000000000","tax2id":"0","tax2rate":"0.000000000","isOption":"N","totalAmount":"58.330000000","totalAmountTaxesInc":"70.000000000","taxAmount":"11.670000000","tax2Amount":"0.000000000","accountingCode":"","analyticsCode":"","id":"1061","discountPercent":"0,00","formatted_unitAmount":"58,33","formatted_qt":"1,00","formatted_discount":"0,00","formatted_taxrate":"20,00","formatted_tax2rate":"0,00","formatted_totalAmount":"58,33","formatted_totalAmountTaxesInc":"70,00","formatted_taxAmount":"11,67","formatted_tax2Amount":"0,00","formatted_unitAmountTaxesInc":"70,00","formatted_discountPercent":"0,00","ecoTaxDisplay":"0.00","totalEcoTaxAmount":"0.000000000","totalEcoTaxAmountDisplay":"0.000000000","formatted_totalEcoTaxAmount":"0,00"}},"justif":[],"formatted_displayedDate":"12\/09\/2014","formatted_totalAmount":"70.00"},"error":"","status":"success"}
```


Requete
-------

```
$request = array( 
    'method' => 'Expense.create',
    'params' => array(
        'expense'   => array(
            'ident'     => {{ident}},
            'thirdid'   => {{thirdid}},
            'staffid'   => {{staffid}},
            'displayedDate' => {{displayedDate}},
            'currency'  => {{currencyID}}
        ),
        'rows'  => array(
            0  => array(
                'name'      => {{row_name}},
                'notes'     => {{row_notes}},
                'unitAmount'    => {{row_unitAmount}},
                'taxid'     => {{{row_taxID}}}
            )
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ident}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant de la note de frais
* Paramètre: {{thirdid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du fournisseur associé à la note de frais
* Paramètre: {{staffid}}
  * Requis: Non
  * Type: int
  * Défaut: Créateur de la note de frais
  * Description: Identifiant du collaborateur attaché à la note de frais
* Paramètre: {{row_name}}
  * Requis: Oui, si row_notes non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la ligne de la note de frais
* Paramètre: {{row_notes}}
  * Requis: Oui, si row_name non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Description de la ligne de la note de frais
* Paramètre: {{row_unitAmount}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant hors taxe de la ligne de la note de frais
* Paramètre: {{row_taxid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la taxe associée à la ligne de la note de frais


Retour
------

```
{"response":{{expenseID}},"error":"","status":"success"}
```


Requete
-------

```
$request = array( 
    'method' => 'Expense.update',
    'params' => array(
        'id'    => {{id}},
        'expense'   => array(
            'ident'     => {{ident}},
            'thirdid'   => {{thirdid}},
            'staffid'   => {{staffid}},
            'displayedDate' => {{displayedDate}},
            'currency'  => {{currencyID}}
        ),
        'rows'  => array(
            0  => array(
                'name'      => {{row_name}},
                'notes'     => {{row_notes}},
                'unitAmount'    => {{row_unitAmount}},
                'taxid'     => {{{row_taxID}}}
            )
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la note de frais à mettre à jour
* Paramètre: {{ident}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant de la note de frais
* Paramètre: {{thirdid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du fournisseur associé à la note de frais
* Paramètre: {{staffid}}
  * Requis: Non
  * Type: int
  * Défaut: Valeur avant mise à jour
  * Description: Identifiant du collaborateur attaché à la note de frais
* Paramètre: {{row_name}}
  * Requis: Oui, si row_notes non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la ligne de la note de frais
* Paramètre: {{row_notes}}
  * Requis: Oui, si row_name non fourni
  * Type: string
  * Défaut: Aucun
  * Description: Description de la ligne de la note de frais
* Paramètre: {{row_unitAmount}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant hors taxe de la ligne de la note de frais
* Paramètre: {{row_taxid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la taxe associée à la ligne de la note de frais


Retour
------

```
{"response":{{expenseID}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Expense.delete',
    'params' => array(
        'id'    => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                                |
|---------|------|----|------|-------------------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant de la note de frais à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Expense.getNextIdent',
    'params' => array()
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètre à cette fonction

Retour
------

```
{"response":"{{ident}}","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'ListingSetting.getSavedSearches', 
    'params' => array(
        'linkedTypes' => {{linkedTypes}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedTypes}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Types liés aux recherches sauvegardées. Valeurs possibles : docmodels, docinvoices, docestimates, doccreditnotes, docproformas, docdeliveries, docorders, thirds, suppliers, prospects, items, services, tasks, timetrackingentries, tickets, people, opportunities,purdocdeliveries, purdocorders, purdocinvoices, purdoccreditnotes


Retour
------

```
{"response":{"results":{saved_searches}},"error":"","status":"success"}
```


#### Informations

L'identifiant de la recherche sauvegardé est à fournir dans le tableau search de votre requête API.

Si un id de recherche sauvegardé est fourni à l'API, tout les autres filtres envoyés seront ignorés.

La recherche par recherche sauvegardé est disponible sur les méthodes suivantes :

*   Agenda.getList Seulement pour les tâches
*   Catalogue.getList
*   Client.getList
*   Document.getList
*   Expense.getList
*   Catalogue.getList
*   Marketing.getCampaigns
*   Marketing.getMailingLists
*   Opportunities.getList
*   Peoples.getList
*   Prospects.getList
*   Purchase.getList
*   Supplier.getList
*   Support.getList
*   Timetracking.getList

Requête
-------

```
$request = array(
    'params' => array(
        'search'    => array(
			'savedSearchId' => {{savedSearchId}}
		)
	)
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------


|Paramètre        |Requis|Type|Défaut|Description                  |
|-----------------|------|----|------|-----------------------------|
|{{savedSearchId}}|Non   |int |Aucun |ID de la recherche sauvegardé|


Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = array( 
    'method' => 'Marketing.getMailingLists', 
    'params' => array(
        'pagination' => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre    |Requis|Type|Défaut|Description                       |
|-------------|------|----|------|----------------------------------|
|{{pagenum}}  |Non   |int |1     |Numéro de la page voulue          |
|{{nbperpage}}|Non   |int |10    |Nombre d'évènements voulu par page|


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"2"},"result":{"74":{"id":"74","corpid":"1033","ownerid":"1851","name":{{name}},"createdDate":"1428583671","updatedDate":"0","status":"ok","ownerFullName":"R\u00e9my Neuter","ownerEmail":".com","nbContacts":"1","formattedCreatedDate":"09\/04\/2015","formattedUpdatedDate":"N\/C"},"71":{"id":"71","corpid":"1033","ownerid":"1675","name":"ef","createdDate":"1421943452","updatedDate":"0","status":"ok","ownerFullName":"Antoine Loux","ownerEmail":"[email protected]","nbContacts":"1","formattedCreatedDate":"22\/01\/2015","formattedUpdatedDate":"N\/C"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Marketing.createMailingList', 
    'params' => array(
			'name' => {{name}},
			'clientIds' => {{clientIds}},
			'prospectIds' => {{prospectIds}},
			'supplierIds' => {{supplierIds}},
			'peopleIds' => {{peopleIds}},
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description                                     |
|---------------|------|------|------|------------------------------------------------|
|{{name}}       |Oui   |string|Aucun |Nom de la mailingList                           |
|{{clientIds}}  |Non   |array |Aucun |Ids des clients à ajouter à la mailing list     |
|{{prospectIds}}|Non   |array |Aucun |Ids des prospects à ajouter à la mailing list   |
|{{supplierIds}}|Non   |array |Aucun |Ids des fournisseurs à ajouter à la mailing list|
|{{peopleIds}}  |Non   |array |Aucun |Ids des contacts à ajouter à la mailing list    |


Retour
------

```
{"response":{"added":["%third_729852%","%third_730123%","%people_91013%","%people_91139%"],"existing":[],"id":152},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Marketing.updateMailingList', 
    'params' => array(
			'id' => {{id}},
			'name' => {{name}},
			'clientIds_toAdd' =>   {{clientIds_toAdd}},
			'prospectIds_toAdd' => {{prospectIds_toAdd}},
			'supplierIds_toAdd' => {{supplierIds_toAdd}},
			'peopleIds_toAdd' =>   {{peopleIds_toAdd}},
			'clientIds_toRemove' => {{clientIds_toRemove}},
			'prospectIds_toRemove' => {{prospectIds_toRemove}},
			'supplierIds_toRemove' => {{supplierIds_toRemove}},
			'peopleIds_toRemove' =>  {{peopleIds_toRemove}},
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre               |Requis|Type  |Défaut|Description                                        |
|------------------------|------|------|------|---------------------------------------------------|
|{{id}}                  |Oui   |int   |Aucun |Id de la mailingList                               |
|{{name}}                |Oui   |string|Aucun |Nom de la mailingList                              |
|{{clientIds_toAdd}}     |Non   |array |Aucun |Ids des clients à ajouter à la mailing list        |
|{{prospectIds_toAdd}}   |Non   |array |Aucun |Ids des prospects à ajouter à la mailing list      |
|{{supplierIds_toAdd}}   |Non   |array |Aucun |Ids des fournisseurs à ajouter à la mailing list   |
|{{peopleIds_toAdd}}     |Non   |array |Aucun |Ids des contacts à ajouter à la mailing list       |
|{{clientIds_toRemove}}  |Non   |array |Aucun |Ids des clients à supprimer de la mailing list     |
|{{prospectIds_toRemove}}|Non   |array |Aucun |Ids des prospects à supprimer de la mailing list   |
|{{supplierIds_toRemove}}|Non   |array |Aucun |Ids des fournisseurs à supprimer de la mailing list|
|{{peopleIds_toRemove}}  |Non   |array |Aucun |Ids des contacts à supprimer de la mailing list    |


Retour
------

```
 {"response":{"added":[],"existing":["%people_91013%","%people_91139%"],"removed":["729852","730123"]},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Marketing.createCampaign', 
    'params' => array(
        'campaign' => array(
            'name'          => {{name}},
            'type'          => {{type}},
            'segments'      => array(
                'savedSearches'     => {{savedSearches}},
                'mailingLists'      => {{mailingLists}}
            ),
            'includeThirdContacts'  => {{includeThirdContacts}},
            'fromName'      => {{fromName}},
            'subject'       => {{subject}},
            'fromEmail'     => {{fromEmail}},
            'editMode'      => {{editMode}},
            'utm'       => array(
                'campaign'  => {{campaign}},
                'source'    => {{source}},
                'medium'    => {{medium}}
            ),
            'content'   => array(
                'html'      => {{html}},
                'text'      => {{text}}
            ),
            'message'   => {{message}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: 
  * Description: Nom de la campagne
* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum
  * Défaut: 
  * Description: Type de la campagne. Valeurs possible : email ou sms
* Paramètre: {{savedSearches}}
  * Requis: Non, sauf si le paramètre {{mailingLists}} n'est pas fourni
  * Type: int
  * Défaut: 
  * Description: Tableau d'identifiant de recherches sauvegardées (ListingSetting.getSavedSearches)
* Paramètre: {{mailingLists}}
  * Requis: Non, sauf si le paramètre {{savedSearches}} n'est pas fourni
  * Type: int
  * Défaut: 
  * Description: Tableau d'identifiant de mailing listes (Marketing.getMailingLists)
* Paramètre: {{includeThirdContacts}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Inclure les contacts des sociétés issues des recherches sauvegardées. Valeurs possible : Y ou N
* Paramètre: {{fromName}}
  * Requis: Oui
  * Type: string
  * Défaut: 
  * Description: Nom de l'expéditeur
* Paramètre: {{subject}}
  * Requis: Oui, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: Objet de l'email
* Paramètre: {{fromEmail}}
  * Requis: Oui, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: Email de l'expéditeur
* Paramètre: {{editMode}}
  * Requis: Oui, pour campagne email seulement
  * Type: enum
  * Défaut: editor
  * Description: Mode d'édition de la campagne email. Valeurs possible : editor ou html
* Paramètre: {{campaign}}
  * Requis: Non, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: UTM Campagne
* Paramètre: {{source}}
  * Requis: Non, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: UTM Source
* Paramètre: {{medium}}
  * Requis: Non, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: UTM Medium
* Paramètre: {{html}}
  * Requis: Oui, si vous créez une campagne email de type html
  * Type: string
  * Défaut: 
  * Description: Contenu HTML de votre email. Pour avoir un rendu optimal, gérez vos CSS de façon inline
* Paramètre: {{text}}
  * Requis: Non, pour campagne email seulement
  * Type: string
  * Défaut: 
  * Description: Version texte de votre email au cas où l'email HTML ne peut être rendu
* Paramètre: {{message}}
  * Requis: Oui, pour campagne SMS seulement
  * Type: string
  * Défaut: 
  * Description: Contenu de votre SMS (160 caractères max)


Retour
------

```
{"response":{"campaignID" : {campaignID}},"error":"","status":"success"}
```


Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requête
-------

```
$request = array( 
    'method' => 'Marketing.getCampaigns', 
    'params' => array(
		'search' => array(
			'steps' => {{steps}},
			'camptypes' => {{camptypes}}
		)
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{steps}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Etat de la campagne, status possible : 'draft','tested','scheduled','sendinprogress','sent','stopped'
* Paramètre: {{camptypes}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Type de campagne.('sms','email')


Retour
------

```
{"response":{"infos":{"nbperpage":100,"nbpages":1,"pagenum":1,"nbtotal":"4"},"result":{"466":{"id":"466","corpid":"1931","ownerid":"2952","name":"OK","fromName":"MyCorp","linkedtype":"email","linkedid":"406","step":{"name":"sendinprogress","hex":"#F3AB56","label":"Envoi en cours","css":"campstep_inprogress"},"batRecipients":"","sendMode":"immediate","scheduleDate":"0","scheduleTimezone":"","stickyNote":"","createdDate":"1464959540","updatedDate":"1464959556","lastSyncDate":"1464959566","sentDate":"1464959602","archived":"N","status":"ok","spentQuotaLog":"17425","refundQuotaLog":"0","needSellsyCheck":"N","isSellsyCheck":"N","includeThirdContacts":"N","campaignSegmentParams":"\"\"","esid":"740804","ownerFullName":"Valentin Test","ownerEmail":"[email protected]","nbReciptiens":"2","type":"Email","typeIcon":"fa fa-envelope-o fa-13","formattedSendMode":"Immediat","formattedArchived":"Non","formattedCreatedDate":"03\/06\/2016","formattedSentDate":"03\/06\/2016","formattedScheduleDate":" - ","tags":[]},"465":{"id":"465","corpid":"1931","ownerid":"2952","name":"TEST 4 TEST","fromName":"MyCorp","linkedtype":"email","linkedid":"405","step":{"name":"scheduled","hex":"#74A5DF","label":"Envoi programm\u00e9","css":"campstep_scheduled"},"batRecipients":"","sendMode":"scheduled","scheduleDate":"1465048800","scheduleTimezone":"Europe\/Paris","stickyNote":"","createdDate":"1464959316","updatedDate":"1464959416","lastSyncDate":"1464959417","sentDate":"0","archived":"N","status":"ok","spentQuotaLog":"17424","refundQuotaLog":"0","needSellsyCheck":"N","isSellsyCheck":"N","includeThirdContacts":"N","campaignSegmentParams":"\"\"","esid":"740799","ownerFullName":"Valentin Test","ownerEmail":"[email protected]","nbReciptiens":"2","type":"Email","typeIcon":"fa fa-envelope-o fa-13","formattedSendMode":"Programm\u00e9","formattedArchived":"Non","formattedCreatedDate":"03\/06\/2016","formattedSentDate":" - ","formattedScheduleDate":"04\/06\/2016","tags":[]},"464":{"id":"464","corpid":"1931","ownerid":"2952","name":"Alexis","fromName":"MyCorp","linkedtype":"email","linkedid":"404","step":{"name":"scheduled","hex":"#74A5DF","label":"Envoi programm\u00e9","css":"campstep_scheduled"},"batRecipients":"","sendMode":"scheduled","scheduleDate":"1465059600","scheduleTimezone":"Australia\/Sydney","stickyNote":"","createdDate":"1464957223","updatedDate":"1464957292","lastSyncDate":"1464957295","sentDate":"0","archived":"N","status":"ok","spentQuotaLog":"17423","refundQuotaLog":"0","needSellsyCheck":"N","isSellsyCheck":"N","includeThirdContacts":"N","campaignSegmentParams":"\"\"","esid":"740779","ownerFullName":"Valentin Test","ownerEmail":"[email protected]","nbReciptiens":"18","type":"Email","typeIcon":"fa fa-envelope-o fa-13","formattedSendMode":"Programm\u00e9","formattedArchived":"Non","formattedCreatedDate":"03\/06\/2016","formattedSentDate":" - ","formattedScheduleDate":"04\/06\/2016","tags":[]},"430":{"id":"430","corpid":"1931","ownerid":"2952","name":"TEST","fromName":"MyCorp","linkedtype":"email","linkedid":"380","step":{"name":"draft","hex":"#C86BDA","label":"Brouillon","css":"campstep_draft"},"batRecipients":"","sendMode":"immediate","scheduleDate":"0","scheduleTimezone":"","stickyNote":"","createdDate":"1456389816","updatedDate":"1456389902","lastSyncDate":"0","sentDate":"0","archived":"N","status":"ok","spentQuotaLog":"0","refundQuotaLog":"0","needSellsyCheck":"N","isSellsyCheck":"N","includeThirdContacts":"N","campaignSegmentParams":"\"\"","esid":"0","ownerFullName":"Valentin Test","ownerEmail":"[email protected]","nbReciptiens":"16","type":"Email","typeIcon":"fa fa-envelope-o fa-13","formattedSendMode":"Immediat","formattedArchived":"Non","formattedCreatedDate":"25\/02\/2016","formattedSentDate":" - ","formattedScheduleDate":" - ","tags":[]}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Marketing.getCampaign', 
    'params' => array(
		'id' => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description|
|---------|------|----|------|-----------|
|{{id}}   |Oui   |int |Aucun |Campaign ID|


Retour
------

```
{"response":{"id":"532","corpid":"1931","ownerid":"2952","name":"COPY","fromName":"MyCorp","linkedtype":"email","linkedid":"472","step":"scheduled","batRecipients":[],"sendMode":"scheduled","scheduleDate":"1472304120","scheduleTimezone":"Europe\/Paris","stickyNote":"","createdDate":"1472133297","updatedDate":"1472133329","lastSyncDate":"1472133329","sentDate":"0","archived":"N","status":"ok","spentQuotaLog":"0","refundQuotaLog":"0","needSellsyCheck":"N","isSellsyCheck":"N","includeThirdContacts":"Y","campaignSegmentParams":"","esid":"763077","camptypeid":"472","campaignid":"532","fromEmail":"[email protected]","replyEmailAddress":"","priority":"NORMAL","subject":"test","editMode":"editor","structure":"","contentHtml":"","contentText":"","embedImages":"Y","utmSource":"","utmCampaign":"","utmMedium":"","stats":{"delivered":{"label":"D\u00e9livrabilit\u00e9","avg":"0,0000 %","total":"0 emails d\u00e9livr\u00e9s","color":"#61BE66"},"openned":{"label":"Taux d'ouverture","avg":"0,0000 %","total":"0 ouvertures uniques","color":"#61BE66"},"cumopenned":{"label":"Taux d'ouverture cumul\u00e9","avg":"0,0000 %","total":"0 ouvertures totales","color":"#529ECD"},"clicked":{"label":"Taux de clic","avg":"0,0000 %","total":"0 clics uniques","color":"#529ECD"},"cumclicked":{"label":"Taux de clic cumul\u00e9","avg":"0,0000 %","total":"0 clics totaux","color":"#529ECD"},"spam":{"label":"Taux de spam","avg":"0,0000 %","total":"0 emails class\u00e9s en spam","color":"#EA6464"},"softbounced":{"label":"Taux de soft bounce","avg":"0,0000 %","total":"0 emails soft bounce","color":"#E7A121;"},"hardbounced":{"label":"Taux de hard bounce","avg":"0,0000 %","total":"0 emails hard bounce","color":"#E7A121;"},"unsub":{"label":"Taux de d\u00e9sabonnement","avg":"0,0000 %","total":"0 personnes d\u00e9sabonn\u00e9es","color":"#EA6464"}},"recipients":{"corporation_981283":{"id":"1046679","corpid":"1931","campaignid":"532","linkedtype":"corporation","linkedid":"981283","civil":"","name":"Navarrete Valentin","forename":"","email":"[email protected]","mobile":"","data":"{\"company\":\"Navarrete Valentin\"}","status":"ok","delivered":"N","nbopen":"0","nbclick":"0","bounce":"N","unsub":"N","spam":"N"},"people_122018":{"id":"1046680","corpid":"1931","campaignid":"532","linkedtype":"people","linkedid":"122018","civil":"M.","name":"Navarrete","forename":"Valentin","email":"[email protected]","mobile":"","data":"{\"company\":\"Navarrete Valentin\"}","status":"ok","delivered":"N","nbopen":"0","nbclick":"0","bounce":"N","unsub":"N","spam":"N"},"corporation_731208":{"id":"1046681","corpid":"1931","campaignid":"532","linkedtype":"corporation","linkedid":"731208","civil":"","name":"Sellsy","forename":"","email":"[email protected]","mobile":"0659289991","data":"{\"company\":\"Sellsy\"}","status":"ok","delivered":"N","nbopen":"0","nbclick":"0","bounce":"N","unsub":"N","spam":"N"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
	'method' => 'Marketing.getPrefs', 
	'params' => array()
);
sellsyConnect::load()->requestApi($request);
				
```


Paramètres
----------

Retour
------

```
{"response":{"result":{"id":"260","corpid":"2502","folderID":"53713","fromName":"RBCorp","fromEmail":"","emailsBAT":"a:0:{}","mobilesBAT":"a:0:{}","headerEmail":"","footerEmail":"","unsubscribeText":"Si vous ne souhaitez plus recevoir de messages de notre part","unsubscribeLink":"d\u00e9sabonnez-vous ici","mirrorText":"Vous ne parvenez pas \u00e0 voir ce message ?","mirrorLink":"cliquez ici","isSellsyCheck":"N","unsubscribeListID":"52210","publicLinkOptionEmail":"Y","publicLinkOptionSMS":"Y","publicLinkOptionPhone":"Y","publicLinkOptionMail":"Y","publicLinkOptionCustom":"Y","publicLinkOptionAll":"Y","campaignLabel":[{"langId":"fr","langName":"Fran\u00e7ais","campaign_all":"J'accepte d'\u00eatre contact\u00e9 selon les diff\u00e9rents types de campagne","campaign_email":"J'accepte d'\u00eatre contact\u00e9 par courrier","campaign_sms":"J'accepte d'\u00eatre contact\u00e9 par SMS","campaign_phone":"J'accepte d'\u00eatre contact\u00e9 par t\u00e9l\u00e9phone","campaign_mail":"J'accepte d'\u00eatre contact\u00e9 par courrier","campaign_custom":"Cochez cette case si vous souhaitez que nous personnalisions votre exp\u00e9rience avec nous en fonction de vos centres d'int\u00e9r\u00eat ou de vos habitudes d'achat (ex : communications personnalis\u00e9es). Pour davantage d'informations, veuillez lire notre Politique de vie priv\u00e9e<\/a>"},{"langId":"en","langName":"English","campaign_all":"I agree to be contacted according to the different types of campaigns","campaign_email":"I agree to be contacted by email","campaign_sms":"I agree to be contacted by sms","campaign_phone":"I agree to be contacted by phone","campaign_mail":"I agree to be contacted by mail","campaign_custom":"Cochez cette case si vous souhaitez que nous personnalisions votre exp\u00e9rience avec nous en fonction de vos centres d'int\u00e9r\u00eat ou de vos habitudes d'achat (ex : communications personnalis\u00e9es). Pour davantage d'informations, veuillez lire notre Politique de vie priv\u00e9e<\/a>"}]}},"error":"","status":"success"}
```


Requête
-------

```
$request = array( 
    'method' => 'Marketing.sendCampaign', 
    'params' => array(
		'id' => {{id}},
		'sendMode' => {{sendMode}},
		'scheduleDate' => {{scheduleDate}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Campaign ID
* Paramètre: {{sendMode}}
  * Requis: Oui
  * Type: enum('immediate','scheduled')
  * Défaut: Aucun
  * Description: Le mode d'envoi : envoi immédiat (immediate) ou programmé (scheduled)
* Paramètre: {{scheduleDate}}
  * Requis: Oui si sendMode scheduled
  * Type: timestamp
  * Défaut: Aucun
  * Description: date d'envoi de la campagne


Retour
------

```
{"response":"","error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Marketing.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                         |
|------------|------|----|------|------------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant de la campagne marketing|
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire    |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
		$request = array(
			'method'    =>  'Marketing.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description               |
|-------------|------|-----|-------|--------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant de la campagne|
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes  |


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request = array( 
    'method' => 'Opportunities.getList', 
    'params' => array(
        'pagination' => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        ),
        'search' => array(
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end}},
            'funnelid'      => {{funnelid}},
            'thirds'        => {{thirds}},
            'tags'          => {{tags}},
			'staffs'		=> {{staffs}},
			'stepid'		=> {{stepid}},
			'status'		=> {{status}},
            'periodAssignment_start'  => {{periodAssignment_start}},
            'periodAssignment_end'    => {{periodAssignment_end}},


        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page voulue
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre d'évènements voulu par page
* Paramètre: {{periodecreated_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Début de la fourchette de date de création
* Paramètre: {{periodecreated_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Fin de la fourchette de date de création
* Paramètre: {{periodAssignment_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Début de la fourchette de date de dernière assignation d'un collaborateur
* Paramètre: {{periodAssignment_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Fin de la fourchette de date de dernière assignation d'un collaborateur
* Paramètre: {{funnelid}}
  * Requis: Non sauf si le stepid est envoyé
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du pipeline
* Paramètre: {{stepid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'étape dans le pipeline
* Paramètre: {{status}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Status de l'opportunité ('open', 'won', 'lost', 'late', 'cancelled','closed')
* Paramètre: {{thirds}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d‘identifiants client/prospect
* Paramètre: {{staffs}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d‘identifiants des collaborateurs en charge de l'opportunité
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Smart-tags, séparés par des virgules


Retour
------

```
    {"response":{"infos":{"nbperpage":10,"nbpages":2,"pagenum":"1","nbtotal":"13"},"result":{"30":{"id":"30","corpid":"138","ownerid":"317","linkedtype":"third","linkedid":"36673","funnelid":"48","date":"2013-01-28 00:00:00","dueDate":"2013-01-31 00:00:00","name":"Test","ident":"#sp#OPP#sp#-00001","proba":"40","potential":"200","stepid":"338","status":"ok","signed":"open","brief":"Je test les opportunit\u00e9s pour voir comment \u00e7a marche !<\/p>","source":"5","stickyNote":"","dateFormatted":"28\/01\/2013","dueDateFormatted":"31\/01\/2013","stepLabel":"N\u00e9gociation","funnelName":"Default","potentialFormatted":"200,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"Test DeTest","staffSummary":"Test DeTest","third":"A & M","canDelete":"Y","canEdit":"Y"},"31":{"id":"31","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"19","funnelid":"48","date":"2013-01-28 00:00:00","dueDate":"2013-01-31 00:00:00","name":"Test Again","ident":"#sp#OPP#sp#-00002","proba":"40","potential":"4899","stepid":"338","status":"ok","signed":"open","brief":"Je commence \u00e0 comprendre le truc<\/p>","source":"4","stickyNote":"","dateFormatted":"28\/01\/2013","dueDateFormatted":"31\/01\/2013","stepLabel":"N\u00e9gociation","funnelName":"Default","potentialFormatted":"4 899,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"","staffSummary":"","third":"(prospect supprim\u00e9)","canDelete":"Y","canEdit":"Y"},"41":{"id":"41","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"19","funnelid":"48","date":"2013-01-29 00:00:00","dueDate":"2013-01-29 00:00:00","name":"TEST","ident":"#sp#OPP#sp#-00005","proba":"0","potential":"0","stepid":"334","status":"ok","signed":"open","brief":"","source":"4","stickyNote":"","dateFormatted":"29\/01\/2013","dueDateFormatted":"29\/01\/2013","stepLabel":"Piste","funnelName":"Default","potentialFormatted":"0,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"","staffSummary":"","third":"(prospect supprim\u00e9)","canDelete":"Y","canEdit":"Y"},"42":{"id":"42","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"28","funnelid":"48","date":"2013-01-29 00:00:00","dueDate":"2013-01-29 00:00:00","name":"TEST 2","ident":"#sp#OPP#sp#-00006","proba":"0","potential":"0","stepid":"334","status":"ok","signed":"lost","brief":"","source":"4","stickyNote":"","dateFormatted":"29\/01\/2013","dueDateFormatted":"29\/01\/2013","stepLabel":"Piste","funnelName":"Default","potentialFormatted":"0,00 \u20ac","statusLabel":"Perdue","statusColor":"#ad0000","staffs":"","staffSummary":"","third":"(prospect supprim\u00e9)","canDelete":"Y","canEdit":"Y"},"53":{"id":"53","corpid":"138","ownerid":"317","linkedtype":"third","linkedid":"38484","funnelid":"48","date":"2013-01-29 00:00:00","dueDate":"2013-01-30 00:00:00","name":"OPP","ident":"#sp#OPP#sp#-00008","proba":"30","potential":"1.23457e+08","stepid":"337","status":"ok","signed":"open","brief":"grgrdgsgdxg<\/p>","source":"5","stickyNote":"","dateFormatted":"29\/01\/2013","dueDateFormatted":"30\/01\/2013","stepLabel":"Envoi de devis","funnelName":"Default","potentialFormatted":"123 457 000,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"Test DeTest","staffSummary":"Test DeTest","third":"Test from API (MAJ)","canDelete":"Y","canEdit":"Y"},"54":{"id":"54","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"19","funnelid":"48","date":"2013-01-29 00:00:00","dueDate":"2013-01-29 00:00:00","name":"TEST","ident":"OPP-00015","proba":"53","potential":"123","stepid":"334","status":"ok","signed":"open","brief":"<\/p>","source":"5","stickyNote":"","dateFormatted":"29\/01\/2013","dueDateFormatted":"29\/01\/2013","stepLabel":"Piste","funnelName":"Default","potentialFormatted":"123,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"","staffSummary":"","third":"(prospect supprim\u00e9)","canDelete":"Y","canEdit":"Y"},"73":{"id":"73","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"223","funnelid":"49","date":"0000-00-00 00:00:00","dueDate":"2013-02-06 00:00:00","name":"TEST Collab","ident":"OPP-00016","proba":"5","potential":"456","stepid":"342","status":"ok","signed":"open","brief":"","source":"","stickyNote":"","dateFormatted":"06\/02\/2013","dueDateFormatted":"06\/02\/2013","stepLabel":"1st step","funnelName":"New Pipeline","potentialFormatted":"456,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"","staffSummary":"","third":"TEST","canDelete":"Y","canEdit":"Y"},"74":{"id":"74","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"223","funnelid":"49","date":"0000-00-00 00:00:00","dueDate":"2013-02-06 00:00:00","name":"Je test qqc","ident":"OPP-00017","proba":"1","potential":"456","stepid":"342","status":"ok","signed":"open","brief":"","source":"","stickyNote":"","dateFormatted":"06\/02\/2013","dueDateFormatted":"06\/02\/2013","stepLabel":"1st step","funnelName":"New Pipeline","potentialFormatted":"456,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"","staffSummary":"","third":"TEST","canDelete":"Y","canEdit":"Y"},"75":{"id":"75","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"223","funnelid":"49","date":"0000-00-00 00:00:00","dueDate":"2013-02-06 00:00:00","name":"Je test qqc","ident":"OPP-00018","proba":"1","potential":"456","stepid":"342","status":"ok","signed":"open","brief":"","source":"","stickyNote":"","dateFormatted":"06\/02\/2013","dueDateFormatted":"06\/02\/2013","stepLabel":"1st step","funnelName":"New Pipeline","potentialFormatted":"456,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"R\u00e9my Neuter","staffSummary":"R\u00e9my Neuter","third":"TEST","canDelete":"Y","canEdit":"Y"},"76":{"id":"76","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"223","funnelid":"49","date":"0000-00-00 00:00:00","dueDate":"2013-02-06 00:00:00","name":"Je test qqc","ident":"OPP-00019","proba":"1","potential":"456","stepid":"342","status":"ok","signed":"open","brief":"","source":"","stickyNote":"","dateFormatted":"06\/02\/2013","dueDateFormatted":"06\/02\/2013","stepLabel":"1st step","funnelName":"New Pipeline","potentialFormatted":"456,00 \u20ac","statusLabel":"Ouvert","statusColor":"#4484db","staffs":"Test DeTest","staffSummary":"Test DeTest","third":"TEST","canDelete":"Y","canEdit":"Y"}}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Opportunities.getOne', 
        'params' => array(
            'id'    => {{id}}
        )
    );
    $response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                           |
|---------|------|----|-------|--------------------------------------|
|{{id}}   |id    |int |aucun  |Identifiant de l'opportunité souhaitée|


Retour
------

```
    {"response":{"id":"75","corpid":"138","ownerid":"317","linkedtype":"prospect","linkedid":"223","funnelid":"49","date":"0000-00-00 00:00:00","dueDate":"2013-02-06 00:00:00","name":"Je test qqc","ident":"OPP-00018","proba":"1","potential":"456","stepid":"342","status":"ok","signed":"open","brief":"","source":"","stickyNote":"","dateFormatted":"06\/02\/2013","dueDateFormatted":"06\/02\/2013","tags":[{"id":"865","corpid":"138","category":"opportunity","created":"2013-02-06 11:28:29","word":"test1"},{"id":"867","corpid":"138","category":"opportunity","created":"2013-02-06 11:32:13","word":"test2"}],"staffs":[{"id":"317","fullName":"R\u00e9my Neuter","email":""}]},"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.create',
    'params' => array(
        'opportunity'   => array(
            'linkedtype'    => {{linkedtype}},
            'linkedid'  => {{linkedid}},
            'ident'     => {{ident}},
            'sourceid'  => {{sourceid}},
            'dueDate'   => {{dueDate}},
            'creationDate'  => {{creationDate}},
            'name'      => {{name}},
            'potential' => {{potential}},
            'funnelid'  => {{funnelid}},
            'stepid'    => {{stepid}},
            'proba'     => {{proba}},
            'brief'     => {{brief}},
            'stickyNote'    => {{stickyNote}},
            'tags'      => {{tags}},
            'staffs'    => {{staffs}},
            'contact'  => {{contacts}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Oui
  * Type: enum
  * Défaut: prospect
  * Description: Type de contact lié (prospect (prospect) ou third (client))
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du contact lié
* Paramètre: {{ident}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant de l'opportunité (ex: OPP-0001). Vous pouvez récupérer l'identifiant courant à l'aide de la méthode Opportunities.getCurrentIdent
* Paramètre: {{sourceid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la source
* Paramètre: {{dueDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'échéance
* Paramètre: {{creationDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: maintenant
  * Description: Date de création de l‘opportunité
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Nom
* Paramètre: {{potential}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant potentiel
* Paramètre: {{funnelid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du pipeline
* Paramètre: {{stepid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'étape associée au pipeline
* Paramètre: {{proba}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Probabilité de réussite
* Paramètre: {{brief}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Brief
* Paramètre: {{stickyNote}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Note
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Smart-Tags séparées par une virgule. Exemple : {{tags}} = 'tag1,tag2,tag3';
* Paramètre: {{staffs}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Identifiant des collaborateurs attachés à l'opportunité.
* Paramètre: {{contact}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant des contacts (du prospect/client) attachés à l'opportunité, séparés par une virgule. Exemple : {{contact}} = '317,318,319';


Retour
------

```
{"response":"{{opportunityid}}","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Opportunities.update',
    'params' => array(
        'id'        => {{id}},
        'opportunity'   => array(
            'ident'     => {{ident}},
            'sourceid'  => {{sourceid}},
            'dueDate'   => {{dueDate}},
            'creationDate'  => {{creationDate}},
            'name'      => {{name}},
            'potential' => {{potential}},
            'proba'     => {{proba}},
            'brief'     => {{brief}},
            'stickyNote'    => {{stickyNote}},
            'tags'      => {{tags}},
            'staffs'    => {{staffs}},
            'contact'  => {{contacts}},
            'funnelid'  => {{funnelid}},
            'stepid'    => {{stepid}},
        )
    )
);
```


Paramètres
----------



* Paramètre: {{id}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant unique de l‘opportunité
* Paramètre: {{ident}}
  * Requis: oui
  * Type: string
  * Défaut: aucun
  * Description: Identifiant de l'opportunité (ex: OPP-0001). Vous pouvez récupérer l'identifiant courant à l'aide de la méthode Opportunities.getCurrentIdent
* Paramètre: {{sourceid}}
  * Requis: oui
  * Type: int
  * Défaut: aucun
  * Description: Identifiant de la source
* Paramètre: {{dueDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Date d'échéance
* Paramètre: {{creationDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: maintenant
  * Description: Date de création de l‘opportunité
* Paramètre: {{name}}
  * Requis: Oui
  * Type: string
  * Défaut: aucun
  * Description: Nom
* Paramètre: {{potential}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant potentiel
* Paramètre: {{proba}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Probabilité de réussite
* Paramètre: {{brief}}
  * Requis: Non
  * Type: string
  * Défaut: aucun
  * Description: Brief
* Paramètre: {{stickyNote}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Note
* Paramètre: {{tags}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Smart-Tags séparées par une virgule. Exemple : {{tags}} = 'tag1,tag2,tag3';
* Paramètre: {{staffs}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Identifiant des collaborateurs attachés à l'opportunité. 
* Paramètre: {{contact}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant des contacts (du prospect/client) attachés à l'opportunité, séparés par une virgule. Exemple : {{contact}} = '317,318,319';
* Paramètre: {{funnelid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du pipeline
* Paramètre: {{stepid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'étape associée au pipeline.                                Modifier l'étape ici ne va pas réinitialiser la date à laquelle l'opportunité est entrée dans cette étape.Pour réinitialiser cette date, référez vous à la méthode Opportunities.updateStep


Retour
------

```
{"response":"{{opportunityid}}","error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.delete',
    'params' => array(
        'id'    => {{id}}
    )
);
```


Paramètres
----------


|Parametre|requis|type|default|Description                 |
|---------|------|----|-------|----------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant de l'opportunité|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.getFunnels',
    'params' => array()
);
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
{"response":{"0":{"id":"48","corpid":"138","name":"Default","description":"","status":"ok","nbSteps":"7"},"1":{"id":"49","corpid":"138","name":"New Pipeline","description":"","status":"ok","nbSteps":"5"},"2":{"id":"62","corpid":"138","name":"test","description":"","status":"ok","nbSteps":"5"},"defaultFunnel":"49"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.getStepsForFunnel', 
    'params' => array(
        'funnelid' => {{funnelid}}
    )
);
```


Paramètres
----------


|Parametre   |requis|type|default|Description            |
|------------|------|----|-------|-----------------------|
|{{funnelid}}|oui   |int |aucun  |Identifiant du pipeline|


Retour
------

```
{"response":{"id":"334","corpid":"138","funnelid":"48","label":"Piste","rank":"1","proba":"0","status":"ok"},{"id":"335","corpid":"138","funnelid":"48","label":"Prospection","rank":"2","proba":"10","status":"ok"},{"id":"336","corpid":"138","funnelid":"48","label":"Contact t\u00e9l\u00e9phonique","rank":"3","proba":"20","status":"ok"},{"id":"337","corpid":"138","funnelid":"48","label":"Envoi de devis","rank":"4","proba":"30","status":"ok"},{"id":"338","corpid":"138","funnelid":"48","label":"N\u00e9gociation","rank":"5","proba":"40","status":"ok"},{"id":"339","corpid":"138","funnelid":"48","label":"Devis sign\u00e9","rank":"6","proba":"70","status":"ok"},{"id":"340","corpid":"138","funnelid":"48","label":"Affaire gagn\u00e9e","rank":"7","proba":"100","status":"ok"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.getSources', 
    'params' => array()
);
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
{"response":{"156":{"id":"156","corpid":"1033","label":"interne","status":"ok"},"defaultSource":"156"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.getSource', 
    'params' => array(
        'id'    => {{sourceid}}
    )
);
```


Paramètres
----------


|Parametre   |requis|type|default|Description             |
|------------|------|----|-------|------------------------|
|{{sourceid}}|oui   |int |aucun  |Identifiant de la source|


Retour
------

```
{"response":{"id":"4","corpid":"138","label":"Google","status":"ok"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Opportunities.createSource', 
    'params' => array(
        'source'    => array(
            'label'     => {{label}}
        )
    )
);
```


Paramètres
----------


|Parametre|requis|type  |default|Description       |
|---------|------|------|-------|------------------|
|{{label}}|oui   |string|aucun  |Label de la source|


Retour
------

```
{"response":{{sourceid}},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.updateSource', 
    'params' => array(
        'id'        => {{sourceid}}
        'source'    => array(
            'label'     => {{label}}
        )
    )
);
```


Paramètres
----------


|Parametre   |requis|type  |default|Description             |
|------------|------|------|-------|------------------------|
|{{sourceid}}|oui   |int   |aucun  |Identifiant de la source|
|{{label}}   |oui   |string|aucun  |Label de la source      |


Retour
------

```
{"response":{{sourceid}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Opportunities.deleteSource', 
    'params' => array(
        'id'    => {{sourceid}}
    )
);
```


Paramètres
----------


|Parametre   |requis|type|default|Description             |
|------------|------|----|-------|------------------------|
|{{sourceid}}|oui   |int |aucun  |Identifiant de la source|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.updateStatus',
    'params' => array(
        'id'    => {{id}},
        'status'=> {{newstatus}}
    )
);
```


Paramètres
----------


|Parametre    |requis|type|default|Description                                  |
|-------------|------|----|-------|---------------------------------------------|
|{{id}}       |oui   |int |aucun  |Identifiant de l'opportunité                 |
|{{newstatus}}|oui   |enum|aucun  |Nouveau statut (open,won,lost,late,cancelled)|


Retour
------

```
{"response":"{{opportunityid}}","error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Opportunities.updateStep',
    'params' => array(
        'oid'   => {{oid}},
        'stepid'=> {{newstepid}}
    )
);
```


Paramètres
----------


|Parametre    |requis|type|default|Description                     |
|-------------|------|----|-------|--------------------------------|
|{{oid}}      |oui   |int |aucun  |Identifiant de l'opportunité    |
|{{newstepid}}|oui   |int |aucun  |Identifiant de la nouvelle étape|


Retour
------

```
{"response":"{{opportunityid}}","error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Opportunities.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant de l‘opportunité    |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Opportunities.updateLinkedDocuments', 
    'params' => array(
        'oid'   => {{oid}}
        'linkedDocs'    => array(
            array(
                'id'        => {{docid}},
                'unlink'    => {{unlink}}
            )
        )                   
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{oid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l‘opportunité
* Paramètre: {{docid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du document de vente
* Paramètre: {{unlink}}
  * Requis: Non
  * Type: enum
  * Défaut: N
  * Description: Mettre le paramètre à Y pour délier le document. Valeurs possibles : Y, N


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method' => 'Opportunities.getCurrentIdent',
        'params' => array()
    );
                
```


Paramètres
----------

#### Attention

Il n'y a pas de paramètres a cette fonction

Retour
------

```
    {"response":"{{{prefix}-{compteur}}}","error":"","status":"success"}
                
```


Requete
-------

```
		$request = array(
			'method'    =>  'Opportunities.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description                 |
|-------------|------|-----|-------|----------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant de l'opportunité|
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes    |


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
    $request = array(
        'method'    =>  'Opportunities.updateDefaultDocument',
        'params'    =>  array (
            "oid"      => {{oid}},
            "doclid"   => {{doclid}}
        )
    );
```


Paramètres
----------


|Parametre |requis|type|default|Description                  |
|----------|------|----|-------|-----------------------------|
|{{oid}}   |oui   |int |aucun  |Identifiant de l'opportunité |
|{{doclid}}|oui   |int |aucun  |Identifiant du documentLinked|


Retour
------

```
{"response":"","error":"","status":"success"}
```


Requete
-------

```
    $request = array(
        'method'    =>  'Opportunities.updateSharingStaffs',
        'params'    =>  array (
            "linkedid"   =>  {{linkedid}},
            "staffsIds"   => {{staffsIds}}
        )
    );
    
```


Paramètres
----------


|Parametre    |requis|type |default|Description                 |
|-------------|------|-----|-------|----------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant de l'opportunité|
|{{staffsIds}}|oui   |array|aucun  |Identifiants des staffs     |


Retour
------

```
{"response":"","error":"","status":"success"}
```


Requête
-------

```
$request = [ 
	'method' => 'Payments.getList',
	'params' => [
		'search'    => [
			'thirds'	=> {{thirds}},
			'type'		=> {{type}},
			'currencyid'	=> {{currencyid}},
			'inBank'	=> {{inBank}},
			'start'		=> {{start}},
			'end'		=> {{end}}
		]
	]
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{thirds}}
  * Requis: Non
  * Type: Array
  * Défaut: Aucun
  * Description: Tableau d‘identifiants de third. Permet de filtrer par client/fournisseur
* Paramètre: {{type}}
  * Requis: Non
  * Type: enum('debit', 'credit')
  * Défaut: Aucun
  * Description: Permet de filtrer par type de paiement
* Paramètre: {{currencyid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Permet de filtrer par devise
* Paramètre: {{inBank}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: Aucun
  * Description: Permet de filtrer par remise en banque
* Paramètre: {{start}}
  * Requis: Non
  * Type: int (timestamp)
  * Défaut: Aucun
  * Description: Permet de filtrer par date de début
* Paramètre: {{end}}
  * Requis: Non
  * Type: int (timestamp)
  * Défaut: Aucun
  * Description: Permet de filtrer par date de fin


Retour
------

```
{"response":{"infos":{"nbperpage":1,"nbpages":1,"pagenum":"1","nbtotal":"1"},"result":{"6450":{"id":"6450","corpid":"1033","ownerid":"1677","linkedtype":"third","linkedid":"121580","date":"1492502094","type":"credit","amount":"100.000000000","currencyid":"1","amountRemaining":"100.000000000","mediumid":"60632","mediumTxt":"Paypal","inBank":"N","ident":"","note":"","status":"ok","bankdepositid":null,"bankid":null,"bankTxt":null,"bankDate":"19\/04\/2017","bankName":null,"staffForname":"R\u00e9my","staffName":"Neuter","nbLinkedInvoice":"0","nbLinks":"0","dateFormatted":"18\/04\/2017","currency":"EUR","amountFormatted":"100,00","amountRemainingFormatted":"100,00","linked":"212 RESTAURANT","linkedRelationType":"client","linkedAccountingCodeId":"6358","linkedAccountingCode":"411000","linkedAuxCode":"DIVERS"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = [ 
	'method' => 'Payments.create',
	'params' => [
		'type'		=> {{type}},
		'date'		=> {{date}},
		'amount'	=> {{amount}},
		'currencyid'	=> {{currencyid}},
		'ident'		=> {{ident}},
		'note'		=> {{note}},
		'linkedid'	=> {{linkedid}},
		'mediumid'	=> {{mediumid}},
		'inBank'	=> {{inBank}},
		'bank'		=> [
			'id'		=> {{bankId}},
			'date'		=> {{bankDate}}
		]
	]
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum('debit', 'credit')
  * Défaut: Aucun
  * Description: Type du paiement
* Paramètre: {{date}}
  * Requis: Oui
  * Type: int (timestamp)
  * Défaut: Aucun
  * Description: Date du paiement
* Paramètre: {{amount}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Montant du paiement
* Paramètre: {{currencyid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Devise associée au paiement
* Paramètre: {{ident}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Identifiant du paiement
* Paramètre: {{note}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Description du paiement
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du client/fournisseur associé au paiement
* Paramètre: {{mediumid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du moyen de paiement associé au paiement
* Paramètre: {{inBank}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Spécifie si le paiement a été remis en banque
* Paramètre: {{bankId}}
  * Requis: Non, sauf si {{inBank}} = Y
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du compte bancaire associé à la remise en banque
* Paramètre: {{bankDate}}
  * Requis: Non, sauf si {{inBank}} = Y
  * Type: int (timestamp)
  * Défaut: Aucun
  * Description: Date de la remise en banque


Retour
------

```
{"response":{"id":{{paymentId}},"error":"","status":"success"}
```


Requête
-------

```
$request = [ 
	'method' => 'Payments.create',
	'params' => [
		'id'	=> {{id}}
	]
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description            |
|---------|------|----|------|-----------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du paiement|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request = array( 
    'method' => 'Prospects.getList', 
    'params' => array(
        'search'    => array(
            'contains' => {{contains}},
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end}},
			"actif"					=> {{actif}}
        ),
        'pagination'    => array(
            'pagenum'   => {{pagenum}},
            'nbperpage' => {{nbperpage}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------


|Parametre               |requis|type     |default|Description                               |
|------------------------|------|---------|-------|------------------------------------------|
|{{contains}}            |non   |string   |aucun  |Recherche dans le nom/email               |
|{{periodecreated_start}}|non   |timestamp|aucun  |Début de la fourchette de date de création|
|{{periodecreated_end}}  |non   |timestamp|aucun  |Fin de la fourchette de date de création  |
|{{actif}}               |Non   |enum(Y,N)|Aucun  |Actif                                     |
|{{pagenum}}             |non   |int      |1      |Numéro de la page voulue                  |
|{{nbperpage}}           |non   |int      |10     |Nombre de prospects voulu par page        |


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"3"},"result":{"55":{"id":"55","name":"Nouveau Prospect","created":"2013-01-31 14:49:35","fullName":"Jean Dupond","pic":"","position":"","tel":"0123456789","fax":"0123456789","email":"[email protected]","contactName":"Dupond","contactForename":"Jean","corpid":"644","ownerid":"1174","prospectid":"55","peopleid":"32237","createdFormatted":"31\/01\/2013","canDelete":"Y","canEdit":"Y"},"53":{"id":"53","name":"Test Prospect","created":"2013-01-31 12:04:05","fullName":"Prospect Test","pic":"","position":"","tel":"0123456789","fax":"0123456789","email":"[email protected]","contactName":"Test","contactForename":"Prospect","corpid":"644","ownerid":"1174","prospectid":"53","peopleid":"32234","createdFormatted":"31\/01\/2013","canDelete":"Y","canEdit":"Y"},"54":{"id":"54","name":"Test Prospect","created":"2013-01-31 12:04:05","fullName":"Prospect Test","pic":"","position":"","tel":"0123456789","fax":"0123456789","email":"[email protected]","contactName":"Test","contactForename":"Prospect","corpid":"644","ownerid":"1174","prospectid":"54","peopleid":"32235","createdFormatted":"31\/01\/2013","canDelete":"Y","canEdit":"Y"}}},"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Prospects.getOne', 
    'params' => array(
        'id'    => {{id}}
    );
$response = sellsyConnect::load()->requestApi($request);
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                        |
|---------|------|----|-------|-----------------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du prospect à récupérer|


Retour
------

```
{"response":{"corporation":{"id":"55","corpid":"644","ownerid":"1174","name":"Nouveau Prospect","contactName":"","contactForename":"","tel":"0123456789","mobile":"0612345789","fax":"0123456789","email":"[email protected]","web":"www.sellsy.com","created":"2013-01-31 14:49:35","updated":"2013-01-31 16:41:38"},"contacts":[{"id":"44","corpid":"644","ownerid":"1174","prospectid":"55","peopleid":"32237","status":"ok","rank":"0","gender":"","civil":"","forename":"Jean","name":"Dupond","email":"[email protected]","web":"","tel":"0123456789","mobile":"0612345789","fax":"0123456789","position":"","pic":"","sign":"","birthdate":"0000-00-00"}]},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.create',
    'params' => array(
        'third' => array(
            'name'          => {{thirdName}},
            'type'          => {{thirdType}},
            'email'         => {{thirdEmail}},
            'tel'           => {{thirdTel}},
            'fax'           => {{thirdFax}},
            'mobile'        => {{thirdMobile}},
            'web'           => {{thirdWeb}},
            'joinDate'      => {{joinDate}},
            'siret'         => {{thirdSiret}},
            'siren'         => {{thirdSiren}},
            'vat'           => {{thirdVat}},
            'rcs'           => {{thirdRcs}},
		'corpType'		=> {{corpType}},
            'apenaf'        => {{thirdApenaf}},
            'capital'       => {{thirdCapital}},
            'tags'          => {{thirdTags}},
            'accountingcode'=> {{thirdAccountingcode}},
            'auxcode'       => {{thirdAuxcode}},
            'stickyNote'    => {{thirdStickyNote}}
        ),
        'contact' => array(
            'name'      => {{contactName}},
            'forename'  => {{contactForename}},
            'email'     => {{contactEmail}},
            'tel'       => {{contactTel}},
            'fax'       => {{contactFax}},
            'mobile'    => {{contactMobile}},
            'position'  => {{contactPosition}},
            'civil'		=> {{contactCivil}},
		'mcoptin'		=> {{mcoptin}},
		'mjoptin'		=> {{mjoptin}},
		'smoptin'		=> {{smoptin}}
        ),
        'address' => array(
            'name'      => {{addressName}},
            'part1'     => {{addressPart1}},
            'part2'     => {{addressPart2}},
            'zip'       => {{addressZip}},
            'town'      => {{addressTown}},
            'countrycode'   => {{addressCountrycode}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Parametre: {{thirdName}}
  * requis: Oui
  * type: string
  * default: aucun
  * Description: Nom du prospect
* Parametre: {{thirdType}}
  * requis: Non
  * type: enum
  * default: corporation
  * Description: Type du prospect (corporation/person)
* Parametre: {{thirdEmail}}
  * requis: Non
  * type: string
  * default: aucun
  * Description: Email du prospect
* Parametre: {{thirdTel}}
  * requis: Non
  * type: string
  * default: aucun
  * Description: Téléphone du prospect
* Parametre: {{thirdFax}}
  * requis: Non
  * type: string
  * default: aucun
  * Description: Fax du prospect
* Parametre: {{thirdMobile}}
  * requis: Non
  * type: string
  * default: aucun
  * Description: Téléphone portable du prospect
* Parametre: {{thirdWeb}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Site web de la société
* Parametre: {{joinDate}}
  * requis: non
  * type: timestamp
  * default: maintenant
  * Description: Date de création
* Parametre: {{thirdSiret}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Siret de la société
* Parametre: {{thirdSiren}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Siren de la société
* Parametre: {{thirdVat}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Numéro de TVA du prospect
* Parametre: {{thirdRcs}}
  * requis: non
  * type: string
  * default: aucun
  * Description: RCS du prospect
* Parametre: {{corpType}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Forme juridique
* Parametre: {{thirdApenaf}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Code naf du prospect
* Parametre: {{thirdCapital}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Capital du prospect
* Parametre: {{thirdTags}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Liste de tags séparés par des virgules
* Parametre: {{thirdAccountingcode}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Valeur alphanumérique existante dans le compte
* Parametre: {{thirdAuxcode}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Code comptable auxiliaire (valeur alphanumérique)
* Parametre: {{thirdStickyNote}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Note sur le prospect
* Parametre: {{contactName}}
  * requis: Oui
  * type: string
  * default: aucun
  * Description: Nom du contact
* Parametre: {{contactForename}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Prénom du contact
* Parametre: {{contactEmail}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Email du contact
* Parametre: {{contactTel}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Téléphone du contact
* Parametre: {{contactFax}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Fax du contact
* Parametre: {{contactMobile}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Mobile du contact
* Parametre: {{contactCivil}}
  * requis: Non
  * type: enum
  * default: Aucun
  * Description: Civilité du contact - '', 'man','woman','lady'
* Parametre: {{contactPosition}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Fonction du contact
* Parametre: {{contactMcoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation MailChimp ('Y', 'N')
* Parametre: {{contactMjoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation MailJet ('Y', 'N')
* Parametre: {{contactSmoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation SimpleMail ('Y', 'N')
* Parametre: {{addressName}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Nom de l'adresse
* Parametre: {{addressPart1}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 1 de l'adresse
* Parametre: {{addressPart2}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 2 de l'adresse
* Parametre: {{addressPart3}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 3 de l'adresse
* Parametre: {{addressPart4}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 4 de l'adresse
* Parametre: {{addressZip}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Code postal de l'adresse
* Parametre: {{addressTown}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Ville de l'adresse
* Parametre: {{addressCountrycode}}
  * requis: non
  * type: enum
  * default: FR
  * Description: Code pays de l'adresse


Retour
------

```
{"response":"55","error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.update',
    'params' => array(
        'id'    => {{id}},
        'third' => array(
            'name'      => {{thirdName}},
            'web'       => {{thirdWeb}},
            'joinDate'  => {{joinDate}},
			'corpType'  => {{corpType}}
        ),
        'contact' => array(
            'name'      => {{contactName}},
            'forename'  => {{contactForename}},
            'email'     => {{contactEmail}},
            'tel'       => {{contactTel}},
            'fax'       => {{contactFax}},
            'mobile'    => {{contactMobile}},
            'position'  => {{contactPosition}},
		'mcoptin'		=> {{mcoptin}},
		'mjoptin'		=> {{mjoptin}},
		'smoptin'		=> {{smoptin}}
        ),
        'address' => array(
            'name'      => {{addressName}},
            'part1'     => {{addressPart1}},
            'part2'     => {{addressPart2}},
            'part3'     => {{addressPart3}},
            'part4'     => {{addressPart4}},
            'zip'       => {{addressZip}},
            'town'      => {{addressTown}},
            'countrycode'   => {{addressCountrycode}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du prospect
* Parametre: {{thirdName}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Nom de la société
* Parametre: {{thirdWeb}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Site web de la société
* Parametre: {{joinDate}}
  * requis: non
  * type: timestamp
  * default: maintenant
  * Description: Date de création
* Parametre: {{corpType}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Forme juridique
* Parametre: {{contactName}}
  * requis: oui
  * type: string
  * default: aucun
  * Description: Nom du contact
* Parametre: {{contactForename}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Prénom du contact
* Parametre: {{contactEmail}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Email du contact
* Parametre: {{contactTel}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Téléphone du contact
* Parametre: {{contactFax}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Fax du contact
* Parametre: {{contactMobile}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Mobile du contact
* Parametre: {{contactPosition}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Fonction du contact
* Parametre: {{contactMcoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation MailChimp ('Y', 'N')
* Parametre: {{contactMjoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation MailJet ('Y', 'N')
* Parametre: {{contactSmoptin}}
  * requis: Non
  * type: string
  * default: Aucun
  * Description: Activation de la synchronisation SimpleMail ('Y', 'N')
* Parametre: {{addressName}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Nom de l'adresse
* Parametre: {{addressPart1}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 1 de l'adresse
* Parametre: {{addressPart2}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 2 de l'adresse
* Parametre: {{addressPart3}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 3 de l'adresse
* Parametre: {{addressPart4}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Partie 4 de l'adresse
* Parametre: {{addressZip}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Code postal de l'adresse
* Parametre: {{addressTown}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Ville de l'adresse
* Parametre: {{addressCountrycode}}
  * requis: non
  * type: enum
  * default: FR
  * Description: Code pays de l'adresse


Retour
------

```
{"response":{"prospect_id":"55","contact_id":"32237"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.delete',
    'params' => array(
        'id'    => {{id}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Parametre|requis|type|default|Description            |
|---------|------|----|-------|-----------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du prospect|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request =  array( 
    'method' => 'Prospects.updateOwner', 
    'params' => array(
        'linkedid'  => {{linkedid}}
        'ownerid'   => {{ownerid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                     |
|------------|------|----|------|--------------------------------|
|{{linkedid}}|Oui   |int |Aucun |Identifiant du prospect         |
|{{ownerid}} |Oui   |int |Aucun |Staff ID du nouveau propriétaire|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.getAddress',
    'params' => array(
        'prospectid' => {{prospectid}},
        'addressid' => {{addressid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description             |
|--------------|------|----|------|------------------------|
|{{prospectid}}|Oui   |int |Aucun |Identifiant du prospect |
|{{addressid}} |Oui   |int |Aucun |Identifiant de l'adresse|


Retour
------

```
{"response":{"id":"68348","corpid":"138","linkedtype":"third","linkedid":"47017","status":"ok","rank":"0","name":"Bureau","part1":"1 Rue Fleming","part2":"","zip":"17000","town":"La Rochelle","state":"","townid":"3834604","countrycode":"FR","originalid":"0","lat":"46.1489","lng":"-1.15522","partsToDisplay":{"_xml_childtag":"part","0":{"txt":"1 Rue Fleming"},"1":{"txt":"17000 - La Rochelle"},"2":{"txt":"France"}}},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.getContact',
    'params' => array(
        'prospectid' => {{prospectid}},
        'contactid' => {{contactid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description            |
|--------------|------|----|------|-----------------------|
|{{prospectid}}|Oui   |int |Aucun |Identifiant du prospect|
|{{contactid}} |Oui   |int |Aucun |Identifiant du contact |


Retour
------

```
{"response":{"corpid":"138","ownerid":"317","linkedtype":"thirdcontact","linkedid":"41445","status":"ok","rank":"0","gender":"","civil":"man","forename":"Jean","name":"REGISTRE","email":"","web":"","tel":"0123456789","mobile":"","fax":"","position":"Enregistreur","pic":"","sign":"","birthdate":"0000-00-00","id":"43278","fullName":"M. Jean REGISTRE", "isBillingContact":"N"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.getBillingContact',
    'params' => array(
        'prospectid' => {{prospectid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description            |
|--------------|------|----|------|-----------------------|
|{{prospectid}}|Oui   |int |Aucun |Identifiant du prospect|


Retour
------

```
{"response":{"corpid":"138","ownerid":"317","linkedtype":"thirdcontact","linkedid":"41445","status":"ok","rank":"0","gender":"","civil":"man","forename":"Jean","name":"REGISTRE","email":"","web":"","tel":"0123456789","mobile":"","fax":"","position":"Enregistreur","pic":"","sign":"","birthdate":"0000-00-00","id":"43278","fullName":"M. Jean REGISTRE", "isBillingContact":"Y"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.addAddress',
    'params' => array(
        'prospectid' => {{prospectid}},
        'address' => array(
            'name'          => {{name}},
            'part1'         => {{part1}},
            'part2'         => {{part2}},
            'part3'         => {{part3}},
            'part4'         => {{part4}},
            'zip'           => {{zip}},
            'town'          => {{town}},
            'countrycode'       => {{countrycode}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description             |
|---------------|------|------|------|------------------------|
|{{prospectid}} |Oui   |int   |Aucun |Identifiant du prospect |
|{{name}}       |Oui   |string|Aucun |Nom de l'adresse        |
|{{part1}}      |Non   |string|Aucun |Partie 1 de l'adresse   |
|{{part2}}      |Non   |string|Aucun |Partie 2 de l'adresse   |
|{{part3}}      |Non   |string|Aucun |Partie 3 de l'adresse   |
|{{part4}}      |Non   |string|Aucun |Partie 4 de l'adresse   |
|{{zip}}        |Non   |int   |Aucun |Code postal de l'adresse|
|{{town}}       |Non   |string|Aucun |Ville de l'adresse      |
|{{countrycode}}|Non   |string|Aucun |Code pays de l'adresse  |


Retour
------

```
{"response":{"address_id":68366},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Prospects.addContact',
    'params' => array(
        'prospectid' => {{prospectid}},
        'contact' => array(
            'name'      => {{name}},
            'forename'  => {{forename}},
            'email'     => {{email}},
            'tel'       => {{tel}},
            'fax'       => {{fax}},
            'mobile'    => {{mobile}},
            'web'       => {{web}},
            'position'  => {{position}},
            'civil'     => {{civil}},
            'birthdate' => {{birthdate}},
		'mcoptin'		=> {{mcoptin}},
		'mjoptin'		=> {{mjoptin}},
		'smoptin'		=> {{smoptin}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type  |Défaut|Description                                   |
|--------------|------|------|------|----------------------------------------------|
|{{prospectid}}|Oui   |int   |Aucun |Identifiant du prospect                       |
|{{name}}      |Oui   |string|Aucun |Nom du contact                                |
|{{forename}}  |Non   |string|Aucun |Prénom du contact                             |
|{{email}}     |Non   |string|Aucun |Email du contact                              |
|{{tel}}       |Non   |int   |Aucun |Téléphone du contact                          |
|{{fax}}       |Non   |int   |Aucun |Fax du contact                                |
|{{mobile}}    |Non   |int   |Aucun |Mobile du contact                             |
|{{web}}       |Non   |string|Aucun |Site web du contact                           |
|{{position}}  |Non   |string|Aucun |Fonction du contact                           |
|{{civil}}     |Non   |enum  |Aucun |Civilité du contact - '', 'man','woman','lady'|
|{{birthdate}} |Non   |int   |Aucun |Date d'anniversaire du contact                |


Retour
------

```
{"response":{"contact_id":41465},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.updateAddress',
    'params' => array(
        'prospectid'    => {{prospectid}},
        'addressid' => {{addressid}},
        'address'   => array(
            'name'      => {{name}},
            'part1'     => {{part1}},
            'part2'     => {{part2}},
            'zip'       => {{zip}},
            'town'      => {{town}},
            'countrycode'   => {{countrycode}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description             |
|---------------|------|------|------|------------------------|
|{{prospectid}} |Oui   |int   |Aucun |Identifiant du prospect |
|{{name}}       |Oui   |string|Aucun |Nom de l'adresse        |
|{{part1}}      |Non   |string|Aucun |Partie 1 de l'adresse   |
|{{part2}}      |Non   |string|Aucun |Partie 2 de l'adresse   |
|{{zip}}        |Non   |int   |Aucun |Code postal de l'adresse|
|{{town}}       |Non   |string|Aucun |Ville de l'adresse      |
|{{countrycode}}|Non   |string|Aucun |Code pays de l'adresse  |


Retour
------

```
{"response":{"address_id":68366},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.updateContact',
    'params' => array(
        'prospectid' => {{prospectid}},
        'contactid' => {{contactid}},
        'contact' => array(
            'name'      => {{name}},
            'forename'  => {{forename}},
            'email'     => {{email}},
            'tel'       => {{tel}},
            'fax'       => {{fax}},
            'mobile'    => {{mobile}},
            'web'       => {{web}},
            'position'  => {{position}},
            'civil'     => {{civil}},
            'birthdate' => {{birthdate}},
		'mcoptin'		=> {{mcoptin}},
		'mjoptin'		=> {{mjoptin}},
		'smoptin'		=> {{smoptin}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type  |Défaut|Description                                   |
|--------------|------|------|------|----------------------------------------------|
|{{prospectid}}|Oui   |int   |Aucun |Identifiant du prospect                       |
|{{contactid}} |Oui   |int   |Aucun |Identifiant du contact                        |
|{{name}}      |Oui   |string|Aucun |Nom du contact                                |
|{{forename}}  |Non   |string|Aucun |Prénom du contact                             |
|{{email}}     |Non   |string|Aucun |Email du contact                              |
|{{tel}}       |Non   |int   |Aucun |Téléphone du contact                          |
|{{fax}}       |Non   |int   |Aucun |Fax du contact                                |
|{{mobile}}    |Non   |int   |Aucun |Mobile du contact                             |
|{{web}}       |Non   |string|Aucun |Site web du contact                           |
|{{position}}  |Non   |string|Aucun |Fonction du contact                           |
|{{civil}}     |Non   |enum  |Aucun |Civilité du contact - '', 'man','woman','lady'|
|{{birthdate}} |Non   |int   |Aucun |Mobile du contact                             |


Retour
------

```
{"response":{"contact_id":41465},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.deleteContact',
    'params' => array(
        'prospectid' => {{prospectid}},
        'contactid' => {{contactid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description            |
|--------------|------|----|------|-----------------------|
|{{prospectid}}|Oui   |int |Aucun |Identifiant du prospect|
|{{contactid}} |Oui   |int |Aucun |Identifiant du contact |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.updatePrefs',
    'params' => array(
        'thirdid'   => {{thirdid}},
        'prefs'     => array(
            'currencyid'		=> {{currencyid}},
            'defaultShippingid'		=> {{defaultShippingid}},
            'defaultTaxid'		=> {{defaultTaxid}},
            'payDateid'			=> {{payDateid}},
            'payDateEndMonth'		=> {{payDateEndMonth}},
            'payDateXDays'		=> {{payDateXDays}},
            'nbExpireDays'		=> {{nbExpireDays}},
            'globalDiscount'		=> {{globalDiscount}},
            'globalDiscountUnit'	=> {{globalDiscountUnit}},
            'discountByRows'		=> {{discountByRows}},
            'bankAccountid'		=> {{bankAccountid}}
            'payMediums'		=> {{payMediums}}
        )
    )
);
```


Paramètres
----------



* Paramètre: {{thirdid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du prospect
* Paramètre: {{currencyid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la monnaie
* Paramètre: {{defaultShippingid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du moyen de livraison
* Paramètre: {{defaultTaxid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la taxe
* Paramètre: {{payDateid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du délai de règlement
* Paramètre: {{payDateEndMonth}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: N
  * Description: Paiement à la fin du mois? (valable uniquement pour des payDate correspondant a 30, 45, 60 ou 90 days)
* Paramètre: {{payDateXDays}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Delai de paiement (valable uniquement pour une paydate de xdays)
* Paramètre: {{nbExpireDays}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Durée de validité en jours
* Paramètre: {{globalDiscount}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Montant/pourcentage de votre remise. Si c'est un pourcentage, la valeur doit être un entier compris entre 0 et 100
* Paramètre: {{globalDiscountUnit}}
  * Requis: Non
  * Type: enum(percent,amount)
  * Défaut: Aucun
  * Description: Type de la réduction globale
* Paramètre: {{discountByRows}}
  * Requis: Non
  * Type: enum(Y,N)
  * Défaut: N
  * Description: Chaque ligne peut avoir sa remise specifique?
* Paramètre: {{bankAccountid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du compte banquaire : AccountPrefs.getBankAccountList
* Paramètre: {{payMediums}}
  * Requis: Non
  * Type: Array
  * Défaut: Aucun
  * Description: Tableau contenant les id des moyens de paiement


Retour
------

```
{"response":{"prefsId":"111294"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Prospects.deleteAddress',
    'params' => array(
        'prospectid' => {{prospectid}},
        'addressid' => {{addressid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description             |
|--------------|------|----|------|------------------------|
|{{prospectid}}|Oui   |int |Aucun |Identifiant du prospect |
|{{addressid}} |Oui   |int |Aucun |Identifiant de l'adresse|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method'    =>  'Prospects.updateContactPicture', 
    'params'    =>  array (
            "thirdid"   =>  {{thirdid}}
            "contactid" =>  {{contactid}},
            "image"     =>  array(
                "type"      =>  {{type}},
                "url"       =>  {{url}}
            )
        )
);
```


Paramètres
----------


|Parametre    |requis|type       |default|Description                   |
|-------------|------|-----------|-------|------------------------------|
|{{thirdid}}  |oui   |int        |aucun  |Identifiant du prospect       |
|{{contactid}}|oui   |int        |aucun  |Identifiant du contact        |
|{{type}}     |oui   |enum('url')|aucun  |Type de l'image               |
|{{url}}      |oui   |string     |aucun  |Url de l'image (si type = url)|


Retour
------

```
    {"response":"?_f=file&id=JTBDJUM1UkwlMjJGJTVCViVBNyVDNiVCMXglQzIlQjQlMjglN0YlRUQlMTElNUMlMDUlOEQlQjElMEZuJUQ1JUVCJUYzJTlBJUI1JUJFcFpKbyVFQSU5RWclQzJLayVFQSUwOSU3QyUxRiVBNCU4RCt5UCUzRlUlQUElRTElREQlRTglOUQlMDglOUYlRTElRUMlMTIlMjUlMTgrJUY4eCU4MyUxQS4lRTRqRyU5NiUxRCUwNyVCOWMlRkElRUUlREElQUUlRTElMEZRUyU3RCVBRiVGOSU4NSUyMSVCNiVEMiVEMWolRURQJUFGJUJEJTI2JTkxJTNFJUUwJUY1VyVGRCVBM1ltJUFBJTkxJTA5JUVCJUQ3JTQwJUUzJUEyJTI5JTgxJTdGJTAwbCU1RWl3JTg2JTNENCVCQg==&key=8fe3022967cf1073a8aefa32f3b70248","error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
    'method'    =>  'Prospects.transformToCustomer', 
    'params'    =>  array (
            "thirdid"           =>  {{thirdid}},
            "enableCustomfieldsOnCustomer"  =>  {{enableCustomfieldsOnCustomer}}
        )
);
```


Paramètres
----------



* Parametre: {{thirdid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du prospect
* Parametre: {{enableCustomfieldsOnCustomer}}
  * requis: non
  * type: enum(Y,N)
  * default: N
  * Description: Indique si les champs personnalisés visibles sur les prospects seront visibles sur les clients.


Retour
------

```
{"response":null,"error":"","status":"success"}
    
```


Requete
-------

```
		$request = array(
			'method'    =>  'Prospects.updateThirdPicture', 
			'params'    =>  array (
				"thirdid"   =>  {{thirdid}}
			)
		);
	
```


Paramètres
----------


|Parametre  |requis|type|default|Description            |
|-----------|------|----|-------|-----------------------|
|{{thirdid}}|oui   |int |aucun  |Identifiant du prospect|


Retour
------

```
		{"response":{"name":"1-apple-desk-designer-display-1.jpg","public_path":"?_f=file&id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCJUZBdCVGQyVBNXglRTIlMjklRjMlQUMlNUQ0JTdGJUU0JUNFJTYwJUM2JTg4JTdDJUE1JTI5JTA0JTFGJUUwJUMzcCVDMSVGMyU3RiVDNiU5NiU4RCVBQyU5NCVDOSU1REwlNUUlNjAlRTMlQkElREQlM0FaOCVCME9pJTg2SiVFQiUxMyVENyU5MiUxMCVGRCU5MSUzQyVCRiUxRSUwRXAlQjYlOTUlRDQ==&key=ad49d4d6a54e1a722c7946f27c200554","extension":"image\/jpeg"},"error":"","status":"success"}
	
```


Requete
-------

```
		$request = array(
			'method'    =>  'Prospects.updateSharingGroups',
			'params'    =>  array (
				"linkedid"   =>  {{linkedid}},
                "groupsIds"   => {{groupsIds}}
			)
		);
	
```


Paramètres
----------


|Parametre    |requis|type |default|Description             |
|-------------|------|-----|-------|------------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du prospect |
|{{groupsIds}}|oui   |array|aucun  |Identifiants des groupes|


Retour
------

```
		{"response":"","error":"","status":"success"}
	
```


Requete
-------

```
    $request = array(
        'method'    =>  'Prospects.updateSharingStaffs',
        'params'    =>  array (
            "linkedid"   =>  {{linkedid}},
            "staffsIds"   => {{staffsIds}}
        )
    );
    
```


Paramètres
----------


|Parametre    |requis|type |default|Description            |
|-------------|------|-----|-------|-----------------------|
|{{linkedid}} |oui   |int  |aucun  |Identifiant du prospect|
|{{staffsIds}}|oui   |array|aucun  |Identifiants des staffs|


Retour
------

```
{"response":"","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stat.getSalesStats',
    'params' => array(
		'search' => array(
			'smartDate'  => {{smartDate}},
			'currencyid' => {{currencyid}},
			'context'    => {{contexct}},
			'thirdid'    => {{thirdid}},
			'interval'   => {{interval}}
		)
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{smartDate}}
  * Requis: Non
  * Type: enum
  * Défaut: currentYear
  * Description: Période sur laquelle vous souhaitez récupérer les statistiques. (previousyear, last12month, last6month, previousmonth, previousweek, yesterday, currentyear, currentmonth, today)
* Paramètre: {{currencyid}}
  * Requis: Non
  * Type: int
  * Défaut: 1 (euro)
  * Description: Identifiant de la monnaie souhaitée
* Paramètre: {{context}}
  * Requis: Non
  * Type: enum
  * Défaut: dashboard
  * Description: Type de statistiques à récupérer. (third, dashboard)
* Paramètre: {{thirdid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du client
* Paramètre: {{interval}}
  * Requis: Non
  * Type: enum('day', 'week', 'month', 'year')
  * Défaut: year
  * Description: Interval souhaité


Retour
------

```
{"response":{"nextLoad":"","stats":{"ca":{"id":"ca","modalsearch":"","unit":"Exc Tax","color":"#7AE7BF","tip":"total factures - total avoirs","label":"Sales","total":"16.797,590 $","lbl":"13 invoices - 1 credit note"},"late":{"id":"late","modalsearch":"","unit":"Inc Tax","color":"#F5634A","label":"Late payments","total":"20.233,960 $","lbl":"12 invoices"},"collection":{"id":"collection","unit":"Inc Tax","color":"#2980b9","label":"Payments received","total":"143,150 $","lbl":"2 payments"},"estimatePending":{"id":"estimatePending","modalsearch":"","unit":"Exc Tax","color":"#a280D6","tip":"Devis envoy\u00e9s et lu","label":"Pending estimates","total":"799,000 $","lbl":"1 estimates"},"estimateOk":{"id":"estimateOk","modalsearch":"","unit":"Exc Tax","color":"#2E4554","label":"Accepted estimates","total":"0,000 $","lbl":"0 estimates"},"deposit":{"id":"deposit","modalsearch":"","unit":"Exc Tax","color":"#7ac6d8","label":"Down payment invoices","total":"0,000 $","lbl":"0 down payment invoice"},"orders":{"id":"orders","modalsearch":"","unit":"Exc Tax","color":"#F5B95B","tip":"BDC envoy\u00e9s et lu","label":"Pending orders","total":"799,000 $","lbl":"1 order"},"ordersSigned":{"id":"ordersSigned","modalsearch":"","unit":"Exc Tax","color":"#39CF86","label":"Orders signed","total":"500,000 $","lbl":"1 order"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.getForItem',
    'params' => array(
        'itemid'    => {{itemid}},
        'declid'    => {{declid}},
        'warehouseid'   => {{warehouseid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit/service
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant d'une déclinaison. Le paramètre warehouseid est obligatoire si vous souhaitez récupérer le stock d'une déclinaison
* Paramètre: {{warehouseid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt. Si non précisé, la méthode retourne les stocks du produit/service pour tous les entrepôts


Retour
------

```
{"response":{"109":{"id":"109","corpid":"138","itemid":"252781","whid":"45","qt":"189.000000000","formatted_qt":"189,00"},"110":{"id":"110","corpid":"138","itemid":"252781","whid":"54","qt":"10.000000000","formatted_qt":"10,00"}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.getWarehouses',
    'params' => array(
        'includeAddresses'  => {{includeAddresses}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre           |Requis|Type     |Défaut|Description                                        |
|--------------------|------|---------|------|---------------------------------------------------|
|{{includeAddresses}}|Non   |enum(Y/N)|N     |Inclure les adresses des entrepôts dans le résultat|


Retour
------

```
{"response":{"57":{"id":"57","corpid":"138","status":"ok","label":"EST","addrid":"68364","isdefault":"N","address":{"id":"68364","corpid":"138","linkedtype":"warehouse","linkedid":"57","status":"ok","rank":"0","name":"Entrep\u00f4t EST","part1":"1 Rue Fleming","part2":"EST COAST","zip":"17000","town":"La Rochelle","state":"","townid":"3834604","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":"1 Rue Fleming"},"1":{"txt":"EST COAST"},"2":{"txt":"17000 - La Rochelle"},"3":{"txt":"France"}}},"formatted_address":"1 Rue Fleming EST COAST 17000 La Rochelle FRANCE"},"58":{"id":"58","corpid":"138","status":"ok","label":"OUEST","addrid":"68365","isdefault":"N","address":{"id":"68365","corpid":"138","linkedtype":"warehouse","linkedid":"58","status":"ok","rank":"0","name":"Entrep\u00f4t OUEST","part1":"1 Rue Fleming","part2":"WEST COAST","zip":"17000","town":"La Rochelle","state":"","townid":"3834604","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":"1 Rue Fleming"},"1":{"txt":"WEST COAST"},"2":{"txt":"17000 - La Rochelle"},"3":{"txt":"France"}}},"formatted_address":"1 Rue Fleming WEST COAST 17000 La Rochelle FRANCE"}},"error":"","status":"success"}
```


Requête
-------

```
$request = [
    'method' => 'Stock.getMoves',
    'params' => [
        'pagination'    => [
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ],
        'order'         => [
            'order'         => {{order}},
            'direction'     => {{direction}}
        ],
        'search'        => [
            'linkedtype'        => {{linkedtype}},
            'perioddisplay'     => {{perioddisplay}},
            'startdate'         => {{startdate}},
            'enddate'           => {{enddate}},
            'movedirection'     => {{movedirection}},
            'includedeleted'    => {{includedeleted}},
            'warehouseid'       => {{warehouseid}},
            'serial'            => {{serial}},
            'items'             => [
                'itemid' => {{itemid}},
                'declid' => {{declid}}
            ]
        ]
    ]
];

$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: enum
  * Défaut: 10
  * Description: Nombre de lignes renvoyées par appel.Valeurs possibles :                            10, 20, 50, 100                            
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Numéro de la page
* Paramètre: {{direction}}
  * Requis: Non
  * Type: enum
  * Défaut: desc
  * Description: Sens du tri.Valeurs possibles :                            asc, desc                            
* Paramètre: {{order}}
  * Requis: Non
  * Type: enum
  * Défaut: id
  * Description: Champ utilisé pour le tri.Valeurs possibles :                            id, displayDate, linkedtype, qt, linkedIdent                            
* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum
  * Défaut: all
  * Description: Type de mouvement.Valeurs possibles :                                purdel, purdeliv, purinv, warehouse, manual, docdel, docinv, inventory, doccn, all                            
* Paramètre: {{perioddisplay}}
  * Requis: Non
  * Type: enum
  * Défaut: last12month
  * Description: Étendu des recherches.Valeurs possibles :                                last12month, last6month, currentyear, previousyear, custom, previousmonth, currentmonth, today, yesterday, currentweek, previousweek, all                            
* Paramètre: {{startdate}}
  * Requis: Oui, si perioddisplay = custom
  * Type: timestamp
  * Défaut: Aucun
  * Description: Début de la fourchette de date d'ajout
* Paramètre: {{enddate}}
  * Requis: Oui, si perioddisplay = custom
  * Type: timestamp
  * Défaut: Aucun
  * Description: Fin de la fourchette de date d'ajout
* Paramètre: {{movedirection}}
  * Requis: Non
  * Type: enum
  * Défaut: none
  * Description: Valeurs possibles :                            none, up (Entrée), down (Sortie)                            
* Paramètre: {{includedeleted}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucun
  * Description: Inclure les mouvements supprimés
* Paramètre: {{warehouseid}}
  * Requis: Non
  * Type: int
  * Défaut: Entrepôt par défaut
  * Description: Identifiant de l'entrepôt
* Paramètre: {{serial}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Numéro de série lié à un ou plusieurs mouvement(s)
* Paramètre: {{itemid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison, si pas de déclinaison ne pas envoyer


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"2"},"result":{"6319":{"id":"6319","corpid":"1466","status":"ok","itemid":"279109","declid":"0","created":"2014-08-01 00:00:00","displayDate":"2014-08-01 00:00:00","qt":"60.000000000","valo":"6.800000000","whid_to":"154","linkedtype":"manual","linkedid":"145","rowid":"0","notes":"test 2","serialid":"0","item_name":"Tasse café","idc_name":null,"idc_id":null,"sw_label":"Entrep\u00f4t 8","sis_enabled":"Y","sis_valo":"CMUP","linkedIdent":null,"morestock":"Y","formatted_date":"01\/08\/2014","formatted_qt":"60,00","formatted_type":"Manuel","formatted_item_url":"?_f=catalogueitem&id=279109&type=item&declid=0","formatted_valo":"6,80"},"6227":{"id":"6227","corpid":"1466","status":"ok","itemid":"279109","declid":"0","created":"2014-07-30 00:00:00","displayDate":"2014-07-30 00:00:00","qt":"0.000000000","valo":"5.000000000","whid_to":"145","linkedtype":"manual","linkedid":null,"rowid":"0","notes":"","serialid":"0","item_name":"Tasse café","idc_name":null,"idc_id":null,"sw_label":"Entrepot","sis_enabled":"Y","sis_valo":"CMUP","linkedIdent":null,"morestock":"N","formatted_date":"30\/07\/2014","formatted_qt":"0,00","formatted_type":"Manuel","formatted_item_url":"?_f=catalogueitem&id=279109&type=item&declid=0","formatted_valo":"5,00"}}},"error":"","status":"success"}}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.createWarehouse',
    'params' => array(
        "label" => {{label}},
        "address" => array( 
            "name"      => {{name}},
            "part1"     => {{address1}},
            "part2"     => {{address2}},
            "part3"     => {{address3}},
            "part4"     => {{address4}},
            "zip"       => {{zipcode}},
            "state"     => {{state}},
            "town"      => {{town}},
            "countrycode"   => {{countrycode}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description                                                 |
|---------------|------|------|------|------------------------------------------------------------|
|{{label}}      |Oui   |string|Aucun |Libellé de l'entrepôt                                       |
|{{name}}       |Non   |string|Aucun |Libellé de l'adresse                                        |
|{{address1}}   |Non   |string|Aucun |Adresse ligne 1                                             |
|{{address2}}   |Non   |string|Aucun |Adresse ligne 2                                             |
|{{address3}}   |Non   |string|Aucun |Adresse ligne 3                                             |
|{{address4}}   |Non   |string|Aucun |Adresse ligne 4                                             |
|{{zipcode}}    |Non   |string|Aucun |Code postal                                                 |
|{{state}}      |Non   |string|Aucun |État/Province (à fournir pour les pays autres que la France)|
|{{town}}       |Non   |string|Aucun |Ville                                                       |
|{{countrycode}}|Non   |string|FR    |Code pays                                                   |


Retour
------

```
{"response":{"warehouseid":176},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.updateWarehouse',
    'params' => array(
        "id" => {{id}},
        "label" => {{label}},
        "address" => array( 
            "name"      => {{name}},
            "part1"     => {{address1}},
            "part2"     => {{address2}},
            "part3"     => {{address3}},
            "part4"     => {{address4}},
            "zip"       => {{zipcode}},
            "state"     => {{state}},
            "town"      => {{town}},
            "countrycode"   => {{countrycode}})
        )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre      |Requis|Type  |Défaut|Description                                                 |
|---------------|------|------|------|------------------------------------------------------------|
|{{id}}         |Oui   |int   |Aucun |ID de l'entrepôt                                            |
|{{label}}      |Oui   |string|Aucun |Libellé de l'entrepôt                                       |
|{{name}}       |Non   |string|Aucun |Libellé de l'adresse                                        |
|{{address1}}   |Non   |string|Aucun |Adresse ligne 1                                             |
|{{address2}}   |Non   |string|Aucun |Adresse ligne 2                                             |
|{{address3}}   |Non   |string|Aucun |Adresse ligne 3                                             |
|{{address4}}   |Non   |string|Aucun |Adresse ligne 4                                             |
|{{zipcode}}    |Non   |string|Aucun |Code postal                                                 |
|{{state}}      |Non   |string|Aucun |État/Province (à fournir pour les pays autres que la France)|
|{{town}}       |Non   |string|Aucun |Ville                                                       |
|{{countrycode}}|Non   |string|FR    |Code pays                                                   |


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.deleteWarehouse',
    'params' => array(
        'id' => {{id}},
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description     |
|---------|------|----|------|----------------|
|{{id}}   |Oui   |int |Aucun |ID de l'entrepôt|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.setDefaultWarehouse',
    'params' => array(
        "id" => {{id}},
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description     |
|---------|------|----|------|----------------|
|{{id}}   |Oui   |int |Aucun |ID de l'entrepôt|


Retour
------

```
 {"response":{"idDefaultWarehouse":"145"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.getWarehouse',
    'params' => array(
        'id'            => {{warehouseid}}
        'includeAddress'    => {{includeAddress}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre         |Requis|Type     |Défaut|Description                                     |
|------------------|------|---------|------|------------------------------------------------|
|{{id}}            |Oui   |int      |Aucun |Identifiant de l'entrepôt                       |
|{{includeAddress}}|Non   |enum(Y/N)|N     |Inclure l'adresse de l'entrepôt dans le résultat|


Retour
------

```
{"response":{"58":{"id":"58","corpid":"138","status":"ok","label":"OUEST","addrid":"68365","isdefault":"N","address":{"id":"68365","corpid":"138","linkedtype":"warehouse","linkedid":"58","status":"ok","rank":"0","name":"Entrep\u00f4t OUEST","part1":"1 Rue Fleming","part2":"WEST COAST","zip":"17000","town":"La Rochelle","state":"","townid":"3834604","countrycode":"FR","originalid":"0","lat":null,"lng":null,"partsToDisplay":{"_xml_childtag":"part","0":{"txt":"1 Rue Fleming"},"1":{"txt":"WEST COAST"},"2":{"txt":"17000 - La Rochelle"},"3":{"txt":"France"}}},"formatted_address":"1 Rue Fleming WEST COAST 17000 La Rochelle FRANCE"}},"error":"","status":"success"}
```


Pour réactiver les stocks, veuillez utiliser la fonction Stock.reactivate

Stock simple
------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.activate',
    'params' => array(
        'itemid'    => {{itemid}},
        'warehouseid'   => {{warehouseid}},
        'stock'     => array(
            'method'        => {{method}},
            'initialqt'     => {{initialqt}},
            'initialpurprice'   => {{initialpurprice}},
            'minstock'      => {{minstock}},
            'valotype'      => {{valotype}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);

```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{warehouseid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs possibles:                             simple, serialized                            
* Paramètre: {{initialqt}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Quantité de stock initiale
* Paramètre: {{initialpurprice}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Prix d'achat du produit
* Paramètre: {{minstock}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Quantité d'alerte du produit
* Paramètre: {{valotype}}
  * Requis: Oui
  * Type: enum
  * Défaut: CMUP
  * Description: Méthode de valorisation du stock.Valeurs possibles:                             NONE, CMUP                            


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Stock sérializé
---------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.activate',
    'params' => array(
        'itemid'    => {{itemid}},
        'stock'     => array(
            'method'    => {{method}},
            'minstock'  => {{minstock}},
            'inDate'    => {{inDate}},
        ),
        'rows'      => array(
            'declid'        => {{declid}},
            'warehouseid'       => {{warehouseid}},
            'barcode'       => {{barcode}},
            'purchaseAmount'    => {{purchaseAmount}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs possibles:                             simple, serialized                            
* Paramètre: {{minstock}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Quantité d'alerte du produit
* Paramètre: {{inDate}}
  * Requis: Oui
  * Type: timestamp
  * Défaut: Aucun
  * Description: Timestamp de l'activation du stock
* Paramètre: {{rows}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d'entrée de stock
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison
* Paramètre: {{warehouseid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt
* Paramètre: {{barcode}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code barre du produit
* Paramètre: {{purchaseAmount}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Prix du produit


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Stock.desactivate',
    'params' => array(
        'itemid'    => {{itemid}}
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description           |
|----------|------|----|------|----------------------|
|{{itemid}}|Oui   |int |Aucun |Identifiant du produit|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Pour réactiver les stocks vous avez plusieurs options :  
1- réactiver avec les paramètres initiaux (Champs obligatoires : itemid, method)  
2- réactiver avec un nouveau stock d'alerte (Champs obligatoires : itemid, method, minstock)  
3- réactiver + créer un nouveau mouvement (Champs obligatoires : voir ci-dessous)

Stock simple
------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.reactivate',
    'params' => array(
        'itemid'    => {{itemid}},
        'declid'    => {{declid}},
        'stock'     => array(
            'method'        => {{method}},
            'minstock'      => {{minstock}},
            'inDate'        => {{inDate}},
            'quantity'      => {{quantity}},
            'warehouseid_to'    => {{warehouseid_to}},
            'warehouseid_from'  => {{warehouseid_from}},
            'purchaseAmount'    => {{purchaseAmount}},
            'calculatevalo'     => {{calculatevalo}},
            'movetype'      => {{movetype}},
            'movenotes'     => {{movenotes}}
        )
        
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{minstock}}
  * Requis: Non
  * Type: enum
  * Défaut: Quantité de stock minimale initiale
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{inDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: now
  * Description: Timestamp d'ajout en stock
* Paramètre: {{quantity}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Quantité à ajouter en stock
* Paramètre: {{warehouseid_to}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt de destination
* Paramètre: {{warehouseid_from}}
  * Requis: Non
  * Type: int
  * Défaut: Entrepôt par défaut
  * Description: Identifiant de l'entrepôt d'origine
* Paramètre: {{purchaseAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Prix d'achat du produit
  * Description: Prix d'achat
* Paramètre: {{calculatevalo}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: N
  * Description: Recalculer la valorisation
* Paramètre: {{movetype}}
  * Requis: Non
  * Type: enum
  * Défaut: Aucun
  * Description: Type de mouvement.Valeurs proposées:                            manual, warehouse, inventory                            
* Paramètre: {{movenotes}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Motif du mouvement


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Stock sérializé
---------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.reactivate',
    'params' => array(
        'itemid'    => {{itemid}},
        'stock' => array(
            'method'    => {{method}},
            'minstock'  => {{minstock}},
            'inDate'    => {{inDate}}
        ),
        'rows' => array(
            'declid'        => {{declid}},
            'warehouseid'       => {{warehouseid}},
            'barcode'       => {{barcode}},
            'purchaseAmount'    => {{purchaseAmount}}
        )
    )
);
                
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{minstock}}
  * Requis: Non
  * Type: enum
  * Défaut: Quantité de stock minimale initiale
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{inDate}}
  * Requis: Oui
  * Type: timestamp
  * Défaut: now
  * Description: Date d'ajout en stock
* Paramètre: {{rows}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d'entrée de stock
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison
* Paramètre: {{warehouseid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt
* Paramètre: {{barcode}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code barre du produit
* Paramètre: {{purchaseAmount}}
  * Requis: Oui
  * Type: int
  * Défaut: Prix d'achat du produit
  * Description: Prix du produit


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Stock simple
------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.add',
    'params' => array(
        'itemid'    => {{itemid}},
        'declid'    => {{declid}},
        'stock'     => array(
            'method'        => {{method}},
            'inDate'        => {{inDate}},
            'quantity'      => {{quantity}},
            'warehouseid_to'    => {{warehouseid_to}},
            'warehouseid_from'  => {{warehouseid_from}},
            'purchaseAmount'    => {{purchaseAmount}},
            'calculatevalo'     => {{calculatevalo}},
            'movetype'      => {{movetype}},
            'movenotes'     => {{movenotes}}
        )
    )
);
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{inDate}}
  * Requis: Non
  * Type: timestamp
  * Défaut: now
  * Description: Timestamp d'ajout en stock
* Paramètre: {{quantity}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Quantité à ajouter en stock
* Paramètre: {{warehouseid_to}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt de destination
* Paramètre: {{warehouseid_from}}
  * Requis: Non
  * Type: int
  * Défaut: Entrepôt par défaut
  * Description: Identifiant de l'entrepôt d'origine
* Paramètre: {{purchaseAmount}}
  * Requis: Non
  * Type: int
  * Défaut: Prix d'achat du produit
  * Description: Prix d'achat
* Paramètre: {{calculatevalo}}
  * Requis: Oui
  * Type: enum(Y/N)
  * Défaut: N
  * Description: Recalculer la valorisation
* Paramètre: {{movetype}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Type de mouvement.Valeurs proposées:                            manual, warehouse, inventory                            
* Paramètre: {{movenotes}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Motif du mouvement


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Stock sérializé
---------------

  

Requête
-------

```
$request = array(
    'method' => 'Stock.add',
    'params' => array(
        'itemid'    => {{itemid}},
        'stock'     => array(
            'method'    => {{method}},
            'inDate'    => {{inDate}},
        ),
        'rows'      => array(
            array(
                'declid' => {{declid}},
                'warehouseid' => {{warehouseid}},
                'barcode' => {{barcode}},
                'purchaseAmount' => {{purchaseAmount}}
            )
        )
    )
);
                
$response = sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du produit
* Paramètre: {{method}}
  * Requis: Oui
  * Type: enum
  * Défaut: Aucun
  * Description: Méthode de stock.Valeurs proposées:                            simple, serialized                            
* Paramètre: {{inDate}}
  * Requis: Oui
  * Type: timestamp
  * Défaut: now
  * Description: Date d'ajout en stock
* Paramètre: {{rows}}
  * Requis: Oui
  * Type: array
  * Défaut: Aucun
  * Description: Tableau d'entrée de stock
* Paramètre: {{declid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la déclinaison
* Paramètre: {{warehouseid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'entrepôt
* Paramètre: {{barcode}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Code barre du produit
* Paramètre: {{purchaseAmount}}
  * Requis: Oui
  * Type: int
  * Défaut: Prix d'achat du produit
  * Description: Prix du produit


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

#### Information

Vous pouvez vous référer aux méthodes disponibles sur les objets Clients et Prospects, leur fonctionnement étant similaire. Les appels API s'effectuent de la manière suivante : Supplier.{{nomDeLaMethode}}. Exemple : Supplier.getList

Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardée [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request = array(
    'method' => 'Support.getList',
    'params' => array(
        'pagination'    => array (
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ),
        'search'    => array (
            'steps'		=> {{steps}},
            'assigned'		=> {{assigned}},
            'thirds'		=> {{thirds}},
            'contains'		=> {{contains}},
            'containsMode'	=> {{containsMode}},
	    'sources'		=> {{sources}},
	    'thirdType'		=> {{thirdType}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de tickets souhaités par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page souhaitée
* Paramètre: {{steps}}
  * Requis: Non
  * Type: enum('active', 'pending', 'closed', 'spam')
  * Défaut: array('active', 'pending', 'closed', 'spam')
  * Description: Recherche des tickets ayant pour statut les valeurs fournies. Exemple: array('active', 'pending')
* Paramètre: {{assigned}}
  * Requis: Non
  * Type: enum('none', 'mine', 'others', 'all')
  * Défaut: all
  * Description: Filtrage du listing sur le collaborateur assigné au ticket
* Paramètre: {{thirds}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Recherche des tickets assignés aux identifiants clients passés en paramètre du tableau. Exemple: array(9889,4785)
* Paramètre: {{contains}}
  * Requis: Non
  * Type: numeric
  * Défaut: Aucun
  * Description: Recherche des tickets sur le contenu spécifié
* Paramètre: {{containsMode}}
  * Requis: Non
  * Type: enum('all-term', 'atleast-term', 'exact')
  * Défaut: Aucun
  * Description: Permet de modifier la méthode de recherche. all-term : tous les termes, atleast-term : au moins un terme, exact : le terme exact
* Paramètre: {{sources}}
  * Requis: Non
  * Type: enum('phone', 'internal', 'email', 'ecommerce', 'supportsaas')
  * Défaut: Aucun
  * Description: Recherche sur la source du ticket
* Paramètre: {{thirdType}}
  * Requis: Non
  * Type: enum('client', 'prospect')
  * Défaut: Aucun
  * Description: Recherche selon le type du third lié au ticket


Retour
------

```
{"response":{"infos":{"nbperpage":25,"nbpages":1,"pagenum":"1","nbtotal":"3"},"result":{"324":{"id":"324","corpid":"1114","ownerid":null,"groupid":null,"staffid":"1910","thirdid":"86452","thirdcontactid":"57366","source":"phone","ident":"3","step":"pending","subject":"Question pour L'API","requesterEmail":"[email protected]","createdDate":"1393511036","updatedDate":"1393511036","status":"ok","message":"Bonjour,J'utilise votre API pour du d\u00e9veloppement interne et j'aimerais savoir si vous comptiez ajouter la gestion du support ?Je voudrais cr\u00e9er une section support dans ma solution. Tout \u00e7a en continuant \u00e0 utiliser sellsy.Merci de votre r\u00e9ponse.Cordialement.","nbResponses":1,"lastUpdate":"27\/02\/2014 15:25","snippet":"Bonjour,\r\n\r\nJ'utilise votre API pour du d\u00e9veloppement inter...","assignedTo":"Mathieu Senand","requester":"Activane","stepDetails":{"name":"pending","label":"En attente"}},"323":{"id":"323","corpid":"1114","ownerid":null,"groupid":null,"staffid":"0","thirdid":"86453","thirdcontactid":"0","source":"phone","ident":"2","step":"closed","subject":"CRM : Ajout de staff","requesterEmail":"[email protected]","createdDate":"1393510788","updatedDate":"1393510788","status":"ok","message":"Bonjour,J'aimerais savoir comment ajouter une liste de staff \u00e0 mon compte sellsy ?CordialementJM","nbResponses":1,"lastUpdate":"27\/02\/2014 15:21","snippet":"Bonjour, \r\n\r\nJ'aimerais savoir comment ajouter une liste de ...","assignedTo":"personne","requester":"Web & Vous","stepDetails":{"name":"closed","label":"Ferm\u00e9"}},"322":{"id":"322","corpid":"1114","ownerid":null,"groupid":null,"staffid":"1912","thirdid":"86452","thirdcontactid":"57366","source":"internal","ident":"1","step":"active","subject":"Probl\u00e8me sur la caisse","requesterEmail":"[email protected]","createdDate":"1393510667","updatedDate":"1393510667","status":"ok","message":"Bonjour,J'ai actuellement un probl\u00e8me pour ajouter un produit sur la caisse.Pourriez-vous me contacter ?Cordialement.M Papin","nbResponses":1,"lastUpdate":"27\/02\/2014 15:18","snippet":"Bonjour,\r\n\r\nJ'ai actuellement un probl\u00e8me pour ajouter un p...","assignedTo":"Nicolas Claquin","requester":"Activane","stepDetails":{"name":"active","label":"Actif"}}}},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Stock.getPrefs',
    'params' => array()
);

sellsyConnect::load()->requestApi($request);
```


Retour
------

```
{"response":{"id":"194","corpid":"1869","negativstock":"N","minstock":"0.000000000","addSerialToDesc":"N","destockOn":"invoice","restockOn":"purInvoice","bookStockOnOrder":"N","bookStockOnEstimate":"N","restockOnCreditNote":"N"},"error":"","status":"success"}
```


Requete
-------

```
$request = array(
    'method' => 'Stock.updateThresHold',
    'params' => array(
        'itemid'    => {{itemid}},
        'minstock'  => {{minstock}}
    )
);

sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description           |
|------------|------|----|------|----------------------|
|{{itemid}}  |Oui   |int |Aucun |Identifiant du produit|
|{{minstock}}|Oui   |int |Aucun |Nouveau seuil d'alerte|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.getOne',
    'params' => array(
        'id'    => {{id}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                      |
|---------|------|----|------|---------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du ticket à récupérer|


Retour
------

```
{"response":{"ticket":{"id":"324","corpid":"1114","ownerid":null,"groupid":null,"staffid":"1910","thirdid":"86452","thirdcontactid":"57366","source":"phone","ident":"3","step":"pending","subject":"Question pour L'API","requesterEmail":"[email protected]","createdDate":"1393511036","updatedDate":"1393511036","status":"ok","staffName":"Mathieu Senand","staffMail":"[email protected]","smartTags":[]},"timeline":[{"id":"983","ticketid":"324","linkedid":"1910","linkedtype":"staff","assignedTo":"1910","bcc":"a:0:{}","cc":"a:0:{}","email":null,"type":"note","subject":null,"message":"Il faut lui indiquer que le support passe dans l'api d'ici une \u00e0 deux semaines .","attachments":[],"draft":"N","createdDate":"1393511117","updatedDate":"1393511117","status":"ok","senderLabel":"M. Mathieu Senand","assignedToLabel":"M. Mathieu Senand","formattedDate":"Aujourd'hui 15:25","eventType":"conversation"},{"id":"549","relatedtype":"ticket","relatedid":"324","canEdit":"N","timestamp":"1393511117","date":"Aujourd'hui 15:25","related":"#3<\/a>","title":"Mathieu Senand<\/span> a pass\u00e9 le ticket en \"En attente\"","icon":"\/ressources\/logged\/img\/support\/action\/stepped.png","eventType":"event"},{"id":"982","ticketid":"324","linkedid":"1910","linkedtype":"staff","assignedTo":"0","bcc":"","cc":"","email":null,"type":"email","subject":"Question pour L'API","message":"Bonjour,J'utilise votre API pour du d\u00e9veloppement interne et j'aimerais savoir si vous comptiez ajouter la gestion du support ?Je voudrais cr\u00e9er une section support dans ma solution. Tout \u00e7a en continuant \u00e0 utiliser sellsy.Merci de votre r\u00e9ponse.Cordialement.","attachments":[],"draft":"N","createdDate":"1393511036","updatedDate":"1393511036","status":"ok","senderLabel":"M. Mathieu Senand","formattedDate":"Aujourd'hui 15:23","eventType":"conversation"}]},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.getConversation',
    'params' => array(
        'id'        => {{id}},
        'ticketid'  => {{ticketid}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                                                      |
|------------|------|----|------|-----------------------------------------------------------------|
|{{id}}      |Oui   |int |Aucun |Identifiant de la conversation à récupérer                       |
|{{ticketid}}|Oui   |int |Aucun |Identifiant du ticket correspondant à la conversation à récupérer|


Retour
------

```
{"response":{"id":"984","ticketid":"324","linkedid":"1910","linkedtype":"staff","assignedTo":"1910","bcc":[],"cc":[],"email":null,"type":"email","subject":null,"message":"Mail \u00e0 envoyer avant la semaine du 02.Bonjour,Notre \u00e9quipe API s'en occupe en ce moment m\u00eame.CordialementMathieu Senand","attachments":"","draft":"Y","createdDate":"1393512123","updatedDate":"1393512123","status":"ok"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.deleteConversation',
    'params' => array(
        'id'        => {{id}},
        'ticketid'  => {{ticketid}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type|Défaut|Description                                                      |
|------------|------|----|------|-----------------------------------------------------------------|
|{{id}}      |Oui   |int |Aucun |Identifiant de la conversation à supprimer                       |
|{{ticketid}}|Oui   |int |Aucun |Identifiant du ticket correspondant à la conversation à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.create',
    'params' => array(
        'ticket'        => array(
            'subject'		=> {{subject}},
            'message'		=> {{message}},
            'sender'		=> {{sender}},
            'step'		=> {{step}},
            'source'		=> {{source}},
            'requesterEmail'    => {{requesterEmail}},
            'thirdid'		=> {{thirdid}},
            'thirdcontactid'    => {{thirdcontactid}},
            'staffid'		=> {{staffid}},
            'sendEmailToClient' => {{sendEmailToClient}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{subject}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Sujet du ticket utilisé en objet
* Paramètre: {{message}}
  * Requis: Non
  * Type: string
  * Défaut: " "
  * Description: Premier message de la discussion
* Paramètre: {{step}}
  * Requis: Non
  * Type: enum('active', 'pending', 'closed', 'spam')
  * Défaut: active
  * Description: Statut du ticket
* Paramètre: {{source}}
  * Requis: Non
  * Type: enum('phone', 'internal', 'email')
  * Défaut: phone
  * Description: Source du ticket
* Paramètre: {{requesterEmail}}
  * Requis: Oui
  * Type: email
  * Défaut: aucun
  * Description: Email du destinataire de la réponse support
* Paramètre: {{thirdid}}
  * Requis: Non
  * Type: int
  * Défaut: aucun
  * Description: Identifiant du client lié au ticket
* Paramètre: {{thirdcontactid}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Identifiant du contact lié au client
* Paramètre: {{staffid}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Identifiant du collaborateur assigné au ticket
* Paramètre: {{sendEmailToClient}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Envoyer un email au client avec le contenu du ticket


Retour
------

```
{"response":{"ticketid":325,"conversationid":985},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.reply',
    'params' => array(
        'ticketid'  => {{ticketid}},
        'reply'     => array(
            'type'      => {{type}},
            'message'   => {{message}},
            'cc'        => {{cc}},
            'bcc'       => {{bcc}},
            'step'      => {{step}},
            'assignedTo'    => {{assignedTo}},
            'draft'     => {{draft}},
            'sendEmailToClient' => {{sendEmailToClient}},
            'senderType'  => {{senderType}},
            'senderStaffId' => {{senderStaffId}},
            'senderContactEmail' => {{senderContactEmail}}
            'requesterEmail' => {{requesterEmail}},
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ticketid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du ticket
* Paramètre: {{message}}
  * Requis: Non
  * Type: string
  * Défaut: " "
  * Description: Message de la réponse
* Paramètre: {{step}}
  * Requis: Oui
  * Type: enum('active', 'pending', 'closed', 'spam')
  * Défaut: aucun
  * Description: Statut du ticket
* Paramètre: {{cc}}
  * Requis: Non
  * Type: array
  * Défaut: " "
  * Description: Adresses email à inclure en CC. Exemple : array('[email protected]','[email protected]')
* Paramètre: {{bcc}}
  * Requis: Non
  * Type: array
  * Défaut: " "
  * Description: Adresses email à inclure en BCC. Exemple : array('[email protected]','[email protected]')
* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum('email', 'note')
  * Défaut: aucun
  * Description: Type de la réponse. Elle peut être email pour une réponse client ou note pour une note interne
* Paramètre: {{draft}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: N
  * Description: Selon le paramètre envoyé, la réponse client pourra être en brouillon (Mail non envoyé) ou en mail (Seulement pour une réponse de type mail).
* Paramètre: {{assignedTo}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Identifiant du collaborateur qui sera assigné à la réponse et au ticket
* Paramètre: {{sendEmailToClient}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: N
  * Description: Permet de choisir si l'on veut envoyer l'email ou non
* Paramètre: {{senderType}}
  * Requis: Non
  * Type: enum(staff/contact)
  * Défaut: staff
  * Description: Définit le type de l'expéditeur, collaborateur ou contact
* Paramètre: {{senderStaffId}}
  * Requis: Non
  * Type: int
  * Défaut: aucun
  * Description: Identifiant du collaborateur qui envoie la réponse, utilisable seulement quand senderType=staff
* Paramètre: {{senderContactEmail}}
  * Requis: Non
  * Type: email
  * Défaut: aucun
  * Description: Email du contact qui envoie la réponse, utilisable seulement quand senderType=contact
* Paramètre: {{requesterEmail}}
  * Requis: Non
  * Type: email
  * Défaut: aucun
  * Description: Email du destinataire de la réponse support


Retour
------

```
{"response":986,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.updateReply',
    'params' => array(
        'ticketid'  => {{ticketid}},
        'convID'    => {{convID}},
        'reply'     => array(
            'message'   => {{message}},
            'type'      => {{type}},
            'cc'        => {{cc}},
            'bcc'       => {{bcc}},
            'step'      => {{step}},
            'assignedTo'    => {{assignedTo}},
            'draft'     => {{draft}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ticketid}}
  * Requis: Oui
  * Type: int
  * Défaut: aucun
  * Description: Identifiant du ticket
* Paramètre: {{convID}}
  * Requis: Oui
  * Type: int
  * Défaut: aucun
  * Description: Identifiant de la conversation à éditer
* Paramètre: {{message}}
  * Requis: Non
  * Type: string
  * Défaut: " "
  * Description: Message de la réponse support
* Paramètre: {{type}}
  * Requis: Oui
  * Type: enum('email', 'note')
  * Défaut: aucun
  * Description: Type de la réponse
* Paramètre: {{step}}
  * Requis: Oui
  * Type: enum('active', 'pending', 'closed', 'spam')
  * Défaut: aucun
  * Description: Nouveau statut du ticket
* Paramètre: {{cc}}
  * Requis: Non
  * Type: array
  * Défaut: " "
  * Description: Adresses email à inclure en CC. Exemple : array('[email protected]','[email protected]')
* Paramètre: {{bcc}}
  * Requis: Non
  * Type: array
  * Défaut: " "
  * Description: Adresses email à inclure en BCC. Exemple : array('[email protected]','[email protected]')
* Paramètre: {{draft}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: N
  * Description: Envoyer la réponse, ou l'enregistrer en tant que brouillon
* Paramètre: {{assignedTo}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Identifiant du collaborateur qui sera assigné au ticket


Retour
------

```
    {"response":"987","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.updateAssignation',
    'params' => array(
        'ticketid'  => {{ticketid}},
        'assignedTo'    => {{assignedTo}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre     |Requis|Type|Défaut|Description                                            |
|--------------|------|----|------|-------------------------------------------------------|
|{{ticketid}}  |Oui   |int |aucun |Identifiant du ticket                                  |
|{{assignedTo}}|Oui   |int |aucun |Identifiant du collaborateur qui sera assigné au ticket|


Retour
------

```
{"response":"1912","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.updateStep',
    'params' => array(
        'ticketid'  => {{ticketid}},
        'step'      => {{step}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type  |Défaut|Description             |
|------------|------|------|------|------------------------|
|{{ticketid}}|Oui   |int   |Aucun |Identifiant du ticket   |
|{{step}}    |Oui   |string|Aucun |Nouveau statut du ticket|


Retour
------

```
{"response":"spam","error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.updateThird',
    'params' => array(
        'ticketid'      => {{ticketid}},
        'thirdid'       => {{thirdid}},
        'thirdcontactid'    => {{thirdcontactid}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{ticketid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du ticket
* Paramètre: {{thirdid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du client (entreprise ou personne) lié au ticket. Pour le délier, insérer 0.
* Paramètre: {{thirdcontactid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: ID du contact lié au ticket. Pour le délier, insérer 0.


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'Support.getTemplates',
    'params' => array(
        'ticketid'      => {{ticketid}},
        'search'			=>  array(
			'contains' => {{contains}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre   |Requis|Type  |Défaut|Description                          |
|------------|------|------|------|-------------------------------------|
|{{ticketid}}|Oui   |int   |Aucun |Identifiant du ticket                |
|{{contains}}|Non   |String|Aucun |Rechercher sur le contenu du template|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'SmartTags.getList',
    'params' => array(
        'pagination'    => array (
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ),
        'search'        => array (
            'category'      => {{category}},
            'inPos'         => {{inPos}},
            'contains'      => {{contains}},
		'linkedtype'    => {{linkedtype}},
		'linkedid'      => {{linkedid}}
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de smarts tags souhaités par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page souhaitée
* Paramètre: {{category}}
  * Requis: Non
  * Type: enum("catalogue", "purchase", "doc", "third", "opportunity", "support")
  * Défaut: Aucune
  * Description: Filtrage des smarts tags par catégorie
* Paramètre: {{inPos}}
  * Requis: Non
  * Type: enum(Y/N)
  * Défaut: Aucune
  * Description: Récupération des smart tags exclusifs à la caisse ou non
* Paramètre: {{contains}}
  * Requis: Non
  * Type: string
  * Défaut: Aucune
  * Description: Recherche des smarts tags dont le label est composé d'au moins la chaine {{contains}}
* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum("people", "doc", "purchase", "item", "service", "timetracking", "estimate", "creditnote", "order", "delivery", "proforma", "invoice", "third", "supplier", "prospect", "opportunity", "support", "ticket", "purDelivery", "purOrder", "purInvoice", "purCreditNote" ,"expense")
  * Défaut: Aucune
  * Description: Type de l'objet lié
* Paramètre: {{linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucune
  * Description: ID de l'objet lié


Retour
------

```
{"response":{"infos":{"nbperpage":10,"nbpages":1,"pagenum":1,"nbtotal":"5"},"result":{"1682":{"id":"1682","corpid":"1114","category":"Ticket","created":"27\/02\/2014","word":"affaires","nbLinks":"1"},"1685":{"id":"1685","corpid":"1114","category":"Ticket","created":"27\/02\/2014","word":"API","nbLinks":"1"},"1683":{"id":"1683","corpid":"1114","category":"Ticket","created":"27\/02\/2014","word":"caisse","nbLinks":"1"},"1686":{"id":"1686","corpid":"1114","category":"Ticket","created":"27\/02\/2014","word":"Connectique","nbLinks":"1"},"1684":{"id":"1684","corpid":"1114","category":"Ticket","created":"27\/02\/2014","word":"mobile","nbLinks":"1"}}},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'SmartTags.assign',
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'tags'      => {{tags}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Non
  * Type: enum("people", "doc", "purchase", "item", "service", "timetracking", "estimate", "creditnote", "order", "delivery", "proforma", "invoice", "third", "supplier", "prospect", "opportunity", "support", "ticket", "purDelivery", "purOrder", "purInvoice", "purCreditNote" ,"expense")
  * Défaut: Aucun
  * Description: Type de l'objet à lier
* Paramètre: {{linkedid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'objet qui se verra assigner le smart-tag
* Paramètre: {{tags}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Smart-tag à assigner à l'objet


Retour
------

```
{"response":{"tags":"chronophage"},"error":"","status":"success"}
```


Requête
-------

```
$request = array(
    'method' => 'SmartTags.unassign',
    'params' => array(
        'linkedtype'    => {{linkedtype}},
        'linkedid'  => {{linkedid}},
        'tags'      => {{tags}}
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{linkedtype}}
  * Requis: Oui
  * Type: enum("people", "doc", "purchase", "item", "service", "timetracking", "estimate", "creditnote", "order", "delivery", "proforma", "invoice", "third", "supplier", "prospect", "opportunity", "support", "ticket", "purDelivery", "purOrder", "purInvoice", "purCreditNote" ,"expense")
  * Défaut: Aucun
  * Description: Type de l'objet qui se verra délier les smart-tags
* Paramètre: {{linkedid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de l'objet qui se verra délier les smart-tags
* Paramètre: {{tags}}
  * Requis: Oui
  * Type: string
  * Défaut: Aucun
  * Description: Liste des identifiants de smart-tags à délier


Retour
------

```
{"response":{"tags":"chronophage"},"error":"","status":"success"}
```


Requête
-------

```
$request = [
    'method' => 'POSCashtill.getList',
    'params' => [
        'pagination'	=> [
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ]
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre    |Requis|Type|Défaut|Description                             |
|-------------|------|----|------|----------------------------------------|
|{{nbperpage}}|Non   |int |10    |Nombre de caisse(s) souhaité(s) par page|
|{{pagenum}}  |Non   |int |1     |Numéro de la page souhaitée             |


Requête
-------

```
$request = [
    'method' => 'POSCashtill.open',
    'params' => [
        'openingCashFund'	=> {{openingCashFund}},
        'openingStaffid'	=> {{openingStaffid}},
        'tillid'		=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{openingCashFund}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Montant en espèces à ajouter au fonds de caisse lors de l‘ouverture
* Paramètre: {{openingStaffid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du collaborateur déclancheur de l‘ouverture
* Paramètre: {{tillid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la caisse à ouvrir


Requête
-------

```
$request = [
    'method' => 'POSCashtill.close',
    'params' => [
        'openingStaffid'	=> {{openingStaffid}},
        'tillid'		=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre         |Requis|Type|Défaut|Description                                    |
|------------------|------|----|------|-----------------------------------------------|
|{{openingStaffid}}|Oui   |int |Aucun |ID du collaborateur déclancheur de la fermeture|
|{{tillid}}        |Oui   |int |Aucun |ID de la caisse à fermer                       |


Requête
-------

```
$request = [
    'method' => 'POSCashtill.getX',
    'params' => [
        'tillid'	=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description    |
|----------|------|----|------|---------------|
|{{tillid}}|Oui   |int |Aucun |ID de la caisse|


Requête
-------

```
$request = [
    'method' => 'POSCashtill.getPayMediums',
    'params' => [
        'tillid'	=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description    |
|----------|------|----|------|---------------|
|{{tillid}}|Oui   |int |Aucun |ID de la caisse|


Requête
-------

```
$request = [
    'method' => 'POSCashtill.getStaffs',
    'params' => [
        'tillid'	=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description    |
|----------|------|----|------|---------------|
|{{tillid}}|Oui   |int |Aucun |ID de la caisse|


Requête
-------

```
$request = [
    'method' => 'POSCashtill.updateLastSync',
    'params' => [
        'tillid'	=> {{tillid}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type|Défaut|Description    |
|----------|------|----|------|---------------|
|{{tillid}}|Oui   |int |Aucun |ID de la caisse|


Requête
-------

```
$request = [
    'method' => 'POSReceipt.getList',
    'params' => [
        'pagination'        => [
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ],
        'search'        => [
            'thirds'			=> {{thirds}},
            'tillid'			=> {{tillid}},
            'periodCreated_start'	=> {{periodCreated_start}},
            'periodCreated_end'		=> {{periodCreated_end}}
        ]
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de ticket(s) souhaité(s) par page
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 1
  * Description: Numéro de la page souhaitée
* Paramètre: {{thirds}}
  * Requis: Non
  * Type: array
  * Défaut: Aucun
  * Description: Filtrage du listing par IDs de client (le format attendu est un tableau)
* Paramètre: {{tillid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Filtrage du listing par caisse
* Paramètre: {{periodCreated_start}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Début de la fourchette de date de création
* Paramètre: {{periodCreated_end}}
  * Requis: Non
  * Type: timestamp
  * Défaut: Aucun
  * Description: Fin de la fourchette de date de création


Requête
-------

```
$request = [
    'method' => 'POSReceipt.getOne',
    'params' => [
        'id'    => {{id}}
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description                   |
|---------|------|----|------|------------------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du ticket souhaité|


Requête
-------

```
$request = [
    'method' => 'POSReceipt.create',
    'params' => [
		'tillid'	=> {{tillid}},
		'thirdid'	=> {{thirdid}},
		'discountType'	=> {{discountType}},
		'discount'	=> {{discount}},
		'ecoTaxId'	=> {{ecoTaxId}},
		'rateCategory'	=> {{rateCategory}},
		'rows'		=> [
			0 => [
				# Common once / item
				'type'			=> {{row_type}},
				'unitAmountTTC'		=> {{row_unitAmountTTC}},
				'purchaseAmount'	=> {{row_purchaseAmount}},
				'discountType'		=> {{row_discountType}},
				'discount'		=> {{row_discount}},
				'qt'			=> {{row_qt}},
				'name'			=> {{row_name}},
				'taxid'			=> {{row_taxid}},
				'useEcoTax'		=> {{row_useEcoTax}},
				'ecoTaxType'		=> {{row_ecoTaxType}},
				'ecoTax'		=> {{row_ecoTax}},
				# Item
				'itemid'		=> {{row_itemid}},
				'declid'		=> {{row_declid}}
			]
		],
		'payments'	=> [
			0 => [
				'mediumid'	=> {{payment_mediumid}},
				'amount'	=> {{payment_amount}},
				'amountBack'	=> {{payment_amountBack}},
				'endingBack'	=> {{payment_endingBack}}
			]
		]
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{tillid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant de la caisse
* Paramètre: {{thirdid}}
  * Requis: Non
  * Type: int
  * Défaut: Aucun
  * Description: Identifiant du client associé
* Paramètre: {{discountType}}
  * Requis: Non
  * Type: enum('percent', 'value')
  * Défaut: percent
  * Description: Type de la remise globale
* Paramètre: {{discount}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant de la remise globale
* Paramètre: {{ecoTaxId}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: ID de l‘éco taxe
* Paramètre: {{rateCategory}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: ID de la catégorie tarifaire
* Paramètre: {{row_type}}
  * Requis: Non
  * Type: enum('once', 'item')
  * Défaut: once
  * Description: Type de la ligne
* Paramètre: {{row_unitAmountTTC}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant TTC de la ligne
* Paramètre: {{row_purchaseAmount}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Prix d‘achat de la ligne
* Paramètre: {{row_discountType}}
  * Requis: Non
  * Type: enum('percent', 'value')
  * Défaut: value
  * Description: Type de remise de la ligne
* Paramètre: {{row_discount}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant de la remise de la ligne
* Paramètre: {{row_qt}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant de la remise de la ligne
* Paramètre: {{row_name}}
  * Requis: Non
  * Type: string
  * Défaut: Aucun
  * Description: Nom de la ligne
* Paramètre: {{row_taxid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID de la taxe de la ligne
* Paramètre: {{row_useEcoTax}}
  * Requis: Non
  * Type: enum('Y', 'N')
  * Défaut: N
  * Description: Utilisation ou non de l‘éco taxe pour la ligne
* Paramètre: {{row_ecoTaxType}}
  * Requis: Non
  * Type: enum('inc', 'exc')
  * Défaut: inc
  * Description: Type de l‘éco taxe pour la ligne
* Paramètre: {{row_ecoTax}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant de l‘éco taxe pour la ligne
* Paramètre: {{row_itemid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du produit associé à la ligne
* Paramètre: {{payment_mediumid}}
  * Requis: Oui
  * Type: int
  * Défaut: Aucun
  * Description: ID du moyen de paiement associé au paiement
* Paramètre: {{payment_amount}}
  * Requis: Oui
  * Type: float
  * Défaut: Aucun
  * Description: Montant du paiement
* Paramètre: {{payment_amountBack}}
  * Requis: Non
  * Type: float
  * Défaut: 0
  * Description: Montant du rendu monnaie


Requête
-------

```
$request = [
	'method' => 'POSReceipt.sendToClient',
	'params' => [
		'id'		=> {{id}},
		'thirdid'	=> {{thirdid}},
		'email'		=> {{email}}
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre  |Requis|Type  |Défaut|Description            |
|-----------|------|------|------|-----------------------|
|{{id}}     |Oui   |int   |Aucun |Identifiant du ticket  |
|{{thirdid}}|Oui   |int   |Aucun |Identifiant du client  |
|{{email}}  |Oui   |string|Aucun |Adresse email du client|


Requête
-------

```
$request = [
	'method' => 'POSReceipt.assignThird',
	'params' => [
		'id'		=> {{id}},
		'thirdid'	=> {{thirdid}}
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre  |Requis|Type|Défaut|Description          |
|-----------|------|----|------|---------------------|
|{{id}}     |Oui   |int |Aucun |Identifiant du ticket|
|{{thirdid}}|Oui   |int |Aucun |Identifiant du client|


Requête
-------

```
$request = [
	'method' => 'POSReceipt.unassignThird',
	'params' => [
		'id'	=> {{id}}
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre|Requis|Type|Défaut|Description          |
|---------|------|----|------|---------------------|
|{{id}}   |Oui   |int |Aucun |Identifiant du ticket|


Requête
-------

```
$request = [
    'method' => 'POSMove.getList',
	'params' => [
        'pagination'        => [
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ],
        'search'        => [
            'tillid'			=> {{tillid}},
            'periodCreated_start'	=> {{periodCreated_start}},
            'periodCreated_end'		=> {{periodCreated_end}}
        ]
    ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre              |Requis|Type     |Défaut|Description                                |
|-----------------------|------|---------|------|-------------------------------------------|
|{{nbperpage}}          |Non   |int      |10    |Nombre de mouvement(s) souhaité(s) par page|
|{{pagenum}}            |Non   |int      |1     |Numéro de la page souhaitée                |
|{{tillid}}             |Non   |int      |Aucun |Filtrage du listing par caisse             |
|{{periodCreated_start}}|Non   |timestamp|Aucun |Début de la fourchette de date de création |
|{{periodCreated_end}}  |Non   |timestamp|Aucun |Fin de la fourchette de date de création   |


Requête
-------

```
$request = [
	'method' => 'POSMove.create',
	'params' => [
		'tillid'	=> {{tillid}},
		'amount'	=> {{amount}},
		'motif'		=> {{motif}},
		'type'		=> {{type}}
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre |Requis|Type                   |Défaut|Description         |
|----------|------|-----------------------|------|--------------------|
|{{tillid}}|Oui   |int                    |Aucun |ID de la caisse     |
|{{amount}}|Oui   |float                  |Aucun |Montant du mouvement|
|{{motif}} |Oui   |string                 |Aucun |Motif du mouvement  |
|{{type}}  |Oui   |enum('debit', 'credit')|Aucun |Type du mouvement   |


Requête
-------

```
$request = [
    'method' => 'Tracking.getfor',
	'params' => [
            'linkedtype'        => {{linkedtype}},
            'linkedid'          => {{linkedid}},
            'page'              => {{page}},
            'nbPerPage'	        => {{nbPerPage}},
        ]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Paramètre: {{nbperpage}}
  * Requis: linkedtype
  * Type: enum ('third','thirdcontact')
  * Défaut: none
  * Description: Type de l'object lié
* Paramètre: {{linkedid}}
  * Requis: linkedid
  * Type: int
  * Défaut: Aucun
  * Description: ID de l'object lié
* Paramètre: {{pagenum}}
  * Requis: Non
  * Type: int
  * Défaut: 0
  * Description: Numéro de la page souhaitée
* Paramètre: {{nbperpage}}
  * Requis: Non
  * Type: int
  * Défaut: 10
  * Description: Nombre de mouvement(s) souhaité(s) par page


Requête
-------

```
$request = [
	'method' => 'Tracking.record',
	'params' => [
            'thirdid'	        => {{thirdid}},
            'thirdcontactid'	=> {{thirdcontactid}},
            'trackings'         => [
                'type'		    => {{type}}
                'url'		    => {{url}},
                'formid'	    => {{formid}},
                'formname'	    => {{formname}},
                'timestamp'	    => {{timestamp}},
            ]
	]
];
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------


|Paramètre         |Requis|Type               |Défaut|Description          |
|------------------|------|-------------------|------|---------------------|
|{{thirdid}}       |Oui   |int                |Aucun |ID du third          |
|{{thirdcontactid}}|Non   |int                |0     |ID du thirdcontact   |
|{{type}}          |Oui   |enum('url', 'form')|Aucun |Type du tracking     |
|{{timestamp}}     |Oui   |timestamp          |Aucun |timestamp du tracking|
|{{formid}}        |Non   |string             |Aucun |Id du formulaire     |
|{{formname}}      |Non   |string             |Aucun |Nom du formulaire    |


Recherche par valeur de champs personnalisés [Voir ici](#customfieldssearchlisting)

Recherche en utilisant une recherche sauvegardé [Voir ici](#listingsettingsearchlisting)

Requete
-------

```
$request = array(
    'method' => 'Timetracking.getList',
    'params' => array(
        'pagination'    => array (
            'nbperpage'     => {{nbperpage}},
            'pagenum'       => {{pagenum}}
        ),
        'search'        => array(
            'third'         => {{thirdname}},
            'staffOnly'     => {{staffOnly}},
            'periodecreated_start'  => {{periodecreated_start}},
            'periodecreated_end'    => {{periodecreated_end},
             'linkedtype'           => {{linkedtype}},
             'linkedid'             => {{linkedid}},
             'ttleLinkedType'      => {{ttleLinkedType}},
             'ttleLinkedId'        => {{ttleLinkedId}},
        )
    )
);
sellsyConnect::load()->requestApi($request);
```


Paramètres
----------



* Parametre: {{nbperpage}}
  * requis: non
  * type: int
  * default: 10
  * Description: Nombre de tracking voulu par page
* Parametre: {{pagenum}}
  * requis: non
  * type: int
  * default: 1
  * Description: Numéro de la page voulue
* Parametre: {{thirdname}}
  * requis: non
  * type: string
  * default: aucune
  * Description: Filtrage du listing par nom de client
* Parametre: {{staffOnly}}
  * requis: non
  * type: enum(Y/N)
  * default: aucune
  * Description: Tous les temps ou seulement ceux du staff connecté
* Parametre: {{periodecreated_start}}
  * requis: non
  * type: timestamp
  * default: aucune
  * Description: Début de la fourchette de date de création
* Parametre: {{periodecreated_end}}
  * requis: non
  * type: timestamp
  * default: aucune
  * Description: Fin de la fourchette de date de création
* Parametre: {{linkedtype}}
  * requis: non
  * type: enum('invoice','estimate')
  * default: aucun
  * Description: type du  document sur lequel on veux filtrer
* Parametre: {{linkedid}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Permet de filtrer pour les temps liés à un devis ou une facture précise
* Parametre: {{ttleLinkedType}}
  * requis: non
  * type: enum('ticket')
  * default: aucun
  * Description: Permet de filtrer pour les temps liés à un ticket de support
* Parametre: {{ttleLinkedId}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Permet de filtrer pour les temps liés à un ticket de support précis


Retour
------

```
    {"response":{"infos":{"nbperpage":10,"nbpages":2,"pagenum":"1","nbtotal":"14"},"result":{
   "56418_":{
      "id":"56418",
      "corpid":"1869",
      "ownerid":"2854",
      "thirdid":"127243",
      "serviceid":"300689",
      "date":"2016-08-29",
      "week":"35",
      "nbSecondes":"11400",
      "note":"",
      "startTime":"2016-06-28 12:05:19",
      "stopTime":"0000-00-00 00:00:00",
      "cost":"0.000000000",
      "status":"ok",
      "billed":"N",
      "isBillable":"Y",
      "alertSent":"N",
      "third_name":"ASSEDIC",
      "staff_name":"Râ Maxime",
      "staff_pic":"",
      "staff_email":"[email protected]",
      "service_name":"Montage de pneus",
      "service_unitAmountIsTaxesFree":"Y",
      "service_unitAmount":"10.000000000",
      "service_purchaseAmount":"10.000000000",
      "service_taxrate":"19.600000000",
      "service_taxid":"97574",
      "service_notes":"",
      "service_unitid":"97578",
      "linkedid":null,
      "linkedtype":null,
      "docident":null,
      "docsubject":null,
      "ttleLinkedType":null,
      "ttleLinkedId":null,
      "ticketSubject":null,
      "oppIdent":null,
      "projectEntryIdent":null,
      "formatted_isBillabe":"Oui",
      "formatted_billed":"Non",
      "staffPic":"\/ressources\/logged\/img\/common\/people.jpg",
      "third":"test",
      "service":"Montage de pneus",
      "serviceNotes":"",
      "serviceTaxid":"97574",
      "serviceUnitid":"97578",
      "serviceTaxrate":"19.600000000",
      "serviceUrl":"\u003Ca href=\u0022?_f=catalogueitem\u0026id=300689\u0026type=service\u0022\u003EMontage de pneus\u003C\/a\u003E",
      "staff":"Râ Maxime",
      "serviceUnitAmount":"10.000000000",
      "serviceUnitAmountTaxesInc":"11.96",
      "servicePurchaseAmount":"10.000000000",
      "tags":[

      ],
      "formatted_date":"29\/08\/2016",
      "canUpdate":"Y",
      "canDelete":"Y",
      "linkedDocs":"",
      "time":"3 h 10 mn 0 s.",
      "formatted_time":"03:10:00",
      "nbMin":190
   }
}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
        'method' => 'Timetracking.getOrderedList',
        'params' => array(
            'search'        => array(
                'third'         => {{thirdname}},
                'staffOnly'     => {{staffOnly}},
                'periodecreated_start'  => {{periodecreated_start}},
                'periodecreated_end'    => {{periodecreated_end}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------



* Parametre: {{thirdname}}
  * requis: non
  * type: string
  * default: aucune
  * Description: Filtrage du listing par nom de client
* Parametre: {{staffOnly}}
  * requis: non
  * type: enum(Y/N)
  * default: aucune
  * Description: Tous les temps ou seulement ceux du staff connecté
* Parametre: {{periodecreated_start}}
  * requis: oui
  * type: timestamp
  * default: aucune
  * Description: Début de la fourchette de date de création
* Parametre: {{periodecreated_end}}
  * requis: oui
  * type: timestamp
  * default: aucune
  * Description: Fin de la fourchette de date de création


Retour
------

```
    {"response":{"infos":{"nbperpage":500,"nbpages":1,"pagenum":1,"nbtotal":"6"},"result":{"6292243186N12430invoice":{"thirdid":"6292","thirdName":"Air Neuter","linkedtype":"invoice","linkedid":"12430","docident":"FACT-20121211-00154","service":"243186","serviceName":"Nettoyage piscine","deletable":"Y","days":{"2012-12-11":{"id":"198","time":"01:00","billed":"N"},"2012-12-10":{"id":"199","time":"01:00","billed":"N"}}},"6292243186Y12415estimate":{"thirdid":"6292","thirdName":"Air Neuter","linkedtype":"estimate","linkedid":"12415","docident":"DEV-20121207-00013","service":"243186","serviceName":"Nettoyage piscine","deletable":"N","days":{"2012-12-07":{"id":"174","time":"02:00","billed":"Y"}}},"9191243186N":{"thirdid":"9191","thirdName":"Test 2","linkedtype":null,"linkedid":null,"docident":null,"service":"243186","serviceName":"Nettoyage piscine","deletable":"Y","days":{"2012-12-07":{"id":"197","time":"01:00","billed":"N"},"2012-12-06":{"id":"147","time":"02:00","billed":"N"}}},"6292243186N12352invoice":{"thirdid":"6292","thirdName":"Air Neuter","linkedtype":"invoice","linkedid":"12352","docident":"FACT-20121130-00149","service":"243186","serviceName":"Nettoyage piscine","deletable":"Y","days":{"2012-12-06":{"id":"149","time":"01:00","billed":"N"}}}}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
            'method' => 'Timetracking.getOne',
            'params' => array(
                'id'    => {{id}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                  |
|---------|------|----|-------|-----------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant d'un timetracking|


Retour
------

```
    {"response":{"id":"56418","corpid":"1869","ownerid":"2854","thirdid":"127243","serviceid":"300689","date":"29\/08\/2016","week":"35","nbSecondes":"11400","note":"","startTime":"2016-06-28 12:05:19","stopTime":"0000-00-00 00:00:00","cost":"0.000000000","status":"ok","billed":"N","isBillable":"Y","alertSent":"N","service":"Montage de pneus","third":"Garage peugeot","linkedid":"","linkedtype":"","linked":"","formatted_time":"03:10:00","nbMin":"03:10"},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
            'method' => 'Timetracking.create',
            'params' => array(
                'timetracking'  => array(
                    'date'          => {{date}},
                    'thirdid'       => {{thirdid}},
                    'linkedtype'        => {{linkedtype}},
                    'linkedid'      => {{linkedid}},
                    'serviceid'     => {{serviceid}},
                    'nbMin'         => {{nbMin}},
		    'nbSecondes'    => {{nbSecondes}},
                    'note'          => {{note}},
                    'ttleLinkedType'      => {{ttleLinkedType}},
                    'ttleLinkedId'        => {{ttleLinkedId}},
					'isBillable'		  => {{isBillable}},
                )
            )
        )
    );
    sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------



* Parametre: {{date}}
  * requis: oui
  * type: timestamp
  * default: aucun
  * Description: Jour concerné
* Parametre: {{thirdid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant client
* Parametre: {{linkedtype}}
  * requis: non
  * type: enum
  * default: aucun
  * Description: Type du document associé (invoice ou estimate)
* Parametre: {{linkedid}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Identifiant du document associé
* Parametre: {{serviceid}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du service associé
* Parametre: {{nbMin}}
  * requis: oui|non
  * type: int
  * default: aucun
  * Description: Nombre de minutes
* Parametre: {{nbSecondes}}
  * requis: oui|non
  * type: int
  * default: aucun
  * Description: Nombre de secondes. Utilisez ce paramètre si vous avez activé la granularité à la seconde pour plus de précision
* Parametre: {{note}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Note associée
* Parametre: {{ttleLinkedType}}
  * requis: non
  * type: enum('ticket')
  * default: aucun
  * Description: Type de l'objet à lier à l'entrée timetracking
* Parametre: {{ttleLinkedId}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Id de l'objet à lier à l'entrée timetracking
* Parametre: {{isBillable}}
  * requis: non
  * type: enum(Y,N)
  * default: aucun
  * Description: Temps refacturable


Retour
------

```
    {"response":{{ttid}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
            'method' => 'Timetracking.update',
            'params' => array(
                'timetracking'  => array(
                    'id'            => {{id}},
                    'linkedtype'        => {{linkedtype}},
                    'linkedid'      => {{linkedid}},
                    'nbMin'         => {{nbMin}},
		    'nbSecondes'    => {{nbSecondes}},	
                    'note'          => {{note}},
                    'ttleLinkedType'      => {{ttleLinkedType}},
                    'ttleLinkedId'        => {{ttleLinkedId}},
					'isBillable'		  => {{isBillable}},
                )
            )
        )
    );
    sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------



* Parametre: {{id}}
  * requis: oui
  * type: int
  * default: aucun
  * Description: Identifiant du timetracking
* Parametre: {{linkedtype}}
  * requis: non
  * type: enum
  * default: aucun
  * Description: Type du document associé (invoice ou estimate). Si déjà précisé lors du create ou d'un précédent update, ce paramètre sera ignoré.
* Parametre: {{linkedid}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Identifiant du document associé. Si déjà précisé lors du create ou d'un précédent update, ce paramètre sera ignoré.
* Parametre: {{nbMin}}
  * requis: oui|non
  * type: int
  * default: aucun
  * Description: Nombre de minutes
* Parametre: {{nbSecondes}}
  * requis: oui|non
  * type: int
  * default: aucun
  * Description: Nombre de secondes. Utilisez ce paramètre si vous avez activé la granularité à la seconde pour plus de précision
* Parametre: {{note}}
  * requis: non
  * type: string
  * default: aucun
  * Description: Note associée
* Parametre: {{ttleLinkedType}}
  * requis: non
  * type: enum('ticket')
  * default: aucun
  * Description: Type de l'objet à lier à l'entrée timetracking
* Parametre: {{ttleLinkedId}}
  * requis: non
  * type: int
  * default: aucun
  * Description: Id de l'objet à lier à l'entrée timetracking
* Parametre: {{isBillable}}
  * requis: non
  * type: enum(Y,N)
  * default: aucun
  * Description: Temps refacturable


Retour
------

```
    {"response":{{ttid}},"error":"","status":"success"}
                
```


Requete
-------

```
    $request = array(
            'method' => 'Timetracking.delete',
            'params' => array(
                'id'    => {{id}}
            )
        )
    );
    sellsyConnect::load()->requestApi($request);                    
                
```


Paramètres
----------


|Parametre|requis|type|default|Description                |
|---------|------|----|-------|---------------------------|
|{{id}}   |oui   |int |aucun  |Identifiant du timetracking|


Retour
------

```
    {"response":null,"error":"","status":"success"}
                
```


Requete
-------

```
$request = array(
	'method' => 'Briefcases.getList',
	'params' => array(
		'search'        => array(
			'linkedtype'	=> {{linkedtype}},
			'linkedid'		=> {{linkedid}},
			'mode'			=> {{mode}},
		)
	)
);
sellsyConnect::load()->requestApi($request);                    

```


Paramètres
----------



* Parametre: {{linkedtype}}
  * requis: oui
  * type: enum("people", "third",'opportunity','item','service','invoice', 'estimate', 'proforma', 'delivery', 'order', 'creditnote','purInvoice', 'purDelivery', 'purOrder', 'purCreditNote','document','purchase','directory')
  * default: aucune
  * Description: Permet de filtrer la récupération des fichiers sur un type ressource
* Parametre: {{linkedid}}
  * requis: oui
  * type: int
  * default: aucune
  * Description: ID de la ressource dont l'on veut récuperer les fichiers
* Parametre: {{mode}}
  * requis: oui
  * type: enum("flat","files","folders")
  * default: flat
  * Description: 								Permet de spécifier le format de retour de la requête :								 flat : Retourne tous les fichiers et tous les dossiers de la ressource dans 2 tableaux séparés (tout les dossiers et fichiers sont au même niveau)								 files : Retourne tous les fichiers de la ressource								 folders : Retourne tous les dossiers de la ressource							


Retour
------

```
{"result":{"files":{"56358":{"corpid":"1931","ownerid":"2952","ownertype":"staff","id":"56358","name":"AmiiboMario-SSB","size":"119561","created":"2016-07-05 16:17:03","lastSyncDropbox":null,"extension":"png","directorie":"871062","attachtoestimate":"N","attachtoinvoice":"N","attachtodelivery":"N","attachtoorder":"N","attachtocreditnote":"N","attachtoproforma":"N","attachtopurOrder":"N","attachtopurDelivery":"N","attachtopurInvoice":"N","attachtopurCreditNote":"N","file_fullname":"AmiiboMario-SSB.png","public_url":"?_f=file&id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCJThDJURCJTFGaiVFRSVGMjVhJTQwJUUyJTJCZyVFQyUwRSU4RnQyJTk4MiUzRSU5NyUxQSVFRiVGQyUyOSVCQyVGRCUwMF8lRDFxbiVFRCVEMyU5RCUxMCUzRHElN0UlRjdkJTg3JUZEJUQ1JTAzJUExJUI1TCVBOSUwMkglMkYlMDglQjZ3JTE2JTFCJTIzJTdDJTAwJTVDJUI0bCVDQQ==&key=a5f751dd291cde51001d6ac95ff280ae"},"56357":{"corpid":"1931","ownerid":"2952","ownertype":"staff","id":"56357","name":"6c901fb7e0c52d1292fea6bff51092d8_large","size":"45695","created":"2016-07-05 16:16:59","lastSyncDropbox":null,"extension":"jpg","directorie":"871067","attachtoestimate":"N","attachtoinvoice":"N","attachtodelivery":"N","attachtoorder":"N","attachtocreditnote":"N","attachtoproforma":"N","attachtopurOrder":"N","attachtopurDelivery":"N","attachtopurInvoice":"N","attachtopurCreditNote":"N","file_fullname":"6c901fb7e0c52d1292fea6bff51092d8_large.jpg","public_url":"?_f=file&id=JUQ4RiVEQm0lMTIyJUNGJUVFJTlEJUNGJThBJUJEJUMwJUVCJThBJUI5JTA5JUQ1JUQzJUUzJUVGJTJBJTE0UyVFNTEyZ3MyJUIzJTlCTSUxM0wlMjl6JUU5JUY1bCVGNnklREMlMjIxdm1tRmolRENxVSUwMyVBOSVGOSVEQiVDQSVBQS4lMTQlQzdZQSUwRCU5RiVFNSVGNyUxMCU4MEQlRkUlQTElM0UlRjElN0YlQThhJUQ0JUI1JUNCJTJCJTBGJTg3JTA0QiVEMHIlQzR4JTYweSVCOUElQUQlOEIlQkYlRjQlRTQlMDclQjYlQjklNURNJThFYSVGRiVFQnErWCVBOSU5M3psJTNEJUE4SCUwQUUlNDAlODklQkUlMTYlQUQlODVYdw==&key=a5f751dd291cde51001d6ac95ff280ae"}},"folders":{"871062":{"id":"871062","corpid":"1931","ownertype":"staff","ownerid":"2952","parentid":"869575","system":"Y","name":"test","description":"","created":"2016-07-05 16:15:49"},"871067":{"id":"871067","corpid":"1931","ownertype":"staff","ownerid":"2952","parentid":"869575","system":"Y","name":"test2","description":"","created":"2016-07-05 16:16:03"},"871066":{"id":"871066","corpid":"1931","ownertype":"staff","ownerid":"2952","parentid":"871062","system":"Y","name":"test1","description":"","created":"2016-07-05 16:15:57"}}}}
```


#### Attention

Pour envoyer des fichiers sur l'API Sellsy vous devez adapter votre connecteur API ou utiliser la dernière version de notre connecteur CURL :  
[Télécharger le connecteur CURL](https://api.sellsy.fr/ressources/download/sellsyconnect_curl.zip)

Requete
-------

```
$request = array(
	'method' => 'Briefcases.uploadFile',
	'params' => array(
        'linkedtype'	=> {{linkedtype}},
        'linkedid'	=> {{linkedid}},
	)
);
invokitConnect_curl::load()->requestApi($request, false, $file);

```


Paramètres
----------



* Parametre: {{linkedid}}
  * requis: oui
  * type: int
  * default: aucune
  * Description: ID de l'objet à lier au fichier
* Parametre: {{linkedtype}}
  * requis: oui
  * type: enum("people", "third",'opportunity','item','service','invoice', 'estimate', 'proforma', 'delivery', 'order', 'creditnote','purInvoice', 'purDelivery', 'purOrder', 'purCreditNote','document','purchase','directory')
  * default: aucune
  * Description: Type de l'objet à lier au fichier


Retour
------

```
{"response":{"file_id":90331,"file_fullname":"APP STORE IPAD - Listing Contact ENG.png","extension":"png"},"error":"","status":"success"}
```


Requete
-------

```
$request = [
	'method' => 'Briefcases.delete',
	'params' => [
		'filetype'	=> {{filetype}},
		'fileid'	=> {{fileid}},
	]
];
invokitConnect_curl::load()->requestApi($request, false);
	
```


Paramètres
----------


|Parametre   |requis|type        |default|Description              |
|------------|------|------------|-------|-------------------------|
|{{filetype}}|oui   |enum("file")|file   |Type de fichier          |
|{{fileid}}  |oui   |int         |aucune |Id du fichier à supprimer|


Retour
------

```
{"response":null,"error":"","status":"success"}
```


Requete
-------

```
$request = [
	'method' => 'Briefcases.getRootFolders',
	'params' => [
	]
];
invokitConnect_curl::load()->requestApi($request, false);
	
```


Paramètres
----------



Retour
------

```
{"response":[{"name":"Mes documents","id":"879523","editableDir":"Y"},{"name":"PJ emails","id":"883608","editableDir":"Y"},{"name":"PJ support","id":"882946","editableDir":"Y"},{"name":"Documents Sellsy","id":"868529","editableDir":"N"},{"name":"Clients","id":"868530","editableDir":"N"},{"name":"Produits","id":"868526","editableDir":"N"},{"name":"Achats - Anciens","id":"887313","editableDir":"N"},{"name":"Achats - BDC","id":"868755","editableDir":"N"},{"name":"Achats - Justificatifs","id":"868757","editableDir":"N"},{"name":"Frais - Justificatifs","id":"868653","editableDir":"N"},{"name":"Opportunit\u00e9s","id":"868643","editableDir":"N"},{"name":"Projets","id":"887601","editableDir":"N"}],"error":"","status":"success"}
```
