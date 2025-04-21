-- 1. Найдем звезды, состоящие в созвездиях, которые видны круглый год —
SELECT star_name 
FROM stars 
JOIN constellations 
ON stars.constellation_name = constellations.constellation_name
WHERE constellations.visibility_conditions = 'All year round';