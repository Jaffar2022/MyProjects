#Stored Procedure, Classicmodels

Delimiter //
create procedure getUSAcustomer()
Begin
	select customernumber, customername, country 
    from customers
    where country ='USA';
end //

call getusacustomer();

Delimiter //
create procedure getAustraliacustomer()
Begin
	select customernumber, customername, country 
    from customers
    where country ='Australia';
end //

call getAustraliacustomer();
#
select * from employees;

Delimiter //
create procedure getsalesrep()
Begin
	select employeenumber, lastname, firstname, jobtitle 
    from employees
    where jobtitle ='sales rep';
end //

call getsalesrep();

#Procedure with parameter
delimiter //
	create procedure getanyonecountrydata
	(in country_name varchar(100))
begin
	select customerNumber, customername, country
from customers
	where country = country_name;
end //

call getanyonecountrydata ('Australia');

#Get any 3 country data 

Delimiter //
create procedure getAnyThreeCountryData(in country_name1 varchar (100),in country_name2 varchar (100),in country_name3 varchar (100))
Begin
	select customernumber, customername, country from customers
    where country IN(country_name1,country_name2,country_name3);
end //

call getAnyThreeCountryData('USA','Spain','UK');
call getAnyThreeCountryData('USA','India','Nepal');
call getAnyThreeCountryData('USA','XYZ','PQR');
call getAnyThreeCountryData('USA','XYZ','PQR','asdf'); #Error: incorrect number of arguments
call getAnyThreeCountryData('USA',null, null); 
call getAnyThreeCountryData('USA','uk',null);


select * from orders;
select distinct status from orders;

select status, count(ordernumber) as no_of_orders
from orders
group by status;

#
Delimiter //
create procedure getordercount
(in order_status_parameter varchar (50),
out total_quantity int)
begin
	select count(ordernumber) into total_quantity
from orders
	where status = order_status_parameter;
end //

call getordercount('Shipped',@total_quantity);
select @total_quantity;

