-- Sample Practice Queries for Joins, Aggregates, Filters

-- 1. Total salary per employee for Jan 2023
SELECT emp_id, SUM(base_salary + bonus - deductions) AS net_salary
FROM Salaries
WHERE month_year = '2023-01-01'
GROUP BY emp_id;

-- 2. Attendance summary for July 2023
SELECT emp_id, COUNT(*) AS present_days
FROM Attendance
WHERE status = 'Present' AND attendance_date BETWEEN '2023-07-01' AND '2023-07-31'
GROUP BY emp_id;

-- 3. Department with highest total salaries
SELECT e.department, SUM(s.base_salary + s.bonus - s.deductions) AS total_payout
FROM Employees e
JOIN Salaries s ON e.emp_id = s.emp_id
GROUP BY e.department
ORDER BY total_payout DESC
LIMIT 1;