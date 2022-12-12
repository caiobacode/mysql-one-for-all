SELECT
artist_name AS artista,
albumm.album_name AS album,
COUNT(follow.artist_id) AS seguidores
FROM SpotifyClone.artists AS artist
        
INNER JOIN SpotifyClone.albums AS albumm ON artist.artist_id = albumm.artist_id
INNER JOIN SpotifyClone.following AS follow ON follow.artist_id = albumm.artist_id

GROUP BY artista , album
ORDER BY seguidores DESC , artista, album