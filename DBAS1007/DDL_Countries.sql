CREATE DATABASE IF NOT EXISTS countryData;
use countryData;
CREATE TABLE country (
    countryID int AUTO_INCREMENT,
    name text,
    population int,
    landArea int,
    PRIMARY KEY(countryID)
);


