use classicmodels;

select * from test; #It will give error as it does not exist, so we will handle it.

#Exit Handler

delimiter //
create procedure testing()
begin
	declare exit handler for 1146 select 'Please create the table first, as it does not exists' as message;
    select * from test;
    select * from employees;
end //

call testing();

#Continue Handler

delimiter //
create procedure continue_testing()
begin
	declare continue handler for 1146 select 'Please create the table first, as it does not exists' as message;
    select * from test;
    select * from employees;
end //

call continue_testing();

create table emptbl
(
	empID int primary key,
    empName varchar(50) not null
);

describe emptbl;

select * from emptbl;

delimiter //
create procedure emp_eh(IN e_id INT, IN e_name varchar(50))
begin
	declare exit handler for 1048 select 'Dont insert null values' as message;
    declare exit handler for 1062 select 'Dont enter duplicate key' as message;
    declare exit handler for sqlexception select 'Error occured' as message;
    
    insert into emptbl(empID,empName) values (e_id,e_name);
    select * from emptbl;
end //

call emp_eh(null,'John'); #Dont insert null values
call emp_eh(2, null); #Dont insert null values
call emp_eh(2,'John'); #Successful
call emp_eh(2,'Joe'); #Dont insert duplicate values

