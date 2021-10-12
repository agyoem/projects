SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname='Eggers' OR author_lname='CHabon';
SELECT * FROM books WHERE author_lname='Lahiri' AND released_year > 2000;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
 SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';



SELECT title, author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%Just kids%' OR title LIKE '%A heartbreaking work%' THEN 'Memoir'
        ELSE 'Novel'
    END
    AS Type
FROM books;



SELECT author_lname,

CASE 
    WHEN COUNT(title)=1 THEN CONCAT(COUNT(title), ' book')
    ELSE  CONCAT(COUNT(title), ' books')
END
    AS 'Count'
FROM books
GROUP BY 
author_lname,
author_fname;
