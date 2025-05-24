-- Active: 1747479232124@@127.0.0.1@5432@conservation_db@public
CREATE DATABASE conservation_db;

CREATE TABLE rangers(
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name VARCHAR(50),
    discovery_date DATE,
    conservation_status VARCHAR(50)
);

CREATE TABLE sightings(
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIMESTAMP,
    location VARCHAR(50),
    notes TEXT
);


-- 
INSERT INTO rangers (name, region) VALUES
('Alice Green', 'Northern Hills - Zone A'),
('Bob White', 'River Delta - South Sector'),
('Carol King', 'Mountain Range - West Ridge'),
('Alice Green', 'Northern Hills - Zone B'),
('Bob White', 'River Delta - North Sector'),
('Carol King', 'Mountain Range - East Ridge'),
('Alice Green', 'Northern Hills - Outpost 3'),
('Bob White', 'River Delta - Estuary Base'),
('Carol King', 'Mountain Range - Peak Patrol'),
('Alice Green', 'Northern Hills - Camp Echo'),
('Bob White', 'River Delta - Bay Area'),
('Carol King', 'Mountain Range - Snowcap Trail'),
('Alice Green', 'Northern Hills - Zone C'),
('Bob White', 'River Delta - Wetlands Path'),
('Carol King', 'Mountain Range - Boulder Field'),
('Alice Green', 'Northern Hills - Lookout Point'),
('Bob White', 'River Delta - Southern Dock'),
('Carol King', 'Mountain Range - Ridge Path'),
('Alice Green', 'Northern Hills - Trailhead'),
('Bob White', 'River Delta - Canoe Launch'),
('Carol King', 'Mountain Range - Upper Trail'),
('Alice Green', 'Northern Hills - Observation Deck'),
('Bob White', 'River Delta - Creek Bend'),
('Carol King', 'Mountain Range - Base Camp'),
('Alice Green', 'Northern Hills - Watchtower 2'),
('Bob White', 'River Delta - Fisherman’s Cove'),
('Carol King', 'Mountain Range - Foggy Pass'),
('Alice Green', 'Northern Hills - Ranger Post Alpha'),
('Bob White', 'River Delta - Crossing Point'),
('Carol King', 'Mountain Range - Icefield Trail');

-- 
INSERT INTO species (species_id, common_name, scientific_name, discovery_date, conservation_status) VALUES
(1, 'Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
(2, 'Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
(3, 'Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
(4, 'Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered'),
(5, 'African Elephant', 'Loxodonta africana', '1758-01-01', 'Vulnerable'),
(6, 'Black Rhino', 'Diceros bicornis', '1758-01-01', 'Critically Endangered'),
(7, 'Mountain Gorilla', 'Gorilla beringei beringei', '1903-01-01', 'Endangered'),
(8, 'Amur Leopard', 'Panthera pardus orientalis', '1857-01-01', 'Critically Endangered'),
(9, 'Orangutan', 'Pongo pygmaeus', '1760-01-01', 'Critically Endangered'),
(10, 'Giant Panda', 'Ailuropoda melanoleuca', '1869-01-01', 'Vulnerable'),
(11, 'Saola', 'Pseudoryx nghetinhensis', '1992-01-01', 'Critically Endangered'),
(12, 'Vaquita', 'Phocoena sinus', '1958-01-01', 'Critically Endangered'),
(13, 'Green Sea Turtle', 'Chelonia mydas', '1758-01-01', 'Endangered'),
(14, 'Blue Whale', 'Balaenoptera musculus', '1758-01-01', 'Endangered'),
(15, 'Snowy Owl', 'Bubo scandiacus', '1758-01-01', 'Vulnerable'),
(16, 'Polar Bear', 'Ursus maritimus', '1774-01-01', 'Vulnerable'),
(17, 'Iberian Lynx', 'Lynx pardinus', '1827-01-01', 'Endangered'),
(18, 'Addax Antelope', 'Addax nasomaculatus', '1816-01-01', 'Critically Endangered'),
(19, 'Axolotl', 'Ambystoma mexicanum', '1863-01-01', 'Critically Endangered'),
(20, 'Tasmanian Devil', 'Sarcophilus harrisii', '1808-01-01', 'Endangered'),
(21, 'African Wild Dog', 'Lycaon pictus', '1820-01-01', 'Endangered'),
(22, 'Indian Pangolin', 'Manis crassicaudata', '1822-01-01', 'Endangered'),
(23, 'Komodo Dragon', 'Varanus komodoensis', '1912-01-01', 'Vulnerable'),
(24, 'Javan Rhino', 'Rhinoceros sondaicus', '1822-01-01', 'Critically Endangered'),
(25, 'Bornean Orangutan', 'Pongo pygmaeus', '1760-01-01', 'Critically Endangered'),
(26, 'Snow Petrel', 'Pagodroma nivea', '1776-01-01', 'Least Concern'),
(27, 'Siberian Tiger', 'Panthera tigris altaica', '1844-01-01', 'Endangered'),
(28, 'Maned Wolf', 'Chrysocyon brachyurus', '1815-01-01', 'Near Threatened'),
(29, 'Okapi', 'Okapia johnstoni', '1901-01-01', 'Endangered'),
(30, 'Kakapo', 'Strigops habroptilus', '1845-01-01', 'Critically Endangered');

-- 
INSERT INTO sightings (ranger_id, species_id, sighting_time, location, notes) VALUES
(1, 1, '2024-04-01 08:30:00', 'North Ridge', 'Seen near the water source'),
(2, 2, '2024-04-02 10:15:00', 'River Bank', 'Animal appeared calm'),
(3, 3, '2024-04-02 11:45:00', 'High Cliffs', 'Brief appearance at sunrise'),
(1, 4, '2024-04-03 07:20:00', 'Valley Pass', 'Observed with binoculars'),
(2, 5, '2024-04-03 13:00:00', 'Marsh Area', 'Group of three individuals'),
(3, 1, '2024-04-04 15:40:00', 'Eagle Point', 'Tracks found nearby'),
(1, 2, '2024-04-05 06:50:00', 'Hidden Stream', 'Very quick movement'),
(2, 3, '2024-04-05 09:30:00', 'Reed Forest', 'Animal was tagged'),
(3, 4, '2024-04-06 10:05:00', 'Rocky Outcrop', 'Unusual behavior noted'),
(1, 5, '2024-04-06 12:15:00', 'Dry Lakebed', 'No visual, only tracks'),

(2, 1, '2024-04-07 08:00:00', 'Mud Flats', 'Good visibility'),
(3, 2, '2024-04-07 10:10:00', 'Snowy Pass', 'Seen eating'),
(1, 3, '2024-04-08 11:20:00', 'Canyon Floor', 'Alone and alert'),
(2, 4, '2024-04-08 13:30:00', 'Willow Grove', 'Juvenile spotted'),
(3, 5, '2024-04-09 07:45:00', 'Windy Ridge', 'Aggressive behavior'),
(1, 1, '2024-04-09 09:00:00', 'Frost Hollow', 'Identified via camera trap'),
(2, 2, '2024-04-10 14:00:00', 'Grassy Knoll', 'Partially hidden'),
(3, 3, '2024-04-10 15:30:00', 'Twin Peaks', 'Observed from a distance'),
(1, 4, '2024-04-11 08:10:00', 'South Slope', 'Near ranger station'),
(2, 5, '2024-04-11 09:25:00', 'Boulder Field', 'Brief sighting'),

(3, 1, '2024-04-12 10:45:00', 'Tall Pines', 'Heard call before sighting'),
(1, 2, '2024-04-12 12:00:00', 'Lower Glen', 'Nest observed'),
(2, 3, '2024-04-13 13:15:00', 'Overlook Point', 'Moving quickly'),
(3, 4, '2024-04-13 14:20:00', 'Raven Cliff', 'Stayed for 5 minutes'),
(1, 5, '2024-04-14 15:35:00', 'Dry Creek', 'Followed tracks for 1 km'),
(2, 1, '2024-04-14 16:40:00', 'Green Basin', 'Likely same as earlier sighting'),
(3, 2, '2024-04-15 08:55:00', 'Blue Meadow', 'Tagged individual'),
(1, 3, '2024-04-15 10:10:00', 'Echo Hollow', 'Photographed'),
(2, 4, '2024-04-16 11:25:00', 'Pine Knob', 'Looked injured'),
(3, 5, '2024-04-16 13:00:00', 'Jagged Ridge', 'Seen with offspring');


-- Problem 1: Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');

-- anser 2: Count unique species ever sighted.

SELECT COUNT(DISTINCT species_id) AS unique_species_count
FROM sightings;

-- Problem 3: Find all sightings where the location includes "Pass".
SELECT * FROM sightings WHERE location LIKE '%Pass';

-- Problem 4: List each ranger's name and their total number of sightings
SELECT rangers.name, COUNT(sightings.sighting_id) AS total_sightings
FROM rangers
JOIN sightings ON sightings.ranger_id = rangers.ranger_id
GROUP BY rangers.name;

-- Problem 5: List species that have never been sighted.
SELECT common_name FROM species WHERE species_id NOT IN(SELECT species_id FROM sightings);

-- Problem 6: Show the most recent 2 sightings.
SELECT species.common_name,sightings.sighting_time FROM species
RIGHT JOIN sightings
ON species.species_id = sightings.species_id ORDER BY sighting_time DESC LIMIT 2;

-- Problem 7: Update all species discovered before year 1800 to have status 'Historic'.
ALTER TABLE species ADD COLUMN status VARCHAR(50);
UPDATE species
SET status = 'Historic'
WHERE EXTRACT(YEAR FROM discovery_date) < 1800;

-- Problem 8: Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.
SELECT
  sightings.sighting_id,
  CASE 
    WHEN EXTRACT(HOUR FROM sightings.sighting_time) < 12 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM sightings.sighting_time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
  END AS time_of_day
FROM sightings;

-- Problem 9: Delete rangers who have never sighted any species
DELETE FROM rangers
WHERE ranger_id NOT IN (
    SELECT DISTINCT ranger_id FROM sightings
);

