create database joins;
use joins;

#Inner Join

select * from customertable;
select * from ordertable;

select
	o.product,
    o.customerID,
    c.name,
    c.city
From
	ordertable o
inner join
	customertable c
on
	o.customerID=c.customerID;

#Left Join
select 
	*
from 
	ordertable o
left join
	customertable c
on
	o.customerID=c.customerID;

select 
	o.customerID,
    c.name
from 
	ordertable o
left join
	customertable c
on
	o.customerID=c.customerID;
    
#Right Join
select
	*
from
	ordertable o
Right join
	customertable c
on 
	o.customerID=c.customerID;
    
#Full Outer Join, Union, Union all
select 
	*
from 
	ordertable o
left join
	customertable c
on
	o.customerID=c.customerID
Union 
select
	*
from
	ordertable o
Right join
	customertable c
on 
	o.customerID=c.customerID;
    
select 
	*
from 
	ordertable o
left join
	customertable c
on
	o.customerID=c.customerID
Union all
select
	*
from
	ordertable o
Right join
	customertable c
on 
	o.customerID=c.customerID;
    
#Cross Join
select
	c.color_name,
    s.size_name
from
	colors c
cross join
	sizes s;

#Self Join
select 
	*
from
	employees e1
left join
	employees e2
on
	e1.manager_id=e2.employee_id;
    
select 
	e1.employee_name,
    e2.employee_name as manager_name
from
	employees e1
left join
	employees e2
on
	e1.manager_id=e2.employee_id;


	