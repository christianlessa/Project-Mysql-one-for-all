SELECT s.song_name AS nome_musica,
CASE
	WHEN song_name LIKE '%Streets' THEN 'Without My Code Review'
    WHEN song_name LIKE '%Her Own' THEN 'Dance With Trybe'
    WHEN song_name LIKE '%Inner Fire' THEN 'Troubles Of My Project'
    WHEN song_name LIKE '%Silly' THEN 'Let\'s Be Nice'
    WHEN song_name LIKE '%Circus' THEN 'Magic Pull Request'
END AS novo_nome    
FROM SpotifyClone.songs AS s
WHERE  s.song_name 
IN ('Dance With Her Own', 'Troubles Of My Inner Fire', 'Magic Circus', 'Let\'s Be Silly', 'Without My Streets')
ORDER BY nome_musica;