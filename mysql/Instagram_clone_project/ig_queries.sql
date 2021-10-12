# Find the 5 oldest users
SELECT
username,
created_at
FROM users
ORDER BY created_at LIMIT 5;

# What day of the week do most users register on?
SELECT
DAYNAME(created_at) AS name_of_day,
COUNT(*) AS total
FROM users
GROUP BY name_of_day
ORDER BY total DESC
LIMIT 3;

# Find users who have never posted a photo.
SELECT
username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE user_id IS NULL;

# Who can get the most likes on one single photo?
SELECT
photos.id,
photo_id,
username,
COUNT(photo_id) AS total
FROM likes
JOIN photos
    ON likes.photo_id = photos.id
JOIN users
    ON photos.user_id = users.id
GROUP BY
photo_id
ORDER BY total DESC
LIMIT 3;

# How many times an average user posts?
SELECT (SELECT Count(*) FROM   photos) /
        (SELECT Count(*) FROM   users) AS avg; 
        
# Top 5 most commonly used hashtags
SELECT
tag_id,
tags.tag_name,
COUNT(tag_id) AS count_of_tags
FROM photo_tags
JOIN tags 
    ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER by count_of_tags DESC
LIMIT 8;
