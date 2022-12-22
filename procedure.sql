--Section F 
 
--This procedure should be ran weekly via a cron job on a Linux system. This is to ensure all data is captured after a whole week's worth of rentals. 
 
--This procedure should be ran by using 'call report_gen('date')', with 'date' containing the end of the week the report should be created for. 
create or replace procedure report_gen(arg1 date) 
language plpgsql 
as $$ 
begin 
truncate table detailed_report; 
truncate table summary; 
insert into detailed_report(rental_id, rental_date, store) 
(select r.rental_id, r.rental_date, namer(s.store_id) 
from rental r 
inner join staff s on s.staff_id = r.staff_id 
where cast(r.rental_date as date) <= arg1 and cast(r. rental_date as date)>= arg1 - interval '7 days'); 
end; $$;
