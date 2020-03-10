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
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON s.emp_no = e.emp_no;

-- List employees who were hired in 1986.
SELECT * 
FROM employees
WHERE hire_date LIKE '1986%';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name, dm.from_date, dm.to_date
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e
ON e.emp_no = dm.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
on d.dept_no = de.dept_no

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) as count1
FROM employees 
GROUP BY last_name
ORDER BY count1 DESC;
