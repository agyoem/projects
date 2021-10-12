SELECT title AS 'Unreviewed series'
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;


SELECT
    genre,
    AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre
ORDER BY avg_rating;


SELECT
first_name,
last_name,
IFNULL(COUNT(rating), 0) AS COUNT,
IFNULL(MIN(rating), 0) AS MIN,
IFNULL(MAX(rating), 0) AS MAX,
IFNULL(AVG(rating),0) AS AVG,
CASE
    WHEN COUNT(rating) = 0 THEN 'Inactive'
    ELSE 'Active'
END AS STATUS

FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


SELECT 
title,
rating,
CONCAT(first_name, last_name) AS reviewers
FROM series
    JOIN reviews
        ON series.id = reviews.series_id
    JOIN reviewers
        ON reviewers.id = reviews.reviewer_id;
