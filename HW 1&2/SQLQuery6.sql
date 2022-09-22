--DROPS Tables to be recreated with the code below to avoid errors.
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS BasementRats;
DROP TABLE IF EXISTS Sales;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS InventorySales;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS TavernServices;


--Creates Taverns Table
CREATE TABLE Taverns
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernName VARCHAR(128),
	UserID INT,
	SalesID INT,
	InventoryID INT,
	InventorySalesID INT
);
--Crears Inventory Table
CREATE TABLE Inventory
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernId) REFERENCES Taverns(ID),
	Item VARCHAR (250),
	Quantity FLOAT,
	UnitsOfMeasure VARCHAR (250)
);

CREATE TABLE TavernServices
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernID) REFERENCES Taverns(ID),
	TavernService VARCHAR (250),
	Price FLOAT,
);

--Creates Sales Table
CREATE TABLE Sales
( 
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernId) REFERENCES Taverns(ID)
);

--Creates InventorySales Table
CREATE TABLE InventorySales
(
	ID INT PRIMARY KEY IDENTITY(1,1)
);

--Creates Location Table
CREATE TABLE Locations
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernID) REFERENCES Taverns(ID),
	LocationName VARCHAR(250)
);

--Creates Users Table
CREATE TABLE Users
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	UserName VARCHAR(250),
	Notes VARCHAR(250),
	BirthDay DATE,
	CakeDay DATE,
	UserStatus VARCHAR(250),
	TavernId INT
)

--Creates Classes Table
CREATE TABLE Classes
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	UserClass VARCHAR (250),

);

--CREATES BasementRats Table
CREATE TABLE BasementRats
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernId) REFERENCES Taverns(ID),
	RatName VARCHAR(250)
);

