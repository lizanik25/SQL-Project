-- 9. Найдем звезды, находящиеся в созвездиях, видимых осенью, с планетарными системами, содержащими планеты с эксцентриситетом больше 0.1 —
SELECT star_name
FROM stars
WHERE constellation_name IN (
    SELECT constellation_name
    FROM constellations
    WHERE visibility_conditions = 'Autumn'
) AND star_name IN (
    SELECT parent_star_name
    FROM planets
    WHERE eccentricity > 0.1
);