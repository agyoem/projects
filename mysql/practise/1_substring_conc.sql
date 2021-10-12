SELECT 

author_lname AS 'Author',
CONCAT
(
    SUBSTRING(title, 1, 10),
    '...'
)
AS 'Shortname'
FROM books;
