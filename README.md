# EXP3
DROP TABLE IF EXISTS enrollment;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO department VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics');

CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    aadhar_no VARCHAR(12) UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO student VALUES
(101, 'Atharva', 'atharva@gmail.com', '123456789012', 1),
(102, 'Rishabh', 'rishabh@gmail.com', '123456789013', 2),
(103, 'Someone', 'someone@gmail.com', '123456789014', 1);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO course VALUES
(1, 'Database Management', 1),
(2, 'Python Programming', 1),
(3, 'Computer Networks', 2);

CREATE TABLE enrollment (
    roll_no INT,
    course_id INT,
    semester INT CHECK (semester BETWEEN 1 AND 8),
    grade CHAR(2),
    PRIMARY KEY (roll_no, course_id, semester),
    FOREIGN KEY (roll_no) REFERENCES student(roll_no),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

INSERT INTO enrollment VALUES
(101, 1, 3, 'A'),
(102, 3, 3, 'B'),
(103, 2, 4, 'A');
