-- 6. Выведем планеты с их спутниками —
SELECT planets.planet_name, satellites.satellite_name 
FROM planets
JOIN satellites 
ON planets.planet_name = satellites.planet_name;