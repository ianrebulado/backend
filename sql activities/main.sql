-- ACTIVITY 1

CREATE TABLE students(
id           integer                    PRIMARY KEY,
first_name   character varying(100)     NOT NULL,
middle_name  character varying(100),
last_name    character varying(100)     NOT NULL,
age          integer                    NOT NULL,
location     text						NOT NULL
);


INSERT INTO students (id, first_name, last_name, age, location)
VALUES 
(1, 'Juan', 'Cruz', 18,'Manila'),
(2, 'Anne', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Joseph', 21, 'Manila'),
(4, 'Isaac', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Matthews', 22,'Marikina'),
(6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6;

SELECT COUNT(*)
FROM students;

SELECT *
FROM students
WHERE location = 'Manila';

SELECT AVG(age) 
FROM students;

SELECT * 
FROM students 
ORDER BY age DESC;


-- ACTIVITY 2

CREATE TABLE classrooms(
id              integer     PRIMARY KEY,
student_id      integer     NOT NULL,
section         character varying(50) NOT NULL
);

INSERT INTO classrooms (id, student_id, section)
VALUES
(1, 1, "A"),
(2, 2, "A"),
(3, 3, "B"),
(4, 4, "C"),
(5, 5, "B"),
(6, 6, "A"),
(7, 7, "C"),
(8, 8, "B"),
(9, 9, "B"),
(10, 10, "C");

SELECT * FROM students;
SELECT * FROM classrooms;

SELECT * FROM students s
JOIN classrooms c 
ON s.id = c.student_id;

SELECT * FROM students s
LEFT JOIN classrooms c
ON s.id = c.student_id;

SELECT * FROM students s
RIGHT JOIN classrooms c 
ON s.id = c.student_id;

SELECT * FROM students s
FULL JOIN classrooms c
ON s.id = c.student_id;