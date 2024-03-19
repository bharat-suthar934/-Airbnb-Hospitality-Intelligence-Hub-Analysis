show databases;
use test;
show tables;
select *from sql_airbnb_listing sal ;
select *from sql_airbnb_review sar ;

#2. Q2 Write a query to show names from Listings table 
show tables;
select *from sql_airbnb_listing sal ;
select * from sql_airbnb_review sar ;
use purvita;
show tables;


#3. Write a query to fetch total listings from the listings table 
select count(calculated_host_listings_count) from sql_airbnb_listing sal ; 

#4. Write a query to fetch total listing_id from the booking_details table
select count(listing_id) from sql_airbnb_listing sal ; 

#5. Write a query to fetch host ids from listings table 
select sar.host_id ,sar.host_name  from sql_airbnb_review sar inner join sql_airbnb_listing sal 
	on sar.id =sal.listing_id ;

#6. Write a query to fetch all unique host name from listings table 
select distinct (sar.host_name) from sql_airbnb_review sar ;#inner join sql_airbnb_listing sal on sar.id =sal.listing_id ;

#7. Write a query to show all unique neighbourhood_group from listings table 
select distinct (neighbourhood_group) from sql_airbnb_review sar ;


#8. Write a query to show all unique neighbourhood from listings table 

select distinct (neighbourhood) from sql_airbnb_review sar ;



#9. Write a query to fetch unique room_type from listings tables 
select distinct (room_type) from sql_airbnb_review sar ;

#10. Write a query to show all values of Brooklyn & Manhattan from listings tables 

select neighbourhood_group ,count(neighbourhood_group) as All_value from sql_airbnb_review sar 
 	where (neighbourhood_group='Brooklyn' or neighbourhood_group='Manhattan')
 		group by neighbourhood_group ;


#11. Write a query to show maximum price from booking_details table 

select max(price) from sql_airbnb_listing sal ;
 

# sql airbnb project no.12,15,33,36,37,38,39,48 

#12. Write a query to show minimum price fron booking_details table 
select min(price) from sql_airbnb_listing sal ;

#13. Write a query to show average price from booking_details table 
select avg(price) from sql_airbnb_listing sal ; 

#14. Write a query to show minimum value of minimum_nights from booking_details table 
select count(minimum_nights) as Total_minimum_nights, min(minimum_nights)  from sql_airbnb_listing sal ;


#15. Write a query to show maximum value of minimum_nights from booking_details table 
select count(minimum_nights) as total_maximum_nights_value , max(minimum_nights) from sql_airbnb_listing sal ; 

#16. Write a query to show average availability_365 

select avg(availability_365) from sql_airbnb_listing sal ;

#17. Write a query to show id , availability_365 and all availability_365 values greater than 300 

select listing_id,availability_365 from sql_airbnb_listing sal 
	where (availability_365>300);

#18. Write a query to show count of id where price is in between 300 to 400 
select count(listing_id) from sql_airbnb_listing sal 
	where price between 300 and 400;


#19. Write a query to show count of id where minimum_nights spend is less than 5 
select  count(listing_id)  from sql_airbnb_listing sal 
	where minimum_nights < 5;


#20. Write a query to show count where minimum_nights spend is greater than 100 

select count(listing_id) from sql_airbnb_listing sal 
	where minimum_nights >100;


#21. Write a query to show all data of listings & booking_details 

select *from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id ;

#22. Write a query to show host name and price 
select sal.price ,sar.host_name from sql_airbnb_listing sal 
	inner join sql_airbnb_review sar 
		on sal.listing_id =sar.id ;

#23. Write a query to show room_type and price 
select sal.price ,sar.room_type from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id ;
	
#24. Write a query to show neighbourhood_group & minimum_nights spend 
select sal.minimum_nights ,sar.neighbourhood_group from sql_airbnb_listing sal 
	inner join sql_airbnb_review sar 
		on sal.listing_id =sar.id ;


#25. Write a query to show neighbourhood & availability_365 

select sal.availability_365 ,sar.neighbourhood from sql_airbnb_listing sal 
	inner join sql_airbnb_review sar 
		on sal.listing_id =sar.id ;


#26. Write a query to show total price by neighbourhood_group 
select sar.neighbourhood_group ,sum(sal.price)  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id  group by sar.neighbourhood_group ;
	
	
#27. Write a query to show maximum price by neighbourhood_group 
select sar.neighbourhood_group, max(sal.price) from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id group by sar.neighbourhood_group ;


#28. Write a query to show maximum night spend by neighbourhood_group 
select max(sal.minimum_nights) , sar.neighbourhood_group from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id group by sar.neighbourhood_group ;


#29. Write a query to show maximum reviews_per_month spend by neighbourhood 
select max(sal.reviews_per_month) ,sar.neighbourhood  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id group by sar.neighbourhood ;

#30. Write a query to show maximum price by room type 
select max(sal.price),sar.room_type  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id  group by sar.room_type ;

#31. Write a query to show average number_of_reviews by room_type 
 
select avg(sal.number_of_reviews),sar.room_type  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id group by sar.room_type ;



#32. Write a query to show average price by room type 
 
select avg(sal.price),sar.room_type  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id group by sar.room_type ;


#33. Write a query to show average night spend by room type Skills on your tips

select avg(sal.minimum_nights),sar.room_type  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id  group by sar.room_type ;

#34. Write a query to show average price by room type but average price is less than 100 

select avg(sal.price)<100 , sar.room_type  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sal.listing_id =sar.id  group by sar.room_type ;


#35. Write a query to show average night by neighbourhood and average_nights is greater than 5 

select avg(sal.minimum_nights)<5 ,avg(sal.minimum_nights),  sar.neighbourhood  
	from sql_airbnb_listing sal inner join sql_airbnb_review sar 
		on sal.listing_id =sar.id  group by sar.neighbourhood;


#36. Write a query to show all data from listings where price is greater than 200 using sub-query. 

	select *from sql_airbnb_listing sal  where price in (select price from sql_airbnb_listing sal2 where price>200);
	

#37. Write a query to show all values from booking_details table where host id is 314941 using sub-query. 

	select *from sql_airbnb_review sar where host_id in (select host_id from sql_airbnb_review sar2  where host_id=314941);

#38. Find all pairs of id having the same host id, each pair coming once only. 


	select sal.listing_id,sar.host_id from sql_airbnb_review sar 
		inner join  sql_airbnb_listing sal on sal.listing_id=sar.host_id;


select id,host_id from sql_airbnb_listing sal inner join sql_airbnb_review sar on sal.listing_id =sar.id ;

#39. Write an sql query to show fetch all records that have the term cozy in name 

select *from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sar.id =sal.listing_id where sar.name  like "%cozy%";

#40. Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group

select sal.price ,sar.host_id ,sar.neighbourhood_group from sql_airbnb_listing sal inner join sql_airbnb_review sar 
	on sar.id =sal.listing_id where sar.neighbourhood_group ="manhattan";

#41. Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, 
#also make sure price is greater than 100 

select sar.id ,sal.price ,sar.host_name ,sar.neighbourhood 
	from sql_airbnb_listing sal inner join sql_airbnb_review sar 
		on sar.id =sal.listing_id where sar.neighbourhood in ("Upper West Side","williamsburg") and sal.price >=100;

#42. Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant 

	select *from sql_airbnb_listing sal inner join sql_airbnb_review sar 
		on sal.listing_id =sar.id  where sar.host_name ="Elise" and  sar.neighbourhood ="Bedford-stuyvesant";


#43. Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights 
	select sal.minimum_nights ,sal.availability_365 ,sar.host_name 
		from sql_airbnb_listing sal inner join sql_airbnb_review sar 
			on sal.listing_id =sar.id where sal.availability_365 > 100 and sal.minimum_nights > 100;


#44. Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that 
#records where number of reviews are 500+ and review per month is 5+ 

	select sar.id ,sar.host_name , sal.number_of_reviews ,sal.reviews_per_month 
		from sql_airbnb_listing sal left join sql_airbnb_review sar 
			on sal.listing_id =sar.id where sal.number_of_reviews >500 and sal.reviews_per_month >5;

#45. Write a query to show neighbourhood_group which have most total number of review 

select max(sal.number_of_reviews),sar.neighbourhood_group  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
on sal.listing_id =sar.id group by sar.neighbourhood_group  ;

#46. Write a query to show host name which have most cheaper total price
select sar.host_name,min(sal.price) as price from sql_airbnb_listing sal inner join sql_airbnb_review sar 
on sar.id =sal.listing_id  group by sar.host_name order by sal.price;


#47. Write a query to show host name which have most costly total price 

select sar.host_name ,sal.price from sql_airbnb_listing sal inner join sql_airbnb_review sar 
on sar.id =sal.listing_id order by sal.price desc limit 1;


#48. Write a query to show host name which have max price using sub-query 

	select sar.host_name ,max(sal.price) from sql_airbnb_listing sal left join sql_airbnb_review sar 
		on sal.listing_id =sar.id  order by sal .price desc limit 3;
	
	
	select host_name, max(price) from sql_airbnb_listing sal  
		left join sql_airbnb_review sar   on sar.id =sal.listing_id 
			group by host_name order by(max(price))desc limit 3 ;
		
		
		
		select host_name,price from  sql_airbnb_review sar   inner join  sql_airbnb_listing sal 
		on sal.listing_id =sar.id where price in (select max(price) from sql_airbnb_review sar2);
		
		
	select *from sql_airbnb_listing sal ;

#49. Write a query to show neighbourhood_group where price is less than 100 

select sar.neighbourhood_group,sal.price  from sql_airbnb_listing sal inner join sql_airbnb_review sar 
on sal.listing_id =sar.id where price < 100;


#50. Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price. 

	select max(sal.price),avg(sal.availability_365),sar.room_type  
		from sql_airbnb_listing sal inner join sql_airbnb_review sar 
			on sal.listing_id =sar.id group by sar.room_type order by max(sal.price) ;


# sql airbnb project no.12,15,33,36,37,38,39,48 
