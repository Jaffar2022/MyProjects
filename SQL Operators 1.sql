use excelr_afternoon;

create table employee(
emp_id int,
emp_name varchar(20),
Salary int,
country varchar(20),
Department varchar(20)
);

desc employee;


select * from employee;


INSERT INTO employee (emp_id, emp_name, salary, country, department) VALUES
(1, 'Alice Johnson', 45000, 'USA', 'IT'),
(2, 'Bob Smith', 48000, 'Canada', 'HR'),
(3, 'Cathy Lee', 46000, 'USA', 'Finance'),
(4, 'David Rick', 53000, 'UK', 'Marketing'),
(5, 'Eva Stern', 50000, 'USA', 'IT'),
(6, 'Frank Poe', 42000, 'Canada', 'HR'),
(7, 'Grace Lin', 55000, 'USA', 'Finance'),
(8, 'Henry Gale', 47000, 'UK', 'Marketing'),
(9, 'Isabel Ford', 60000, 'USA', 'IT'),
(10, 'Jack Neil', 49000, 'Canada', 'HR'),
(11, 'Kathy Bates', 57000, 'USA', 'Finance'),
(12, 'Louis Wright', 41000, 'UK', 'Marketing'),
(13, 'Mona Ghosh', 52000, 'USA', 'IT'),
(14, 'Ned Stark', 45000, 'Canada', 'HR'),
(15, 'Olivia Dunne', 48000, 'USA', 'Finance'),
(16, 'Pete Moss', 55000, 'UK', 'Marketing'),
(17, 'Quincy Adams', 43000, 'USA', 'IT'),
(18, 'Rita Lee', 46000, 'Canada', 'HR'),
(19, 'Sam Troy', 58000, 'USA', 'Finance'),
(20, 'Tina Fey', 59000, 'UK', 'Marketing'),
(21, 'Uma Fern', 43000, 'USA', 'IT'),
(22, 'Victor Quin', 52000, 'Canada', 'HR'),
(23, 'Wendy Mire', 55000, 'UK', 'Finance'),
(24, 'Xavier Moon', 48000, 'USA', 'Marketing'),
(25, 'Yara Flint', 49000, 'Canada', 'IT'),
(26, 'Zack Blythe', 57000, 'UK', 'HR'),
(27, 'Amy Pond', 44000, 'USA', 'Finance'),
(28, 'Bruce Wayne', 46000, 'Canada', 'Marketing'),
(29, 'Clara Oswald', 52000, 'UK', 'IT'),
(30, 'Diana Prince', 45000, 'USA', 'HR'),
(31, 'Erik Selvig', 58000, 'Canada', 'Finance'),
(32, 'Fiona Glenanne', 47000, 'UK', 'Marketing'),
(33, 'Gordon Ramsay', 60000, 'USA', 'IT'),
(34, 'Helen Parr', 41000, 'Canada', 'HR'),
(35, 'Ian Malcolm', 53000, 'UK', 'Finance'),
(36, 'Joan Watson', 46000, 'USA', 'Marketing'),
(37, 'Kyle Reese', 55000, 'Canada', 'IT'),
(38, 'Laura Croft', 42000, 'UK', 'HR'),
(39, 'Malcolm Merlyn', 49000, 'USA', 'Finance'),
(40, 'Nora Darhk', 54000, 'Canada', 'Marketing'),
(41, 'Oliver Queen', 58000, 'UK', 'IT'),
(42, 'Peggy Carter', 42000, 'USA', 'HR'),
(43, 'Quentin Lance', 53000, 'Canada', 'Finance'),
(44, 'Rosa Diaz', 47000, 'UK', 'Marketing'),
(45, 'Sara Lance', 46000, 'USA', 'IT'),
(46, 'Tony Stark', 60000, 'Canada', 'HR'),
(47, 'Ulysses Claw', 45000, 'UK', 'Finance'),
(48, 'Violet Parr', 48000, 'USA', 'Marketing'),
(49, 'Wally West', 44000, 'Canada', 'IT'),
(50, 'Xander Harris', 56000, 'UK', 'HR'),
(51, 'Yvonne Strahovski', 42000, 'USA', 'Finance'),
(52, 'Zoe Washburne', 54000, 'Canada', 'Marketing'),
(53, 'Aaron Hotchner', 51000, 'UK', 'IT'),
(54, 'Beth Greene', 48000, 'USA', 'HR'),
(55, 'Carl Grimes', 55000, 'Canada', 'Finance'),
(56, 'Daryl Dixon', 46000, 'UK', 'Marketing'),
(57, 'Eve Polastri', 58000, 'USA', 'IT'),
(58, 'Felix Dawkins', 42000, 'Canada', 'HR'),
(59, 'Glenn Rhee', 47000, 'UK', 'Finance'),
(60, 'Hank Anderson', 53000, 'USA', 'Marketing'),
(61,'Rajani Gupta',61000,null,null);


select * from employee;

#DISTINCT
select distinct department from employee;
select distinct country from employee;

#WHERE
select * from employee
where department = 'IT';
select * from employee
where department = 'Marketing';
select * from employee
where department = 'HR';

select * from employee;

#Display the data of USA
select * from employee
where country = 'USA';

#AND, OR, NOT OPERATORS
#AND OPERATOR
select * from employee where department = 'IT' and country = 'USA';

#OR OPERATOR
select * from employee where department = 'HR' OR salary = 50000;

select * from employee where
						emp_name = 'Alice Johnson'
					OR  emp_name = 'Bob Smith'
                    OR  emp_name = 'Cathy Lee';

#IN Operator for multiple OR
Select * from employee where emp_name IN ('Alice Johnson', 'Bob Smith', 'Cathy Lee');

#NOT Operator
Select * from employee where emp_name NOT IN ('Alice Johnson', 'Bob Smith', 'Cathy Lee');

#BETWEEN
Select * from employee where emp_id BETWEEN 5 and 10;

#NOT BETWEEN
Select * from employee where emp_id NOT BETWEEN 5 and 10;

#Sorting - ASC, DESC, Multiple sorting
select * from employee order by emp_name asc;
select * from employee order by salary desc;
select * from employee order by emp_name asc, salary desc, country asc, department desc;

select * from employee;

#IS OPERATOR
select * from employee where country = null;
select * from employee where country IS null;
select * from employee where country IS NOT null;

#LIMIT
select * from employee LIMIT 5;

#OFFSET
select * from employee LIMIT 5, 2;
select * from employee LIMIT 10, 5;

#Display First highest salary
select distinct salary from employee order by salary desc limit 1;

#Display second highest salary
select distinct salary from employee order by salary desc;
select distinct salary from employee order by salary desc limit 1,1;

#Wild Card, Single Character and single/multi character
select * from employee where country LIKE '___';
select * from employee where country LIKE '__';
select * from employee where department LIKE '__';

select * from employee where department LIKE 'h%';
select * from employee where country LIKE 'u%';
select * from employee where department LIKE '%ce';
select * from employee where department LIKE '%nan%';
select * from employee where emp_name LIKE '%an%';
select * from employee where country LIKE '_a%';

#Handling Null Values - ISNULL (), IFNULL (), Coalesce ()
#ISNULL
Select 
	*,
	isnull (Department) as dept_contains_null
From
	employee;

Select 
	*,
	isnull (Country) as country_contains_null
From
	employee;

#IFNULL
Select  
	department,
    ifnull(department,'no data') as contains_null
from employee;

Select  
	emp_id,
    department,
    ifnull(department,'no data') as contains_null
from employee;

#Coalesce
select coalesce (null, null, null, 'ABC', null, 'XYZ')
as _first_non_null;
select coalesce (null, null, null, null, null, 'XYZ')
as _first_non_null;
select coalesce (null, null, null, null, null, 'All values are null')
as _first_non_null;
select coalesce ('ABC', null, null, null, null, 'All values are null')
as _first_non_null;

#Classicmodels database
use classicmodels;

select * from offices;

select
	addressline2,
    state,
    country,
	Coalesce (addressline2, state, country) as_address
from offices;

#Excelr_afternoon DB

select salary,
case
	when salary <50000 then 'LOW'
    when salary >100000 then 'HIGH'
    when salary >=50000 and salary <= 100000 then 'MID'
end as 'Salary_range'
from employee;

select salary,
case
	when salary <50000 then 'LOW'
    when salary >100000 then 'HIGH'
    when salary >=50000 or salary <= 100000 then 'MID'
end as 'Salary_range'
from employee;

select salary,
case
	when salary <50000 then 'LOW'
    when salary >100000 then 'HIGH'
    when salary >=50000 or salary <= 100000 then 'MID'
    else 'unknown'
end as 'Salary_range'
from employee;

#Country Code
select country,
case
	when country ='USA' then '+1'
    when country ='Canada' then '+1'
    when country ='UK' then '+44'
    else '00'
end as 'Country_code'
from employee;

select country,
case
	when country ='USA' then '+1'
    when country ='Canada' then '+1'
    when country ='UK' then 44
    else '00'
end as 'Country_code'
from employee;

Select
	sum(salary) as total_salary
from employee; 

select * from employee;

select 
	sum(salary) as _total_salary_,
	avg(salary) as _avg_salary_,
    min(salary) as _min_salary_,
    max(salary) as _max_salary_
from 
	employee;

#COUNT
select count(*) from employee;			
select count(emp_ID) from employee;		
select count(emp_name) from employee;
select count(country) from employee;
select count(department) from employee;

#GROUPBY AND HAVING
Select 
	country,
    sum(salary)
from employee
group by country;

Select 
	country,
    sum(salary),
    round(avg(salary),2),
    min(salary),
    max(salary)
from employee
group by country;

Select 
	department,
    sum(salary),
    round(avg(salary),2),
    min(salary),
    max(salary)
from employee
group by department;

select * from employee;

select
	country, department,
    sum(salary)
from
	employee
group by
	country, department
order by
	country asc, department asc;

#HAVING - It is used to filter group by condition

select country,
sum(salary)
from employee
group by country
having sum(salary) <1000000;

#Sting
Select * from student;

select fname,
	upper(fname) as _upper_,
    lname,
    lower(lname) as _lower_
from student;

#Concat
select fname,
	upper(fname) as _upper_,
    lname,
    lower(lname) as _lower_,
    concat(fname,' ', lname) as _fullname_
from student;

#Length
select fname,
	upper(fname) as _upper_,
    lname,
    lower(lname) as _lower_,
    concat(fname,' ', lname) as _fullname_,
    length(fname) as _length_of_fname_
from student;

#Replace
select fname,
	upper(fname) as _upper_,
    lname,
    lower(lname) as _lower_,
    concat(fname,' ', lname) as _fullname_,
    length(fname) as _length_of_fname_,
    replace(fname,'A','O')
from student;

select 
	fname, lname,
    replace(fname,'A','O')
from student;

#Trim
Select ('ABCD');
Select ltrim('           ABCD') as _left_trim;
Select rtrim('ABCD           ') as _right_trim;
Select trim('         ABCD           ') as _trim;

#There should be no space after trim and (, otherwise it is error as example below
select trim ('           ABCD          ') as _trim_;

Select length(('           ABCD')) as _left_trim;
Select length(ltrim('           ABCD')) as _left_trim;

Select length(ltrim('           ABCD')) as _left_trim;
Select length(rtrim('ABCD           ')) as _right_trim;
Select length(trim('         ABCD           ')) as _trim;

select * from student;

#SUBSTRING
Select *, 
	substr(Fname,2,3) AS FirstThreeLetters
    from student;
    
#LOCATE
Select *, 
	LOCATE('a', Fname) AS PosOfA
    from student;

#TRIM()
Select Trim('a' from 'aaaaJaffaraaaaa')
as Trimmedstring;

#DATE
select curdate() as today; #Current Date
select now() as today; #Current date and time

#Separate day, month, year
select day (now()) as _day_,
	  month (now()) as month_,
      year (now()) as year_;
    
select day (curdate()) as _day_,
	  month (curdate()) as month_,
      year (curdate()) as year_;

#Day name and month name
select dayname (curdate()) as _day_name,
	  monthname (curdate()) as _month_name;

select dayname ('2025-09-06') as _day_name,
	  monthname ('2025-09-06') as _month_name;
	
#Datediff
select datediff('2025-02-27','2000-10-15') as _no_of_days;

#EXTRACT
Select extract(year from '2023-04-16') as year,
		extract(month from '2023-04-16') as month,
        extract(day from '2023-04-16') as day;
	
#Date_add and Date_sub
select date_add('2023-01-01', interval 1 month) AS OneMonthLater,
		date_sub('2023-01-01', interval 15 day) AS FifteenDaysEarlier;
        
#Date Format
Select Date_Format(now(), '%W, %M, %D, %Y') as formatteddate;
Select Date_Format(now(), '%W, %M, %d, %Y') as formatteddate;
Select Date_Format(now(), '%H: %i: %s, %W, %M, %d, %Y') as formatteddate;
Select Date_Format(now(), '%H: %i, %W, %M, %d, %Y') as formatteddate;

select weekday(now());
select dayofweek(now());

#Constraints/Rule - Data Validation
select * from student;
describe student;

create table employee1(
emp_id int not null unique,
emp_name varchar (100) not null,
age int check (age>=18),
email varchar (100) unique,
HireDate Date,
Gender Varchar(50) default 'Not Mentioned'
);

describe employee1;
select * from employee1;

insert into employee1 values(1, 'Jaffar', 20, 'jaffar@gmail.com', '2025-01-01', 'Male'); #Successful
insert into employee1 values(2, 'Sadiq', 20, 'Sadi@gmail.com', '2025-01-01', 'Male'); #Successful
insert into employee1 values(3, 'Sadiya', 24, 'sadia@gmail.com', '2025-01-01', 'Female'); #Successful
insert into employee1 values(3, null, 24, 'sadia@gmail.com', '2025-01-01', 'Female'); #Error Code: 1048. Column 'emp_name' cannot be null
insert into employee1 values(3, 'Sadiya', 24, 'sadia@gmail.com', '2025-01-01', 'Female'); #Error Code: 1062. Duplicate entry '3' for key 'employee1.emp_id'
insert into employee1 values(4, 'Jaffar', 15, 'jaffar@gmail.com', '2025-01-01', 'Male'); #Error Code: 3819. Check constraint 'employee1_chk_1' is violated.
insert into employee1 values(5, 'Jaffar', 20, 'jaffar@gmail.com', '2025-01-01', 'Male'); #Error Code: 1062. Duplicate entry 'jaffar@gmail.com' for key 'employee1.email'

insert into employee1(emp_id, emp_name, age, email, hiredate) values(7, 'Jaff', 20, 'jafr@gmail.com', '2025-01-01');

select * from employee1;











