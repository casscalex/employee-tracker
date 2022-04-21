DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;
CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);
CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);
CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
use employees;
INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Customer Sucess'),
    ('Enginerring'),
    ('Executive');
INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Assosiate', 45000, 1),
    ('Senior Assosiate', 70000, 1),
    ('Sale Executive', 120000, 2),
    ('Team Manager', 150000, 2),
    ('Software Engineer', 130000, 3),
    ('Customer Sucess Manager', 95000, 3),
    ('Director', 200000, 4),
    ('CEO', 350000, 4);
INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Cristiano', 'Ronaldo', 1, NULL),
    ('Lionel', 'Messi', 2, 1),
    ('Diego', 'Maradona', 3, NULL),
    ('Andres', 'Iniesta', 4, 3),
    ('Luka', 'Mordic', 5, NULL),
    ('Gianluigi', 'Buffon', 6, 5),
    ('Xavi', 'Hernandez', 7, NULL),
    ('Luis', 'Suarex', 8, 7);