SELECT music_name AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.history AS mus

INNER JOIN SpotifyClone.musics AS musc ON mus.music_id = musc.music_id

GROUP BY music_name
ORDER BY reproducoes DESC, music_name
LIMIT 2;