create table detailed_report ( 
rental_id int, 
rental_date timestamp without time zone, 
store varchar(15), 
primary key (rental_id) 
); 
 
create table summary ( 
store varchar(15), 
rentals int, 
primary key (store) 
); 
