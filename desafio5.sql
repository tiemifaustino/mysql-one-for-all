SELECT 
    M.nome_musica AS cancao, COUNT(H.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas AS M
        INNER JOIN
    SpotifyClone.historico_reproducoes AS H ON M.musica_id = H.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;