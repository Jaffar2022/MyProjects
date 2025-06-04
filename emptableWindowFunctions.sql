create database windowfunctions;
use windowfunctions;

-- Create the Students table
CREATE TABLE Students (
    StudentID INT,
    Subject VARCHAR(50),
    Marks INT
);

-- Insert sample data into the Students table
INSERT INTO Students (StudentID, Subject, Marks)
VALUES 
(1,"computer",80),
(1,"Maths",80),
(1,"science",60),
(1,"history",60),
(2,"computer",85),
(2,"Maths",80),
(2,"science",60),
(2,"history",65),
(3,"computer",90),
(3,"Maths",75),
(3,"science",55),
(3,"history",66),
(4,"computer",95),
(4,"Maths",60),
(4,"science",95),
(4,"history",67);

select * from students;

#Row_Number
#1
select
	studentID,
    subject,
    Marks,
row_number() over() as RowNumber
from
	students;

#2
select
	studentID,
    subject,
    Marks,
row_number() over(partition by subject) as RowNumber
from
	students;

#3
select
	studentID,
    subject,
    Marks,
row_number() over(partition by subject order by marks desc) as RowNumber
from
	students;

#Rank_Number
#1
select
	studentID,
    subject,
    Marks,
row_number() over(partition by subject order by marks desc) as RowNumber,
Rank() over(partition by subject order by marks desc) as RankNumber
from
	students;

#Dense Rank, Percent Rank
select
	studentID,
    subject,
    Marks,
row_number() over(partition by subject order by marks desc) as RowNumber,
Rank() over(partition by subject order by marks desc) as RankNumber,
dense_rank() over(partition by subject order by marks desc) as DenseRankNumber,
percent_rank () over(partition by subject order by marks desc) as percentrank
from 
	students;
    
#Ntile()
select *,
row_number() over(order by marks desc) as _row_number,
ntile(4) over(order by marks desc) as _group_num
from students;
    


#Classicmodels-DB
select * from customers;

#Query 1 Row_number, Rank and Dense Rank

select
	customerNumber,
    customerName,
    country,
    creditlimit,
row_number() over(partition by country order by creditlimit desc) as RowNumber,
Rank() over(partition by country order by creditlimit desc) as RankNumber,
dense_rank() over(partition by country order by creditlimit desc) as DenseRankNumber
from customers;

#Ntile () - Group by creditlimit
select
	customerNumber,
    customerName,
    country,
    creditlimit,
row_number() over(order by creditlimit desc) as RowNumber,
ntile(4) over(order by creditlimit desc) as _group_num

from customers;

#Aggregate Window Functions
select * from students;

select *,
	sum(marks) over(partition by subject) as totalmarks,
	avg(marks) over(partition by subject) as avgmarks,
	max(marks) over(partition by subject) as maxmarks,
	min(marks) over(partition by subject) as minmarks,
	count(*) over(partition by subject) as subjectcount,
	count(*) over() as countall
from students;

#Ranking - Lead and Lag

select *,
	lag(marks,1,0) over(order by marks) as _lag_,
	lead(marks,1,0) over(order by marks) as _lead_
from students;

select * from sales;

#YOYG Formula = CYSales-PYSales/PYSales
select *,
lag(sales, 1,0) over(order by sales) as _prevsales,
lead(sales, 1,0) over(order by sales) as _prevsales
from sales;

select *,
lag(sales, 1,0) over(order by sales) as _prevsales,
concat( round(( (sales-lag(sales, 1,0) over(order by sales))/lag(sales, 1,0) over(order by sales) ) *100,2), "%")
as YOYG

from sales;

#Classicmodels Database
select * from customers;

#Get top 3 customers from every country (subquery)

select * from
(select 
	customerNumber,
    customerName,
    country,
    creditlimit,
dense_rank() over(partition by country order by creditlimit desc) as RowNumber
from customers) as custtbl
where RowNumber <=3;
    




