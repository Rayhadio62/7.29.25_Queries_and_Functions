--1. How many users have 'travel' in their bio?
--Type: Counting, filtering by string pattern.

SELECT username, bio, COUNT(*) as travel_word_count FROM users
WHERE bio LIKE'%travel%'
GROUP BY username, bio
ORDER BY travel_word_count;

--Answer: 2 users,adam_johnson and emma_brown, have the word travel in their bio.
--The data doesn't make sense without the bio column displayed. 

--2. How many posts were created between May 1st and May 10th, 2023?
--Type: Counting, filtering by date range.

SELECT created_at, user_id, COUNT(*) as created_posts FROM posts
WHERE created_at BETWEEN '2023-05-01' AND '2023-05-10'
GROUP BY created_at, user_id
ORDER BY created_posts;

--Answer: 1 post was created by user_id 17 on May 7th
--The data doesn't make sense without the user id displayed.


--3. What user has the most comments? (return the user_id)
--Type: Aggregation, grouping, ordering, limiting.

SELECT user_id, COUNT(*) as comment_count FROM comments
GROUP BY user_id
ORDER BY comment_count DESC;

--ANSWER: User_id 2, 3, 7 and 11 have 6 comments.


--4. How many users have usernames that end with 'er'?
--Type: Counting, filtering by string pattern.

SELECT username FROM users
WHERE username LIKE'%er'

--This returns frank_miller and ulrich_weber


SELECT username, COUNT(*) FROM users
WHERE username LIKE'%er'

--I'm curious as to why this only returns frank-miller. I'm sure 'COUNT' has something to do with it.

SELECT username, COUNT(*) as users FROM users
WHERE username LIKE'%er'
GROUP BY username
ORDER BY users;


--ANSWER: 2 users, frank-miller and ulrich weber.

--5. What post has the most comments? (return the post_id)
--Type: Aggregation, grouping, ordering, limiting.

SELECT post_id, COUNT(*) FROM comments
GROUP BY post_id
ORDER BY comment DESC;

--ANSWER: All posts have the same number of comments, which is 5.

--6. How many different user IDs have posted content?
--Type: Counting distinct values.

SELECT user_id, COUNT(*) as total_posts FROM posts
Group BY user_id;


--7. What user has the most people following them? (return the user_id)
--Type: Aggregation, grouping, ordering, limiting.

SELECT followed_id, follower_id, COUNT(*) as user_id FROM following 
GROUP BY followed_id, follower_id
ORDER BY user_id DESC
LIMIT 5;

--ANSWER: 


--8. From users who joined in February 2023, how many have usernames containing 'john'?
--Type: Counting, filtering by date and string pattern.

SELECT username, COUNT(*) FROM users
WHERE username LIKE '%john%' AND created_at BETWEEN '2023-02-01' AND '2023-02-28'
GROUP BY username
ORDER BY COUNT(*);

--Why doesn't BETWEEN work?

SELECT username, COUNT(*) FROM users
WHERE username LIKE '%john%' AND created_at >= '2023-02-01' <= '2023-02-28'
GROUP BY username
ORDER BY COUNT(*);

--ANSWER: adam_johnson and marcus_johnson wre users created from February 1, 2023 to February 28, 2023 
--and all have 'john' in their usernames.

--9. From users who joined in March 2023, how many have usernames containing 'mar'?
--Type: Counting, filtering by date and string pattern.

SELECT username, COUNT(*) FROM users
WHERE username LIKE '%mar%' AND created_at >= '2023-03-01' <= '2023-03-31'
GROUP BY username
ORDER BY COUNT(*);

--ANSWER: kate_martinez, Marcus_johnson, omar_hassan, rosa_martinez and tamara_ivanova were
--users who were created from March 1, 2023 to March 31, 2023 and all have 'mar' in their usernames.

--10. What post has the most reactions? (return the post_id)
--Type: Aggregation, grouping, ordering, limiting.

SELECT post_id, COUNT(*) as reaction_count
FROM reactions
GROUP BY post_id
ORDER BY reaction_count DESC;

--ANSWER: Every post has the same number of reactions, which is 5.