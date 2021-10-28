USE Products_DDL;
ALTER TABLE PRODUCT
    ADD PRIMARY KEY(ProductID), 
    ADD UNIQUE (ProductCode),
    ADD CONSTRAINT RetailPrice CHECK ((RetailPrice > 0)),
    ADD CONSTRAINT SalePrice CHECK ((SalePrice > 0)),
    ADD CONSTRAINT ProductRating CHECK ((ProductRating>=1||ProductRating<=5));

USE Products_DDL;
ALTER TABLE PRODUCT
    MODIFY ProductID int AUTO_INCREMENT,
    MODIFY ProductCode varchar(10) NOT NULL,
    MODIFY ProductName text NOT NULL,
    MODIFY RetailPrice numeric(9,2) NOT NULL,
    MODIFY ProductRating int NOT NULL,
    MODIFY NumberInStock int NOT NULL DEFAULT(0),
    MODIFY IsActive int NOT NULL DEFAULT(1),
    MODIFY IsDiscontinued int NOT NULL DEFAULT(1);

USE Products_DDL;
ALTER TABLE SUPPLIER
    ADD PRIMARY KEY(SupplierID);

USE Products_DDL;
ALTER TABLE SUPPLIER
    MODIFY SupplierID int AUTO_INCREMENT,
    MODIFY SupplierName text NOT NULL,
    MODIFY Address text NOT NULL,
    MODIFY IsActive int NOT NULL DEFAULT(1);

USE Products_DDL;
ALTER TABLE ClothingCategory
    ADD PRIMARY KEY(CategoryID);

USE Products_DDL;
ALTER TABLE ClothingCategory
    MODIFY CategoryID int AUTO_INCREMENT,
    MODIFY CategoryName text NOT NULL,
    MODIFY IsActive int NOT NULL DEFAULT(1);

USE Products_DDL;
ALTER TABLE ClothingSize
    ADD PRIMARY KEY(SizeID);

USE Products_DDL;
ALTER TABLE ClothingSize
    MODIFY SizeID int AUTO_INCREMENT,
    MODIFY SizeName text NOT NULL,
    MODIFY SizeAbbreviation ENUM ('XS','S','M','L','XL','XXL') NOT NULL,
    MODIFY IsActive int NOT NULL DEFAULT (1);

USE Products_DDL;
ALTER TABLE Colour
    ADD PRIMARY KEY(ColourID),
    ADD UNIQUE(ColourCode);

USE Products_DDL;
ALTER TABLE Colour
    MODIFY ColourID int AUTO_INCREMENT,
    MODIFY ColourName text NOT NULL,
    MODIFY ColourCode varchar(3) NOT NULL,
    MODIFY IsActive int NOT NULL DEFAULT(1);
