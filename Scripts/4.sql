select album.name
from album
	join author_album using(album_id)
	join author using(author_id)
	join genre_author using(author_id)
group by album.name
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
where song.duration = (
	select min(duration)
	from song
	);


select author_name
  from author
	   join author_album using(author_id)
	   join album using(album_id)
	   join song using(album_id)
 where song.duration	= (
	select min(duration)
	from song
);

/* Названия альбомов, содержащих наименьшее количество треков. */
/* не знаю как докрутить */
select album.name
from album
	join author_album using(album_id)
	where album_id in (
 		select min(song_count) as min_song_count
 		from (
 			select count(album_id) as song_count
 			from song
 			group by album_id
 		) query_in
 	);
