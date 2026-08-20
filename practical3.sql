CREATE DATABASE dbms_p3; USE dbms_p3;

CREATE TABLE department ( department_id INT PRIMARY KEY, department_name VARCHAR(30) );

CREATE TABLE student ( student_id INT PRIMARY KEY, student_name VARCHAR(30), department_id INT, FOREIGN KEY (department_id) REFERENCES department(department_id) );

CREATE TABLE course ( course_id INT PRIMARY KEY, course_name VARCHAR(30), department_id INT, FOREIGN KEY (department_id) REFERENCES department(department_id) );

CREATE TABLE enrollment ( enrollment_id INT PRIMARY KEY, student_id INT, course_id INT, FOREIGN KEY (student_id) REFERENCES student(student_id), FOREIGN KEY (course_id) REFERENCES course(course_id) );

INSERT INTO department VALUES (1, 'Computer Science'), (2, 'Electronics');

INSERT INTO student VALUES (101, 'Rahul', 1), (102, 'Manthan', 2);

INSERT INTO course VALUES (201, 'DBMS', 1), (202, 'Digital System Design', 2);

INSERT INTO enrollment VALUES (1, 101, 201), (2, 102, 202);

SELECT * FROM department; SELECT * FROM student; SELECT * FROM course; SELECT * FROM enrollment;