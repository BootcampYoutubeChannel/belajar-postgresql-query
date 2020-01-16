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


-- salary group min salary 5000, max salary 16000
select 
    round(avg(j.max_salary)) as gaji_rata 
from jobs j 
group by j.job_id
having avg(j.max_salary) < 20000
order by gaji_rata;

select
    e.employee_id as nik,
    e.first_name as nama,
    e.salary as gaji_sebulan
from 
    employees e
where 
    e.salary < any (
        select 
            round(avg(j.max_salary)) as gaji_rata 
        from jobs j 
        group by j.job_id
        having avg(j.max_salary) < 20000
    )
order by gaji_sebulan;

