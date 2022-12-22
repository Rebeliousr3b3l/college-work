--Section E 
create or replace function updater() returns trigger as $$ 
begin 
truncate table summary; 
insert into summary(store, rentals) 
(select store, count(*) from detailed_report group by store); 
return null; 
end; 
$$ language plpgsql; 
 
 
create trigger updater 
after insert or delete on detailed_report 
for each statement 
execute function updater(); 
