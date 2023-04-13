SELECT
COUNT(history.music_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.users AS users ON history.client_id = users.client_id
WHERE users.client_name = "Barbara Liskov";