USE company;

SELECT *
FROM staffs;

SELECT *
FROM departments;


-- Lấy danh sách gồm Mã nhân viên; Họ tên nhân viên; Email; Số CMND, Mã phòng ban; Tên phòng ban của tất cả phòng ban có địa chỉ ở Cầu Giấy, Hà Nội

SELECT s.id, s.name, s.email, s.CMND, s.department_id
FROM staffs s
	JOIN departments d ON d.id = s.department_id
WHERE
    d.place = 'Cầu Giấy, Hà Nội'

-- Lấy danh sách gồm Số serial, Loại máy tính, Nhà sản xuất, Ngày cấp của các máy tính được cấp cho nhân viên đến từ phòng Kế toán

SELECT * FROM computers;

UPDATE departments SET name = 'Phát triển phần mềm' WHERE id = 'PB002';
 
 
SELECT c.serial_number, c.type, c.brand, c.issued_date
FROM computers c
	JOIN staffs s ON s.id = c.staff_id
	JOIN departments d ON s.department_id = d.id
WHERE
    d.name = 'Kế toán'

-- SELECT c.serial_number, c.type, c.brand, c.issued_date
-- FROM computers c
-- 	JOIN staffs s ON s.id = c.staff_id
--  JOIN departments d ON s.department_id = d.id
-- WHERE d.id = 'PB001';


-- Lấy danh sách gồm Mã dự án, Tên dự án, Địa điểm; Năm kết thúc do các nhân viên thuộc phòng Phát triển phần mềm thực hiện

SELECT *
FROM projects;

SELECT p.id, p.name, p.place, p.final_year
FROM projects p
	JOIN departments d ON p.department_id = d.id
WHERE
    d.name = 'Phát triển phần mềm';
    

-- Lấy danh sách gồm Mã phòng ban, Tên phòng ban, Địa điểm, Người quản lý, Ngày bắt đầu của tất cả phòng ban có Người quản lý là Nữ

SELECT * 
FROM department_manager;

SELECT d.id, d.name, d.place, s.id, dm.started_date
FROM departments d
	JOIN department_manager dm ON d.id = dm.department_id
	JOIN staffs s ON s.department_id = d.id
WHERE
    s.gender = 'F';
    
    

-- Lấy danh sách gồm Mã nhân viên, Họ tên, Email, Số CMND, Mã phòng ban, Tên phòng ban của tất cả nhân viên có số giờ làm việc trên từng dự án lớn hơn 100 giờ

SELECT *
FROM staff_project;

SELECT *
FROM departments;

SELECT s.id, s.name, s.email, s.CMND, d.id, d.name
FROM staffs s
	JOIN staff_project sp ON s.id = sp.staff_id
	JOIN departments d ON s.department_id = d.id
WHERE
    sp.hours > 100;


