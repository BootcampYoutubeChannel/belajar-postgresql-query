select  
    to_char(sum(salary), 'FM999,999') as total_salary,
    to_char(min(salary),'FM999,999') as minimal_salary,
    to_char(max(salary),'FM999,999') as maximum_salary,
    to_char(count(salary),'FM999,999') as count_rows,
    to_char(avg(salary),'FM999,999') as average_salary
from employees
where employee_id in (132,128 , 136, 127, 135, 140, 144, 119, 131, 182);