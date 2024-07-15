

-- //// task 1

SELECT * FROM employees;


-- //// task 2

SELECT name, salary  FROM employees;


-- //// task 3

SELECT name, salary  FROM employees WHERE salary > 50,000;


-- ////task 4

SELECT name, salary  FROM employees WHERE name LIKE 'j%';


-- //// task 5

SELECT name, salary, department  FROM employees WHERE departments IN (1, 2, 3);


-- //// task 6

SELECT name, salary, hire_date  FROM employees ORDER BY hire_date DESC;


-- //// task 7

SELECT COUNT(name) FROM employees;


-- //// task 8

SELECT SUM(salary) FROM employees;


-- //// 9

SELECT AVG(salary) FROM employees;


-- //// 10

SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;


-- //// 11

SELECT name, salary FROM employees WHERE salary > 50,000;

SELECT name, salary FROM employees GROUP BY department HAVING AVG(salary) > 50,000;


-- //// 12

CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (employee_id)
)

CREATE TABLE employee_details (
    employee_id INT(4),
    salary INT(4),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
)



-- //// 13

CREATE TABLE departments (
    department_id INT(4) NOT NULL,
    department_name VARCHAR(22),
    PRIMARY KEY (department_id)
)


CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    department_id INT(4) NOT NULL,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
)


-- //// 14


CREATE TABLE students (
    student_id INT(4) NOT NULL,
    student_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (student_id),
)

CREATE TABLE courses (
    course_id INT(4) NOT NULL,
    course_name VARCHAR(22) NOT NULL,
    PRIMARY KEY (course_id)
)

CREATE TABLE student_courses (
    student_id INT(4) NOT NULL,
    course_id INT(4) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
)


-- //// 15


CREATE TABLE departments (
    department_id INT(4) NOT NULL,
    department_name VARCHAR(22),
    PRIMARY KEY (department_id)
)


CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    department_id INT(4) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
)


-- //// 16

CREATE TABLE employee (
    employee_id INT(4) NOT NULL UNIQUE,
    employee_name VARCHAR(22) NOT NULL UNIQUE
)
-- //// 17


CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    employee_email VARCHAR(22) NOT NULL UNIQUE,
    PRIMARY KEY (employee_id)
)



-- //// 18


CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    salary INT(4) NOT NULL,
    CHECK (salary > 0),
)


 -- //// 19

 
CREATE TABLE employees (
    employee_id INT(4) NOT NULL,
    employee_name VARCHAR(20) NOT NULL,
    employee_status VARCHAR(22) DEFAULT 'Active',
)