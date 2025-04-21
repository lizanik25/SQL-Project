-- Добавляем данные в таблицу "Созвездия" --
INSERT INTO constellations (constellation_name, visibility_conditions, number_of_stars) VALUES
('Orion', 'Winter', 209), -- Орион виден зимой
('Ursa Major', 'All year round', 126), -- Большая Медведица видна круглый год
('Ursa Minor', 'All year round', 25), -- Малая Медведица видна круглый год
('Cassiopeia', 'All year round', 150), -- Кассиопея видна круглый год
('Cygnus', 'Summer', 272), -- Лебедь виден летом
('Scorpius', 'Summer', 100), -- Скорпион виден летом
('Centaurus', 'Spring', 11), -- Центавр виден весной
('Pegasus', 'Autumn', 166), -- Пегас виден осенью
('Hydra', 'Spring', 130), -- Гидра видна весной
('Andromeda', 'Autumn', 160), -- Андромеда видна осенью
('Hercules', 'Summer', 235), -- Геркулес виден летом
('Taurus', 'Winter', 216), -- Телец виден зимой
('Perseus', 'All year round', 100), -- Персей виден круглый год
('Sagittarius', 'Autumn', 115); -- Стрелец виден осенью

-- Добавляем данные в таблицу "Астрономы" --
INSERT INTO astronomers (scientist_name, supervisor_name, country_of_residence) VALUES
('William Herschel', NULL, 'United Kingdom'), -- Уильям Гершель, Великобритания, нет научного руководителя
('Caroline Herschel', 'William Herschel', 'United Kingdom'), -- Каролина Гершель, Великобритания, научный руководитель - Уильям Гершель
('François Jean Arago', NULL, 'France'), -- Франсуа Жан Араго, Франция, нет научного руководителя
('Urbain Jean Le Verrier', 'François Jean Arago', 'France'), -- Урбен Жан Леверье, Франция, научный руководитель - Франсуа Жан Араго
('Émile Gautier', 'Urbain Jean Le Verrier', 'France'), -- Эмиль Готье, Франция, научный руководитель - Урбен Жан Леверье
('Edward Pickering', NULL, 'USA'), -- Эдвард Пикеринг, США, нет научного руководителя
('Williamina Fleming', 'Edward Pickering', 'USA'), -- Вильямина Флеминг, США, научный руководитель - Эдвард Пикеринг
('Edward Emerson Barnard', NULL, 'USA'), -- Эдвард Эмерсон Барнард, США, нет научного руководителя
('Nicolas Malebranche', NULL, 'France'), -- Николя Мальбранш, Франция, нет научного руководителя
('Pierre Varignon', 'Nicolas Malebranche', 'France'), -- Пьер Вариньон, Франция, научный руководитель - Николя Мальбранш
('Jacques Cassini', 'Pierre Varignon', 'France'), -- Жак Кассини, Франция, научный руководитель - Пьер Вариньон
('Joseph-Nicolas Delisle', 'Jacques Cassini', 'France'), -- Жозеф-Никола Делиль, Франция, научный руководитель - Жак Кассини
('Charles Messier', 'Joseph-Nicolas Delisle', 'France'), -- Шарль Мессье, Франция, научный руководитель - Жозеф-Никола Делиль
('Frost Royal Harwood', NULL, 'USA'); -- Фрост Роял Харвуд, США, нет научного руководителя

-- Добавляем данные в таблицу "Звезды" --
INSERT INTO stars (star_name, constellation_name, spectral_class, absolute_magnitude, cluster_name, discoverer_name) VALUES
('HR 8799', 'Pegasus', 'kA5', 3.0, NULL, NULL), -- HR 8799 в созвездии Пегас, спектральный класс kA5
('HD 74156', 'Hydra', 'G1V', 3.56, NULL, NULL), -- HD 74156 в созвездии Гидра, спектральный класс G1V
('47 Ursa Major', 'Ursa Major', 'G01 V', 4.47, NULL, NULL), -- 47 Большая Медведица, спектральный класс G01 V
('Sun', NULL, 'G2V', 4.83, NULL, NULL), -- Солнце, спектральный класс G2V
('HD 37124', 'Taurus', 'G4V', 7.68, NULL, NULL); -- HD 37124 в созвездии Телец, спектральный класс G4V

-- Добавляем данные в таблицу "Планеты и экзопланеты" --
INSERT INTO planets (planet_name, parent_star_name, class, eccentricity, has_rings, discoverer_name) VALUES
('Uranus', 'Sun', 'Ice Giant', 0.044, true, 'William Herschel'), -- Уран, материнская звезда Солнце, ледяной гигант, кольца есть
('e', 'HR 8799', 'Gas Giant', 0.15, false, NULL), -- Планета e у звезды HR 8799, газовый гигант, колец нет
('Neptune', 'Sun', 'Ice Giant', 0.011, false, 'Urbain Jean Le Verrier'), -- Нептун, материнская звезда Солнце, ледяной гигант, колец нет
('Saturn', 'Sun', 'Gas Giant', 0.055, true, NULL), -- Сатурн, материнская звезда Солнце, газовый гигант, кольца есть
('c', '47 Ursa Major', 'Cold Jupiter', NULL, true, NULL), -- Планета c у звезды 47 Большая Медведица, холодный Юпитер, кольца есть
('d', 'HD 74156', 'Candidate', 0.25, false, NULL), -- Планета d у звезды HD 74156, кандидат, колец нет
('Earth', 'Sun', 'Habitable Planet', 0.016, false, NULL); -- Земля, материнская звезда Солнце, населенная планета

-- Добавляем данные в таблицу "Звездные скопления" --
INSERT INTO star_clusters (cluster_name, apparent_magnitude, constellation_name, cluster_type) VALUES
('Pleiades', 1.6, 'Taurus', 'Open'), -- Плеяды, видимая звездная величина 1.6, рассеянное скопление
('Messier 15', 6.2, 'Pegasus', 'Globular'), -- Мессье 15, видимая звездная величина 6.2, шаровое скопление
('NGC 6910', 7.3, 'Cygnus', 'Open'), -- NGC 6910, видимая звездная величина 7.3, рассеянное скопление
('Hyades', 10.5, 'Taurus', 'Open'), -- Гиады, видимая звездная величина 10.5, рассеянное скопление
('Double Cluster', 3.7, 'Perseus', 'Open'); -- Двойное скопление, видимая звездная величина 3.7, рассеянное скопление

-- Добавляем данные в таблицу "Туманности" --
INSERT INTO nebulae (nebula_name, constellation_name, discovery_year, discoverer_name) VALUES
('Horsehead Nebula', 'Orion', 1888, 'Williamina Fleming'), -- Туманность Конская голова, открыта в 1888 году, открыватель Вильямина Флеминг
('Barnard 147', 'Cygnus', 1927, 'Edward Emerson Barnard'), -- Барнард 147, открыта в 1927 году, открыватель Эдвард Эмерсон Барнард
('Trifid Nebula', 'Sagittarius', 1764, 'Charles Messier'), -- Тройная туманность, открыта в 1764 году, открыватель Шарль Мессье
('IC 2944', 'Centaurus', 1904, 'Frost Royal Harwood'), -- IC 2944, открыта в 1904 году, открыватель Фрост Роял Харвуд
('Barnard 68', 'Cygnus', 1927, 'Edward Emerson Barnard'); -- Барнард 68, открыта в 1927 году, открыватель Эдвард Эмерсон Барнард

-- Добавляем данные в таблицу "Спутники" --
INSERT INTO satellites (satellite_name, planet_name, star_name, eccentricity, size_relative_to_planet) VALUES
('Moon', 'Earth', 'Sun', 0.054, 0.27), -- Луна, спутник Земли, звезда Солнце
('Titania', 'Uranus', 'Sun', 0.001, 0.031), -- Титания, спутник Урана, звезда Солнце
('Triton', 'Neptune', 'Sun', 0.000, 0.054), -- Тритон, спутник Нептуна, звезда Солнце
('Nereid', 'Neptune', 'Sun', 0.751, 0.006), -- Нереида, спутник Нептуна, звезда Солнце
('Hippocamp', 'Neptune', 'Sun', 0.000, 0.002); -- Гиппокамп, спутник Нептуна, звезда Солнце

-- Добавляем данные в таблицу "Кометы" --
INSERT INTO comets (comet_name, parent_star_name, orbital_period, discovery_year) VALUES
('Halleys Comet', 'Sun', 75, 1758), -- Комета Галлея, звезда Солнце, период обращения 75 лет
('Comet Churyumov-Gerasimenko', 'Sun', 6, 1969), -- Комета Чурюмова-Герасименко, звезда Солнце, период обращения 6 лет
('Comet Tempel 1', 'Sun', 5, 1867), -- Комета Темпеля 1, звезда Солнце, период обращения 5 лет
('Comet Holmes', 'Sun', 7, 1892), -- Комета Холмса, звезда Солнце, период обращения 7 лет
('Comet Hale-Bopp', 'Sun', 1, 1995); -- Комета Хейла-Боппа, звезда Солнце, период обращения 1 год
