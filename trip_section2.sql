Insert Statement
insert into transportation(id,to_,from_,type,price) values(3,'washington','new york','Train',300) 

update statement

update service set activity_id = 1 where id = 1

delete statement

delete from deal where id = 3

order by 

SELECT * FROM trip_managment_system.customer order by name;

filter condition where 

SELECT * FROM trip_managment_system.package where net_amount <2000;

join statement

SELECT * FROM trip_managment_system.customer c
join trip_managment_system.deal d 
on c.id = d.cust_id
join trip_managment_system.service s on d.service_id = s.id;

Aggerate statements

SELECT max(net_amount) as max_trip FROM trip_managment_system.package 

SELECT avg(price) as avg_acc FROM trip_managment_system.accommodation 

SELECT min(price) as min_act FROM trip_managment_system.activity 


multiple table query

select Service_accommodation.*,ac.type as activity_type from (
select s.*,a.name,a.location as accommodation_location from service as S 
join accommodation as a on s.accommodation_id = a.id
) as  Service_accommodation join activity as ac
 on Service_accommodation.activity_id = ac.id
