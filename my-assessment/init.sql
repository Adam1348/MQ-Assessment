-- initializa database 

DROP DATABASE IF EXISTS Company;
CREATE DATABASE Company;
USE Company;

CREATE TABLE Department (
    ID INT NOT NULL,
    DepartmentName VARCHAR(5),
    UNIQUE(DepartmentName),
    PRIMARY KEY(ID)
);

CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    last_name VARCHAR(10),
    first_name VARCHAR(10),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department(ID)
);
