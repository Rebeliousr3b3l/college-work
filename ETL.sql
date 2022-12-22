--Section C 
select r.rental_id, r.rental_date, namer(s.store_id) 
from rental r 
inner join staff s on s.staff_id = r.staff_id 
where cast(r.rental_date as date) <= '2005-06-21' and cast(r. rental_date as date)>= '2005-06-14'; 
