-- Drop and Create Employees Table
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    location VARCHAR(50),
    salary INT,
    bonus INT,
    join_date DATE
);

-- Drop and Create Departments Table
DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_name VARCHAR(100),
    location VARCHAR(50)
);

-- Drop and Create Projects Table
DROP TABLE IF EXISTS Projects;
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    emp_id INT,
    dept_id INT,
    start_date DATE,
    end_date DATE
);

-- Drop and Create Salaries Table
DROP TABLE IF EXISTS Salaries;
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    month_year DATE,
    base_salary INT,
    bonus INT,
    deductions INT
);

-- Drop and Create Attendance Table
DROP TABLE IF EXISTS Attendance;
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    attendance_date DATE,
    status VARCHAR(10)
);