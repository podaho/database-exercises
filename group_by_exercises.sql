use employees;

select distinct title from titles order by title;

select title, count(*) as 'count' from titles group by title order by title;

select last_name from employees where last_name like 'e%e' GROUP BY last_name;

select concat(last_name, ' ', first_name) as 'full name', count(*) as 'count' from employees where (last_name like 'E%' and last_name like '%e') group by concat(last_name, ' ', first_name) order by concat(last_name, ' ', first_name);

select last_name, count(*) as 'count' from employees where (last_name like '%q%' or last_name like '%Q%') AND last_name not like '%Qu%' AND last_name not like '%qu%' group by last_name;

select count(*), gender from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') group by gender;