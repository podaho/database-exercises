use codeup_test_db;

select name from albums where artist = 'Pink Floyd';

select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre from albums where name = 'Nevermind';

select * from albums where release_date between 1990 and 1999;

select * from albums where sales < 40000000;

select * from albums where genre like '%rock%' OR genre like '%Rock%';