--количество исполнителей в каждом жанре;
select name, count(abg.genre_id) from genres g
join artist_by_genre abg on g.genre_id  = abg.genre_id 
group by g.name;

--количество треков, вошедших в альбомы 2019-2020 годов;
select count(track_id) from tracks t 
join albums a on t.album_id = a.album_id 
where a.year_release >= '2019-01-01' and a.year_release < '2021-01-01';

--средняя продолжительность треков по каждому альбому;
select a.name, avg(t.duration) from albums a 
join tracks t on a.album_id = t.album_id 
group by a.name;

--все исполнители, которые не выпустили альбомы в 2020 году;
select distinct a.name from artists a
join artist_album aa on a.artist_id = aa.artist_id
join albums a2 on aa.album_id = a2.album_id 
where a2.year_release < '2001-01-01' OR a2.year_release > '2001-12-31';

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name from collections c 
join track_in_collection tic on c.collection_id = tic.collection_id 
join tracks t on tic.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join artist_album aa on a.album_id = aa.album_id 
join artists a2 on aa.artist_id = a2.artist_id 
where a2."name" = 'Rammstein';

--наименование треков, которые не входят в сборники;
select t.name from tracks t 
left join track_in_collection tic on t.track_id = tic.track_id
where tic.collection_id is null;

--название альбомов, в которых присутствуют исполнители более 1 жанра;  
select a.name from albums a 
join artist_album aa on aa.album_id = a.album_id 
join artists a2 on a2.artist_id = aa.artist_id 
join artist_by_genre abg on aa.artist_id = abg.artist_id 
join genres g on g.genre_id = abg.genre_id 
group by a.name
having count(distinct g.name) > 1;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select a.name, t.name from artists a 
join artist_album aa on a.artist_id = aa.artist_id 
join tracks t on aa.album_id = t.album_id
where duration = (select min(duration) from tracks);

--название альбомов, содержащих наименьшее количество треков.
select distinct a.name from albums a
join tracks t on t.album_id = a.album_id 
where t.album_id in (
    select album_id from tracks
    group by album_id
    having count(track_id) = (
        select count(track_id)
        from tracks
        group by album_id
        order by count
        limit 1
    )
)
order by a.name;
