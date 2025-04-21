-- 5. Выведем ученого с максимальным количеством открытий —
SELECT scientist_name 
FROM astronomers
JOIN (
    SELECT DISTINCT planet_name AS body_name, discoverer_name FROM planets
    UNION 
    SELECT DISTINCT nebula_name AS body_name, discoverer_name FROM nebulae
    UNION
    SELECT DISTINCT star_name AS body_name, discoverer_name FROM stars
) AS discoveries
ON astronomers.scientist_name = discoveries.discoverer_name
GROUP BY astronomers.scientist_name
ORDER BY COUNT(*) DESC
LIMIT 1;