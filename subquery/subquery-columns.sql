select
    e.employee_id as nik,
    e.first_name as nama,
    (select j.job_title from jobs j where j.job_id = e.job_id) as jabatan,
    (select j2.min_salary from jobs j2 where j2.job_id = e.job_id) as minimun_salary
from employees e
limit 10;