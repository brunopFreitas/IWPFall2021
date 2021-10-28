USE Products_DDL;
CREATE TABLE ProductCategory (
    ProductID int,
    CategoryID int,
    PRIMARY KEY (ProductID, CategoryID),
    CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT FOREIGN KEY (CategoryID) REFERENCES ClothingCategory(CategoryID)
);

USE Products_DDL;
CREATE TABLE ProductSize (
    ProductID int,
    SizeID int,
    PRIMARY KEY (ProductID, SizeID),
    CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT FOREIGN KEY (SizeID) REFERENCES ClothingSize(SizeID)
);

USE Products_DDL;
CREATE TABLE ProductColour (
    ProductID int,
    ColourID int,
    PRIMARY KEY (ProductID, ColourID),
    CONSTRAINT FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT FOREIGN KEY (ColourID) REFERENCES Colour(ColourID)
);

USE Products_DDL;
ALTER TABLE PRODUCT
    ADD column SupplierID int,
    ADD CONSTRAINT FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);