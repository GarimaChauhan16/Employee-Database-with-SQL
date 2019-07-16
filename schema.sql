CREATE TABLE departments(
	dept_no VARCHAR (30) PRIMARY KEY,
	dept_name VARCHAR(250)
);

SELECT * FROM departments;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY, 
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE dept_emp(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date DATE,
	to_date DATE
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary DEC,
	from_date DATE,
	to_date DATE
);

SELECT * FROM salaries;

CREATE TABLE titles(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

SELECT * FROM titles;