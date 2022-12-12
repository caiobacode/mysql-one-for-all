SELECT 
artists.artist_name AS artista,
albumm.album_name AS album
FROM SpotifyClone.artists AS artists

INNER JOIN SpotifyClone.albums AS albumm ON artists.artist_name = 'Elis Regina' WHERE artists.artist_id = albumm.artist_id

GROUP BY artista, album
ORDER BY album;