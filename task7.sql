create database marks;
use marks;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);
INSERT INTO students (id, name, subject, marks) VALUES
(1, 'Priya', 'Math', 85),
(2, 'Amit', 'Science', 90),
(3, 'Sana', 'Math', 78),
(4, 'Ravi', 'Science', 70),
(5, 'Neha', 'Math', 92),
(6, 'Anil', 'Science', 88);
CREATE VIEW high_scorers AS
SELECT id, name, subject, marks
FROM students
WHERE marks > 80;
SELECT * FROM high_scorers;
CREATE VIEW subject_avg AS
SELECT subject, AVG(marks) AS average_marks
FROM students
GROUP BY subject;
SELECT * FROM subject_avg;
