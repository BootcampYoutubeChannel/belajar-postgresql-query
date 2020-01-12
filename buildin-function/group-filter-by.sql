select 
    manager_id,
    count(employee_id) as jumlah_karyawan
from employees
where salary >= 8000
group by manager_id
having count(employee_id) >= 8
order by manager_id;