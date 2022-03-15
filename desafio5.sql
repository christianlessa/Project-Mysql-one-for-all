SELECT s.song_name AS cancao,
COUNT(r.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS r
ON s.song_id = r.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;