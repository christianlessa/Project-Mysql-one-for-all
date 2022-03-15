SELECT ROUND(MIN(pl.value_plan), 2) AS faturamento_minimo,
ROUND(MAX(pl.value_plan), 2) AS faturamento_maximo,
ROUND(AVG(pl.value_plan), 2) AS faturamento_medio,
ROUND(SUM(pl.value_plan), 2) AS faturamento_total
FROM SpotifyClone.plans AS pl
INNER JOIN SpotifyClone.users AS usr
ON pl.plan_id = usr.plan_id;