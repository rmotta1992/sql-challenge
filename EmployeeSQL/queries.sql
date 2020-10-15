SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.sex, salaries.emp_no, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SElECT first_name, last_name, hire_date
FROM employees
WHERE DATE(hire_date) BETWEEN '1/1/1986' AND '12/31/1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT employee_dept.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN employee_dept
ON employees.emp_no = employee_dept.emp_no 
LEFT JOIN departments
ON employee_dept.dept_no = departments.dept_no;

SELECT first_name, last_name, sex
FROM EMPLOYEES
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';