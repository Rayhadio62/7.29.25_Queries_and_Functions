SELECT * FROM users;

SELECT username FROM users
WHERE username LIKE '%john%';

SELECT * FROM users
WHERE created_at BETWEEN '2023-02-01' AND '2023-02-28';

SELECT username, created_at FROM users
WHERE created_at BETWEEN '2023-02-01' AND '2023-02-28';


SELECT * FROM users
WHERE username LIKE 'a%'
ORDER BY username ASC;