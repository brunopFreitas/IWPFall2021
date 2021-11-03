DROP DATABASE IF EXISTS countryData;
CREATE DATABASE countryData;
use countryData;
CREATE TABLE country (
    name text,
    population int,
    landArea int
);
use countryData;
ALTER TABLE 
    country 
ADD COLUMN countryID INT;
use countryData;
ALTER TABLE 
    country 
ADD PRIMARY KEY(countryID);
use countryData;                    
ALTER TABLE                         
    country                         
MODIFY countryID INT AUTO_INCREMENT;