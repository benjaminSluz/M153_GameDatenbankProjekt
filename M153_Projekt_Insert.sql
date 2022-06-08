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
    ( 'RPG')
GO
INSERT into Creator
VALUES
    ('Paradox Develeopment Studio'),
    ('Maxis'),
    (''),
    (''),
    (''),
    (''),
    (''),
    ('')
INSERT into Publisher
VALUES
    ('Paradox Interactive'),
    ('Maxis'),
    (''),
    (''),
    (''),
    (''),
    (''),
    ('')
go
INSERT INTO Game
    ([name],beschreibung,dauer,published,empfohlen,fk_CreatorID,fk_PublisherID)
VALUES
    ('Stelaris', 'Weltraum Strategie spiel', 158.4, '05.09.2016', 1, 1, 1)
GO
INSERT INTO GameGenre
    (fk_gameID,fk_genreID)
VALUES
    (1, 2)

