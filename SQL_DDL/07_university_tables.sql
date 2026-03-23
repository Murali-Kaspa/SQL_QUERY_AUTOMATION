-- 02_create_tables.sql

USE University;

-- Administration Table
CREATE TABLE IF NOT EXISTS administration (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(100),
    email VARCHAR(100)
);

-- Library Table
CREATE TABLE IF NOT EXISTS library (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(150),
    author VARCHAR(100),
    category VARCHAR(100)
);

-- Transportation Table
CREATE TABLE IF NOT EXISTS transportation (
    transport_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_type VARCHAR(50),
    route VARCHAR(100),
    driver_name VARCHAR(100)
);

-- Placement Table
CREATE TABLE IF NOT EXISTS placement (
    placement_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(100),
    student_name VARCHAR(100),
    package DECIMAL(10,2)
);

-- Sports Table
CREATE TABLE IF NOT EXISTS sports (
    sport_id INT AUTO_INCREMENT PRIMARY KEY,
    sport_name VARCHAR(100),
    coach_name VARCHAR(100),
    team_size INT
);
