-- 6
DESCRIBE employees
SELECT * FROM departments;

-- 7
SELECT phone_number, employee_id, last_name, job_id, hire_date AS STARTDATE
FROM employees;

-- 8
SELECT DISTINCT job_id
FROM   employees;

-- 9
DESCRIBE employees;
SELECT employee_id "Emp #", last_name "Employee", job_id "Job", hire_date "Hire Date"
FROM employees;

-- 10
SELECT last_name||', '||job_id "Employee and Title"
FROM employees;


