CREATE OR REPLACE FUNCTION update_star_count()
RETURNS TRIGGER AS $$
BEGIN
    -- Увеличиваем количество звезд в таблице Constellations на 1
    UPDATE constellations
    SET star_count = star_count + 1
    WHERE constellation_name = NEW.constellation_name;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_star_insert
AFTER INSERT ON stars
FOR EACH ROW
EXECUTE FUNCTION update_star_count();
