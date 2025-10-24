# fraud-detection-sql-powerbi
"Projet d'analyse des transactions par carte de credit frauduleuses avec SQL (BigQuery) et Power BI pour portfolio."

**Langage outils** : BigQuery (SQL), Power BI Desktop.  
**Dataset** : `fraud_combined.csv` (combinaison de fraud_train/test).  
**Objectifs** :  
- SQL : Auditer la structure de la table (head, info, describe, imbalance).  
- Power BI : Feature engineering (âge, distances, bins), calculs KPIs (taux de fraude, montant fraudé, etc.), visualisations (fraudes par ville/sexe, catégorie, âge, mois, heure, etc.).  

### 1 : Explorer la Structure de la Base de Données
- **Objectif** : Auditer la structure des tables `fraud_train` et `fraud_test` pour comprendre les colonnes, leurs types et la taille des données, en préparation de l’analyse des fraudes.
- **Résultats** : 
  - `fraud_train` : ~1 296 675 lignes, 23 colonnes (11 numériques, 12 textuelles).
  - `fraud_test` : ~555 719 lignes, même structure.
  - Aucune valeur NULL observée.
- **Fichiers** :
  - [mission1.sql](missions/mission1.sql) : Requêtes pour aperçu, colonnes et comptage
  - [mission1_head.jpg](figs/mission1_head_f_Test.jpg) : Capture d’écran des 5 premières lignes (test)
  - [mission1_columns.jpg](figs/mission1_columns_f_Test.jpg) : Capture d’écran des types de colonnes (Test)
  - [mission1_count_Test.jpg](figs/mission1_count_f_test.jpg) : Capture d’écran Nombre de lignes (test)
  - [mission1_head.jpg](figs/mission1_head_f_Train.jpg) : Capture d’écran des 5 premières lignes (train)
  - [mission1_count_Train.jpg](figs/mission1_count_f_Train.jpg) : Capture d’écran Nombre de lignes (train)
  - [mission1_columns.jpg](figs/mission1_columns_f_Train.jpg) : Capture d’écran des types de colonnes (train)

### 2 : Identifier le Déséquilibre des Fraudes
- **Objectif** : Calculer le pourcentage de transactions frauduleuses (`is_fraud=1`) pour évaluer le déséquilibre du dataset, crucial pour la détection des fraudes.
- **Résultats** : ~0,58% de fraudes dans `fraud_train` (7 506/1 296 675), confirmant un dataset fortement déséquilibré, ce qui impacte les stratégies de détection.
- **Fichiers** :
  - [mission2.sql](missions/mission2.sql) : Requête pour le comptage des fraudes
  - [mission2_fraud_counts_train.jpg](figs/mission2_fraud_counts_train.jpg) : Comptes fraudes/non-fraudes (train)
  - [mission2_fraud_counts_test.jpg](figs/mission2_fraud_counts_test.jpg) : Capture d’écran des résultats (test)

### 3 : Combiner les Datasets et Renommer les Colonnes
- **Objectif** : Fusionner `fraud_train` et `fraud_test` en une table unifiée avec des noms de colonnes clairs pour faciliter l’analyse et le reporting.
- **Résultats** : Table `fraud_combined` créée avec ~1 852 394 lignes, colonnes renommées (ex. : `amt` en `transaction_amount`).
- **Fichiers** :
  - [mission3.sql](missions/mission3.sql) : Requête pour combiner et renommer
  - [mission3_head.csv](missions/mission3_head.csv) : 5 premières lignes
  - [mission3_head.jpg](figs/mission3_head.jpg) : Capture d’écran des 5 premières lignes
  - [mission3_count.jpg](figs/mission3_count.jpg) : Capture d’écran du comptage



## Insights Clés
- Dataset déséquilibré : 0,58% de fraudes.
- Fraudes élevées dans `grocery_pos`, `shopping_net` ; montant moyen frauduleux ~530$.
- Pics de fraudes en décembre, à 0-4h, chez les >60 ans.
- Recommandation : Renforcer les alertes pour transactions >300$ dans `shopping_net`.

## Licence
MIT License.
