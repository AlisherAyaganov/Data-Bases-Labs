create database lab7;

CREATE INDEX ind1_countr_n ON countries(name);

CREATE INDEX ind2_emp_n_s ON employees(name,surname);

CREATE INDEX ind3_emp_sal ON employees(salary) WHERE salary < value1 AND salary > value2;

CREATE INDEX ind4_emp_n ON employees(substring(name from 1 for 4));

CREATE INDEX ind5_dep_budj ON departments(budget) WHERE budget>value2;

