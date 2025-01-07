Database Queries (mySQL) -----
create database college_portal;
use college_portal;
CREATE TABLE courses (
course_id INT AUTO_INCREMENT PRIMARY KEY, course_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE students (
student_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(100) NOT NULL UNIQUE, password VARCHAR(255) NOT NULL, course VARCHAR(100) NOT NULL
);
CREATE TABLE subjects (
subject_id INT AUTO_INCREMENT PRIMARY KEY, subject_name VARCHAR(100) NOT NULL, course_id INT NOT NULL, 
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
CREATE TABLE notes (
note_id INT AUTO_INCREMENT PRIMARY KEY, subject_id INT NOT NULL, file_path VARCHAR(255) NOT NULL, FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
CREATE TABLE contact_messages (
message_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(100) NOT NULL, message TEXT NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO courses (course_id, course_name)
VALUES (101, 'Computer Science');
INSERT INTO subjects (subject_id, subject_name, course_id)
VALUES (1, 'Java', 101);
INSERT INTO notes (subject_id, file_path)
VALUES (1, 'C:\\Users\\shash\\Downloads\\Notes\\Unit-1 Servlets (Complete Notes).pdf');
INSERT INTO notes (subject_id, file_path)
VALUES (1, 'C:\\Users\\shash\\Downloads\\Notes\\Unit-2 Advance Java.pdf');
