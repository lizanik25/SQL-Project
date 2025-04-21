CREATE OR REPLACE FUNCTION add_new_star(
    star_name VARCHAR,
    constellation_name VARCHAR,
    spectral_class VARCHAR,
    absolute_magnitude NUMERIC,
    cluster_name VARCHAR DEFAULT NULL,
    discoverer_name VARCHAR DEFAULT NULL
)
RETURNS VOID AS $$
BEGIN
    -- Check if the constellation exists
    IF NOT EXISTS (
        SELECT 1 
        FROM constellations 
        WHERE constellation_name = constellation_name
    ) THEN
        RAISE EXCEPTION 'Constellation "%" does not exist. Star "%" cannot be added.', constellation_name, star_name;
    END IF;

    -- Insert the new star
    INSERT INTO stars (
        star_name, constellation_name, spectral_class, absolute_magnitude, cluster_name, discoverer_name
    ) VALUES (
        star_name, constellation_name, spectral_class, absolute_magnitude, cluster_name, discoverer_name
    );

END;
$$ LANGUAGE plpgsql;

SELECT add_new_star(
    'HD 209458', 
    'Pegasus', 
    'G0V', 
    4.28, 
    NULL, 
    'Caroline Herschel'
);

