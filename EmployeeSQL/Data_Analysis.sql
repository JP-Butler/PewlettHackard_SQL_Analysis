-- DATA ANALYSIS
----------------------------
-- Question 1, List the employee number, last name, first name, sex, and salary of each employee
SELECT E."emp_no", E."last_name", E."first_name", E."sex", S."salary"
FROM "Employees" AS E
JOIN "Salaries" AS S 
ON E."emp_no"=S."emp_no"
ORDER BY "emp_no";

-- Question 2, List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE  EXTRACT(year FROM hire_date) = 1986;

-- Question 3, List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT E."emp_no", E."first_name", E."last_name", D."dept_name", DM."dept_no"
FROM "Employees" AS E
JOIN "Dept_manager" AS DM
ON E."emp_no"=DM."emp_no"
JOIN "Departments" AS D
ON DM."dept_no"=D."dept_no"
ORDER BY "dept_no";

-- Question 4, List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT E."first_name", E."last_name", E."emp_no", D."dept_name", DE."dept_no"
FROM "Employees" AS E
JOIN "Dept_emp" AS DE
ON E."emp_no"=DE."emp_no"
JOIN "Departments" AS D
ON DE."dept_no"=D."dept_no"
ORDER BY "dept_no";

-- Question 5, List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Question 6, List each employee in the Sales department, including their employee number, last name, and first name.
SELECT E."emp_no", E."first_name", E."last_name", DE."dept_no", D."dept_name"
FROM "Employees" AS E
JOIN "Dept_emp" AS DE
ON E."emp_no"=DE."emp_no"
JOIN "Departments" AS D
ON DE."dept_no"=D."dept_no"
WHERE dept_name = 'Sales'
ORDER BY E."emp_no";

-- Question 7, List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E."emp_no", E."first_name", E."last_name", DE."dept_no", D."dept_name"
FROM "Employees" AS E
JOIN "Dept_emp" AS DE
ON E."emp_no"=DE."emp_no"
JOIN "Departments" AS D
ON DE."dept_no"=D."dept_no"
WHERE dept_name IN ('Sales', 'Development')
ORDER BY E."emp_no";

-- Question 8, List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS frequency_count
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
