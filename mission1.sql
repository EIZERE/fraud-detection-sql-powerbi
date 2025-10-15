missions/mission1.sql
----------------------------------------------------------------------------------------------------
--Query 1 : Aperçu des 5 premières lignes (head)
----------------------------------------------------------------------------------------------------


SELECT * 
FROM`Analyse_transactions_par_carte_de_credit_frauduleuses.fraudTest`
LIMIT 5;


SELECT * 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraudTrain` 
LIMIT 5;


-----------------------------------------------------------------------------------------------------
--Query 2 : Lister colonnes et types (info)
-----------------------------------------------------------------------------------------------------


SELECT column_name, data_type, is_nullable 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses`.INFORMATION_SCHEMA.COLUMNS 
WHERE table_name = 'fraudTrain';

SELECT column_name, data_type, is_nullable 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses`.INFORMATION_SCHEMA.COLUMNS 
WHERE table_name = 'fraudTest';


---------------------------------------------------------------------------------------------------------------------
--Query 3 : Compter les lignes (shape)
----------------------------------------------------------------------------------------------------------------------

SELECT COUNT(*) AS row_count 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraudTest`;

SELECT COUNT(*) AS row_count 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraudTrain`;