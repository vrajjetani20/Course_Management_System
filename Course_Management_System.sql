-- Course Management System --

-- Database --
create database uni_management;
use uni_management;

-- Department table --
create table Departments(
	DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert valuse into departments --
INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Mathematics');

-- Student Table --
create table Students(
	StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);

-- Insert value into Students Table --
INSERT INTO Students VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
(3, 'Michael', 'Brown', 'michael.brown@email.com', '2001-03-10', '2023-07-15'),
(4, 'Emma', 'Wilson', 'emma.wilson@email.com', '2000-11-20', '2020-08-01'),
(5, 'David', 'Taylor', 'david.taylor@email.com', '1998-06-12', '2019-08-01'),
(6, 'Sophia', 'Martin', 'sophia.martin@email.com', '2002-09-05', '2024-08-01');


-- Course Table --
create table Courses(
	CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    
    foreign key (DepartmentID)
    references Departments(DepartmentID)
);

-- Insert valuse into Courses Table --
INSERT INTO Courses VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 1, 4),
(103, 'Database Management', 1, 4),
(104, 'Programming Basics', 1, 3),
(201, 'Calculus', 2, 4),
(202, 'Statistics', 2, 3),
(203, 'Algebra', 2, 3),
(204, 'Geometry', 2, 3),
(205, 'Probability', 2, 4);

-- Instructor Table --
create table Instructors(
	InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    
    foreign key (DepartmentID)
    references Departments(DepartmentID)
);

-- Insert valuse into Instructors Table --
INSERT INTO Instructors VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1, 60000),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2, 55000),
(3, 'Robert', 'Smith', 'robert.smith@univ.com', 1, 75000),
(4, 'Sarah', 'Davis', 'sarah.davis@univ.com', 2, 65000);

-- Enrollments Table --
create table Enrollments(
	EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    
    foreign key (StudentID)
    references Students(StudentID),

    foreign key (CourseID)
    references Courses(CourseID)
);

-- Insert valuse into Enrollments Table --
INSERT INTO Enrollments VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01'),
(3, 3, 101, '2023-07-15'),
(4, 4, 101, '2020-08-01'),
(5, 5, 101, '2019-08-01'),
(6, 6, 101, '2024-08-01'),

(7, 1, 102, '2022-08-01'),
(8, 2, 101, '2021-08-01'),
(9, 3, 102, '2023-07-15'),
(10, 4, 102, '2020-08-01'),
(11, 5, 102, '2019-08-01'),
(12, 6, 102, '2024-08-01'),

(13, 1, 103, '2022-08-01'),
(14, 2, 201, '2021-08-01'),
(15, 3, 202, '2023-07-15'),
(16, 4, 203, '2020-08-01'),
(17, 5, 204, '2019-08-01'),
(18, 6, 205, '2024-08-01');


-- Display All Table --
select * from Students;
select * from Courses;
select * from Instructors;
select * from Enrollments;
select * from Departments;

-- Q-1 CRUD Operation on all Tables --

-- Department Tabel --
-- CREATE / INSERT
insert into Departments values (3, 'Physics');

-- READ
select * from Departments;

-- UPDATE
update Departments set DepartmentName = 'Physics and Science' where DepartmentID = 3;

-- READ updated data
select * from Departments;

-- DELETE
delete from Departments where DepartmentID = 3;

-- READ after delete
select * from Departments;


-- Student Table --
-- CREATE / INSERT
insert into Students
values (
    7,
    'Swayam',
    'Vekariya',
    'swayam@gmail.com',
    '2002-05-15',
    '2025-08-01'
);

-- READ
select * from Students;

-- UPDATE
update Students set Email = 'swayam123@gmail.com' where StudentID = 7;

-- READ updated data
select * from Students;

-- DELETE
delete from Students where StudentID = 7;

-- READ after delete
select * from Students;


-- Courses Table --
-- CREATE / INSERT
insert into Courses
values (
    206,
    'Web Development',
    1,
    4
);

-- READ
select * from Courses;

-- UPDATE
update Courses set Credits = 3 where CourseID = 206;

-- READ updated data
select * from Courses;

-- DELETE
delete from Courses where CourseID = 206;

-- READ after delete
select * from Courses;


-- Instructors Table --
-- CREATE / INSERT
INSERT INTO Instructors
VALUES (
    5,
    'David',
    'Miller',
    'david.miller@univ.com',
    1,
    70000
);

-- READ
SELECT * FROM Instructors;

-- UPDATE
UPDATE Instructors
SET Salary = 75000
WHERE InstructorID = 5;

-- READ updated data
SELECT * FROM Instructors;

-- DELETE
DELETE FROM Instructors
WHERE InstructorID = 5;

-- READ after delete
SELECT * FROM Instructors;


-- Enrollments Table --
-- CREATE / INSERT
INSERT INTO Enrollments
VALUES (
    19,
    1,
    104,
    '2025-08-01'
);

-- READ
SELECT * FROM Enrollments;

-- UPDATE
UPDATE Enrollments
SET EnrollmentDate = '2025-08-15'
WHERE EnrollmentID = 19;

-- READ updated data
SELECT * FROM Enrollments;

-- DELETE
DELETE FROM Enrollments
WHERE EnrollmentID = 19;



-- Q-2: Retrieve students who enrolled after 2022
SELECT * FROM Students WHERE EnrollmentDate > '2022-12-31';


-- Q-3: Retrieve courses offered by Mathematics department Limit 5 courses
SELECT Courses.CourseID,
       Courses.CourseName,
       Courses.Credits,
       Departments.DepartmentName
FROM Courses INNER JOIN Departments 
ON Courses.DepartmentID = Departments.DepartmentID WHERE Departments.DepartmentName = 'Mathematics' LIMIT 5;


-- Q-4: Number of students in each course Show only courses with more than 5 students
SELECT Courses.CourseName,
       COUNT(Enrollments.StudentID) AS TotalStudents
FROM Courses
INNER JOIN Enrollments
ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseID, Courses.CourseName HAVING COUNT(Enrollments.StudentID) > 5;


-- Q-5: Students enrolled in BOTH Introduction to SQL AND Data Structures
SELECT s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
WHERE s.StudentID IN
(
    SELECT StudentID
    FROM Enrollments
    WHERE CourseID =
    (
        SELECT CourseID
        FROM Courses
        WHERE CourseName = 'Introduction to SQL'
    )
)
AND s.StudentID IN
(
    SELECT StudentID
    FROM Enrollments
    WHERE CourseID =
    (
        SELECT CourseID
        FROM Courses
        WHERE CourseName = 'Data Structures'
    )
);

-- Q-6: Students enrolled in Introduction to SQL OR Data Structures
SELECT DISTINCT s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Introduction to SQL'
   OR c.CourseName = 'Data Structures';

-- Q-7: Calculate average credits of all courses
SELECT AVG(Credits) AS AverageCredits
FROM Courses;

-- Q-8: Find maximum salary of instructors in Computer Science department
SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
INNER JOIN Departments d
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';


-- Q-9: Count number of students enrolled in each department
SELECT d.DepartmentName,
       COUNT(DISTINCT e.StudentID) AS TotalStudents
FROM Departments d
LEFT JOIN Courses c
ON d.DepartmentID = c.DepartmentID
LEFT JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;


-- Q-10: INNER JOIN Retrieve students and their courses
SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Courses c
ON e.CourseID = c.CourseID;


-- Q-11: LEFT JOIN Retrieve all students and their courses
SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Courses c
ON e.CourseID = c.CourseID;


-- Q-12: SUBQUERY Find students enrolled in courses having more than 10 students
SELECT DISTINCT s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
WHERE e.CourseID IN
(
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(StudentID) > 10
);


-- Q-13: Extract year from EnrollmentDate
SELECT StudentID,
       FirstName,
       LastName,
       EnrollmentDate,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;


-- Q-14: Concatenate instructor first and last name
SELECT InstructorID,
       CONCAT(FirstName, ' ', LastName) AS FullName,
       Email
FROM Instructors;


-- QUERY 15: Running total of students enrolled in courses Using Window Function
SELECT CourseName,
       TotalStudents,
       SUM(TotalStudents) OVER (ORDER BY CourseID) AS RunningTotal
FROM
(
    SELECT c.CourseID,
           c.CourseName,
           COUNT(e.StudentID) AS TotalStudents
    FROM Courses c
    LEFT JOIN Enrollments e
    ON c.CourseID = e.CourseID
    GROUP BY c.CourseID, c.CourseName
) AS CourseData;


-- Q-16:
-- Label students as Senior or Junior Using CASE Expression
-- Senior = Enrollment date is more than 4 years old from current date

SELECT StudentID,
       FirstName,
       LastName,
       EnrollmentDate,

       CASE
           WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
           THEN 'Senior'

           ELSE 'Junior'
       END AS StudentLevel

FROM Students;







