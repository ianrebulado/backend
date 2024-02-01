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

DROP TABLE classrooms

CREATE TABLE classrooms(
id              integer     PRIMARY KEY,
student_id      integer     NOT NULL,
section         VARCHAR(1)  NOT NULL
);

INSERT INTO classrooms (id, student_id, section)
VALUES
(1, 1, 'A'),
(2, 2, 'A'),
(3, 3, 'B'),
(4, 4, 'C'),
(5, 5, 'B'),
(6, 6, 'A'),
(7, 7, 'C'),
(8, 8, 'B'),
(9, 9, 'B'),
(10, 10, 'C');

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


-- 

-- DROP TABLE research_papers
-- DROP TYPE VALID_GRADE


CREATE TYPE VALID_GRADE AS ENUM ('A', 'B', 'C', 'D', 'E', 'F');

CREATE TABLE research_papers(
id              INT                     PRIMARY KEY,
student_id      INT                     NOT NULL,
grade           VALID_GRADE,

FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers(id, student_id, grade)
VALUES
(1, 1, 'A'),
(2, 1, 'B'),
(3, 2, 'C'),
(4, 2, 'D'),
(5, 3, 'F'),
(6, 4, 'A'),
(7, 5, 'A'),
(8, 5, 'F'),
(9, 4, NULL),
(10, 5, NULL);

-- SELECT * FROM research_papers


-- QUERY ALL STUDENTS W MULTIPLE PAPERS
SELECT s.first_name first_name, s.last_name last_name, COUNT(r.id) papers
FROM students s
INNER JOIN research_papers r ON s.id = r.student_id
GROUP BY s.id
HAVING COUNT(r.id) > 1

-- QUERY ALL STUDENTS WITH UNGRADED PAPERS
SELECT s.first_name first_name, s.last_name last_name,
       r.id paper_id, r.grade grade
FROM students s
    INNER JOIN research_papers r ON s.id = r.student_id
WHERE r.grade IS NULL;

