use quiz_app_db;

drop table IF EXISTS solution;
drop table IF EXISTS user_quiz_answers;
drop table IF EXISTS questions;
drop table IF EXISTS users_quiz;
drop table if EXISTS quiz;
drop table IF EXISTS users;

create table users (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) not null,
  last_name VARCHAR(30) not null,
  account VARCHAR(16) not null,
  password VARCHAR(16) not null,
  email VARCHAR(30) not null,
  admin CHAR(1) not null DEFAULT 'F',
  deleted CHAR(1) DEFAULT 'F',
  unique (account)
);

create table quiz (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  creator_id int unsigned not null,
  quiz_title VARCHAR(200),
  CONSTRAINT quiz_to_user FOREIGN KEY (creator_id) REFERENCES users (id)
);

create table users_quiz (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  user_id int unsigned not null,
  quiz_id int unsigned not null,
  score int not null,
  CONSTRAINT users_quiz_to_user FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT users_quiz_to_quiz FOREIGN KEY (quiz_id) REFERENCES quiz (id)
);


create table questions (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  quiz_id int unsigned not null,
  question_content TEXT not NULL,
  CONSTRAINT questions_to_quiz FOREIGN KEY (quiz_id) REFERENCES quiz (id)
);

create table user_quiz_answers (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  user_quiz_id int unsigned not null,
  question_id int unsigned not null,
  ans_content TEXT,
  CONSTRAINT user_quiz_answers_to_user_quiz FOREIGN KEY (user_quiz_id) REFERENCES users_quiz (id),
  CONSTRAINT user_quiz_answers_to_questions FOREIGN KEY (question_id) REFERENCES questions (id)
);

create table solution (
  id int unsigned not null AUTO_INCREMENT PRIMARY KEY,
  question_id int unsigned not null,
  solution_content TEXT,
  CONSTRAINT solution_to_question FOREIGN KEY (question_id) REFERENCES questions (id)
);

select count(*) as 'Quiz Grade'
from users u
join users_quiz uq
on u.id = uq.user_id
join user_quiz_answers uqa
on uq.id = uqa.user_quiz_id
join questions q
on uqa.question_id = q.id
join solution s
on q.id = s.question_id
where s.solution_content = uqa.ans_content
and q.quiz_id = 1 #change specifications here
and u.id = 1; #change specifications here

select count(*) as 'Number of Test Takers'
from users_quiz as uq
where uq.id = 1;