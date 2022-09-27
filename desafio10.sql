SELECT
	s.name AS nome,
    COUNT(h.song_id) AS reproducoes
FROM
	SpotifyClone.songs AS s
INNER JOIN
	SpotifyClone.history AS h ON h.song_id = s.song_id
INNER JOIN
	SpotifyClone.users AS u ON u.user_id = h.user_id
INNER JOIN
	SpotifyClone.plans AS p ON p.plan_id = u.plan_id
WHERE p.plan = 'gratuito' OR p.plan = 'pessoal'
GROUP BY nome
ORDER BY nome;