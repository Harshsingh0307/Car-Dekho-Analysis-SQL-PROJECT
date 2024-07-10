Create database cars;

-- Read the data ?
SELECT * FROM cars.`car dekho`;

-- Q2 Total Cars , to get a count of total cars ? 

Select count(*) from cars.`car dekho`;	

-- Q3 The manager asked the Employee how many cars will be available in 2023?
	Select count(*) from cars.`car dekho` where year=2023;
    
-- Q4 The manager asked the Employee how many cars is available in 2020,2021,2022?
Select count(*) from cars.`car dekho` where year in (2020,2021,2022) 
group by year;

-- Q5 the client asked me to print the total  of all cars by year . I don't see all the details ?
Select year , count(*) from  cars.`car dekho` group by year;

-- Q6 The client asked to car dealer agent how many diesel cars  will there be in 2020? 
Select count(*) from cars.`car dekho` where year = 2020 and fuel ='Diesel';

-- Q7 The client requested the car dealer that how many petrol cars will be there in 2020?
Select count(*) from cars.`car dekho` where year= 2020 and fuel = 'Petrol';

-- Q8 The manager told the employee to give the print of all the fuel cars (petrol ,diesel and CNG ) come by all year?
Select year, count(*) as Petrol_car from  cars.`car dekho` where fuel = 'Petrol' group by year;
Select year, count(*) as Diesel_car from  cars.`car dekho` where fuel = 'diesel' group by year;
Select year, count(*) as CNG_car from  cars.`car dekho` where fuel = 'CNG' group by year;

-- Q9 Manager said there were more than 100 cars in a given year , which year had more than 100 cars ? 
Select year, count(*) from  cars.`car dekho` group by year  
having count(*)>100;


-- Q10 The manager said to employee all cars count between 2015 and 2023 ,we need a complete list ? 
Select  count(*) from  cars.`car dekho` 
 where year between 
 2015 and 2023 ;
 
 
 -- Q 11  The manager said to employee all car Details between 2015 and 2023 ,we need a complete list ? 
 Select  * from  cars.`car dekho` 
 where year between 
 2015 and 2023 ;
 
 
 

 



