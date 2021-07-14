create database lab5;

create table customers(
  customer_id serial ,
  cust_name varchar(50),
  city varchar(50),
  grade int,
  salesman_id serial2
);

create table orders(
    ord_no serial,
    purch_amt float,
    ord_date date,
    customer_id serial,
    salesman_id serial
);

create table salesman(
    salesman_id serial,
    name varchar(50),
    city varchar(50),
    commission float
);

SELECT SUM (purch_amt) FROM orders;

SELECT AVG(purch_amt) FROM orders;

SELECT COUNT(*) FROM customers;

SELECT MIN(purch_amt) FROM orders;

SELECT * FROM customers WHERE cust_name LIKE '%b';

SELECT * FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE city = 'New York');

SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM orders WHERE purch_amt > 10);

SELECT COUNT(ALL grade) FROM customers;

SELECT ALL FROM customers;

SELECT MAX(grade) FROM customers;
