--Query all of the entries in the Genre table
select * from Genre;

--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
select * from Artist order by ArtistName;

select 
s.Title, a.ArtistName
from Song s
left join
Artist a on s.ArtistId = a.id;

select distinct
a.ArtistName, g.Name
from Artist a
left join Album s on s.ArtistId = a.id
left join Genre g on g.id =s.GenreId
where g.id=1;

select distinct
a.ArtistName, g.Name
from Artist a
left join Album l  on l.ArtistId = a.id
left join Genre g on g.id = l.GenreId
where g.Name = 'Rock' or g.Name = 'Jazz';

select distinct
a.Title, a.id, s.AlbumId, a.AlbumLength
from Album a
left join Song s on s.AlbumId = a.Id
where s.AlbumId is NULL;

/*insert into Artist 
(ArtistName, YearEstablished) values ('Kanye West', 2002);*/
Select * from Artist;

 /*insert into Album
(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
values ('My Dark Beautiful Twisted Fantasy', '5/1/2010', 100,'Rock-a-Fella', 29,13);*/
select * from Album;

/*insert into  Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
values ('Blame Game', 250, '5/1/2010', 13, 29, 23), 
('Gorgeous', 200, '5/1/2010', 13, 29, 23);*/
select * from Song;


select distinct 
s.Title, a.title, r.ArtistName
from Song s
left join Artist r on r.id =s.ArtistId
left join Album a  on a.ArtistId =r.id
where r.ArtistName ='Kanye West' and s.Title = 'My Beautiful Dark Twisted Fantasy';

select count(s.id) as 'numOfSongs', a.Title
from Album a
left join Song s on a.id = s.AlbumId
group by a.Title;

select count(s.id) as 'Number of songs', a.ArtistName
from Artist a
left join Song s on a.id =s.ArtistId
group by a.ArtistName;

select  count(s.id) as 'Number of songs', g.Name
from Genre g 
left join Song s on s.GenreId = g.Id
group by g.Name;


select 
r.ArtistName
from  Artist r
join Album l on r.Id =l.ArtistId
group by r.ArtistName
having Count(distinct l.Label ) > 1
;


select top 1 l.AlbumLength, l.Title
from Album l
order by l.AlbumLength desc;

select top 1 SongLength, Title
from Song 
order by SongLength desc;

select top 1 s.SongLength, s.Title, l.Title as 'album name'
from Song s
left join Album l on l.Id =s.AlbumId
order by s.SongLength desc;
--Write a SELECT query that lists all the songs in the Song table and include the Artist name

--Write a SELECT query that lists all the Artists that have a Soul Album

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album

--Write a SELECT statement that lists the Albums with no songs

--Using the INSERT statement, add one of your favorite artists to the Artist table.

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.

--Using the INSERT statement, add some songs that are on that album to the Song table.

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

--NOTE: Direction of join matters. Try the following statements and see the difference in results.

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword

--Using ORDER BY and TOP 1, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

--Using ORDER BY and TOP 1, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--Modify the previous query to also display the title of the album.