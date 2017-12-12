use employees;

-- select 'Employees with first names ''Irena'', ''Vidya'', or ''Maya''' as '';
-- -- select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M' order by first_name;
-- select * from employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M' order by last_name, first_name;
--
-- select 'Employees whose last name starts with or ends with ''E''' as '';
-- select * from employees where last_name like 'E%' or last_name like '%e' ORDER BY emp_no DESC;

select 'Employees whose last name starts with and ends with ''E''' as '';
select concat(first_name, ' ', last_name) from employees where last_name like 'e%e' GROUP BY concat(first_name, ' ', last_name);

select 'Employees hired in the 90s and born on Christmas' as '';
SELECT concat(first_name, ' ', last_name) as fullname, datediff(hire_date, curdate()) as time_worked_in_company_in_days FROM employees WHERE EXTRACT(YEAR FROM hire_date) like '199%' and birth_date like '%-12-25' order by hire_date DESC, birth_date;

-- select 'Employees with a ''q'' in their last name' as '';
-- select * from employees where (last_name like '%q%' or last_name like '%Q%') AND last_name not like '%Qu%' AND last_name not like '%qu%' order by birth_date;
