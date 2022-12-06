insert into artists(name)
values('AC/DC');

insert into genres(name)
values('Rock n Roll');

insert into artist_by_genre
values((select id_artist from artists where name = 'AC/DC'), 1);

insert into albums(name, year_release)
values('Back in Black', '1980-07-25');

insert into executor_album
values(1, 1);

insert into tracks(name, duration, album_id)
values('Hell Bells', '05:12', 1);

insert into tracks(name, duration, album_id)
values('Given The Dog A Bone', '03:32', 1);

insert into collections(name, year_release)
values('The Best AC/DC', '2018-01-12');

insert into track_collection
values(1, 1);

insert into track_collection
values(2, 1);




insert into executors(name)
values('Madonna');

insert into genres(name)
values('Pop');

insert into genre_executor
values(2, 2);

insert into albums(name, year_release)
values('Like a Virgin', '1984-11-12');

insert into executor_album
values(2, 2);

insert into tracks(name, duration, album_id)
values('Material Gerl', '04:01', 2);

insert into tracks(name, duration, album_id)
values('Angel', '03:56', 2);

insert into tracks(name, duration, album_id)
values('Stay', '04:02', 2);

insert into collections(name, year_release) 
values('The Best Madonna', '2015-01-19');

insert into track_collection
values(3, 2);

insert into track_collection
values(4, 2);

insert into track_collection
values(5, 2);




insert into executors(name)
values('Eminem');

insert into genres(name)
values('Hip-hop');

insert into genre_executor
values(3, 3);

insert into albums(name, year_release)
values('The King Is Back', '2001-01-25');

insert into executor_album
values(3, 3);

insert into tracks(name, duration, album_id)
values('16 Lineas', '01:31', 3);

insert into tracks(name, duration, album_id)
values('Para Ti', '02:11', 3);

insert into tracks(name, duration, album_id)
values('Ella Quiere Boom', '02:24', 3);

insert into collections(name, year_release) 
values('The Best Marshall', '2013-10-01');

insert into track_collection
values(6, 3);

insert into track_collection
values(7, 3);

insert into track_collection
values(8, 3);




insert into executors(name)
values('DJ Smash');

insert into genres(name)
values('Electro');

insert into genre_executor
values(4, 4);

insert into albums(name, year_release)
values('IDDQD', '2008-11-17');

insert into executor_album
values(4, 4);

insert into tracks(name, duration, album_id)
values('Волна', '03:33', 4);

insert into collections(name, year_release) 
values('DJ SMASH CLUB', '2020-10-01');

insert into track_collection
values(9, 4);





insert into executors(name)
values('The Boss Hoss');

insert into genres(name)
values('Country');

insert into genre_executor
values(5, 5);

insert into albums(name, year_release)
values('Dos Bros', '2015-09-25');

insert into executor_album
values(5, 5);

insert into tracks(name, duration, album_id)
values('Wait for Me', '04:27', 5);

insert into tracks(name, duration, album_id)
values('Dos Bros', '03:43', 5);

insert into albums(name, year_release)
values('Flames of Fame', '2013-10-11');

insert into executor_album
values(5, 6);

insert into tracks(name, duration, album_id)
values('Do It', '03:42', 6);

insert into tracks(name, duration, album_id)
values('God Loves Cowboys', '09:38', 6);

insert into collections(name, year_release) 
values('Really Cowboys', '2018-10-01');

insert into track_collection
values(11, 5);

insert into track_collection
values(12, 5);

insert into track_collection
values(6, 5);




insert into executors(name)
values('Rammstein');

insert into genres(name)
values('Rock');

insert into genre_executor
values(6, 6);

insert into albums(name, year_release)
values('Mutter', '2001-04-02');

insert into executor_album
values(6, 7);

insert into tracks(name, duration, album_id)
values('Sonne', '04:33', 7);

insert into tracks(name, duration, album_id)
values('Ich will', '03:37', 7);

insert into collections(name, year_release) 
values('Hard Rock', '2016-10-01');

insert into track_collection
values(14, 6);

insert into track_collection
values(15, 6);


insert into executors(name)
values('Zivert');

insert into genre_executor
values(2, 7);

insert into albums(name, year_release)
values('Сияй', '2018-08-23');

insert into executor_album
values(7, 8);

insert into tracks(name, duration, album_id)
values('Сияй', '03:25', 8);




insert into executors(name)
values('Король и шут');

insert into genre_executor
values(6, 8);

insert into albums(name, year_release)
values('Как в старой сказке', '2001-01-23');

insert into executor_album
values(8, 9);

insert into tracks(name, duration, album_id)
values('Гимн шута', '05:00', 9);




insert into collections(name, year_release) 
values('Favorite songs', '2022-10-01');

insert into track_collection
values(1, 7);

insert into track_collection
values(12, 7);

insert into track_collection
values(14, 7);

insert into collections(name, year_release) 
values('Like pop', '2021-10-01');

insert into track_collection
values(3, 8);

insert into track_collection
values(4, 8);

insert into track_collection
values(16, 8);



insert into artists(name)
values('AC/DC');

insert into genres(name)
values('Rock n Roll');

insert into artist_by_genre
values((select artist_id from artists where name = 'AC/DC'),
	   (select genre_id from genres  where name = 'Rock n Roll'));
	

insert into albums(name, year_release)
values('Back in Black', '1980-07-25');

insert into artist_album 
values(1, 1);

insert into tracks(name, duration, album_id)
values('Hell Bells', 312, 1);

insert into tracks(name, duration, album_id)
values('Given The Dog A Bone', 212, 1);

insert into collections(name, year_release)
values('The Best AC/DC', '2018-01-12');

insert into track_in_collection
values(1, 1);

insert into track_in_collection
values(2, 1);


insert into artists(name)
values('Madonna');

insert into genres(name)
values('Pop');

insert into artist_by_genre
values(2, 2);

insert into albums(name, year_release)
values('Like a Virgin', '1984-11-12');

insert into artist_album
values(2, 2);

insert into tracks(name, duration, album_id)
values('Material Gerl', 241, 2);

insert into tracks(name, duration, album_id)
values('Angel', 236, 2);

insert into tracks(name, duration, album_id)
values('Stay', 242, 2);

insert into collections(name, year_release) 
values('The Best Madonna', '2015-01-19');

insert into track_in_collection
values(3, 2);

insert into track_in_collection
values(4, 2);

insert into track_in_collection
values(5, 2);




insert into artists(name)
values('Eminem');

insert into genres(name)
values('Hip-hop');

insert into artist_by_genre
values(3, 3);

insert into albums(name, year_release)
values('The King Is Back', '2001-01-25');

insert into artist_album
values(3, 3);

insert into tracks(name, duration, album_id)
values('16 Lineas', 91, 3);

insert into tracks(name, duration, album_id)
values('Para Ti', 191, 3);

insert into tracks(name, duration, album_id)
values('Ella Quiere Boom', 144, 3);

insert into collections(name, year_release) 
values('The Best Marshall', '2013-10-01');

insert into track_in_collection
values(6, 3);

insert into track_in_collection
values(7, 3);

insert into track_in_collection
values(8, 3);




insert into artists(name)
values('DJ Smash');

insert into genres(name)
values('Electro');

insert into artist_by_genre
values(4, 4);

insert into albums(name, year_release)
values('IDDQD', '2008-11-17');

insert into artist_album
values(4, 4);

insert into tracks(name, duration, album_id)
values('Волна', 213, 4);

insert into collections(name, year_release) 
values('DJ SMASH CLUB', '2020-10-01');

insert into track_in_collection
values(9, 4);





insert into artists(name)
values('The Boss Hoss');

insert into genres(name)
values('Country');

insert into artist_by_genre
values(5, 5);

insert into albums(name, year_release)
values('Dos Bros', '2015-09-25');

insert into artist_album
values(5, 5);

insert into tracks(name, duration, album_id)
values('Wait for Me', 267, 5);

insert into tracks(name, duration, album_id)
values('Dos Bros', 223, 5);

insert into albums(name, year_release)
values('Flames of Fame', '2013-10-11');

insert into artist_album
values(5, 6);

insert into tracks(name, duration, album_id)
values('Do It', 222, 6);

insert into tracks(name, duration, album_id)
values('God Loves Cowboys', 578, 6);

insert into collections(name, year_release) 
values('Really Cowboys', '2018-10-01');

insert into track_in_collection
values(11, 5);

insert into track_in_collection
values(12, 5);

insert into track_in_collection
values(6, 5);




insert into artists(name)
values('Rammstein');

insert into genres(name)
values('Rock');

insert into artist_by_genre
values(6, 6);

insert into albums(name, year_release)
values('Mutter', '2001-04-02');

insert into artist_album
values(6, 7);

insert into tracks(name, duration, album_id)
values('Sonne', 273, 7);

insert into tracks(name, duration, album_id)
values('Ich will', 217, 7);

insert into collections(name, year_release) 
values('Hard Rock', '2016-10-01');

insert into track_in_collection
values(14, 6);

insert into track_in_collection
values(15, 6);


insert into artists(name)
values('Zivert');

insert into artist_by_genre
values(2, 7);

insert into albums(name, year_release)
values('Сияй', '2018-08-23');

insert into artist_album
values(7, 8);

insert into tracks(name, duration, album_id)
values('Сияй', 205, 8);




insert into artists(name)
values('Король и шут');

insert into artist_by_genre
values(6, 8);

insert into albums(name, year_release)
values('Как в старой сказке', '2001-01-23');

insert into artist_album
values(8, 9);

insert into tracks(name, duration, album_id)
values('Гимн шута', 300, 9);




insert into collections(name, year_release) 
values('Favorite songs', '2022-10-01');

insert into track_in_collection
values(1, 7);

insert into track_in_collection
values(12, 7);

insert into track_in_collection
values(14, 7);

insert into collections(name, year_release) 
values('Like pop', '2021-10-01');

insert into track_in_collection
values(3, 8);

insert into track_in_collection
values(4, 8);

insert into track_in_collection
values(16, 8);



