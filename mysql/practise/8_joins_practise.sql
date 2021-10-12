CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20)
        );
    
    
CREATE TABLE papers(
    title VARCHAR(20),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE                                               
                 );
                 
                 
SELECT first_name, title, grade FROM students
RIGHT JOIN papers
    ON papers.student_id = students.id
ORDER BY grade DESC;


SELECT 
first_name,
IFNULL(title, 'missing'),
IFNULL(grade, 0)
FROM students
LEFT JOIN papers
    ON papers.student_id = students.id;


SELECT 
first_name,
IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON papers.student_id = students.id
GROUP BY first_name
ORDER BY average DESC;


SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) > 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS 'passing_status'
FROM students
LEFT JOIN papers
    ON papers.student_id = students.id
GROUP BY first_name
ORDER BY average DESC;
