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
RETURN (SELECT )


SELECT *
FROM Levels
