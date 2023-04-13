SELECT music_name AS nome, 
COUNT(*) AS reproducoes 
FROM SpotifyClone.musics AS musics

INNER JOIN SpotifyClone.contracts AS contracts ON contract_name = 'gratuito' OR contract_name = 'pessoal'
INNER JOIN SpotifyClone.users AS users ON users.contract_id = contracts.contract_id
INNER JOIN SpotifyClone.history AS history ON history.music_id = musics.music_id AND history.client_id = users.client_id

GROUP BY music_name
ORDER BY music_name ASC, music_name