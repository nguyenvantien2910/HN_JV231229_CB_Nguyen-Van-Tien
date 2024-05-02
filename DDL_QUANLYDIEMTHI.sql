#DROP DATABASE QUANLYDIEMTHI;
#Bài 1: Tạo CSDL [20 điểm]:
CREATE DATABASE IF NOT EXISTS QUANLYDIEMTHI;

USE QUANLYDIEMTHI;

#1. Bảng STUDENT [5 điểm]
CREATE TABLE STUDENT
(
    studentId   varchar(4)   not null,
    studentName varchar(100) not null,
    birthday    date         not null,
    gender      bit(1)       not null,
    address     text         not null,
    phoneNumber varchar(45) unique,

    PRIMARY KEY (studentId)
);

CREATE TABLE SUBJECT
(
    subjectId   varchar(4)  not null,
    subjectName varchar(45) not null,
    priority    int(11)     not null,

    PRIMARY KEY (subjectId)
);

CREATE TABLE MARK
(
    subjectId varchar(4) not null,
    studentId varchar(4) not null,
    point     float      not null,

    PRIMARY KEY (subjectId, studentId)
);

ALTER TABLE MARK
    ADD CONSTRAINT mark_subject_pk FOREIGN KEY (subjectId) REFERENCES SUBJECT (subjectId),
    ADD CONSTRAINT mark_student_pk FOREIGN KEY (studentId) REFERENCES STUDENT (studentId);