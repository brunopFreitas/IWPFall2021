/*
Author: Bruno Freitas W0448225
Date: 2021-10-25
*/

/*Creating database*/
DROP DATABASE IF EXISTS Products_DDL;
CREATE DATABASE Products_DDL;

/*Using the database just created*/
USE Products_DDL;

/*Task 1 - Creating tables*/

/*Creating the Product table*/
CREATE TABLE Product (
    ProductID int,
    ProductCode varchar(10),
    ProductName text,
    Description text, 
    RetailPrice numeric(9,2),
    SalePrice numeric(9,2),
    ProductRating int,
    NumberInStock int,
    IsActive int,
    IsDiscontinued int
);

CREATE TABLE Supplier (
    SupplierID int ,
    SupplierName text,
    Address text,
    ContactName text,
    ContactPhone text,
    ContactEmail text,
    IsActive int 
);

CREATE TABLE ClothingCategory (
    CategoryID int ,
    CategoryName text,
    IsActive int 
);

CREATE TABLE ClothingSize (
    SizeID int ,
    SizeName text,
    SizeAbbreviation varchar(5),
    IsActive int 
);

CREATE TABLE Colour (
    ColourID int,
    ColourName text,
    ColourCode varchar(3),
    IsActive int 
);