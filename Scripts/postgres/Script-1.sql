create table IF NOT exists genre (
	genre_id SERIAL PRIMARY key,
	genre_name VARCHAR(20)
);

create table IF NOT exists author (
	author_id serial primary key,
	author_name varchar(30) not null
);

create table IF NOT exists genre_author (
	id serial primary key,
	genre_id int not null REFERENCES genre(genre_id),
	author_id int not null references author(author_id)
);

create table IF NOT exists album (
	album_id serial primary key,
	name varchar(30) not null,
	release_year date not null
);

create table IF NOT exists author_album (
	id serial primary key,
	author_id int not null references author(author_id),
	album_id int not null references album(album_id)
);

create table IF NOT exists song (
	song_id serial primary key,
	name varchar(30) not null,
	author varchar(30) not null,
	duration time not null,
	album_id int not null references album(album_id)
);

create table IF NOT exists compilation (
	compilation_id serial primary key,
	name varchar(30) not null,
	release_year date not null,
	song_id int not null references song(song_id),
	album_id int not null references album(album_id)
);