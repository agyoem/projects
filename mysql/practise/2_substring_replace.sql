SELECT 
SUBSTRING(
    REPLACE(title, 'e', '3'),
    1,
    10
    )
AS 'Roviditett nev'
FROM books;
