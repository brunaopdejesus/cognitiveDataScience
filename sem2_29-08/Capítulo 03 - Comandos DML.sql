--Inserindo  Linhas
DESC departments;

INSERT INTO departments
(department_id, department_name, manager_id, location_id)
VALUES (271, 'Public Relations', 100, 1700);

--Posso omitir o nome das colunas
INSERT INTO departments
VALUES (280, 'Public Relations', 100, 1700);

--Inserindo Linhas com Valores Nulos
INSERT INTO	departments (department_id, department_name)
VALUES (290, 'Purchasing');

INSERT INTO	departments
VALUES		(300, 'Finance', NULL, NULL);

--Alterando os Dados de uma Tabela
UPDATE employees
SET    department_id = 123
WHERE  employee_id = 110;
desc employees;

UPDATE 	employees
SET    	department_id = null;

--Removendo uma Linha de uma Tabela
DELETE FROM departments
WHERE  department_name = 'Executive';

DELETE FROM  job_grades;

UPDATE 	departments
SET    	manager_id = null;









