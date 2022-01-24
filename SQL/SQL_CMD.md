# SQL CMD



```
select * from shippers;
select shippername, phone from shippers;
select phone,shippername from shippers;
select * from shippers where shipperid = 1;


select * from employees;
select (firstname || ' ' || lastname) from employees;
select (firstname || ' ' || lastname) as full_name, notes from employees;
select * from employees where notes like '%university%';

select * from orders where orderdate < '1996-07-08' ;


select * from customers;
select * from customers where country = 'Spain';
select * from customers where country = 'Spain' and postalcode > 100000;

select * from customers order by country, city desc;


insert into shippers (shippername, phone ) values ('acme', '1');
insert into shippers (shippername ) values ('acme 3');
insert into shippers (shippername ) values ('lady');

update shippers set phone = '93847347'
update shippers set phone = '93847347', shippername='foo' where shipperid = 5


delete from shippers where shipperid = 5


insert into accounts (name, budget ) values ('acme', '1');


Day2
select * from fruits;
select * from fruits where id = 2;
```