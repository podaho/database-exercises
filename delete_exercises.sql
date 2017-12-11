use codeup_test_db;

select 'Albums Released Later than 1991' as '';

select * from albums where release_date > 1991;

delete from albums where release_date > 1991;



select 'Albums with a Genre of Disco' as '';

select * from albums where genre like '%disco%' or genre like '%Disco%';

delete from albums where genre like '%disco%' or genre like '%Disco%';



select 'Albums by Whitney Houston' as '';

select * from albums where artist = 'Whitney Houston';

delete from albums where artist = 'Whitney Houston';