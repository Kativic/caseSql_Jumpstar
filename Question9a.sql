-- Cinco atores mais ativos nos ultimos 15 anos 
SELECT 
    n.imdb_name_id,
    n.name AS actor_name,
    COUNT(tp.imdb_title_id) AS movie_count
FROM 
    CaseSQL_title_principals tp
INNER JOIN 
    CaseSQL_names n ON tp.imdb_name_id = n.imdb_name_id
INNER JOIN 
    CaseSQL_Movies m ON tp.imdb_title_id = m.imdb_title_id
WHERE 
    tp.category = 'actor'  -- Considera apenas atores
    AND m.date_published >= DATE_SUB(CURDATE(), INTERVAL 15 YEAR)  -- Filmes dos últimos 15 anos
GROUP BY 
    n.imdb_name_id, n.name
ORDER BY 
    movie_count DESC
LIMIT 5;

