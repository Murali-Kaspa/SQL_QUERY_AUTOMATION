-- Rollback/06_rollback_priya_email.sql

USE University;

UPDATE administration
SET email = 'priya@uni.com'
WHERE name = 'Priya'
  AND email = 'priya@university.com';
