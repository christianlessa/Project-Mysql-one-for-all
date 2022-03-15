SELECT s.song_name AS nome,
COUNT(r.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS r
ON s.song_id = r.song_id
INNER JOIN SpotifyClone.users AS u
ON u.user_id = r.user_id AND (u.plan_id = '1' OR u.plan_id = '4')
GROUP BY nome
ORDER BY reproducoes DESC, nome;