select
    emp.employee_id as id,
    dep.department_id as id_department,
    dep.department_name as name_department,
    concat(emp.first_name, ' ', emp.last_name) as fullname
from 
    employees emp join departments dep on (emp.employee_id = dep.manager_id)
limit 10;

select
    emp.employee_id as id,
    dep.department_id as id_department,
    dep.department_name as name_department,
    concat(emp.first_name, ' ', emp.last_name) as fullname
from 
    employees emp, departments dep 
where emp.employee_id = dep.manager_id
limit 10;