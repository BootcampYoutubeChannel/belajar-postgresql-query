select 
    employee_id,
    start_date,
    end_date,
     end_date - start_date as waktu_kerja
from job_history;