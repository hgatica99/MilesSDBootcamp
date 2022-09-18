
--ALTERS the Table Taverns, and add's the column for Foreign Key
ALTER TABLE Taverns ADD FOREIGN KEY (UserID) REFERENCES Users(ID);
ALTER TABLE Taverns ADD FOREIGN KEY (SalesID) REFERENCES Sales(ID);

SELECT * 
FROM Taverns

SELECT *
FROM Users

--Syntax to update Table data
UPDATE Taverns
SET UserId = 1
WHERE ID = 1;