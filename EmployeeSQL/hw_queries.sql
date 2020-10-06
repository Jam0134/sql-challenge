-- 1.	List the following details of each employee: employee number, last name, first name, sex, and salary.
Select
employees.emp_no As "Employee Number",
employees.last_name As "Last Name",
employees.first_name As "First Name",
employees.sex,
salary.salary
From employees
Inner Join salary 
	On salary.emp_no = employees.emp_no
	

-- 2.	List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
first_name As "First Name",
last_name As "Last Name",
hire_date As "Date hired"
FROM employees
WHERE hire_date like '%1986%'
Order by hire_date

-- 3.	List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
employees.emp_title_id As "Employee Title ID",
employees.last_name As "Last Name",
employees.first_name As "First Name",
dept_manager.emp_no As "Employees Number",
departments.dept_no As "Department Number",
departments.dept_name As "Department Name"
FROM employees
	Inner Join dept_manager On 
	dept_manager.emp_no = employees.emp_no
	Inner Join departments ON 
	dept_manager.dept_no = departments.dept_no
WHERE employees.emp_title_id = 'm0001'
Order By last_name

-- 4.	List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT 
employees.emp_no As "Employee Number",
employees.last_name As "Last",
employees.first_name As "First",
departments.dept_name As "Department Name"
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
last_name As "Last Name",
first_name As "First Name",
Sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'
	
--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
employees.emp_no As "Employee Number",
employees.last_name As "Last",
employees.first_name As "First",
departments.dept_name As "Department Name"
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007'
Order By last_name

-- 7.	List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
employees.emp_no As "Employee Number",
employees.last_name As "Last",
employees.first_name As "First",
departments.dept_name As "Department Name"
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007' or departments.dept_no = 'd005'
Order By last_name

	
	



