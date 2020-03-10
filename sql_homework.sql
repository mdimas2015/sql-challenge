-- Create a TABLES table
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(7),
	hire_date VARCHAR(10)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);
