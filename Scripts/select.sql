select name, duration
from song
where duration = (select max(duration) from song);

select name
from song
where duration >= '00:03:30';

select name from compilation
where release_year between '2018-01-01' and '2021-01-01';

select author_name from author
where author_name not like '_% _%' and author_name is not null;

select name from song
where name like '%Me%';