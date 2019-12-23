select 
    employee_id, 
    salary as gaji_bulanan,
    salary * 0.1 as delta,
    salary + (salary * 0.1) as salary_delta
from employees;