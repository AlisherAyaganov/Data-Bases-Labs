create database lab6;
Create table locations(
    location SERIAL PRIMARY KEY,
    street_address VARCHAR(25),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(12)
);

CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    department_name varchar(50) UNIQUE,
    budget INTEGER,
    location_id INTEGER REFERENCES locations
);
CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    salary INTEGER,
    manager_id INTEGER REFERENCES employees,
    department_id INTEGER REFERENCES departments
);
create table job_grades(
    grade char(1),
    lowest_salary integer,
    highest_salary integer
);

SELECT E.first_name,E.last_name, D.department_name, L.city, L.state_province FROM employees E
JOIN departments D ON E.department_id = D.department_id
JOIN locations L ON D.location_id = L.location_id
WHERE E.first_name LIKE  '%b%';


SELECT D.department_name , L.city , L.state_province FROM  departments D JOIN locations L
ON  D.location_id = L.location_id;


SELECT E.first_name , M.first_name  FROM employees E LEFT OUTER JOIN employees M
ON E.manager_id = M.employee_id;


SELECT first_name AND last_name AS Employee_name, salary FROM employees
JOIN departments USING (department_id) JOIN  locations USING (location_id) WHERE  city = 'London';