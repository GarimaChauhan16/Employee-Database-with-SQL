-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s ON
s.emp_no = e.emp_no
LIMIT 30;

-- 2.List employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date >= '1986-01-01' AND 
hire_date <='1986-12-31';

-- 3.List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM employees AS e
JOIN dept_manager m ON
m.emp_no = e.emp_no
JOIN departments d ON
d.dept_no = m.dept_no


-- 4.List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp de ON
e.emp_no = de.emp_no
JOIN departments d ON
de.dept_no = d.dept_no
ORDER BY e.emp_no

-- 5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE '%B%'

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp de ON
e.emp_no = de.emp_no
JOIN departments d ON
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY emp_no;

-- 7.List all employees in the Sales and Development departments:
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp de ON
e.emp_no = de.emp_no
JOIN departments d ON
de.dept_no = d.dept_no
WHERE
d.dept_name = 'Sales' OR
d.dept_name = 'Development'
ORDER BY emp_no;

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC

