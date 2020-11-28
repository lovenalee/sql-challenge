drop table titles
CREATE TABLE titles (
  title_id character varying(45) NOT NULL primary key,
  title character varying(45) NOT NULL
);
select *
from titles


drop table employees
CREATE TABLE employees (
  emp_no integer NOT NULL primary key,
  emp_title_id character varying(45) NOT NULL,	
  birth_date date NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex character varying(1) NOT NULL,
  hire_date date NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
select *
from employees


drop table departments
CREATE TABLE departments (
  dept_no character varying(45) NOT NULL primary Key,
  dept_name character varying(45) NOT NULL
);
select *
from departments


drop table dept_emp
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(45) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select *
from dept_emp



drop table dept_manager
CREATE TABLE dept_manager (
  dept_no character varying(45) NOT NULL,
  emp_no integer NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select *
from dept_manager


drop table salaries
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select *
from salaries


