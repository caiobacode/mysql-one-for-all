SELECT
ROUND(MIN(cnt.contract_price), 2) AS faturamento_minimo,
ROUND(MAX(cnt.contract_price), 2) AS faturamento_maximo,
ROUND(AVG(cnt.contract_price), 2) AS faturamento_medio,
ROUND(SUM(cnt.contract_price), 2) AS faturamento_total
FROM SpotifyClone.contracts AS cnt

INNER JOIN SpotifyClone.users AS u ON cnt.contract_id = u.contract_id;