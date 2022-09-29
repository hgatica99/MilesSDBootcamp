--HW 5
--#1
SELECT Users.UserName, Roles.RoleName
FROM Users
JOIN Roles ON Users.RoleId = Roles.Id

--#2
SELECT Classes.ClassName, COUNT(Levels.GuestId) ClassCount
FROM Classes
JOIN Levels ON Levels.ClassId = Classes.Id
GROUP BY ClassName

--#3
SELECT GuestName, ClassName, Levels.Level,
CASE 
	WHEN Levels.Level < 5 THEN 'Beginner'
	WHEN Levels.Level > 5 AND Levels.Level < 11 THEN 'Intermediate'
	WHEN Levels.Level > 10 THEN 'Expert'
	ELSE 'N/A'
	END AS LevelRange
FROM Guests
JOIN Levels 
ON Guests.Id = Levels.GuestId 
Join Classes
ON Classes.Id = Levels.ClassId

--#4
CREATE FUNCTION FinalTable (@level INT)
RETURNS TABLE
AS
RETURN (SELECT GuestName, ClassName, Levels.Level,
		CASE 
			WHEN Levels.Level < 5 THEN 'Beginner'
			WHEN Levels.Level > 5 AND Levels.Level < 11 THEN 'Intermediate'
			WHEN Levels.Level > 10 THEN 'Expert'
			ELSE 'N/A'
			END AS LevelRange
		FROM Guests
		JOIN Levels 
		ON Guests.Id = Levels.GuestId 
		Join Classes
		ON Classes.Id = Levels.ClassId
		WHERE Levels.Level = @level)

SELECT *
FROM dbo.FinalTable(28)  

--#5 
CREATE FUNCTION TableNumber5 (@date DATE)
RETURNS TABLE
AS
RETURN (SELECT Rooms.RoomName, Taverns.TavernName
		FROM Rooms
		JOIN Taverns ON Rooms.TavernId = Taverns.Id
		JOIN Stays ON Stays.RoomId = Rooms.Id
		WHERE NOT @date = Stays.StayDate)

SELECT *
FROM dbo.TableNumber5('02/18/2022')

--#6
CREATE FUNCTION TableNumber6 (@min FLOAT, @max FLOAT)
RETURNS TABLE
AS
RETURN (SELECT T.Id TavernId, T.TavernName, R.RoomName, R.Price
		FROM Taverns T
		JOIN Rooms R ON R.Id = T.Id
		WHERE R.Price >= @min AND R.Price <= @max)

--#7
INSERT INTO Rooms
(RoomName, Price, TavernId, RoomStatusId)
VALUES('New Room', (SELECT MIN(Price) FROM dbo.TableNumber6(10.00, 150.00))-0.01, 1, 1)

--#7 Experimental, adds new room to random tavern that's not the cheapest one.
INSERT INTO Rooms
(RoomName, Price, TavernId, RoomStatusId)
VALUES('New Room', (SELECT MIN(Price) 
					FROM dbo.TableNumber6(10.00, 150.00))-0.01, (SELECT TOP 1 T.Id
																 FROM Taverns T
																 WHERE NOT T.Id = (SELECT T2.TavernId 
																					FROM dbo.TableNumber6(10.00, 150.00) T2 
																					WHERE T2.Price = (SELECT MIN(Price) 
																									  FROM dbo.TableNumber6(10.00, 150.00)))ORDER BY NEWID()), 1)

--Returns Random TavernID from the table returned by Function TableNumber6 that doesn't match the tavern id with the matched price. Future issues are: What if there are 2 taverns with the same price? How will id's be matched?																								  --
SELECT TOP 1 T.TavernId
FROM dbo.TableNumber6(10.00, 150.00) T
WHERE NOT T.TavernId = (SELECT T2.TavernId 
						FROM dbo.TableNumber6(10.00, 150.00) T2 
						WHERE T2.Price = (SELECT MIN(Price) FROM dbo.TableNumber6(10.00, 150.00)))
ORDER BY NEWID()

SELECT *
FROM Stays
SELECT *
FROM Rooms
