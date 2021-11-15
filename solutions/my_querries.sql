--QUERRIES:

--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
-- common entities to both dataset is emp_no. must perform a join.

SELECT 
e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY e.hire_date ASC;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, 
--first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
e.emp_no, 
e.first_name, 
e.last_name,
dept_name
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no = d.emp_no
INNER JOIN departments
ON d.dept_no = departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
e.first_name, 
e.last_name, 
e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_no
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no = d.emp_no
WHERE d.dept_no = 'd007';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,  
departments.dept_name
FROM departments
INNER JOIN dept_emp ON departments.dept_no=dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name ='Sales' OR departments.dept_name='Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
e.last_name, COUNT(e.last_name) AS Last_name_Count
FROM employees e
GROUP BY e.last_name
ORDER BY Last_name_Count DESC;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------