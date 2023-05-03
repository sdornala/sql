create database cars ;

use cars;
create table service_history
(customer_id int  , customer_name varchar(20) ,VIN_NUMBER int ,  last_service_miles int primary key, progress varchar(20) );

insert into service_history values
(305 , "rupa", 2347 , 6000, "pending" ), (408 , "alex", 234587 , 5000 , "in_progress"),(468 , "divya", 234587 , 3000 , "done"),(562 , "roman", 5181 , 2000,"pending" )

,(197 , "divya", 23777 , 4000, "done" ),
(457 , "sai", 235437 , 10000 , "done"),(1739 , "sai", 26578 , 12000 , "done");

select * from service_history;

select * from service_history order by last_service_miles;


update service_history
set progress = "pick_up_tommorow"
where last_service_miles< 5000 ;

update service_history
set progress = "servicing_done"
where last_service_miles > 5000 ;

update service_history
set progress = "pick_in_20mins"
where last_service_miles = 5000 ;

delete from service_history where last_service_miles > 5000;

replace service_history (customer_id , customer_name , VIN_NUMBER , last_service_miles , progress)
 values (65277, 'sam' , 67899 , 1000 , 'no');
 
 
 delete from service_history where last_service_miles=10000 ;
 