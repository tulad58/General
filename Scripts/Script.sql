create table IF NOT exists genre (
	genre_id SERIAL PRIMARY key,
	genre_name VARCHAR(20) UNIQUE
);

create table IF NOT exists author (
	author_id serial primary key,
	author_name varchar(30) not null UNIQUE
);

create table IF NOT exists genre_author (
	genre_author_id serial primary key,
	genre_id int not null REFERENCES genre(genre_id),
	author_id int not null references author(author_id)
);

create table IF NOT exists album (
	album_id serial primary key,
	name varchar(30) not null,
	release_year date not null,
	constraint check_ry check(release_year > '1800-01-01')
);

create table IF NOT exists author_album (
	author_album_id serial primary key,
	author_id int not null references author(author_id),
	album_id int not null references album(album_id)
);

create table IF NOT exists song (
	song_id serial primary key,
	name varchar(30) not null,
	duration int not null ,
	album_id int not null references album(album_id)
);

create table IF NOT exists compilation (
	compilation_id serial primary key,
	name varchar(30) not null,
	release_year date not null,
	constraint check_ry check(release_year > '1800-01-01')
);

create table if not exists song_compilation (
	song_compilation_id serial primary key,
	song_id int not null references song(song_id),
	compilation_id int not null references compilation(compilation_id)
);

