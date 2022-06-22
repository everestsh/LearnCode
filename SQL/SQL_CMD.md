# SQL CMD

    * 1> `SELECT OrderID, CustomerName FROM orders 
          join Customers`
    * 2> `SELECT OrderID, CustomerName, OrderDate FROM orders
            join Customers
            on Orders.CustomerId = Customers.CustomerId`
    * 3> `SELECT OrderID, CustomerName, ShipperName, OrderDate FROM orders
            join Customers
            on Orders.CustomerId = Customers.CustomerId
            join Shippers
            on Orders.ShipperId = Shippers.ShipperId`
    * 4> `SELECT OrderID, CustomerName, ShipperName, OrderDate FROM orders
            join Customers
            on Orders.CustomerId = Customers.CustomerId
            join Shippers
            on Orders.ShipperId = Shippers.ShipperId`
    * 5> `SELECT OrderID, CustomerName, ShipperName, OrderDate FROM orders as O
            join Customers as C
            on O.CustomerId = C.CustomerId
            join Shippers as S
            on O.ShipperId = S.ShipperId`
    * 6> `INSERT INTO Customers (CustomerName) VALUES ('JIM') `
    * 7> `update orders set customerid=101 where orderid=10248`

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



SELECT user_id, username, password, role_type
FROM public.users as u
join user_role as r
on u.role_id = r.role_id
order by user_id 

INSERT INTO classes (class_name, class_duration, max_class_size, class_date, start_time, class_location, class_instructor, intensity_id, type_id) 
VALUES ('JIM', '1.5 hours', 10, '2021-11-19', '9:00:00', 'Gym Z', 1, 3, 3)  



BEGIN TRANSACTION
   DECLARE @DataID int;
   INSERT INTO DataTable (Column1 ...) VALUES (....);
   SELECT @DataID = scope_identity();
   INSERT INTO LinkTable VALUES (@ObjectID, @DataID);
COMMIT



Day2
select * from fruits;
select * from fruits where id = 2;




####
SELECT * 
FROM comments as c
JOIN notes as n
ON c.note_id = n.note_id
where n.note_id = 1
ORDER BY n.note_id ASC

SELECT comment_text 
FROM comment_notes as c
JOIN notes as n
ON c.note_id = n.note_id
where n.note_id = 1

```