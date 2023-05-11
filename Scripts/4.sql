select album.name
from album
	join author_album using(album_id)
	join author using(author_id)
	join genre_author using(author_id)
group by album.name, author_album.author_id
having count(genre_author.author_id) > 1;

select song.name
from song
	left join song_compilation using(song_id)
where song_compilation.song_id is null;

select author_name
from author
	join author_album using(author_id)
	join album using(album_id)
	join song using(album_id)
where song.duration =
(
	select min(duration)
	from song
);


select author_name
  from author
	   join author_album using(author_id)
	   join album using(album_id)
	   join song using(album_id)
 where song.duration =
(
	select min(duration)
	from song
);

select album.name
from album
	join song using(album_id)
group by album_id
having count(album_id) =
(
	select count(album_id)
	from song
	group by album_id
	order by 1
	limit 1
);