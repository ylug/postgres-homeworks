-- SQL-команды для создания таблиц
create table employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date timestamp NOT NULL,
	notes varchar(100) NOT NULL
);

SELECT * FROM employees;

create table customers
(
	customer_id char(5) PRIMARY KEY,
	company_name varchar(100) NOT NULL,
	contact_name varchar(100) NOT NULL

);

SELECT * FROM customers;


create table orders
(
	order_id int,
	customer_id int REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date timestamp NOT NULL,
	ship_city varchar(100) NOT NULL
);

SELECT * FROM orders;