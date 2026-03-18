-- SQL_DML/01_insert_data.sql

USE company_db;

-- Insert Departments
INSERT INTO departments (dept_name, location)
VALUES 
('IT', 'Hyderabad'),
('HR', 'Bangalore')
ON DUPLICATE KEY UPDATE location=VALUES(location);

-- Insert Employees
INSERT INTO employees (name, email, department, salary)
VALUES 
('Murali', 'murali@company.com', 'IT', 80000),
('Rahul', 'rahul@company.com', 'HR', 60000)
ON DUPLICATE KEY UPDATE salary=VALUES(salary);

-- Insert Projects
INSERT INTO projects (project_name, emp_id, start_date)
VALUES 
('DevOps Automation', 1, '2026-03-01'),
('HR Portal', 2, '2026-03-05');

--INSERT Branches
INSERT INTO branches (building-name, block, department)
VALUES 
('DELL', 'C', 'CSE'),
('Arduino', 'A', 'ECE'),
('Cement', 'C', 'CIVIL'),
('Rod', 'E', 'Mech'),
('Shock', 'B', 'EEE');
