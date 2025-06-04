create table emp_trigger
(
	ID int primary key,
    name varchar(50),
    working_hours int
);

#insert Trigger
delimiter //
create trigger before_insert_working_hours
before insert on emp_trigger for each row
begin
if new.working_hours<0 then set new.working_hours=0;
end if;
end //

insert into emp_trigger values (1, 'Rajani', 6);
insert into emp_trigger values (2, 'Swati', -8);
insert into emp_trigger values (3, 'Swati', -10);

select * from emp_trigger;

show triggers;

#After Trigger

create table employee_records
(
	message varchar(50)
);

select * from employee_records;

delimiter //
create trigger after_insert
after insert on emp_trigger for each row
begin
insert into employee_records values(concat('A new row has been inserted with name ',new.name));
end //

insert into emp_trigger values (4, 'ABC', 6);
insert into emp_trigger values (5, 'XYZ', 8);
insert into emp_trigger values (6, 'GHI', 7);

select * from employee_records;



