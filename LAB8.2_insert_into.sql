USE company;

SHOW tables;

SELECT * FROM departments;

INSERT INTO departments (id, name, place)
VALUES ('PB001', 'Kế toán', 'Cầu Giấy, Hà Nội'),
 ('PB002', 'Phát triển phần mềm', 'Cầu Giấy, Hà Nội'),
 ('PB003', 'Hành chính nhân sự', 'Hoàng Mai, Hà Nội'),
 ('PB004' , 'Hệ thống', 'Cầu Giấy, Hà Nội'),
 ('PB005', 'Kinh doanh', 'Ninh Kiều, Cần Thơ'),
 ('PB006', 'Marketing', 'Đống Đa, Hà Nội');

SELECT * FROM staffs;

DESCRIBE staffs;

ALTER TABLE staffs
MODIFY email VARCHAR(50) NULL;

ALTER TABLE staffs
DROP CONSTRAINT FK_StaffDepartment;

INSERT INTO staffs (id, name, CMND, email, department_id, gender, address, salary)
VALUES ('NV001', 'Nguyễn Phượng', '186817009', 'nguyenlinh@congty.com.vn', 'PB001', 'F', 'Hà Nội', 17000000),
		('NV002', 'Trần Phúc', '170989677', 'trananh@congty.com.vn', 'PB001' , 'F', 'Hà Nội', 23000000),
        ('NV003', 'Hoàng Nam', '123456789', 'hoangmai@congty.com.vn', 'PB002', 'M', 'Hà Nam', 24000000),
        ('NV004', 'Thái Phương', '198678313', NULL, 'PB003', 'F', 'Hà Nội', 50000000);
        
        
SELECT * FROM projects;

ALTER TABLE projects
ADD department_id VARCHAR(15);

ALTER TABLE projects
DROP COLUMN department;

ALTER TABLE projects
ADD CONSTRAINT FK_DepartmentProject
FOREIGN KEY (department_id)
REFERENCES departments(id);

DESCRIBE projects;

INSERT INTO projects (id, name, place, department_id, final_year)
VALUES ('DA0001', 'Xây dựng hệ thống Quản lý thư viện', 'Cầu Giấy, Hà Nội', 'PB001', '2021'),
		('DA0002', 'Xây dựng phần mềm kế toán', 'Cầu Giấy, Hà Nội', 'PB001', '2022'),
        ('DA0003', 'Hệ thống chăm sóc khách hàng', 'Trực Ninh, Nam Định', 'PB002', '2022'),
        ('DA0004', 'Phần mềm mua hộ vé số', 'Quận 3, Tp.HCM', 'PB004', '2020');


SELECT * FROM computers;

ALTER TABLE computers
CHANGE issued_time issued_date DATE;

ALTER TABLE computers
DROP COLUMN purchased_date;

ALTER TABLE computers
DROP COLUMN name;

INSERT INTO computers (serial_number, type, brand, issued_date, staff_id)
VALUES ('120087998', 'Desktop', 'Dell', '2022-02-12', 'NV001'),
		('120087999', 'Laptop', 'Apple', '2022-05-13', 'NV002'),
        ('MH0003', 'Desktop', 'Dell', '2021-02-04', 'NV003'),
        ('MH0004', 'Desktop', 'Acer', '2022-12-25', 'NV004');
        
SELECT * FROM staff_project;

INSERT INTO staff_project (staff_id, project_id, hours)
VALUES ('NV002', 'DA0002', 100),
		('NV003', 'DA0002', 125),
        ('NV001', 'DA0003',220),
        ('NV003', 'DA0003', 50);


SELECT * FROM department_manager;

INSERT INTO department_manager (department_id, staff_id, started_date)
VALUES ('PB001', 'NV002', '2022-04-12'),
		('PB002', 'NV003', '2022-01-01'),
        ('PB003', NULL, NULL),
        ('PB004', NULL, NULL);
