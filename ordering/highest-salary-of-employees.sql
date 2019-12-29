select
    employee_id as kode,
    first_name as nama_depan,
    salary as gaji,
    department_id as kode_divisi
from employees
where department_id = 90
order by salary desc;