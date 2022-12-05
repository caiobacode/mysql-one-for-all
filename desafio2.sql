SELECT COUNT(DISTINCT music_name) AS cancoes, 
COUNT(DISTINCT artist_name) AS artistas, 
COUNT(DISTINCT album_name) AS albuns
FROM SpotifyClone.musics, SpotifyClone.artists, SpotifyClone.albums; 