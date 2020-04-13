-- #1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;

-- #2
SELECT * FROM employees
WHERE (hire_date LIKE '1986%');

-- #3
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments AS d
LEFT JOIN dept_managers AS m
ON d.dept_no = m.dept_no
LEFT JOIN employees AS e
ON e.emp_no = m.emp_no;

-- #4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
LEFT JOIN dept_emp AS q
ON d.dept_no = q.dept_no
LEFT JOIN employees AS e
ON e.emp_no = q.emp_no;

-- #5
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- #6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
LEFT JOIN dept_emp AS q
ON d.dept_no = q.dept_no
LEFT JOIN employees AS e
ON e.emp_no = q.emp_no
WHERE d.dept_no = 'd007';

-- #7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
LEFT JOIN dept_emp AS q
ON d.dept_no = q.dept_no
LEFT JOIN employees AS e
ON e.emp_no = q.emp_no
WHERE (d.dept_no = 'd007') OR (d.dept_no = 'd005');

--#8
SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;