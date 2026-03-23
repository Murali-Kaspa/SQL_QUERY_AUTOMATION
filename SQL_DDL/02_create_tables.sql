-- SQL_DDL/02_create_tables.sql

USE Samsung;

-- Employees Table
CREATE TABLE IF NOT EXISTS employees (

    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    department VARCHAR(100),
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Departments Table
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) UNIQUE,
    location VARCHAR(100)
);

-- Projects Table
CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(150),
    emp_id INT,
    start_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


CREATE TABLE IF NOT EXISTS branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    building_name VARCHAR(100),
    block VARCHAR(10),
    department VARCHAR(50)
);
-- SQL_DDL/04_create_attendance_table.sql

USE Samsung;

-- Attendance Table
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status ENUM('Present', 'Absent', 'Leave') DEFAULT 'Present',
    check_in TIME,
    check_out TIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
