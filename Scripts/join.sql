select genre_name, count(author_id)
from genre
	left join genre_author on genre.genre_id = genre_author.genre_id
group by genre.genre_id;

select count(song.name)
from song
	join album on song.album_id = album.album_id
where album.release_year between '2019-01-01' and '2020-12-31';

select album.name ,avg(duration)
from album
	join song on album.album_id = song.album_id
group by album.name;

select author_name
from author
where author_name not in
	(
	select author_name
	from author
		join author_album on author.author_id = author_album.author_id
		join album on author_album.album_id = album.album_id
		where album.release_year between '2020-01-01' and '2020-12-31'
);

select compilation.name
from compilation
	join song_compilation using(compilation_id)
	join song using(song_id)
	join album using(album_id)
	join author_album using(album_id)
	join author using(author_id)
where author_name = 'Тейлор Свифт';


