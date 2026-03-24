-- Create and use database
USE practice_db;

-- Reset table
DROP TABLE users;

-- Create users table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert sample user data
INSERT INTO users (name, age, city)
VALUES
('Wyatt', 23, 'Starkville'),
('Jake', 27, 'Jackson'),
('Chris', 21, 'Oxford'),
('Mason', 30, 'Birmingham'),
('Luke', 26, 'Memphis');

-- View all users
SELECT *
FROM users;

-- Total number of users
SELECT COUNT(*)
FROM users;

-- Users grouped by city
SELECT city, COUNT(*)
FROM users
GROUP BY city;

-- Average user age
SELECT AVG(age)
FROM users;

-- Users sorted by age (oldest first)
SELECT *
FROM users
ORDER BY age DESC;