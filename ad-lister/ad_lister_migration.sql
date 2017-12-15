use ad_lister_db;

drop table if exists ads_category;
drop table if exists ads;
drop table if exists category;
drop table if exists users;

create table users (
  id int unsigned not null AUTO_INCREMENT primary key,
  account VARCHAR(16) not null,
  password VARCHAR(16) not null,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  email VARCHAR(30) not null,
  deleted CHAR(1) DEFAULT 'F',
  unique (account)
);

create table category (
  id int unsigned not null AUTO_INCREMENT primary key,
  cat_name VARCHAR(20) not null,
  UNIQUE (cat_name)
);

create table ads (
  id int unsigned not null AUTO_INCREMENT primary key,
  user_id int unsigned not null,
  title VARCHAR(100) not null,
  description VARCHAR(255),
  deleted CHAR(1) DEFAULT 'F',
  CONSTRAINT `ads_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

create table ads_category (
  id int unsigned not null AUTO_INCREMENT primary key,
  ad_id int unsigned not null,
  cat_id int unsigned not null,
  constraint `ads_category_to_ads` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`),
  constraint `ads_category_to_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`)
);

select a.title as 'Ad Title', u.email as 'Ad Owner Email'
from ads a
join users u
on u.id = a.user_id
where a.id = 1; #change specifications here

select c.cat_name as 'Categories'
from category c
join ads_category ac
on c.id = ac.cat_id
join ads a
on ac.ad_id = a.id
where a.id = 1; #change specifications here

select a.*
from ads a
join ads_category ac
on a.id = ac.ad_id
join category c
on ac.cat_id = c.id
where c.cat_name = 'funny'; #change specifications here

select a.*
from ads a
join users u
on a.user_id = u.id
where u.id = 1; #change specifications here