--ALTERS the Table Taverns, and add's the column for Foreign Key
ALTER TABLE Taverns ADD FOREIGN KEY (OwnerId) REFERENCES Users(RoleId);
ALTER TABLE Taverns ADD FOREIGN KEY (LocationId) REFERENCES Locations(Id);

SELECT * 
FROM Taverns

SELECT *
FROM Users

SELECT *
FROM Supplies

SELECT *
FROM Services

SELECT *
FROM Guests

SELECT *
FROM Rooms

SELECT *
FROM Sales

--HW 3
--#2
SELECT *
FROM Guests
WHERE YEAR(GuestBirthDay) < 2000

--#3
SELECT *
FROM Rooms
WHERE Price < 100

--#4
SELECT DISTINCT GuestName
FROM Guests 

--#5
SELECT *
FROM Guests
ORDER BY GuestName ASC

--6
SELECT TOP 10 SalesPrice
FROM Sales
ORDER BY SalesPrice DESC

--7
SELECT *
FROM ServiceStatuses
UNION SELECT *
FROM GuestStatuses
UNION SELECT *
FROM RoomStatuses

--8	
SELECT GuestName
FROM Guests
UNION SELECT StatusName
From GuestStatuses
UNION SELECT ClassName
FROM Classes
UNION SELECT LevelGroup
FROM Guests

--Syntax to update Table data
UPDATE Taverns
SET OwnerId = 1
WHERE ID = 1