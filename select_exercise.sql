use codeup_test_db;
select 'All Albums from Pink Floyd' as '';
select name from albums where artist = 'Pink Floyd';

select 'The Release Date of Sgt. Pepper''s Lonely Hearts Club Band' as '';
select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'The genre of the album Nevermind' as '';
select genre from albums where name = 'Nevermind';

select 'Albums released in the 90s' as '';
select * from albums where release_date between 1990 and 1999;

select 'All Albums with a sales less than 40 million' as '';
select * from albums where sales < 40000000;

select 'Albums with a Genre of Rock' as '';
select * from albums where genre like '%rock%' OR genre like '%Rock%';