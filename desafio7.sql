SELECT ar.artist_name AS artista,
al.album_name AS album,
COUNT(flw.user_id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.following_artist AS flw
ON ar.artist_id = flw.artist_id
GROUP BY artista, album 
ORDER BY seguidores DESC, artista ASC, album ASC;