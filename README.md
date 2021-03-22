# MySQL Tutorial

## Create database
> Database name is "mysqltutorial"
```
CREATE DATABASE mysqltutorial;
```

## Create table
> Table name is "employee_table" with the columns as ID,Name,Job Title,Age
```
CREATE TABLE `mysqltutorial`.`employee_table` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `job title` VARCHAR(45) NOT NULL,
  `age` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
```
## Show table
> notes
```
SHOW TABLES;
```
## Describe table
> notes
```
DESCRIBE employee_table;
```
## Alter table + Rename column
> notes
```
ALTER TABLE `mysqltutorial`.`employee_table` 
CHANGE COLUMN `job title` `jobtitle` VARCHAR(45) NOT NULL ;
```
## Add multiple columns
> notes
```
ALTER TABLE employee_table
ADD place varchar(100) NOT NULL  
AFTER jobtitle,  
ADD salary int NOT NULL  
AFTER age ;
```
## Again creating table & Renaming the same
> notes
```
create table testtable(
testname varchar(30) not null) ;
```
> notes
```
ALTER TABLE  testtable RENAME TO newtable;
```
## Adding columns
> notes
```
ALTER TABLE newtable   
ADD Id int PRIMARY KEY NOT NULL,     
ADD Name varchar(45) NOT NULL,     
ADD Product varchar(45) DEFAULT NULL,         
ADD Year int NOT NULL    
;    
```
## Rename column
> notes
```
ALTER TABLE `mysqltutorial`.`newtable` 
CHANGE COLUMN `Name` `Contactname` VARCHAR(45) NOT NULL ; 
```
## Drop a column
> notes
```
ALTER TABLE `mysqltutorial`.`newtable` 
DROP COLUMN `testname`;

```
## Insert values to our 2nd table "newtable"
> notes
```
INSERT INTO newtable ( Id, contactname, Product,  Year)     
VALUES (1, 'Stephen', 'Computer',  2015),     
(2, 'Joseph', 'Laptop', 2016),     
(3, 'John', 'TV', 2016),    
(4, 'Donald', 'Laptop', 2015),    
(5, 'Joseph', 'Mobile', 2015),    
(6, 'Peter', 'Mouse', 2016); 
```
## View - Truncate - View
> notes
```
SELECT* FROM 	newtable;

TRUNCATE	table	newtable;

SELECT* FROM 	newtable;
```
