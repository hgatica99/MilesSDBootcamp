--DROPS Tables to be recreated with the code below to avoid errors.
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Guests;
DROP TABLE IF EXISTS GuestStatuses;
DROP TABLE IF EXISTS BasementRats;
DROP TABLE IF EXISTS Sales;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS TavernServices;
DROP TABLE IF EXISTS Services;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS RoomStatuses;
DROP TABLE IF EXISTS Stays;
DROP TABLE IF EXISTS Levels;
DROP TABLE IF EXISTS Received;
DROP TABLE IF EXISTS Counts;
DROP TABLE IF EXISTS ServiceStatuses;

CREATE TABLE Taverns
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	TavernName VARCHAR(128),
	OwnerId INT,
	LocationId INT
);

CREATE TABLE Users
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	UserName VARCHAR(250),
	RoleId INT
);

CREATE TABLE Levels
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	GuestId INT,
	ClassId INT
);

CREATE TABLE Guests
(	
	Id INT PRIMARY KEY IDENTITY(1,1),
	GuestName VARCHAR(250),
	GuestNotes VARCHAR(250),
	GuestBirthDay DATE,
	GuestCakeDay DATE,
	StatusId INT

);

CREATE TABLE GuestStatuses
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	StatusName VARCHAR(250)
);

CREATE TABLE Roles
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RoleName INT,
	RoleDescription VARCHAR(250)
);

CREATE TABLE Supplies
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT FOREIGN KEY (TavernId) REFERENCES Taverns(ID),
	Item VARCHAR (250),
	Quantity FLOAT,
	UnitsOfMeasure VARCHAR (250)
);

CREATE TABLE Received
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	SupplyId INT,
	ReceivedDate DATE,
	Amount FLOAT,
	Cost FLOAT,
	TavernId INT

);

CREATE TABLE Services
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT,
	StatusId INT
);

CREATE TABLE ServiceStatuses
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	StatusName VARCHAR(250)
);

CREATE TABLE Sales
( 
	Id INT PRIMARY KEY IDENTITY(1,1),
	TavernId INT,
	GuestId INT,
	SalesPrice FLOAT,
	SalesDate DATE,
	SalesAmount INT
);

CREATE TABLE Counts
(
	SupplyId INT,
	TavernId INT,
	CountsDate DATE,
	Count FLOAT
);

CREATE TABLE Rooms
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RoomName VARCHAR(250),
	TavernId INT,
	RoomStatusId INT
);

CREATE TABLE RoomStatuses
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RoomStatusName VARCHAR(250)
);

CREATE TABLE Stays
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	StayRate FLOAT,
	SalesId INT,
	GuestId INT,
	RoomId INT,
	StayDate DATE
);

CREATE TABLE Locations
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	LocationName VARCHAR(250)
);

CREATE TABLE Classes
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	ClassName VARCHAR (250),

);

CREATE TABLE BasementRats
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RatName VARCHAR(250)
);

