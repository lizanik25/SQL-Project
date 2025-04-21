-- 4. Выведем все объекты солнечной системы —
SELECT comet_name AS object_name FROM comets
WHERE parent_star_name = 'Sun'
UNION
SELECT planet_name AS object_name FROM planets
WHERE parent_star_name = 'Sun'
UNION
SELECT satellite_name AS object_name FROM satellites
WHERE star_name = 'Sun';