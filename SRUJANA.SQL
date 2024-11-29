-- Lab 11: SQL Queries
-- This file contains all queries run during Lab 11 for practice with SQLite databases.

-- Step 3: Run Basic Queries

-- Query 1: Select all records from the Courses table
SELECT * 
FROM courses;

-- Query 2: Select the first 10 records from the Assignments table
SELECT * 
FROM assignments
LIMIT 10;

-- Query 3: Count the total number of courses
SELECT count(*) 
FROM courses;

-- Query 4: Find the earliest assignment due date
SELECT min(due_date) 
FROM assignments;

-- Query 5: Find all courses with names starting with 'Intro'
SELECT *
FROM courses
WHERE course_name LIKE 'Intro%';

-- Query 6: Find all assignments that are not completed, ordered by due date
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Query 7: Find assignments for COMM courses due before 2024-12-31 and not completed
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- Step 4: Write Queries for Exercises

-- Exercise 1: Assignments for a specific course (COMP1234)
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Exercise 2: Find the earliest assignment due date
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- Exercise 3: Find the latest assignment due date
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- Exercise 4: Find assignments due on a specific date (2024-10-08)
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Exercise 5: Find assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- Exercise 6: Find the most recent completed assignment
SELECT max(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';

-- Optional Tasks

-- Task 1: Count the number of assignments with a status of 'Not Started'
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Task 2: Find courses with lab sessions on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_time LIKE '%Tue%';

-- Task 3: Join the Courses and Assignments tables
-- This query retrieves course details along with assignment details
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments
  ON courses.course_id = assignments.course_id;

-- End of Lab 11 SQL Queries
