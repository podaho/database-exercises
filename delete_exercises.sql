use codeup_test_db;

select * from albums where release_date > 1991;

delete from albums where release_date > 1991;

select * from albums where genre like '%disco%' or genre like '%Disco%';

delete from albums where genre like '%disco%' or genre like '%Disco%';

select * from albums where artist = 'Whitney Houston';

delete from albums where artist = 'Whitney Houston';