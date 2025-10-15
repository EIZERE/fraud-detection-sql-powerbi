# fraud-detection-sql-powerbi
"Projet d'analyse des transactions par carte de credit frauduleuses avec SQL (BigQuery) et Power BI pour portfolio."

## Mission 1 : Explorer la Structure de la Base de Données

- **Objectif** : Comprendre la structure des tables fraud_train/test pour analyse fraude.
- **Résultats** : Train = ~1.3M lignes, Test = ~555k lignes, 23 colonnes (11 numériques, 12 textuelles).
- **Fichiers** : [mission1.sql](missions/mission1.sql), [head](missions/mission1_head_f_Test.jpg),[head](missions/mission1_head_f_Train.jpg) [columns].(missions/mission1 columns Test.jpg),[columns].(missions/mission1_columns Train.jpg),[count].(missions/mission1_count Test.jpg), [count].missions/mission1_count Test.jpg).

## Mission 2 : Identifier le Déséquilibre des Fraudes

- **Objectif** : Calculer le % de transactions frauduleuses dans fraud_train/test.
- **Résultats** : ~0.6% de fraudes dans train (7,506/1,296,675), confirmant dataset déséquilibré.
- **Fichiers** : [mission2.sql](missions/mission2.sql), [fraud_counts](missions/mission2_fraud_counts_Train.jpg),[fraud_counts](missions/mission2_fraud_counts_Test.jpg)
