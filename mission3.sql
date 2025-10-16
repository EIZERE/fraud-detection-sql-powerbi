-- Mission 3 : Combiner Datasets et Renommer Colonnes
CREATE OR REPLACE TABLE `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_combined` AS
SELECT 
    trans_date_trans_time AS transaction_time,
    cc_num AS account_number,
    merchant AS merchant_name,
    category,
    amt AS transaction_amount,
    first AS first_name,
    last AS last_name,
    gender,
    street,
    city,
    state,
    zip,
    lat AS client_latitude,
    long AS client_longitude,
    city_pop AS city_population,
    job,
    dob AS birthday,
    trans_num AS transaction_number,
    unix_time,
    merch_lat AS merchant_latitude,
    merch_long AS merchant_longitude,
    is_fraud
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_train`
UNION ALL
SELECT 
    trans_date_trans_time AS transaction_time,
    cc_num AS account_number,
    merchant AS merchant_name,
    category,
    amt AS transaction_amount,
    first AS first_name,
    last AS last_name,
    gender,
    street,
    city,
    state,
    zip,
    lat AS client_latitude,
    long AS client_longitude,
    city_pop AS city_population,
    job,
    dob AS birthday,
    trans_num AS transaction_number,
    unix_time,
    merch_lat AS merchant_latitude,
    merch_long AS merchant_longitude,
    is_fraud
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_test`;

-- Vérification : Aperçu
SELECT * 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_combined` 
LIMIT 5;

-- Vérification : Comptage
SELECT COUNT(*) AS row_count 
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_combined`;