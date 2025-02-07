CREATE DATABASE flood_data_no;
USE flood_data;

CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100) UNIQUE NOT NULL,
    latitude DECIMAL(10,6) NOT NULL,
    longitude DECIMAL(10,6) NOT NULL
);

CREATE TABLE severity_levels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    level ENUM('Low', 'Medium', 'High', 'Extreme') NOT NULL UNIQUE
);

CREATE TABLE flood_causes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cause VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE flood_events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT,
    year INT NOT NULL,
    severity_id INT,
    cause_id INT,
    impact TEXT,
    FOREIGN KEY (location_id) REFERENCES locations(id) ON DELETE CASCADE,
    FOREIGN KEY (severity_id) REFERENCES severity_levels(id) ON DELETE CASCADE,
    FOREIGN KEY (cause_id) REFERENCES flood_causes(id) ON DELETE CASCADE
);

INSERT INTO locations (city, latitude, longitude) VALUES
('Cairo', 30.0444, 31.2357),
('Alexandria', 31.2001, 29.9187),
('Luxor', 25.6872, 32.6396),
('Hurghada', 27.2579, 33.8116),
('Aswan', 24.0889, 32.8998),
('Asyut', 28.1099, 30.7503),
('Sinai', 29.3102, 34.2595),
('Sohag', 26.5600, 31.6952),
('Port Said', 31.2653, 32.3019),
('Giza', 30.0131, 31.2089),
('Ismailia', 30.6043, 32.2723),
('Beni Suef', 28.8932, 31.1713),
('Mansoura', 31.0409, 31.3785),
('Suez', 29.9668, 32.5498),
('Marsa Matruh', 31.3520, 27.2373);

INSERT INTO severity_levels (level) VALUES
('Low'), ('Medium'), ('High'), ('Extreme');


INSERT INTO flood_causes (cause) VALUES
('Heavy Rainfall'), 
('Storm Surge'), 
('Flash Flood'), 
('Nile Overflow'), 
('Dam Release'), 
('Urban Drainage Failure'), 
('River Flood');


INSERT INTO flood_events (location_id, year, severity_id, cause_id, impact) VALUES
(1, 2020, 3, 1, 'Major city floods, infrastructure damage'),
(2, 2015, 2, 2, 'Coastal flooding, traffic disruptions'),
(3, 2009, 3, 4, 'Farmland damage, evacuations'),
(4, 2012, 1, 3, 'Road closures, minor property damage'),
(5, 1994, 4, 5, 'Severe flooding, loss of homes'),
(6, 1985, 3, 7, 'Large agricultural impact'),
(7, 2002, 2, 1, 'Mountain flash floods, transportation hit'),
(8, 1997, 1, 1, 'Minor urban flooding, school closures'),
(9, 2018, 3, 2, 'Port area flooding, economic loss'),
(10, 2021, 2, 6, 'Roads flooded, traffic paralysis'),
(3, 2010, 3, 1, 'Major rain-induced floods affecting ancient sites in Luxor'),
(4, 2014, 2, 7, 'Seasonal flooding, disrupting local economy'),
(5, 2017, 4, 3, 'Deadly flash floods in Red Sea mountains near Hurghada'),
(6, 2005, 1, 1, 'Minor flooding reported in port areas'),
(7, 1998, 2, 2, 'Severe weather event causing port closures'),
(8, 2020, 4, 1, 'Widespread flooding in Suez, requiring military assistance'),
(9, 1995, 3, 2, 'Extreme waves caused major damage to coastal infrastructure'),
(10, 2013, 2, 1, 'Major rainfall event, causing flash floods in urban areas'),
(1, 2016, 3, 7, 'Riverbank erosion and agricultural damage from continuous flooding'),
(2, 2022, 2, 1, 'Heavy rains disrupted major highways and airports'),
(3, 2015, 1, 1, 'Minor disruptions due to localized rainwater pooling'),
(4, 2011, 3, 5, 'Dam management failure caused unexpected flooding in Port Said'),
(5, 2018, 4, 3, 'Severe monsoon-type rainfall led to devastating floods in Sinai'),
(6, 2017, 2, 6, 'Heavy traffic disruptions and power outages in Luxor due to floods'),
(7, 2014, 1, 1, 'Localized flooding near city outskirts'),
(8, 2006, 2, 2, 'Minor urban flooding in coastal regions'),
(9, 2010, 3, 3, 'Flash floods destroyed key roads and bridges'),
(10, 2019, 4, 5, 'Unprecedented dam failure caused severe flooding'),
(1, 2021, 3, 6, 'Storm surge disrupted port activities in Alexandria'),
(2, 2003, 1, 1, 'Minor flood event due to isolated rainfall'),
(3, 2019, 4, 2, 'Severe flooding led to evacuation of thousands'),
(4, 2008, 2, 1, 'Heavy rainfall caused traffic congestion'),
(5, 2015, 3, 3, 'Mountain flash floods disrupted tourism'),
(6, 2002, 1, 1, 'Small-scale flood event, minimal damages'),
(7, 2016, 2, 2, 'Moderate storm surge along the coast'),
(8, 2001, 3, 4, 'Seasonal Nile overflow affected farmers'),
(9, 2017, 4, 5, 'Major dam release flooded multiple villages'),
(10, 1999, 1, 1, 'Scattered rainfall, no significant damage');


