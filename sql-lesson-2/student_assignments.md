# SQL Basics 

---

## In-Class Assignment 1: Basic Queries and Data Retrieval

### Task 1: Basic SELECT and WHERE
Write a query to find all users whose usernames contain 'john'.

SELECT username FROM users
WHERE username LIKE '%john%';


### Task 2: Comparison Operators
Find all users who joined the platform in February 2023.

SELECT username FROM users
WHERE created_at BETWEEN '2023-02-01' AND '2023-02-28';

### Task 3: Pattern Matching and ORDER BY
Find all usernames that start with 'a' and sort them alphabetically.

SELECT username FROM users
WHERE username LIKE 'a%'

---

## In-Class Assignment 2: Aggregations and Grouping

### Task 1: Basic Aggregations
Count the total number of posts in the database.

### Task 2: GROUP BY
Count how many comments each post has received.

### Task 3: HAVING Clause
Find all users who have created more than 1 post.

---

## In-Class Assignment 3: Advanced Analysis and Real-World Scenarios

### Task 1: String Functions
Find all users who have bios longer than 80 characters.

### Task 2: Date Analysis
Find all posts created in March 2023.

### Task 3: NULL Handling
Find all users who don't have a bio.

---

