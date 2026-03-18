-- SQL_DML/02_update_data.sql

USE company_db;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'IT';
