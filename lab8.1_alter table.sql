USE company;

DESCRIBE departments;
DESCRIBE projects;
DESCRIBE staffs;


DESCRIBE computers;
ALTER TABLE computers
ADD PRIMARY KEY (serial_number);

ALTER TABLE staffs
ADD CONSTRAINT FK_StaffDepartment
FOREIGN KEY (id)
REFERENCES departments(id);

ALTER TABLE computers
ADD CONSTRAINT FK_ComputerStaff
FOREIGN KEY (staff_id)
REFERENCES staffs(id);

ALTER TABLE projects
ADD COLUMN final_year INT;

ALTER TABLE staffs
ADD COLUMN CMND INT;

ALTER TABLE staffs
ADD CONSTRAINT u_CMND UNIQUE (CMND);

ALTER TABLE staffs
ADD CONSTRAINT U_Email UNIQUE (email);

ALTER TABLE computers
RENAME COLUMN issued_date TO issued_time;

ALTER TABLE computers
MODIFY COLUMN issued_time DATETIME;

ALTER TABLE computers
MODIFY COLUMN purchased_date DATETIME;

ALTER TABLE computers
ADD COLUMN name VARCHAR(20);
