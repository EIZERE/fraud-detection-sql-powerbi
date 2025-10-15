-- Mission 2 : Identifier le Déséquilibre des Fraudes
----------------------------------------------------------------
-- Query : Compter fraudes et pourcentages pour fraud_train
----------------------------------------------------------------

SELECT 
    is_fraud, 
    COUNT(*) AS count, 
    ROUND(100 * COUNT(*) / (SELECT COUNT(*) FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_train`), 2) AS percentage
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_train`
GROUP BY is_fraud;


--  Pour fraud_test
------------------------
SELECT 
    is_fraud, 
    COUNT(*) AS count, 
    ROUND(100 * COUNT(*) / (SELECT COUNT(*) FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_test`), 2) AS percentage
FROM `analyse-fraude-carte-bancaire.Analyse_transactions_par_carte_de_credit_frauduleuses.fraud_test`
GROUP BY is_fraud;