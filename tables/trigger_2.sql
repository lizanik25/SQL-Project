CREATE OR REPLACE FUNCTION prevent_star_deletion()
RETURNS TRIGGER AS $$
BEGIN
    -- Проверяем, есть ли планеты, связанные с удаляемой звездой
    IF EXISTS (
        SELECT 1
        FROM planets
        WHERE parent_star_name = OLD.star_name
    ) THEN
        -- Если есть, выдаем ошибку
        RAISE EXCEPTION 'Невозможно удалить звезду "%", так как с ней связаны планеты.', OLD.star_name;
    END IF;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_star_delete
BEFORE DELETE ON stars
FOR EACH ROW
EXECUTE FUNCTION prevent_star_deletion();


