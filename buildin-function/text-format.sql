select 
    employee_id as kode,
    initcap(first_name) as nama_depan_initcap,
    upper(last_name) as nama_belakang_capital,
    length(last_name) as jumlah_nama_belakang,
    concat(first_name, ' ', last_name) as nama_lengkap,
    to_char(salary, 'FM999,999') as gaji_perbulan
from employees
limit 10;