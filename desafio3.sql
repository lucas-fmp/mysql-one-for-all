SELECT
	u.full_name AS usuario,
  COUNT(h.user_id) AS qt_de_musicas_ouvidas,
  ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM
	SpotifyClone.users AS u
INNER JOIN
	SpotifyClone.history AS h ON u.user_id = h.user_id
INNER JOIN
	SpotifyClone.songs AS s ON s.song_id = h.song_id
GROUP BY u.full_name
ORDER BY u.full_name;