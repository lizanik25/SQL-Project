-- 7. Найдем имена ученых, которые открыли хотя бы одну планету или туманность —
SELECT DISTINCT scientist_name 
FROM astronomers
WHERE scientist_name IN (
    SELECT discoverer_name FROM nebulae
) OR scientist_name IN (
    SELECT discoverer_name FROM planets
);