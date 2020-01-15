select 
    employee.employee_id as employee_id,
    concat(employee.first_name, ' ', employee.last_name) as employee_name,
    manager.employee_id as manager_id,
    concat(manager.first_name, ' ', manager.last_name) as manager_name
from 
    employees employee left join employees manager on (manager.employee_id = employee.manager_id);
