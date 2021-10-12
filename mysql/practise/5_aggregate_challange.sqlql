SELECT COUNT(title) from books;
SELECT released_year, COUNT(title) FROM books GROUP BY released_year;
SELECT SUM(stock_quantity) FROM books;
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;
 SELECT CONCAT(author_fname, author_lname) AS 'fullname',
     pages
     FROM books ORDER BY pages DESC LIMIT 1;
 
 
 
 SELECT
     released_year AS 'year',
     COUNT(title) AS '# books',
     AVG(pages) AS 'avg pages'
FROM books
 GROUP BY released_year;
