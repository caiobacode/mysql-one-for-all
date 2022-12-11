SELECT client.client_name AS usuario,
IF(YEAR(MAX(hist.reproduction_date)) >= 2021,
    'Usuário ativo',
    'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.users AS client

INNER JOIN SpotifyClone.history AS hist ON client.client_id = hist.client_id

GROUP BY client.client_name
ORDER BY client_name