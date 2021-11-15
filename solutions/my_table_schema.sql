#TABLE SCHEMA

drop table deparments;
drop table dept_manager;
drop table employees;
drop table dept_emp;
drop table titles;
drop table salaries;

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL, 
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(dept_no));

select * from departments;

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL, 
	emp_no INTEGER NOT NULL
	);

select * from dept_manager;

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date DATE NOT NULL
	);

select * from employees;

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY( emp_no, dept_no)
	
	);
	
select * from dept_emp;


CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id));

select * from titles;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no)
	);

select * from salaries;


-------------------------------------------------------------------------------------------------------------------------------------

