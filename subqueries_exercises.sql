select *
from employees e
where e.hire_date in (
  select e1.hire_date
  from employees e1
  where e1.emp_no = 101010
);

select t.title, count(*)
from titles t
where t.emp_no in (
  select e.emp_no
  from employees e
  where e.first_name = 'Aamod'
)
group by t.title;

select e.first_name, e.last_name
from employees e
where e.emp_no in (
  select dm.emp_no
  from dept_manager dm
  where dm.to_date = '9999-01-01'
) and e.gender = 'F';

select d.dept_name
from departments d
where d.dept_no in (
  select dm.dept_no
  from dept_manager dm
  where dm.to_date = '9999-01-01'
  and dm.emp_no in (
    select e.emp_no
    from employees e
    where e.gender = 'F'
  )
)
order by d.dept_name;

