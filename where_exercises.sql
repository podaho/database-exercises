use employees;

select 'Employees with first names ''Irena'', ''Vidya'', or ''Maya''' as '';
select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';

select 'Employees whose last name starts with or ends with ''E''' as '';
select * from employees where last_name like 'E%' or last_name like '%e';

select 'Employees whose last name starts with and ends with ''E''' as '';
select * from employees where last_name like 'E%' and last_name like '%e';

select 'Employees hired in the 90s and born on Christmas' as '';
SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) like '199%' and birth_date like '%-12-25';

select 'Employees with a ''q'' in their last name' as '';
select * from employees where (last_name like '%q%' or last_name like '%Q%') AND last_name not like '%Qu%' AND last_name not like '%qu%';
