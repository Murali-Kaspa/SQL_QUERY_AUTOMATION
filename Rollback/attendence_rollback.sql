-- Rollback/04_delete_attendance_data.sql

USE Samsung;

DELETE FROM attendance
WHERE attendance_date IN ('2026-03-20', '2026-03-21');
