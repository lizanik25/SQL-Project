-- 13. Посчитаем максимальное и минимальное достижимое расстояние между спутниками Нептуна —
SELECT S1.satellite_name, S2.satellite_name, 
       (S1.distance_to_planet + S2.distance_to_planet) AS max_distance, 
       ABS(S1.distance_to_planet - S2.distance_to_planet) AS min_distance 
FROM satellites AS S1
CROSS JOIN satellites AS S2
WHERE S1.satellite_name != S2.satellite_name 
AND S1.planet_name = 'Neptune' 
AND S2.planet_name = 'Neptune'
ORDER BY S1.satellite_name;