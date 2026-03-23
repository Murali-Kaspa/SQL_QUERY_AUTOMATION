-- SQL_DML/04_insert_attendance_data.sql

USE Samsung;

-- Insert dummy attendance records
INSERT INTO attendance (emp_id, attendance_date, status, check_in, check_out)
VALUES 
(1, '2026-03-20', 'Present', '09:00:00', '18:00:00'),
(2, '2026-03-20', 'Absent', NULL, NULL),
(3, '2026-03-20', 'Leave', NULL, NULL),
(1, '2026-03-21', 'Present', '09:15:00', '18:10:00'),
(2, '2026-03-21', 'Present', '09:05:00', '17:50:00');
