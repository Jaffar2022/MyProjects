use joins;

CREATE TABLE table1 (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE table2 (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO table1 (id, name) VALUES
(1, 'John'),
(2, 'Jane'),
(3, 'Michael');

INSERT INTO table2 (id, name) VALUES
(2, 'Jane'),
(3, 'Michael'),
(4, 'Emily');

select * from table1;
select * from table2;

#Full Outer Join, Union and Union All
select * from table1
union
select * from table2;

select * from table1
union all
select * from table2;
