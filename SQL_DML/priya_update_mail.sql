-- SQL_DML/06_update_priya_email.sql

USE University;

UPDATE administration
SET email = 'priya@university.com'
WHERE name = 'Priya'
  AND email = 'priya@uni.com';
