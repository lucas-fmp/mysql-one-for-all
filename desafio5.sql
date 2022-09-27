SELECT
	s.name AS cancao,
  COUNT(h.song_id) as reproducoes
FROM
	SpotifyClone.songs AS s
INNER JOIN
	SpotifyClone.history AS h ON s.song_id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;