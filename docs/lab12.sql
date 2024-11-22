-- Concatenate Course Name and Semester
SELECT course_id, course_name || ' - ' || semester AS course_details
FROM courses;

-- Find Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

-- Upcoming Assignments
SELECT *
FROM assignments
WHERE due_date > date();

-- Count Assignments by Status
SELECT status, count(*) AS assignment_count
FROM assignments
GROUP BY status;

-- Longest Course Name
SELECT course_id, course_name, length(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

-- Uppercase Course Names
SELECT upper(course_name) AS course_name_uppercase
FROM courses;

-- Assignments Due in September
SELECT title
FROM assignments
WHERE due_date LIKE '____-09%';

-- Assignments with Missing Due Dates
SELECT *
FROM assignments
WHERE due_date IS NULL;
