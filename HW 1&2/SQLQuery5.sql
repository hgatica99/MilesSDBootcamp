-- Seeding Taverns DB
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

--Seeding Users DB
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

--Seeding Guests DB
INSERT INTO dbo.Guests
(GuestName, GuestNotes, GuestBirthDay, GuestCakeDay, StatusId)
VALUES ('Tom', 'Doesn''t like Jerry ', 04/20/1990, 4/20/1990, 1)

--Seeding Services DB
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
