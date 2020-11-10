-- List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary 
from employees as emp
inner join salaries as sal ON
emp.emp_no = sal.emp_no
order by emp_no asc

-- List first name, last name, and hire date for employees who were hired in 1986.

select e.first_name, e.last_name, e.hire_date
from employees as e 
where hire_date between '1/1/1986' and '12/31/1986'
order by hire_date asc, last_name asc

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as dm ON d.dept_no = dm.dept_no
inner join employees as e on e.emp_no = dm.emp_no
order by dept_no asc, last_name asc 

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e 
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
order by dept_name ASC, emp_no ASC

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'
order by last_name ASC

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e 
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
where dept_name = 'Sales'
order by emp_no ASC

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e 
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'
order by dept_name ASC, emp_no ASC

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as frequency
from employees
group by last_name
order by count(last_name) DESC

-- Looking for how many total unique last names there are to check my frequency query 

select count(distinct last_name) as "Number of Employees"
from employees;