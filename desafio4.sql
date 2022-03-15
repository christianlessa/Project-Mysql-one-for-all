SELECT usr.user_name AS usuario,
IF( MAX(YEAR(repro.date_time)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.reproduction_history AS repro
ON repro.user_id = usr.user_id
GROUP BY usr.user_id
ORDER BY usuario;