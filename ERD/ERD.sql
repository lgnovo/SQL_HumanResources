-- Create a new table
CREATE TABLE titles (
  title_id VARCHAR NOT NULL PRIMARY KEY,
  title VARCHAR NOT NULL
);

-- View the table data
SELECT * FROM titles

CREATE TABLE employees (
  	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title) REFERENCES titles (title_id)
);

-- View the table data
SELECT * FROM employees

-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR  NOT NULL PRIMARY KEY,
  dept_name VARCHAR NOT NULL
);

-- View the table data
SELECT * FROM departments

-- Create a new table
CREATE TABLE dept_emp (
 	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

-- View the table data
SELECT * FROM dept_emp

-- Create a new table
CREATE TABLE dept_manager (
 	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

-- View the table data
SELECT * FROM dept_manager

-- Create a new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

-- View the table data
SELECT * FROM salaries