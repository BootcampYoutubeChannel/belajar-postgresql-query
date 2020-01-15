select 
    l.location_id,
    c.country_id,
    c.country_name,
    l.city,
    l.state_province
from 
    locations l natural join countries c;