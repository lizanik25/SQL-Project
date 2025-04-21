-- 11. Заполним столбец —
UPDATE satellites 
SET distance_to_planet = 384000 
WHERE satellite_name = 'Moon' AND star_name = 'Sun' AND planet_name = 'Earth';

UPDATE satellites 
SET distance_to_planet = 436000 
WHERE satellite_name = 'Titania' AND star_name = 'Sun' AND planet_name = 'Uranus';

UPDATE satellites 
SET distance_to_planet = 330000 
WHERE satellite_name = 'Triton' AND star_name = 'Sun' AND planet_name = 'Neptune';

UPDATE satellites 
SET distance_to_planet = 55000000 
WHERE satellite_name = 'Nereid' AND star_name = 'Sun' AND planet_name = 'Neptune';

UPDATE satellites 
SET distance_to_planet = 12700 
WHERE satellite_name = 'Hippocamp' AND star_name = 'Sun' AND planet_name = 'Neptune';