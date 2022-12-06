--Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.
--
--Внимание! Результаты запросов не должны быть пустыми (учтите при заполнении таблиц).
--
--название и год выхода альбомов, вышедших в 2018 году;
--название и продолжительность самого длительного трека;
--название треков, продолжительность которых не менее 3,5 минуты;
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
--исполнители, чье имя состоит из 1 слова;
--название треков, которые содержат слово "мой"/"my".



select name, year_release from albums
where year_release >= '2018-01-01'and year_release < '2019-01-01';

select  name, duration  from tracks
where duration = (select max(duration) from tracks);

select name from tracks
where duration >= 210;

select name from collections
where year_release >= '2018-01-01'and year_release < '2021-01-01';

select name from artists
where name not like '% %';

select name from tracks
where name ilike '%My%' or name ilike '%мой%';






