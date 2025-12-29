📊 Table: employees
employees
---------
employee_id   INT
name          VARCHAR
department    VARCHAR
salary        INT
manager_id    INT   -- NULL if no manager
hire_date     DATE

Sample Data (assume this exists)
employee_id	name	department	salary	manager_id	hire_date
1	Alice	Engineering	120000	NULL	2019-03-15
2	Bob	Engineering	90000	1	2020-06-01
3	Carol	Engineering	95000	1	2021-01-10
4	David	Sales	80000	NULL	2018-09-20
5	Eve	Sales	75000	4	2022-02-11
6	Frank	HR	70000	NULL	2017-11-05
7	Grace	Engineering	110000	1	2019-12-01

🧠 SQL Interview Questions (Only 5)
Q1.

Write a query to find the highest-paid employee in each department.

Q2.

Write a query to find employees who earn more than their manager.

Q3.

Write a query to find the second highest salary in the company
(⚠️ must handle duplicates correctly).

Q4.

Write a query to find departments with more than 2 employees, along with the employee count.

Q5.

Write a query to find employees hired before their manager.


📊 Tables
1️⃣ employees
employees
---------
employee_id   INT
name          VARCHAR
department    VARCHAR
salary        INT
manager_id    INT   -- NULL if no manager
hire_date     DATE

Sample Data
employee_id	name	department	salary	manager_id	hire_date
1	Alice	Engineering	120000	NULL	2019-03-15
2	Bob	Engineering	90000	1	2020-06-01
3	Carol	Engineering	95000	1	2021-01-10
4	David	Sales	80000	NULL	2018-09-20
5	Eve	Sales	75000	4	2022-02-11
6	Frank	HR	70000	NULL	2017-11-05
7	Grace	Engineering	110000	1	2019-12-01
2️⃣ projects
projects
---------
project_id    INT
project_name  VARCHAR
lead_id       INT   -- employee_id of the project lead
budget        INT
start_date    DATE
end_date      DATE

Sample Data
project_id	project_name	lead_id	budget	start_date	end_date
101	Apollo	1	500000	2020-01-01	2021-01-01
102	Zephyr	2	200000	2020-06-01	2021-06-01
103	Orion	4	300000	2019-09-01	2020-09-01
104	Titan	3	400000	2021-02-01	2022-02-01
105	Nova	7	150000	2021-07-01	2022-07-01
🧠 SQL Questions (Two Tables)
Q1.

List all employees along with the projects they lead. Include employees who don’t lead any projects.

Q2.

Find employees working in Engineering whose projects have budgets > 300000. Include only employee name, project name, and budget.

Q3.

Find the department with the highest total project budget (sum of budgets of all projects led by employees in that department).

Q4.

List projects along with the manager of the project lead (if the lead has a manager). Show project name, lead name, and manager name.

Q5.

Find employees who lead projects that overlap in time with projects led by employees from a different department. Show both project names, lead names, and departments.
