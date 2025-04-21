-- 12. Найдем средний размер спутников относительно планет —
SELECT planet_name, AVG(size_relative_to_planet) AS avg_satellite_size
FROM satellites
GROUP BY planet_name;