select employee_id, last_name, salary, department_id
from employees 
where department_id not in (10, 90, 20);