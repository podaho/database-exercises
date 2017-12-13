use employees;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
  join dept_manager as dm
    on d.dept_no = dm.dept_no
  join employees as e
    on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
  join dept_manager as dm
    on d.dept_no = dm.dept_no
  join employees as e
    on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

select t.title as Title, count(*) as Count
from titles as t
join employees as e
on t.emp_no = e.emp_no
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where d.dept_name = 'Customer Service' and t.to_date = '9999-01-01' and de.to_date = '9999-01-01'
group by t.title;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as Name, s.salary as Salary
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no
join salaries as s
on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
ORDER BY d.dept_name;

select concat(e1.first_name, ' ', e1.last_name) as 'Employee Name', d.dept_name as 'Department Name', concat(e2.first_name, ' ', e2.last_name)
from employees as e1
join dept_emp as de
on e1.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e2
on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
order by d.dept_name;
