select
    employee_id as kode,
    first_name as nama_depan,
    department_id as divisi,
    salary as gaji_bulanan,
    manager_id as manager
from employees
where 
    (department_id = 100 or 
    manager_id = 108) and 
    salary >= 9000;