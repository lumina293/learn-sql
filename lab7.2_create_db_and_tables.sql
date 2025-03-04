SHOW DATABASES;
CREATE DATABASE company;
USE company;

CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    place VARCHAR(50)
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    place VARCHAR(50),
    department VARCHAR(100)
);

CREATE TABLE staffs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(200),
    salary INT,
    gender ENUM('M', 'F'),
    dob DATE,
    department_id INT,
    
    FOREIGN KEY (department_id)
        REFERENCES departments (id)
);

CREATE TABLE computers (
    serial_number VARCHAR(30),
    type VARCHAR(30),
    brand VARCHAR(30),
    issued_date DATE,
    staff_id INT,
    FOREIGN KEY (staff_id)
        REFERENCES staffs (id)
);

CREATE TABLE staff_project (
    staff_id INT,
    project_id INT,
    hours FLOAT,
    FOREIGN KEY (staff_id)
        REFERENCES staffs (id),
    FOREIGN KEY (project_id)
        REFERENCES projects (id)
);

CREATE TABLE department_manager (
    department_id INT,
    staff_id INT,
    started_date DATE,
    FOREIGN KEY (department_id)
        REFERENCES departments (id),
    FOREIGN KEY (staff_id)
        REFERENCES staffs (id)
);

ALTER TABLE staffs
ADD COLUMN email VARCHAR(30);

ALTER TABLE computers
ADD COLUMN purchased_date DATE;