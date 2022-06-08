use Game_Datenbank
go

--Delete All data from the tables /Fix DBCC to make primarykey start at 1 again
delete GameGenre
DBCC CHECKIDENT (GameGenre,RESEED, 0)
DELETE Game
DBCC CHECKIDENT (Game,RESEED, 0)
delete Genre
DBCC CHECKIDENT (Genre,RESEED, 0)
delete Publisher
DBCC CHECKIDENT (Publisher,RESEED, 0)
delete Creator
DBCC CHECKIDENT (Creator,RESEED, 0)
go
--Fill Tables
INSERT INTO Genre
VALUES
    ('Action'),
    ('Simulation'),
    ('Platformer'),
    ('Shooter'),
    ('RPG'),
    ('Adventure'),
    ('Rythm'),
    ('Horror')
GO
INSERT into Creator
VALUES
    ('Paradox Develeopment Studio'),
    ('Maxis'),
    ('Team Cherry'),
    ('Yacht Club Games'),
    ('Mango Protocol'),
    ('Motion Twin'),
    ('Re-Logic'),
    ('ConcernedApe')
INSERT into Publisher
VALUES
    ('Paradox Interactive'),
    ('Maxis'),
    ('Team Cherry'),
    ('ConcernedApe'),
    ('Curve Games'),
    ('Beat Games'),
    ('Matt Makes Games Inc.'),
    ('ScottGames')
go
INSERT INTO Game
    ([name],beschreibung,dauer,published,empfohlen,fk_CreatorID,fk_PublisherID)
VALUES
    ('Stelaris', 'Weltraum Strategie Spiel', 158.4, '05.09.2016', 1, 1, 1),
    ('Hollow Knight', 'Ein Metroidvania Spiel in einer Käfer Welt', 200, '02.24.2017', 1, 3, 3),
    ('Shovel Knight', 'Spiele einen Ritter mit einer grossen Schaufel', 25, '06.26.2014', 1, 4, 5),
    ('Agatha Knife', 'Geschichte eines Kindes, hin- und hergerissen zwischen ihrer Liebe zum Fleischessen 
    und ihrer Freundschaft mit Tieren.', 10, '04.27.2017', 1, 5, 2),
    ('Beat Saber', 'VR Rhythmusspiel, Zerschneiden von Blöcken', 100.5, '05.21.2019', 0, 6, 6),
    ('Stardew Valley', 'Ein entspannendes Farming Rollenspiel', 158.4, '09.05.2016', 1, 8, 4),
    ('Five Nights at Freddys: Security Breach', 'Horrorspiel mit animatronischen Robotern', 40, '12.17.2021', 0, 7, 8),
    ('Terraria', 'Minecraft aber 2D', 200, '05.16.2011', 0, 7, 1)
GO
INSERT INTO GameGenre
    (fk_gameID,fk_genreID)
VALUES
    (1, 2),
    (2, 3),
    (3, 3),
    (4, 6),
    (5, 7),
    (6, 2),
    (6, 5),
    (7, 8),
    (8, 2),
    (8, 6)

