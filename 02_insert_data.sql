-- Insert data for Employees
INSERT INTO Employees (emp_id, name, department, email, phone, location, salary, bonus, join_date) VALUES
(101, 'Alice James', 'HR', 'alice.james@company.com', '9876543210', 'New York', 50000, 3000, '2021-05-01'),
(102, 'Bob Stone', 'IT', 'bob.stone@company.com', '9988776655', 'San Francisco', 60000, 4000, '2020-06-15'),
(103, 'Charlie Ray', 'Finance', 'charlie.r@company.com', '9871234567', 'Chicago', 55000, 3500, '2022-01-10'),
(104, 'David Park', 'IT', 'david.park@company.com', '9765432100', 'Seattle', 70000, 5000, '2019-12-01'),
(105, 'Eve Long', 'HR', 'eve.long@company.com', '9998887776', 'Austin', 52000, 2500, '2023-03-12'),
(106, 'Frank Hill', 'Finance', 'frank.hill@company.com', '9112233445', 'Boston', 65000, 4200, '2021-07-07'),
(107, 'Grace Kim', 'HR', 'grace.kim@company.com', '9345678901', 'Denver', 48000, 2000, '2022-09-01'),
(108, 'Helen Yu', 'IT', 'helen.yu@company.com', '9667788990', 'New York', 72000, 5200, '2020-01-20'),
(109, 'Ian Wright', 'Finance', 'ian.w@company.com', '9098765432', 'Chicago', 58000, 3000, '2023-06-18'),
(110, 'Jack Lee', 'HR', 'jack.lee@company.com', '9654321876', 'Boston', 51000, 2700, '2018-11-11');

-- Insert data for Departments
INSERT INTO Departments (dept_id, dept_name, manager_name, location) VALUES
(1, 'HR', 'Laura Kent', 'New York'),
(2, 'IT', 'Michael Scott', 'Seattle'),
(3, 'Finance', 'Nancy Drew', 'Chicago'),
(4, 'Marketing', 'Peter Parker', 'Los Angeles');

-- Insert data for Projects
INSERT INTO Projects (project_id, project_name, emp_id, dept_id, start_date, end_date) VALUES
(201, 'Onboarding Automation', 101, 1, '2023-01-01', '2023-06-30'),
(202, 'Cloud Migration', 102, 2, '2022-03-15', '2022-11-30'),
(203, 'Budget Analysis Q4', 103, 3, '2023-07-01', NULL),
(204, 'Website Redesign', 106, 3, '2021-08-01', '2021-12-15'),
(205, 'AI Chatbot Integration', 108, 2, '2023-02-20', NULL),
(206, 'HR Policy Update', 107, 1, '2022-05-01', '2022-10-30'),
(207, 'Social Media Campaign', 110, 4, '2022-09-01', '2023-01-15');

-- Insert data for Salaries
INSERT INTO Salaries (salary_id, emp_id, month_year, base_salary, bonus, deductions) VALUES
(1, 101, '2023-01-01', 50000, 3000, 500),
(2, 102, '2023-01-01', 60000, 4000, 700),
(3, 103, '2023-01-01', 55000, 3500, 600),
(4, 104, '2023-01-01', 70000, 5000, 500),
(5, 105, '2023-01-01', 52000, 2500, 300),
(6, 106, '2023-01-01', 65000, 4200, 800),
(7, 107, '2023-01-01', 48000, 2000, 200),
(8, 108, '2023-01-01', 72000, 5200, 900),
(9, 109, '2023-01-01', 58000, 3000, 450),
(10, 110, '2023-01-01', 51000, 2700, 400);

-- Insert data for Attendance
INSERT INTO Attendance (attendance_id, emp_id, attendance_date, status) VALUES
(1, 101, '2023-07-01', 'Present'),
(2, 101, '2023-07-02', 'Leave'),
(3, 102, '2023-07-01', 'Present'),
(4, 102, '2023-07-02', 'Absent'),
(5, 103, '2023-07-01', 'Present'),
(6, 103, '2023-07-03', 'Present'),
(7, 104, '2023-07-01', 'Leave'),
(8, 105, '2023-07-01', 'Present'),
(9, 106, '2023-07-02', 'Present'),
(10, 107, '2023-07-02', 'Present');