select
    employee_id as kode,
    first_name as nama_depan,
    department_id as kode_divisi,
    manager_id as kode_manager
from employees
where 
    department_id = 90 and 
    manager_id = 100;