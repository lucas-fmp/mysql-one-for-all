SELECT
	art.full_name AS artista,
    alb.album AS album,
    COUNT(f.artist_id) AS seguidores
FROM
	SpotifyClone.artists AS art
INNER JOIN
	SpotifyClone.albuns AS alb ON art.artist_id = alb.artist_id
INNER JOIN
	SpotifyClone.following AS f ON art.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;