-- Seeding Taverns DB
INSERT INTO dbo.Taverns 
(TavernName)
VALUES ('John''s Tavern')

INSERT INTO dbo.Taverns 
(TavernName)
VALUES ('Mikes''s Tavern')

INSERT INTO dbo.Taverns 
(TavernName)
VALUES ('Jake''s Tavern')

INSERT INTO dbo.Taverns 
(TavernName)
VALUES ('Richie''s Tavern')

INSERT INTO dbo.Taverns 
(TavernName)
VALUES ('Greg''s Tavern')

--Seeding Users DB
INSERT INTO dbo.Users
(UserName)
VALUES ('Mike')

INSERT INTO dbo.Users
(UserName)
VALUES ('Kim')

INSERT INTO dbo.Users
(UserName)
VALUES ('Jim')

INSERT INTO dbo.Users
(UserName)
VALUES ('Henry')

INSERT INTO dbo.Users
(UserName)
VALUES ('Phil')

--SEEDING Tavern Services DB

INSERT INTO dbo.TavernServices
(TavernId, TavernService, Price)
VALUES (1,'Sword Sharpening', 5.99)

INSERT INTO dbo.TavernServices
(TavernId, TavernService, Price)
VALUES (1,'Sword Sharpening', 5.99)

-- If this is ran twice, statment conflicts with FOREIGN KEY constraint
--INSERT INTO dbo.TavernServices
--(TavernId, TavernService, Price)
--VALUES (1,'Sword Sharpening', 5.99)

