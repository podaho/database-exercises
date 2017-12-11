use employees;

select DISTINCT title from titles;

select title from titles group by title;

select last_name from employees where (last_name like 'E%' and last_name like '%e') GROUP BY last_name;

select distinct first_name, last_name from employees where (last_name like 'E%' and last_name like '%e');

select distinct last_name from employees where (last_name like '%q%' or last_name like '%Q%') AND last_name not like '%Qu%' AND last_name not like '%qu%';