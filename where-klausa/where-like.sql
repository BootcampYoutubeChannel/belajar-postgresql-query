select 
    employee_id, 
    last_name,
    salary,
    commission_pct
from employees
where last_name not like '_a%';