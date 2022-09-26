--Seeding Taverns Table
INSERT INTO dbo.Taverns 
(TavernName, OwnerId, LocationId)
VALUES ('John''s Tavern', 1, 1)

INSERT INTO dbo.Taverns 
(TavernName, OwnerId, LocationId)
VALUES ('Mikes''s Tavern', 1, 2)

INSERT INTO dbo.Taverns 
(TavernName, OwnerId, LocationId)
VALUES ('Jake''s Tavern', 3, 3)

INSERT INTO dbo.Taverns 
(TavernName, OwnerId, LocationId)
VALUES ('Richie''s Tavern', 4, 4)

INSERT INTO dbo.Taverns 
(TavernName, OwnerId, LocationId)
VALUES ('Greg''s Tavern', 5, 5)

--Seeding Users Table
INSERT INTO dbo.Users
(UserName, RoleId)
VALUES ('Mike', 1)

INSERT INTO dbo.Users
(UserName, RoleId)
VALUES ('Kim', 2)

INSERT INTO dbo.Users
(UserName, RoleId)
VALUES ('Jim', 3)

INSERT INTO dbo.Users
(UserName, RoleId)
VALUES ('Henry', 4)

INSERT INTO dbo.Users
(UserName)
VALUES ('Phil', 5)

--Seeding Guests Table
INSERT INTO dbo.Guests
(GuestName, GuestNotes, GuestBirthDay, GuestCakeDay, StatusId)
VALUES ('Tom', 'Doesn''t like Jerry', '04/20/1990', '04/20/1990', 1)

INSERT INTO dbo.Guests
(GuestName, GuestNotes, GuestBirthDay, GuestCakeDay, StatusId)
VALUES ('Jerry', 'Doesn''t like Tom', '04/21/1990', '04/21/1990', 1)

INSERT INTO dbo.Guests
(GuestName, GuestNotes, GuestBirthDay, GuestCakeDay, StatusId)
VALUES ('Bob', 'Doesn''t like Life', '04/22/2001', '04/22/2001', 1)

INSERT INTO dbo.Guests
(GuestName, GuestNotes, GuestBirthDay, GuestCakeDay, StatusId)
VALUES ('Bob', 'Doesn''t like Pizza (Weirdo)', '04/22/2002', '04/22/2002', 1)

--Seeding Services Table
INSERT INTO dbo.Services
(Name, TavernId, StatusId)
VALUES ('Sword Sharpening', 1, 1)

INSERT INTO dbo.Services
(Name, TavernId, StatusId)
VALUES ('Sword Sharpening', 1, 1)

INSERT INTO dbo.Services
(Name, TavernId, StatusId)
VALUES ('Pig Tossing', 1, 1)

INSERT INTO dbo.Services
(Name, TavernId, StatusId)
VALUES ('Bow Tightening', 1, 1)

--Seeding Rooms Table
INSERT INTO Rooms
(RoomName, Price, TavernId, RoomStatusId)
VALUES ('Room 1', 99, 1, 1)

INSERT INTO Rooms
(RoomName, Price, TavernId, RoomStatusId)
VALUES ('Room 2', 140, 1, 1)

INSERT INTO Rooms
(RoomName, Price, TavernId, RoomStatusId)
VALUES ('Room 3', 160, 1, 1)

--Seeding Sales Table
INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (1, 1, 140.99, '01/02/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (1, 1, 120.99, '01/05/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (2, 1, 290.99, '01/02/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (2, 4, 580.99, '01/18/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (3, 5, 1000.99, '01/02/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (1, 3, 720.99, '01/11/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (4, 2, 680.99, '01/23/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (5, 5, 360.99, '01/27/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (3, 3, 140.99, '01/20/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (2, 3, 890.99, '01/20/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (1, 2, 990.99, '01/20/2022', 1)

INSERT INTO Sales
(TavernId, GuestId, SalesPrice, SalesDate, SalesAmount)
VALUES (4, 5, 790.99, '01/20/2022', 1)

--Seeding Stays Table
INSERT INTO Stays
(StayRate, SalesId, GuestId, RoomId, StayDate)
VALUES(790.99, 12, 4, 1, '2/20/2022')

INSERT INTO Stays
(StayRate, SalesId, GuestId, RoomId, StayDate)
VALUES(990.99, 11, 1, 2, '2/20/2022')

INSERT INTO Stays
(StayRate, SalesId, GuestId, RoomId, StayDate)
VALUES(890.99, 10, 3, 3, '2/20/2022')

--Seeding GuestStatus Table
INSERT INTO GuestStatuses
(StatusName)
VALUES ('Not-Banned')

INSERT INTO GuestStatuses
(StatusName)
VALUES ('Banned')
--Seeding ServiceStatus Table
INSERT INTO ServiceStatuses
(StatusName)
VALUES ('Active')

INSERT INTO ServiceStatuses
(StatusName)
VALUES ('Non-Active')
--Seeding RoomStatus Table
INSERT INTO RoomStatuses
(StatusName)
VALUES ('Vacant')

INSERT INTO RoomStatuses
(StatusName)
VALUES ('Occupied')


--Seeding Levels Table
INSERT INTO Levels
(GuestId, ClassId, Level)
VALUES(1, 1, 12)

INSERT INTO Levels
(GuestId, ClassId, Level)
VALUES(2, 2, 7)

INSERT INTO Levels
(GuestId, ClassId, Level)
VALUES(3, 3, 28)

INSERT INTO Levels
(GuestId, ClassId, Level)
VALUES(4, 4, 4)

INSERT INTO Levels
(GuestId, ClassId, Level)
VALUES(5, 5, 15)

--Seeding Classes Table

INSERT INTO Classes
(ClassName)
VALUES ('Mage')

INSERT INTO Classes
(ClassName)
VALUES ('Warrior')

INSERT INTO Classes
(ClassName)
VALUES ('Wizard')

INSERT INTO Classes
(ClassName)
VALUES ('Dude')