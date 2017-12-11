use employees;

select distinct last_name from employees order by last_name desc limit 10;

SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) like '199%' and birth_date like '%-12-25' order by hire_date DESC, birth_date limit 45, 5;