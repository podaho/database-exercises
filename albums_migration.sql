USE codeup_test_db;

drop table if exists albums;
create table albums (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(50),
  name VARCHAR(100) not null,
  release_date int,
  sales FLOAT,
  genre VARCHAR(50)
);