--Section D 
create or replace function namer(arg1 int) returns varchar(15) 
language plpgsql 
as $store$ 
declare store varchar(15); 
begin 
select case 
when arg1 = 1 then 'Move Gallery' 
when arg1 = 2 then 'Blockbuster' 
end into store; 
return store; 
end; 
$store$; 
