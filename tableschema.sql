CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(1),
	hire_date VARCHAR(30)
);

CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE dept_emp;
DROP TABLE dept_managers;

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_managers(
	dept_no VARCHAR(30),
	emp_no INTEGER,
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);