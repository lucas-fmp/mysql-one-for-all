SELECT
	s.name AS nome_musica,
  CASE
  WHEN s.name LIKE '%Bard%'
    THEN REPLACE (s.name, 'Bard', 'QA')
  WHEN s.name LIKE '%Amar%'
    THEN REPLACE (s.name, 'Amar', 'Code Review')
  WHEN s.name LIKE '%Pais%'
    THEN REPLACE (s.name, 'Pais', 'Pull Requests')
  WHEN s.name LIKE '%SOUL%'
    THEN REPLACE (s.name, 'SOUL', 'CODE')
  WHEN s.name LIKE '%SUPERSTAR%'
    THEN REPLACE (s.name, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.songs AS s
GROUP BY nome_musica, novo_nome
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;