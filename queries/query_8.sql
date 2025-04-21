-- 8. Получим названия планет, входящих в планетарные системы звезд, входящих в созвездия, содержащие шаровые звездные скопления —
SELECT planet_name, parent_star_name
FROM planets
WHERE parent_star_name IN (
    SELECT star_name
    FROM stars
    WHERE constellation_name IN (
        SELECT constellation_name
        FROM star_clusters
        WHERE cluster_type = 'Globular'
    )
);