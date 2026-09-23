# 🎓 Course Management System

> 🗄️ A beginner-friendly **MySQL Course Management System** project created using SQL and MySQL Workbench.

---

## 📌 Project Overview

🎯 **Project Name:** Course Management System  
🗃️ **Database Name:** `uni_management`  
💻 **Database Tool:** MySQL Workbench  
📝 **Language:** SQL  
👨‍💻 **Project Level:** Beginner Friendly  

---

## ✨ About The Project

📚 This project manages students, courses, departments, instructors, and enrollments.

🔗 The project uses **Primary Keys** and **Foreign Keys** to create relationships between tables.

🛠️ CRUD operations are performed on all major tables.

🔍 Different SQL queries are used to retrieve and analyze the data.

📊 The project also demonstrates **JOIN, GROUP BY, HAVING, SUBQUERY, AGGREGATE FUNCTIONS, CASE, CONCAT, DATE FUNCTIONS, and WINDOW FUNCTIONS**.

---

## 🗂️ Database Tables

### 🏢 Departments
🔹 Stores department information.  
🔹 Fields include `DepartmentID` and `DepartmentName`.

### 👨‍🎓 Students
🔹 Stores student information.  
🔹 Includes name, email, birth date, and enrollment date.

### 📖 Courses
🔹 Stores available courses.  
🔹 Includes course name, department, and credits.

### 👨‍🏫 Instructors
🔹 Stores instructor information.  
🔹 Includes name, email, department, and salary.

### 📝 Enrollments
🔹 Connects students with courses.  
🔹 Stores enrollment details and enrollment dates.

---

## 🔧 CRUD Operations

### ➕ CREATE
📌 Insert new records into tables.

### 👀 READ
📌 Display records using `SELECT`.

### ✏️ UPDATE
📌 Modify existing records using `UPDATE`.

### 🗑️ DELETE
📌 Remove records using `DELETE`.

🔄 CRUD operations are demonstrated for:

✅ Departments  
✅ Students  
✅ Courses  
✅ Instructors  
✅ Enrollments  

---

## 🔎 SQL Queries Covered

1️⃣ Retrieve students who enrolled after 2022.  
2️⃣ Retrieve courses offered by the Mathematics department.  
3️⃣ Count students in each course using `GROUP BY` and `HAVING`.  
4️⃣ Find students enrolled in both **Introduction to SQL** and **Data Structures**.  
5️⃣ Find students enrolled in either **Introduction to SQL** or **Data Structures**.  
6️⃣ Calculate the average credits of all courses.  
7️⃣ Find the maximum instructor salary in Computer Science.  
8️⃣ Count students enrolled in each department.  
9️⃣ Retrieve students and courses using `INNER JOIN`.  
🔟 Retrieve all students and their courses using `LEFT JOIN`.  
1️⃣1️⃣ Find students enrolled in courses having more than 10 students using a subquery.  
1️⃣2️⃣ Extract the enrollment year using `YEAR()`.  
1️⃣3️⃣ Concatenate instructor first and last names using `CONCAT()`.  
1️⃣4️⃣ Calculate a running total using a **Window Function**.  
1️⃣5️⃣ Label students as **Senior** or **Junior** using `CASE`.

---

## 🧠 SQL Concepts Used

🔹 `CREATE DATABASE`  
🔹 `CREATE TABLE`  
🔹 `INSERT INTO`  
🔹 `SELECT`  
🔹 `UPDATE`  
🔹 `DELETE`  
🔹 `WHERE`  
🔹 `INNER JOIN`  
🔹 `LEFT JOIN`  
🔹 `GROUP BY`  
🔹 `HAVING`  
🔹 `DISTINCT`  
🔹 `SUBQUERY`  
🔹 `AVG()`  
🔹 `MAX()`  
🔹 `COUNT()`  
🔹 `CONCAT()`  
🔹 `YEAR()`  
🔹 `CASE` Expression  
🔹 `DATE_SUB()`  
🔹 Window Function `SUM() OVER()`

---

## 🛠️ Tools Used

🗄️ **MySQL**  
🖥️ **MySQL Workbench**  
💾 **SQL**

---

## 📸 Project Screenshots

### 🔍 Q-2: Students Enrolled After 2022
<img width="1079" height="719" alt="Screenshot 2026-09-16 184434" src="https://github.com/user-attachments/assets/3bd18cf5-42be-4797-b0b1-c5903418ea38" />


### 📚 Q-3: Mathematics Department Courses
<img width="1075" height="713" alt="Screenshot 2026-09-16 184447" src="https://github.com/user-attachments/assets/48ab401d-e279-43c0-b1ce-356f3a243131" />


### 📊 Q-4: Students Count in Each Course
<img width="1078" height="718" alt="Screenshot 2026-09-16 184500" src="https://github.com/user-attachments/assets/1cf8a6a9-989a-4f02-9c77-dfd8f008b1d1" />


### 👨‍🎓 Q-5: Students Enrolled in Both Courses
<img width="1079" height="712" alt="Screenshot 2026-09-16 184513" src="https://github.com/user-attachments/assets/4780012d-1ff4-4c96-b70f-4a63b52b05fb" />


### 🔗 Q-6: Students Enrolled in SQL or Data Structures
<img width="1079" height="719" alt="Screenshot 2026-09-16 184527" src="https://github.com/user-attachments/assets/5b9e0634-dcb7-4c58-86b1-db741d6b771b" />


---

## 📂 Project File

📄 **SQL File:** `Course_Management_System.sql`

▶️ Open the SQL file in **MySQL Workbench**.

▶️ Execute the database and table creation queries.

▶️ Insert the sample data.

▶️ Run the CRUD operations and practice queries.

---

## 🚀 How To Run The Project

### 1️⃣ Open MySQL Workbench
🖥️ Start MySQL Workbench and connect to your MySQL server.

### 2️⃣ Open SQL File
📄 Open `Course_Management_System.sql`.

### 3️⃣ Create Database
▶️ Run the database creation section.

### 4️⃣ Create Tables
🗂️ Create the five tables and their relationships.

### 5️⃣ Insert Data
📥 Run the `INSERT INTO` statements.

### 6️⃣ Run Queries
🔍 Execute the CRUD operations and practice queries one by one.

---

## 🎯 Learning Objectives

📌 Understand database creation.  
📌 Learn table creation and relationships.  
📌 Practice CRUD operations.  
📌 Understand Primary Keys and Foreign Keys.  
📌 Practice SQL JOIN operations.  
📌 Learn aggregate functions.  
📌 Understand subqueries.  
📌 Practice date functions.  
📌 Learn `CASE` expressions.  
📌 Understand window functions.

---

## 👨‍💻 Author

### **Vraj Jetani**

🗄️ SQL & Database Learner  
🐍 Python Learner  
🚀 Building projects for GitHub portfolio

---

## ⭐ Support

⭐ If you find this project useful, consider giving the repository a **Star**.

🍴 Feel free to fork the project and practice the SQL queries.

---

## 📜 License

📘 This project is created for **learning and educational purposes**.
