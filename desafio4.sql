SELECT
	u.full_name AS usuario,
  IF(YEAR(MAX(h.date)) >= 2021,
	'Usuário ativo',
  'Usuário inativo') AS status_usuario
FROM
	SpotifyClone.users AS u
INNER JOIN
	SpotifyClone.history AS h ON u.user_id = h.user_id
GROUP BY u.full_name
ORDER BY u.full_name;