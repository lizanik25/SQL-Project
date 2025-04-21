-- 3. Найдем туманности, открытые учеными из Франции —
SELECT nebula_name 
FROM nebulae 
WHERE discoverer_name IN (
    SELECT scientist_name 
    FROM astronomers 
    WHERE country_of_residence = 'France'
);