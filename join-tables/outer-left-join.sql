select
    d.department_id as kode_department,
    d.department_name as nama_department,
    d.location_id as department_location_id,
    l.location_id as location_id,
    l.street_address as alamat
from 
    locations l left join departments d on (l.location_id = d.location_id);