-- row count all data
select count(*) from employees;

-- select data
select 
    employee_id, 
    last_name, 
    salary
from employees 
limit 10 offset 20;