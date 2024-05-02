set sql_safe_updates = 0;
USE QUANLYDIEMTHI;
# Bài 2: Thêm , sửa , xoá dữ liệu [35 điểm]:
# 1. Thêm dữ liệu vào các bảng như sau [15 điểm (mỗi bảng 5 điểm)]:
# - Bảng STUDENT :
INSERT INTO STUDENT(studentId, studentName, birthday, gender, address, phoneNumber)
VALUES ('S001', 'Nguyễn Thế Anh', '1999-1-11', 1, 'Hà Nội', '984678081'),
       ('S002', 'Đặng Bảo Trâm', '1998-12-22', 0, 'Lào Cai', '904982654'),
       ('S003', 'Trần Hà Phương', '2000-5-5', 0, 'Nghệ An', '947645363'),
       ('S004', 'Đỗ Tiến Mạnh', '1999-03-26', 1, 'Hà Nội', '983665353'),
       ('S005', 'Phạm Duy Nhất', '1998-04-10', 1, 'Tuyên Quang', '987242678'),
       ('S006', 'Mai Văn Thái', '2002-06-22', 1, 'Nam Định', '982654268'),
       ('S007', 'Giang Gia Hân', '1996-11-10', 0, 'Phú Thọ', '982364753'),
       ('S008', 'Nguyễn Ngọc Bảo My', '1999-1-22', 0, 'Hà Nam', '927867453'),
       ('S009', 'Nguyễn Tiến Đạt', '1998-08-07', 1, 'Tuyên Quang', '989274673'),
       ('S010', 'Nguyễn Thiều Quang', '2000-09-18', 1, 'Hà Nội', '984378291');

# - Bảng SUBJECT :

INSERT INTO SUBJECT(subjectId, subjectName, priority)
VALUES ('MH01', 'Toán', 2),
       ('MH02', 'Vật Lý', 2),
       ('MH03', 'Hóa Học', 1),
       ('MH04', 'Ngữ Văn', 1),
       ('MH05', 'Tiếng Anh', 2);

# - Bảng MARK:

INSERT INTO MARK(studentId, subjectId, point)
VALUES ('S001', 'MH01', 8.5),
       ('S001', 'MH02', 7),
       ('S001', 'MH03', 9),
       ('S001', 'MH04', 9),
       ('S001', 'MH05', 5),
       ('S002', 'MH01', 9),
       ('S002', 'MH02', 8),
       ('S002', 'MH03', 6.5),
       ('S002', 'MH04', 8),
       ('S002', 'MH05', 6),
       ('S003', 'MH01', 7.5),
       ('S003', 'MH02', 6.5),
       ('S003', 'MH03', 8),
       ('S003', 'MH04', 7),
       ('S003', 'MH05', 7),
       ('S004', 'MH01', 6),
       ('S004', 'MH02', 7),
       ('S004', 'MH03', 5),
       ('S004', 'MH04', 6.5),
       ('S004', 'MH05', 8),
       ('S005', 'MH01', 5.5),
       ('S005', 'MH02', 8),
       ('S005', 'MH03', 7.5),
       ('S005', 'MH04', 8.5),
       ('S005', 'MH05', 9),
       ('S006', 'MH01', 8),
       ('S006', 'MH02', 10),
       ('S006', 'MH03', 9),
       ('S006', 'MH04', 7.5),
       ('S006', 'MH05', 6.5),
       ('S007', 'MH01', 9.5),
       ('S007', 'MH02', 9),
       ('S007', 'MH03', 6),
       ('S007', 'MH04', 9),
       ('S007', 'MH05', 4),
       ('S008', 'MH01', 10),
       ('S008', 'MH02', 8.5),
       ('S008', 'MH03', 8.5),
       ('S008', 'MH04', 6),
       ('S008', 'MH05', 9.5),
       ('S009', 'MH01', 7.5),
       ('S009', 'MH02', 7),
       ('S009', 'MH03', 9),
       ('S009', 'MH04', 5),
       ('S009', 'MH05', 10),
       ('S010', 'MH01', 6.5),
       ('S010', 'MH02', 8),
       ('S010', 'MH03', 5.5),
       ('S010', 'MH04', 4),
       ('S010', 'MH05', 7);

# 2. Cập nhật dữ liệu [10 điểm]:
# - Sửa tên sinh viên có mã `S004` thành “Đỗ Đức Mạnh”.
UPDATE STUDENT
SET studentName = 'Đỗ Đức Mạnh'
WHERE studentId = 'S004';

SELECT *
FROM STUDENT
WHERE studentId = 'S004';

# - Sửa tên và hệ số môn học có mã `MH05` thành “Ngoại Ngữ” và hệ số là 1.
UPDATE SUBJECT
SET subjectName = 'Ngoại Ngữ',
    priority    = 1
WHERE subjectId = 'MH05';

SELECT *
FROM SUBJECT
WHERE subjectId = 'MH05';

# - Cập nhật lại điểm của học sinh có mã `S009` thành (MH01 : 8.5, MH02 : 7,MH03 : 5.5, MH04 : 6, MH05 : 9).
# UPDATE MARK
# SET point = 8.5
# WHERE studentId = 'S009'
#   AND subjectId = 'MH01';
#
# UPDATE MARK
# SET point = 7
# WHERE studentId = 'S009'
#   AND subjectId = 'MH02';
#
# UPDATE MARK
# SET point = 5.5
# WHERE studentId = 'S009'
#   AND subjectId = 'MH03';
#
# UPDATE MARK
# SET point = 6
# WHERE studentId = 'S009'
#   AND subjectId = 'MH04';
#
# UPDATE MARK
# SET point = 9
# WHERE studentId = 'S009'
#   AND subjectId = 'MH05';

UPDATE MARK
SET point = CASE
                WHEN subjectId = 'MH01' THEN 8.5
                WHEN subjectId = 'MH02' THEN 7
                WHEN subjectId = 'MH03' THEN 5.5
                WHEN subjectId = 'MH04' THEN 6
                WHEN subjectId = 'MH05' THEN 9
    END
WHERE studentId = 'S009';

SELECT *
FROM MARK
WHERE studentId = 'S009';

# 3. Xoá dữ liệu[10 điểm]:
# - Xoá toàn bộ thông tin của học sinh có mã `S010` bao gồm điểm thi ở bảng MARK và thông tin học sinh
# này ở bảng STUDENT.
DELETE
FROM MARK
WHERE studentId = 'S010';

SELECT * 
FROM MARK
WHERE studentId = 'S010';

DELETE
FROM STUDENT
WHERE studentId = 'S010';

SELECT * 
FROM STUDENT
WHERE studentId = 'S010';

# Bài 3: Truy vấn dữ liệu [25 điểm]:
# 1. Lấy ra tất cả thông tin của sinh viên trong bảng Student . [4 điểm]
SELECT *
FROM STUDENT;

# 2. Hiển thị tên và mã môn học của những môn có hệ số bằng 1. [4 điểm]
SELECT subjectName AS 'Môn Học', subjectId AS 'Mã Môn Học'
FROM SUBJECT
WHERE priority = 1;

# 3. Hiển thị thông tin học sinh bào gồm: mã học sinh, tên học sinh, tuổi (bằng năm hiện tại trừ
# năm sinh) , giới tính (hiển thị nam hoặc nữ) và quê quán của tất cả học sinh. [4 điểm]
SELECT studentId                                     AS 'Mã Học Sinh',
       studentName                                   AS 'Tên Học Sinh',
       YEAR(now()) - YEAR(birthday)                  AS 'Tuổi',
       CASE WHEN gender = 1 THEN 'Nam' ELSE 'Nữ' END AS 'Giới Tính',
       address                                       AS 'Quê Quán'
FROM STUDENT;

# 4. Hiển thị thông tin bao gồm: tên học sinh, tên môn học , điểm thi của tất cả học sinh của môn
# Toán và sắp xếp theo điểm giảm dần. [4 điểm]
SELECT STU.studentName AS 'Tên Học Sinh', S.subjectName AS 'Môn Học', M.point AS 'Điểm thi'
FROM (MARK M JOIN SUBJECT S on M.subjectId = S.subjectId)
         JOIN STUDENT STU ON M.studentId = STU.studentId
WHERE S.subjectName = 'Toán'
ORDER BY M.point DESC;


# 5. Thống kê số lượng học sinh theo giới tính ở trong bảng (Gồm 2 cột: giới tính và số lượng).[4 điểm]
SELECT CASE WHEN gender = 1 THEN 'Nam' ELSE 'Nữ' END AS 'Giới Tính', count(studentId) AS 'Số lượng'
FROM STUDENT
GROUP BY gender;

# 6. Tính tổng điểm và điểm trung bình của các môn học theo từng học sinh (yêu cầu sử dụng hàm
# để tính toán) , bảng gồm mã học sinh, tên hoc sinh, tổng điểm và điểm trung bình. [5 điểm]
SELECT S.studentId   AS 'Mã Học Sinh',
       S.studentName AS 'Tên Học Sinh',
       SUM(M.point)  AS 'Tổng điểm',
       AVG(M.point)  AS 'Điểm Trung Bình'
FROM STUDENT S
         JOIN MARK M on S.studentId = M.studentId
group by S.studentId, S.studentName;

# Bài 4: Tạo View, Index, Procedure [20 điểm]:
# 1. Tạo VIEW có tên STUDENT_VIEW lấy thông tin sinh viên bao gồm : mã học sinh, tên học
# sinh, giới tính , quê quán . [3 điểm]
CREATE VIEW STUDENT_VIEW AS
SELECT studentId                                     AS 'Mã Sinh Viên',
       studentName                                   AS 'Tên Học Sinh',
       CASE WHEN gender = 1 THEN 'Nam' ELSE 'Nữ' END AS 'Giới Tính',
       address                                       AS 'Quê Quán'
FROM STUDENT;

SELECT *
FROM STUDENT_VIEW;

# 2. Tạo VIEW có tên AVERAGE_MARK_VIEW lấy thông tin gồm:mã học sinh, tên học sinh,
# điểm trung bình các môn học . [3 điểm]
CREATE VIEW AVERAGE_MARK_VIEW AS
SELECT M.studentId AS 'Mã Học Sinh', S.studentName AS 'Tên Học Sinh', AVG(M.point) AS 'Điểm Trung Bình Các Môn'
FROM MARK M
         JOIN STUDENT S on M.studentId = S.studentId
GROUP BY M.studentId, S.studentName;

SELECT *
FROM AVERAGE_MARK_VIEW;

# 3. Đánh Index cho trường `phoneNumber` của bảng STUDENT. [2 điểm]
ALTER TABLE STUDENT
    ADD INDEX phoneNumber_Index (phoneNumber);

# 4. Tạo các PROCEDURE sau:
# - Tạo PROC_INSERTSTUDENT dùng để thêm mới 1 học sinh bao gồm tất cả
# thông tin học sinh đó. [3 điểm]
DELIMITER $$
CREATE PROCEDURE PROC_INSERTSTUDENT(studentId_IN varchar(4), studentName_IN varchar(100), birthday_IN date,
                                    gender_IN bit(1), address_IN text, phoneNumber_IN varchar(45))
BEGIN
    INSERT INTO STUDENT(studentId, studentName, birthday, gender, address, phoneNumber)
    VALUES (studentId_IN, studentName_IN, birthday_IN, gender_IN, address_IN, phoneNumber_IN);
end $$
DELIMITER ;

CALL PROC_INSERTSTUDENT('S011', 'Nguyễn Văn Tiến', '2000-12-29', 0, 'Hà Nội', '0987654321');

SELECT *
FROM STUDENT
WHERE studentId = 'S011';

# - Tạo PROC_UPDATESUBJECT dùng để cập nhật tên môn học theo mã môn học.
# [3 điểm]
DELIMITER $$
CREATE PROCEDURE PROC_UPDATESUBJECT(subjectId_IN varchar(4), subjectName_IN varchar(45))
BEGIN
    UPDATE SUBJECT
    SET subjectName = subjectName_IN
    WHERE subjectId = subjectId_IN;
end $$
DELIMITER ;

CALL PROC_UPDATESUBJECT('MH04', 'Tiếng Việt');

SELECT * 
FROM SUBJECT
WHERE subjectId = 'MH04';

# - Tạo PROC_DELETEMARK dùng để xoá toàn bộ điểm các môn học theo mã học sinh. [3 điểm]
DELIMITER $$
CREATE PROCEDURE PROC_DELETEMARK(studenID_IN varchar(4))
BEGIN
    DELETE
    FROM MARK
    WHERE studentId = studenID_IN;
end $$
DELIMITER ;

CALL PROC_DELETEMARK('S009');

SELECT * 
FROM MARK
WHERE studentId = 'S009';