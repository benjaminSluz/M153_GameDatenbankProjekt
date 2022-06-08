use Game_Datenbank
go

--Durchschnitts Spielzeit pro Genre
Select isNull(Avg(dauer), 0) as 'Durchschnitts Spielzeit', Genre.bezeichnung as Genre
from Game
    join GameGenre on fk_gameID=Game.id
    RIGHT join Genre on fk_genreID=Genre.id
GROUP by Genre.id, Genre.bezeichnung

--Alle spiele über 100 stunden Empfehlen
UPDATE Game 
set empfohlen = 1 
WHERE dauer > 100

--Gibt alle Spiele für ein Genre aus
EXEC getGamesbyGenre @Genre = 'Platformer'