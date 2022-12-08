SELECT DISTINCT usuario.client_name AS usuario,
COUNT(h.music_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(m.duration / 60), 2) AS total_minutos
FROM SpotifyClone.users AS usuario
INNER JOIN SpotifyClone.history AS h ON usuario.client_id = h.client_id
INNER JOIN SpotifyClone.musics AS m ON h.music_id = m.music_id
GROUP BY usuario
ORDER BY usuario