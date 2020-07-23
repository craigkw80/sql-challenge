--List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, last_name, first_name, sex, salary
from employees
			inner join
			salaries on employees.emp_no= salaries.emp_no;
			
			
		
--List first name, last name, and hire date for employees who were hired in 1986.		
		
SELECT first_name, last_name, hire_date
	FROM employees
		WHERE date_part('year', hire_date) = 1986
		ORDER BY 3;


--List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name.
		
		
Select department.dept_no, department.dept_name, employees.emp_no, employees.last_name, employees.first_name
	from employees
		join dept_manager
		on dept_manager.emp_no = employees.emp_no
			join department
			on department.dept_no = department.dept_no;
	
	
--List the department of each employee with the following information: employee number, last name, 
--first name, and department name.

		
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
	FROM employees 
		JOIN dept_emp 
		ON dept_emp.emp_no = employees.emp_no
			JOIN department 
			ON dept_emp.dep_no = department.dept_no;
			
		
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules';


--List all employees in the Sales department, including
--their employee number, last name, first name, and department name.

Select employees.emp_no, last_name, first_name, dept_name
	from dept_emp
		join department
		on dept_emp.dep_no = department.dept_no
			join employees
			on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales';			


--List all employees in the Sales and Development departments, including their
--employee number, last name, first name, and department name.

Select employees.emp_no, last_name, first_name, dept_name
	from dept_emp
		join department
		on dept_emp.dep_no = department.dept_no
			join employees
			on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS last_name_count
	FROM employees
		GROUP BY last_name
		ORDER BY last_name DESC;
