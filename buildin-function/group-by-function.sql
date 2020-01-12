select
    department_id as dep_id,
    salary as group_salary,
    count(employee_id) as employee_rows
from employees
group by department_id, salary
order by dep_id;