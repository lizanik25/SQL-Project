-- 10. Обновим таблицу спутников, добавив столбец с расстоянием до планеты —
ALTER TABLE satellites ADD COLUMN distance_to_planet INT;