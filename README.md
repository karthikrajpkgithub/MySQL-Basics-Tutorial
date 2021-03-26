# MySQL Tutorial
> You can follow the following tutorial session along with trying all the statements,queries in your MySQL workbench for a better hands-on experience.

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
> We can get the number of table information of a database using this.
```
SHOW TABLES;
```
## Describe table
> Shows the structure of our table, such as column names, constraints on column names, etc.**DESC** command is a short form of the DESCRIBE command.
```
DESCRIBE employee_table;
```
## Alter table + Rename column
> Let's now rename the column.
```
ALTER TABLE `mysqltutorial`.`employee_table` 
CHANGE COLUMN `job title` `jobtitle` VARCHAR(45) NOT NULL ;
```
## Add multiple columns
> Suppose we want to add more than one columns.
```
ALTER TABLE employee_table
ADD place varchar(100) NOT NULL  
AFTER jobtitle,  
ADD salary int NOT NULL  
AFTER age ;
```
## Again creating table & Renaming the same
> Creating a new table and renaming the same.
```
create table testtable(
testname varchar(30) not null) ;
```
> notes
```
ALTER TABLE  testtable RENAME TO newtable;
```
## Adding columns
> Adding new columns to our new existing table.
```
ALTER TABLE newtable   
ADD Id int PRIMARY KEY NOT NULL,     
ADD Name varchar(45) NOT NULL,     
ADD Product varchar(45) DEFAULT NULL,         
ADD Year int NOT NULL    
;    
```
## Rename column
> Let's rename one column.
```
ALTER TABLE `mysqltutorial`.`newtable` 
CHANGE COLUMN `Name` `Contactname` VARCHAR(45) NOT NULL ; 
```
## Drop a column
> Let's remove one column.
```
ALTER TABLE `mysqltutorial`.`newtable` 
DROP COLUMN `testname`;

```
## Insert values to our 2nd table "newtable"
> Used to store or add data in table within the database.
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
> TRUNCATE statement removes the complete data without removing its structure.We use this command when we want to delete an entire data from a table without removing the table structure.
```
SELECT* FROM newtable;

TRUNCATE table newtable;

SELECT* FROM newtable;
```
## Insert & Select once more
> Lets insert and select the "newtable" values once more.
```
INSERT INTO newtable ( Id, contactname, Product,  Year)     
VALUES (1, 'Stephen', 'Computer',  2015),     
(2, 'Joseph', 'Laptop', 2016),     
(3, 'John', 'TV', 2016),    
(4, 'Donald', 'Laptop', 2015),    
(5, 'Joseph', 'Mobile', 2015),    
(6, 'Peter', 'Mouse', 2016); 

SELECT* FROM 	newtable;
```
## WHERE
> Now, lets select the data corresponding to the year 2015.
```
select* FROM	newtable	where	Year='2015';
```
## ORDER BY (DESC)
> Here we order from "newtable" where "year=2015" and ordering the "product" column in descending form.
```
select * from	newtable	WHERE	Year='2015'
order by Product	desc;
```
## GROUP BY
> GROUP BY Clause is used to collect data from multiple records and group the result by one or more column.
select	*	FROM	newtable
group by	Year;
```
