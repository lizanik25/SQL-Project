-- 2. Найдем звездные скопления с наибольшей видимой звездной величиной —
SELECT cluster_name 
FROM star_clusters 
WHERE apparent_magnitude = (
    SELECT MAX(apparent_magnitude) 
    FROM star_clusters
);
