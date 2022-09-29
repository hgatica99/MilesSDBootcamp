--ALTERS the Table Taverns, and add's the column for Foreign Key
--ALTER TABLE Taverns ADD FOREIGN KEY (OwnerId) REFERENCES Users(RoleId);
--ALTER TABLE Taverns ADD FOREIGN KEY (LocationId) REFERENCES Locations(Id);

SELECT * 
FROM Taverns

SELECT *
FROM Users

SELECT *
FROM Supplies

SELECT *
FROM Services

SELECT *
FROM Classes

SELECT *
FROM Levels

SELECT *
FROM Guests

SELECT *
FROM GuestStatuses

SELECT *
FROM Rooms

SELECT *
FROM Sales

SELECT *
FROM Roles

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
SELECT GuestName, ClassName,
CASE 
	WHEN Levels.Level < 11 THEN '1-10'
	WHEN Levels.Level > 11 AND Levels.Level < 21 THEN '11-20'
	WHEN Levels.Level > 20 AND Levels.Level < 31 THEN '21-30'
	ELSE 'N/A'
	END AS LevelRange
FROM Guests
JOIN Levels 
	ON Guests.Id = Levels.GuestId 
Join Classes
	ON Classes.Id = Levels.ClassId


--Syntax to update Table data
UPDATE Taverns
SET OwnerId = 1
WHERE ID = 1

SELECT *,
	CASE
	WHEN Id < 11 THEN '1-10'
	ELSE 'N/A'
	END AS LevelRange
FROM Levels	
