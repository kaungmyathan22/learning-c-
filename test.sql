CREATE TABLE
    Customers (
        CustomerID varchar(20) NOT NULL,
        CustomerName varchar(30) NOT NULL,
        Password varchar(21) NOT NULL,
        Email varchar(30) NOT NULL,
        Address varchar(100),
        PRIMARY KEY (CustomerID),
    );

CREATE TABLE
    Orders (
        OrderID varchar(20) NOT NULL,
        CustomerID varchar(20),
        OrderDate Date,
        TotalQuantity int,
        TotalPrice decimal(18, 2),
        PRIMARY KEY (OrderID),
        FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
    );

CREATE TABLE
    Products (
        ProductID varchar(20),
        ProductName varchar(30),
        Type varchar(30),
        Description varchar(255),
        UnitQty int,
        UnitPrice decimal(18, 2),
        PRIMARY KEY (ProductID),
    );

CREATE TABLE
    OrderProducts (
        ProductID varchar(20),
        OrderID varchar(20),
        Quantity int,
        Price decimal(18, 2),
        FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
        FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    );