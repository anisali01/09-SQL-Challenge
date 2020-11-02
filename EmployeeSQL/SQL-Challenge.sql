-- Creating tables for importing all 6 CSVs

create table departments (
	dept_no varchar not null,
	dept_name varchar not null
);

select * from departments

create table dept_emp (
	emp_no varchar not null,
	dept_no varchar not null
);

select * from dept_emp

create table dept_manager (
	dept_no varchar not null,
	emp_no varchar not null
);

select * from dept_manager

create table employees (
	emp_no varchar not null,
	emp_title_id varchar not null,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null
);

select * from employees

create table salaries (
	emp_no varchar not null,
	salary int
);

select * from salaries

create table titles (
	title_id varchar not null,
	title varchar not null
);

select * from titles

-- Queries to join tables

select * 
from employees as dm
inner join salaries as s on dm.emp_no = s.emp_no
limit(50)