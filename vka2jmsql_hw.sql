SELECT Name FROM country WHERE Continent = "South America";

SELECT Population FROM country WHERE name = "Germany";

SELECT Name FROM city WHERE CountryCode = "JPN";

SELECT Name FROM country WHERE Continent = "Africa" ORDER BY Population DESC LIMIT 3; 

SELECT Name, LifeExpectancy FROM country WHERE Population > 1000000 AND  Population < 5000000;

SELECT Name FROM country WHERE country.Code IN (SELECT countrylanguage.CountryCode FROM countrylanguage WHERE Language = "French" AND isOfficial = "T");

SELECT Title FROM Album WHERE ArtistId = 1;

SELECT FirstName, LastName, Email FROM Customer WHERE Country = "Brazil";

SELECT Name FROM Playlist;

SELECT COUNT(*) FROM Track WHERE GenreID = 1;

SELECT * FROM Employee WHERE ReportsTo = 2;

SELECT SUM(Total)/COUNT(CustomerId) FROM Invoice;

CREATE TABLE Employees (
    employeeId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL
);

CREATE TABLE Customers (
    customerId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    purchasesTotal INT NOT NULL
);

CREATE TABLE Watches (
    watchId INT PRIMARY KEY AUTO_INCREMENT,
    brand VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    diameter Int NOT NULL,
    quantityAvailible Int NOT NULL
);

INSERT INTO Employees (employeeId, name, email, position) VALUES 
(1, "John Smith", "jsmith@watches.com", "Owner"), 
(2, "David Johnson", "djohnson@watches.com", "Manager"),
(3, "Sarah Allen", "sallen@watches.com", "Assistant Manager"),
(4, "George Stewart", "gstewart@watches.com", "Cashier"),
(5, "Michael Anderson", "manderson@watches.com", "Cashier");

INSERT INTO Customers (customerId, name, email, purchasesTotal) VALUES 
(1, "Ashton Driscoll", "adriscoll@gmail.com", 3), 
(2, "Charles Duffy", "cduffy@yahoo.com", 1),
(3, "Reya Martinez", "r.m12@hotmail.com", 6),
(4, "Lily Stone", "lstone43@yahoo.com", 12),
(5, "Luna Magruder", "lunamag@outlook.com", 21);

INSERT INTO Watches (watchId, brand, name, diameter, quantityAvailible) VALUES 
(1, "Rolex", "Datejust Blue Dial", 41, 1), 
(2, "IWC", "Portugieser Chronograph Automatic Silver Dial", 42, 4),
(3, "Rolex", "Sky-Dweller GMT Automatic Chronometer White Dial", 42, 6),
(4, "Cartier", "Santos De Medium Model Automatic Blue Dial", 39, 12),
(5, "Omega", "Constellation Automatic Silver Dial", 36, 2);

Select * FROM Watches WHERE diameter < 40;

Select name FROM Employees WHERE position = "Cashier";

Select email FROM Customers WHERE name = "Luna Magruder";
