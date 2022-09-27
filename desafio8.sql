SELECT
	art.full_name AS artista,
  alb.album AS album
FROM
	SpotifyClone.artists AS art
INNER JOIN
	SpotifyClone.albuns AS alb ON art.artist_id = alb.artist_id
WHERE
	art.full_name = 'Elis Regina'
GROUP BY artista, album
ORDER BY album;