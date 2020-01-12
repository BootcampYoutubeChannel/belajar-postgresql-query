select  
    sum(salary) as total_salary,
    min(salary) as minimal_salary,
    max(salary) as maximum_salary,
    count(salary) as count_rows,
    avg(salary) as average_salary
from employees
where employee_id in (132,128 , 136, 127, 135, 140, 144, 119, 131, 182);