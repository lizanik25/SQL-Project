CREATE OR REPLACE FUNCTION get_planets_with_satellites()
RETURNS TABLE(planet_name VARCHAR, satellite_name VARCHAR) AS $$
BEGIN
    -- Возвращаем список планет и их спутников
    RETURN QUERY
    SELECT 
        p.planet_name AS planet_name,
        s.satellite_name AS satellite_name
    FROM planets p
    LEFT JOIN satellites s
    ON p.planet_name = s.planet_name;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_planets_with_satellites();
