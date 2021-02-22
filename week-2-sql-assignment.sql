CREATE TABLE Products (

ID int IDENTITY PRIMARY KEY,
Name NVARCHAR(255) NOT NULL CHECK(Name > 1),
Price MONEY NOT NULL


);


CREATE TABLE Customers(
    ID int PRIMARY KEY IDENTITY ,
    Firstname NVARCHAR(255) NOT NULL CHECK(Firstname > 1),
    Lastname NVARCHAR(255) NOT NULL CHECK(Lastname > 1),
    CardNumber NVARCHAR(100) NOT NULL CHECK(Cardnumber > 14),
   
   
   
   
    );


CREATE TABLE Orders(
    ID int PRIMARY KEY IDENTITY,
    ProductID INT FOREIGN KEY REFERENCES Products(ID),
    CustomerID INT FOREIGN KEY REFERENCES Customers(ID)
   
   
    );
   
   
SELECT * FROM Products, Customers, Orders


INSERT INTO Products(Name, Price) VALUES ('Apple Watch', '200.20'), ('Macbook', '1000.00'), ('NVIDIA RTX 2060 GPU', '568.54')
INSERT INTO Customers(Firstname, Lastname, CardNumber) VALUES ('Damion', 'Silver', '123456789123456'),('Nick','Trainer', '213456345345354'),('Revature','Camp', '543234523452345')
INSERT INTO Orders(ProductID,CustomerID) VALUES ('1','1'), ('3','2'), ('2', '2');


INSERT INTO Products(Name,Priec) VALUES ('Iphone', '200');

INSERT INTO Customers(Firstname, Lastname, CardNumber) VALUES ('Tina', 'Smith', '12345123451234');
INSERT INTO Orders(ProductID,CustomerID) VALUES ('4','4');

SELECT * from Orders
WHERE Customers.Firstname = "Tina";

SELECT SUM(Price) FROM Prooducts WHERE Products.Name = "Iphone";

UPDATE Products
SET
    Price =  250.00
Where
    Products.Name = "Iphone";
