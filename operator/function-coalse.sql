select 
    COALESCE(commission_pct, 0) commission_pct,
    salary,
    COALESCE(commission_pct, 0) * salary as commission_salary
from employees;