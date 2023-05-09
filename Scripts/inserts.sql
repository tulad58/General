insert into author
(
    author_name
)
values ('Bad Bunny'),
('Тейлор Свифт'),
('Дрейк'),
('The Weeknd');

insert into genre
(
    genre_name
)
values ('Рэп'),
('Поп'),
('Танцевальная музыка'),
('Электронная музыка');

insert into album
(
    name,
    release_year
)
values
('After Hours', '2020-01-01'),
('1989', '2014-01-01'),
('Un Verano Sin Ti', '2022-01-01'),
('Views', '2016-01-01');

insert into song
(
    name,
    duration,
    album_id
)
values
('Me Porto Bonito', 179, 3),
('Look What You Made Me Do', 215, 2),
('One Dance', 84, 4),
('Blinding Lights', 270, 1),
('Hotline Bling', 220, 4),
('Blank Space', 365, 2),
('Abu Dabu', 179, 2);

insert into compilation
(
    name,
    release_year
)
values
('best rap', '2020-01-01'),
('best pop', '2019-01-01'),
('new hits', '2023-01-01'),
('old school', '2007-01-01');

insert into author_album
(
    author_id,
    album_id
)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into genre_author
(
    genre_id,
    author_id
)
values
(1, 1),
(2, 2),
(3, 4),
(4, 4),
(1, 3);

insert into song_compilation
(
    song_id,
    compilation_id
)
values
(1, 1),
(1, 3),
(2, 2),
(3, 2),
(4, 3),
(5, 1),
(6, 2),
(6, 4)
