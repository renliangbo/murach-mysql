CREATE DATABASE ar CHARSET latin1 COLLATE latin1_swedish_ci;

ALTER DATABASE ar CHARSET utf8 COLLATE utf8_general_ci;

ALTER DATABASE ar CHARSET utf8;

ALTER DATABASE ar COLLATE utf8_general_ci;

CREATE TABLE employees
(
  emp_id        INT          PRIMARY KEY,
  emp_name      VARCHAR(25)
)
CHARSET latin1 COLLATE latin1_swedish_ci;

ALTER TABLE employees 
CHARSET utf8 COLLATE utf8_general_ci;

CREATE TABLE employees
(
  emp_id        INT          PRIMARY KEY,
  emp_name      VARCHAR(25)  CHARSET latin1 COLLATE latin1_swedish_ci
);

ALTER TABLE employees
MODIFY emp_name VARCHAR(25) CHARSET utf8 COLLATE utf8_general_ci;