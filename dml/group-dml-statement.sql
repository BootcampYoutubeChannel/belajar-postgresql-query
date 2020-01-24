begin;

insert into regions (region_id, region_name) 
values (5, 'Asia Tengara'), (6, 'Oceania');

savepoint insert_1;

delete from regions 
where region_id = 6;

rollback to insert_1;

commit;