SELECT
usr.user_name AS usuario,
COUNT(hist.song_id) AS qtde_musicas_ouvidas,
ROUND(SUM(total.time_seg) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS usr
JOIN SpotifyClone.reproduction_history AS hist
ON usr.user_id = hist.user_id 
JOIN SpotifyClone.songs AS total
ON hist.song_id = total.song_id
GROUP BY usuario ORDER BY usuario;