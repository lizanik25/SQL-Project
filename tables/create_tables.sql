-- Создадим таблицы --
CREATE TABLE constellations (
    constellation_name VARCHAR(100) PRIMARY KEY,
    visibility_conditions VARCHAR(100),
    number_of_stars INT
);

-- В таблице астрономов будет наблюдаться древовидная структура, заданная списком смежности --
CREATE TABLE astronomers (
    scientist_name VARCHAR(100) PRIMARY KEY,
    country_of_residence VARCHAR(100),
    supervisor_name VARCHAR(100) REFERENCES astronomers(scientist_name)
);

CREATE TABLE star_clusters (
    cluster_name VARCHAR(100) PRIMARY KEY,
    apparent_magnitude NUMERIC(10, 3),
    constellation_name VARCHAR(100) REFERENCES constellations(constellation_name),
    cluster_type VARCHAR(50) CHECK(cluster_type IN ('Шаровое', 'Рассеянное'))
);

CREATE TABLE stars (
    star_name VARCHAR(100) PRIMARY KEY,
    constellation_name VARCHAR(100) REFERENCES constellations(constellation_name),
    spectral_class VARCHAR(20),
    absolute_magnitude NUMERIC(10, 3),
    cluster_name VARCHAR(100) REFERENCES star_clusters(cluster_name),
    discoverer_name VARCHAR(100) REFERENCES astronomers(scientist_name)
);

CREATE TABLE comets (
    comet_name VARCHAR(100),
    parent_star_name VARCHAR(100),
    orbital_period INT,
    discovery_year INT,
    PRIMARY KEY (comet_name, parent_star_name),
    FOREIGN KEY (parent_star_name) REFERENCES stars(star_name)
);

CREATE TABLE nebulae (
    nebula_name VARCHAR(100),
    constellation_name VARCHAR(100),
    discovery_year INT,
    discoverer_name VARCHAR(100) DEFAULT NULL REFERENCES astronomers(scientist_name),
    PRIMARY KEY (nebula_name, constellation_name),
    FOREIGN KEY (constellation_name) REFERENCES constellations(constellation_name)
);

CREATE TABLE planets (
    planet_name VARCHAR(100),
    parent_star_name VARCHAR(100),
    class VARCHAR(100),
    eccentricity NUMERIC(10, 3),
    has_rings BOOLEAN CHECK(has_rings IN (true, false)),
    discoverer_name VARCHAR(100) DEFAULT 'Неизвестно',
    PRIMARY KEY (planet_name, parent_star_name),
    FOREIGN KEY (parent_star_name) REFERENCES stars(star_name),
    FOREIGN KEY (discoverer_name) REFERENCES astronomers(scientist_name)
);

CREATE TABLE satellites (
    satellite_name VARCHAR(100),
    planet_name VARCHAR(100),
    star_name VARCHAR(100),
    eccentricity NUMERIC(10, 3),
    size_relative_to_planet NUMERIC(10, 3),
    PRIMARY KEY (satellite_name, planet_name, star_name),
    FOREIGN KEY (planet_name, star_name) REFERENCES planets(planet_name, parent_star_name)
);
