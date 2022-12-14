--HW 4
--#1
SELECT Users.UserName
FROM Users
WHERE Users.RoleId = 1

--#2.
SELECT Users.UserName, Locations.LocationName, Roles.RoleName
FROM Taverns
JOIN Users 
	ON Users.Id = Taverns.OwnerId
JOIN Roles 
	ON Users.RoleId = Roles.Id
JOIN Locations 
	ON Taverns.LocationId = Locations.Id
WHERE Users.RoleId = 1

--#3
SELECT Guests.GuestName, Classes.ClassName, Levels.Level
FROM Guests
JOIN Levels 
	ON Guests.Id = Levels.GuestId
JOIN Classes 
	ON Levels.ClassId = Classes.Id
ORDER BY GuestName ASC

--#4
SELECT TOP 10 Sales.SalesPrice, Services.Name
FROM Sales
JOIN Services 
	ON Sales.ServiceId = Services.Id
ORDER BY SalesPrice DESC

--#5
SELECT Guests.Id, Guests.GuestName, Classes.ClassName, Levels.Level
FROM Guests
JOIN Levels 
	ON Guests.Id = Levels.GuestId
JOIN Classes 
	ON Classes.Id = Levels.ClassId
WHERE Guests.Id IN (
			SELECT Levels.GuestId 
			FROM Levels
			GROUP BY GuestId
			HAVING COUNT(GuestId) >= 2
)

--#6
SELECT Guests.Id, Guests.GuestName, Classes.ClassName, Levels.Level
FROM Guests
JOIN Levels 
	ON Guests.Id = Levels.GuestId
JOIN Classes 
	ON Classes.Id = Levels.ClassId
WHERE Guests.Id IN (
			SELECT Levels.GuestId 
			FROM Levels
			GROUP BY GuestId
			HAVING COUNT(GuestId) >= 1)
		AND Levels.Level > 5

--#7
SELECT Guests.Id, Guests.GuestName, Classes.ClassName, Levels.Level
FROM Guests
JOIN Levels 
	ON Guests.Id = Levels.GuestId
JOIN Classes 
	ON Classes.Id = Levels.ClassId
WHERE Levels.level = (
			SELECT MAX(Levels.Level) 
			FROM Levels
)

--#8
SELECT 
	*
FROM GUESTS G
JOIN Stays S
	ON G.Id = S.GuestId
	AND S.StayDate 
	BETWEEN '02/19/2022' 
	AND '02/24/2022'


SELECT *
FROM Stays
