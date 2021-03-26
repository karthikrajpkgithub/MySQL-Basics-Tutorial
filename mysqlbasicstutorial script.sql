create database mysqltutorial;
show tables;
DESCRIBE employee_table;  
ALTER TABLE employee_table
ADD place varchar(100) NOT NULL  
AFTER jobtitle,  
ADD salary int NOT NULL  
AFTER age ;
create table testtable(
testname varchar(30) not null) ;
ALTER TABLE  testtable RENAME TO newtable;
ALTER TABLE newtable   
ADD Id int PRIMARY KEY NOT NULL,     
ADD Name varchar(45) NOT NULL,     
ADD Product varchar(45) DEFAULT NULL,         
ADD Year int NOT NULL    
;    
INSERT INTO newtable ( Id, contactname, Product,  Year)     
VALUES (1, 'Stephen', 'Computer',  2015),     
(2, 'Joseph', 'Laptop', 2016),     
(3, 'John', 'TV', 2016),    
(4, 'Donald', 'Laptop', 2015),    
(5, 'Joseph', 'Mobile', 2015),    
(6, 'Peter', 'Mouse', 2016); 

SELECT* FROM 	newtable;
TRUNCATE	table	newtable;

select* FROM	newtable	where	Year='2015';

select * from	newtable	WHERE	Year='2015'
order by Product	desc;

select	*	FROM	newtable
group by	Year;