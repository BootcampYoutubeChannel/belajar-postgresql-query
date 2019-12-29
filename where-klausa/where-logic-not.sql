select employee_id, last_name, department_id, salary
from employees
where salary not between 8000 and 20000;

select employee_id, last_name, salary, department_id
from employees 
where department_id not in (10, 90, 20);

select employee_id, last_name, salary, commission_pct
from employees
where commission_pct is not null;

select 
    employee_id, 
    last_name,
    salary,
    commission_pct
from employees
where last_name not like '_a%';