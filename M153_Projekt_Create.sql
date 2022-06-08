-- Create Database
use master;
GO
drop DATABASE if EXISTS Game_Datenbank;
go
CREATE DATABASE Game_Datenbank
go

--Create Tables
use Game_Datenbank
go

CREATE TABLE Genre
(
    id int PRIMARY KEY identity,
    bezeichnung VARCHAR(50) NOT NULL
)
CREATE TABLE Game
(
    id int PRIMARY KEY identity,
    [name] VARCHAR(50) NOT NULL,
    beschreibung VARCHAR(500),
    dauer FLOAT,
    published DATE,
    empfohlen BIT,
    fk_PublisherID int,
    fk_CreatorID int NOT NULL
)
CREATE TABLE GameGenre
(
    id int PRIMARY KEY identity,
    fk_gameID int NOT NULL,
    fk_genreID int NOT NULL
)
CREATE TABLE Publisher
(
    id int PRIMARY KEY identity,
    bezeichnung VARCHAR(50)
)
CREATE TABLE Creator
(
    id int PRIMARY KEY identity,
    [name] VARCHAR(50)
)
GO
--Add Refrences /Benjamin
use Game_Datenbank
go

ALTER TABLE GameGenre
ADD 
    FOREIGN KEY (fk_gameID)     REFERENCES Game (id),
    FOREIGN KEY (fk_genreID)    REFERENCES Genre (id)

ALTER TABLE Game
ADD 
    FOREIGN KEY (fk_CreatorID)     REFERENCES Creator (id),
    FOREIGN KEY (fk_PublisherID)    REFERENCES Publisher (id)