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

select
    d.department_id as kode_department,
    d.department_name as nama_department,
    d.location_id as department_location_id,
    l.location_id as location_id,
    l.street_address as alamat
from 
    locations l inner join departments d on (l.location_id = d.location_id);


select
    d.department_id as kode_department,
    d.department_name as nama_department,
    e.employee_id as kode_karyawan,
    concat(e.first_name, ' ', e.last_name) as nama_karyawan
from 
    employees e inner join departments d on (e.department_id = d.department_id);
