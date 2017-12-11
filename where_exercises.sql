use employees;

select 'Employees with first names ''Irena'', ''Vidya'', or ''Maya''' as '';
select * from employees where first_name in ('Irena', 'Vidya', 'Maya');

select 'Employees whose last name starts with ''E''' as '';
select * from employees where last_name like 'E%';

select 'Employees hired in the 90s' as '';
SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) like '199%';

select 'Employees born on Christmas' as '';
select * from employees where birth_date like '%-12-25';

select 'Employees with a ''q'' in their last name' as '';
select * from employees where last_name like '%q%' or last_name like '%Q%';
