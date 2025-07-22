-- Create View: Active Projects View
CREATE OR REPLACE VIEW active_projects_view AS
SELECT p.project_id, p.project_name, e.name AS employee_name, d.dept_name, p.start_date
FROM Projects p
JOIN Employees e ON p.emp_id = e.emp_id
JOIN Departments d ON p.dept_id = d.dept_id
WHERE p.end_date IS NULL;

-- Create Function: Calculate Net Salary
CREATE OR REPLACE FUNCTION calc_net_salary(base INT, bonus INT, deductions INT)
RETURNS INT
AS
$$
    base + bonus - deductions
$$;

-- Create Procedure: Increase salary by department
CREATE OR REPLACE PROCEDURE increase_salary_by_dept(dept_name STRING)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
  UPDATE Employees
  SET salary = salary * 1.05
  WHERE department = dept_name;
  RETURN 'Salary updated for department: ' || dept_name;
END;
$$;