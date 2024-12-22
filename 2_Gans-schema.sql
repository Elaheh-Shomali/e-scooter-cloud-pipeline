-- Create the database
CREATE DATABASE gans_schema;

-- Use the database
USE gans_schema;



-- Create the 'cities_info' table
CREATE TABLE cities_info (
	city_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    City VARCHAR(255) NOT NULL, -- Name of the city
    Country VARCHAR(255) NOT NULL, -- Name of the Country
    Latitude DECIMAL(6,4), -- Latitude of the city
    Longitude DECIMAL(5,3), -- Longitude of the city
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each city
);

select *
from cities_info;


-- Create the 'cities_population' table
CREATE TABLE cities_population (
	city_id INT, -- ID of the cities 
    population_id INT AUTO_INCREMENT, -- Automatically generated ID for each row
    Population INT NOT NULL, -- Population of the city
    Timestamp_Population DATE, -- Time the population is stored
    PRIMARY KEY (population_id),
    FOREIGN KEY (city_id) REFERENCES cities_info(city_id) -- Foreign key to connect each city to its population
);

select *
from cities_population;


-- Create the 'cities_weather' table
CREATE TABLE cities_weather (
	weather_id INT AUTO_INCREMENT, -- Automatically generated ID for each row
    city_id INT NOT NULL, -- Adding the ID for each city
    forecast_time datetime, 
    outlook VARCHAR(255),
    description VARCHAR(255),
    temperature DECIMAL(4,2),
    feels_like DECIMAL(4,2), 
    temp_min DECIMAL(4,2),
    temp_max DECIMAL(4,2),
    wind_speed DECIMAL(4,2),
    rain_prob DECIMAL(4,2),
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES cities_info(city_id) -- Foreign key to connect each city to its weather
);

select *
from cities_weather;


-- Create the 'cities_airport' table
CREATE TABLE cities_airport (
    city_id INT NOT NULL, -- Adding the ID for each city
    airport_icao VARCHAR(255),
    airport_name VARCHAR(255),
    PRIMARY KEY (airport_icao),
    FOREIGN KEY (city_id) REFERENCES cities_info(city_id) -- Foreign key to connect each city to its weather
);

select *
from cities_airport;


-- Create the 'cities_flight' table
CREATE TABLE cities_flight (
	flights_id INT AUTO_INCREMENT, -- Automatically generated ID for each row
    icao VARCHAR(255)  NOT NULL,
    icao_arrival VARCHAR(255),
    arrival_local_time datetime, 
    revised_local_time datetime, 
    flight_number VARCHAR(255),
    flight_status VARCHAR(255),
    PRIMARY KEY (flights_id),
    FOREIGN KEY (icao) REFERENCES cities_airport(airport_icao) -- Foreign key to connect each city to its weather
);

select *
from cities_flight;