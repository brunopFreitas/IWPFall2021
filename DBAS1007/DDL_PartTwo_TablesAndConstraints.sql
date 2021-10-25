/*
Author: Bruno Freitas W0448225
Date: 2021-10-25
*/

/*Creating database*/
CREATE DATABASE Products_DDL;

/*Using the database just created*/
USE Products_DDL;

/*Task 1 - Creating tables*/

/*Creating the Product table*/
CREATE TABLE Product (
    ProductID int PRIMARY KEY AUTO_INCREMENT,
    ProductCode varchar(10) NOT NULL UNIQUE,
    ProductName text NOT NULL,product
    Description text, 
    RetailPrice numeric(9,2) NOT NULL,
    SalePrice numeric(9,2),
    ProductRating int NOT NULL,
    NumberInStock int NOT NULL DEFAULT(0),
    IsActive int NOT NULL DEFAULT(1),
    IsDiscontinued int NOT NULL DEFAULT(1),
    CONSTRAINT RetailPrice CHECK ((RetailPrice <> 0)),
    CONSTRAINT SalePrice CHECK ((SalePrice <> 0)),
    CONSTRAINT ProductRating CHECK ((ProductRating>=1||ProductRating<=5))
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE Supplier (
    SupplierID int PRIMARY KEY AUTO_INCREMENT,
    SupplierName text NOT NULL,
    Address text NOT NULL,
    ContactName text,
    ContactPhone text,
    ContactEmail text,
    IsActive int NOT NULL DEFAULT(1)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE ClothingCategory (
    CategoryID int PRIMARY KEY AUTO_INCREMENT,
    CategoryName text NOT NULL,
    IsActive int NOT NULL DEFAULT(1)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE ClothingSize (
    SizeID int PRIMARY KEY AUTO_INCREMENT,
    SizeName text NOT NULL,
    SizeAbbreviation ENUM ('XS','S','M','L','XL','XXL') NOT NULL,
    IsActive int NOT NULL DEFAULT (1)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE Colour (
    ColourID int PRIMARY KEY AUTO_INCREMENT,
    ColourName text NOT NULL,
    ColourCode varchar(3) NOT NULL UNIQUE,
    IsActive int NOT NULL DEFAULT(1)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;