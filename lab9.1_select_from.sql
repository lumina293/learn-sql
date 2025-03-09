USE company;

SELECT * FROM staffs;

-- Từ bảng NHANVIEN hãy lấy danh sách gồm Họ tên; Mã Phòng ban của tất cả nhân viên Nữ

SELECT name, department_id FROM staffs
WHERE gender = 'F';

-- Từ bảng PHONGBAN, lấy danh sách của tất cả Phòng ban có địa điểm ở Cầu Giấy, Hà Nội

SELECT * FROM departments;

SELECT name FROM departments
WHERE place = 'Cầu Giấy, Hà Nội';

-- Có bao nhiêu nhân viên không có Email được nhập vào Bảng NHANVIEN
SELECT * FROM staffs
WHERE Email is NULL;

-- Từ bảng NHANVIEN, lấy danh sách gồm Mã nhân viên; Họ tên; Số CMND; Email của tất cả Nhân viên có giới tính là Nữ và có họ là Nguyễn  

SELECT id, name, CMND, email FROM staffs
WHERE gender = 'F'
AND name LIKE 'Nguyễn%';

--  Từ bảng NHANVIEN, lấy danh sách gồm Mã nhân viên; Họ tên; Số CMND; Email của tất cả nhân viên mà trong Tên có chữ “Ph”

SELECT id, name, CMND, email FROM staffs
WHERE name LIKE '%_Ph_%';

--  Từ bảng NHANVIEN hãy lấy danh sách gồm: Mã nhân viên; Họ tên; Số CMND; Quê quán; Giới tính; Email và sắp xếp theo thứ tự bảng chữ cái từ A-Z với trường Họ

SELECT id, name, CMND, address, gender, email FROM staffs
ORDER BY name;

--  Từ bảng NHANVIEN hãy chọn 3 Nhân viên có mức lương cao nhất, sắp xếp theo thứ tự từ cao đến thấp

SELECT * FROM staffs
ORDER BY salary DESC
LIMIT 3;

--  Từ bảng DUAN, lấy danh sách các dự án kết thúc năm 2022

SELECT * FROM projects;

SELECT name FROM projects
WHERE final_year = 2022;

-- Từ bảng MAYTINH lấy danh sách các máy tính có nhà sản xuất là Dell

SELECT * FROM computers;

SELECT * FROM computers
WHERE brand = 'Dell';  











