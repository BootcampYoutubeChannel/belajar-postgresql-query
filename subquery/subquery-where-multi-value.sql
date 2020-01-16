select
    e.employee_id as nik,
    e.first_name as nama,
    e.salary as gaji_sebulan
from 
    employees e
where 
    e.salary in (select j.max_salary from jobs j);

select
    e.employee_id as nik,
    e.first_name as nama,
    e.salary as gaji_sebulan
from 
    employees e
where 
    e.salary = any (select j.max_salary from jobs j);