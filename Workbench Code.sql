create schema project;
use project;
select * from Mobile;
-- Checkout mobile features and Price list --
select Phone_name, price from Mobile;

-- Find out the price of 5 most expensive phones --
select * from Mobile 
order by price desc 
limit 5;

-- Find out the price of 5 most cheapest phones --
select * from Mobile
order by price asc
limit 5; 

-- List of Top 5 Samsung Phons with price an all feathures --
select * from Mobile where brands="samsung"
order by price desc
limit 5;

--  Must have android phones list then Top 5 high price android phones --
select * from Mobile where Operating_system_type = "Android"
order by price desc
limit 5;

-- -- 
--  Must have android phones list then Top 5 lower price android phones --
select * from Mobile where Operating_system_type = "Android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 High price IOS phones --
select * from Mobile where Operating_system_type = "IOS"
order by price desc
limit 5;

-- Must have IOS phone list then top 5 Lower price IOS phones --
select * from Mobile where Operating_system_type = "IOS"
order by price asc
limit 5; 

-- Write a query which phone support 5g and also Top 5 phones with 5g support-- 
select * from Mobile where 5g_availability = "Yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name --
select brands, sum(price) from mobile group by brands;  
