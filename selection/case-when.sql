select
    employee_id as kode_karyawan,
    commission_pct as besar_komisi,
    case    
        when COALESCE(commission_pct, 0) = 0 
            then 'Tidak memiliki komisi'
        when COALESCE(commission_pct, 0) between 0.2 and 0.4
            then 'Komisi lebih besar dari 0.2 sampai 0.4'
        when COALESCE(commission_pct, 0) < 0.2
            then 'komisi lebih kecil dari 0.2'
        else 
            concat('Memiliki komisi sebesar ', commission_pct)
    end as deskripsi
from 
    employees;