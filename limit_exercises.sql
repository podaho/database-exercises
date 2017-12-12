use employees;

select distinct last_name from employees order by last_name desc limit 10;

SELECT * FROM employees WHERE hire_date like '199%' and birth_date like '%-12-25' ORDER BY birth_date, hire_date DESC limit 5;