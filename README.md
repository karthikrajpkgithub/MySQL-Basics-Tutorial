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
