DROP TABLE IF EXISTS employee3;

CREATE TABLE employee3(
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  department VARCHAR(20),
  salary NUMERIC(10,2),
  joining_date DATE,
  age INT);
  
  SELECT*FROM employee3;


  -- how to copy a table from csv file(excel) to sql table
COPY
employee3(employee_id,first_name,last_name,department,salary,joining_date,age)
FROM 'C:\Users\mdshu\OneDrive\Desktop\employee_data.csv'
DELIMITER','
CSV HEADER;


--*** HOW ARITHMATICAL OPERATOR APPLY ON TABLES ,we can add any column just to show as bonus, anything etc--------
--1st to show salary, with bonus also 10%
SELECT first_name,salary,(salary*0.10)AS BONUS FROM employee3;

--2nd )Calculate the Annual Salary and Salary Increment by 5% - show the monthly new salary as well
SELECT first_name,last_name,salary,(salary*12)AS annual_salary,(salary*0.05) AS salary_Increment,(salary+salary*0.10)AS new_salary
 FROM employee3;


----match all age=30
Select*from employee3 where (age=30);

----match all age not equal30
Select*from employee3 where (age<>30);

----salary greater than 50000
SELECT first_name,salary FROM employee3 where(salary>50000);


----LOGICAL OPERATORS------------------------------
SELECT*FROM employee3 WHERE(age>25) AND (salary>50000);

select*from employee3 where(age<25) OR (salary<40000);

 select*from employee3 where NOT(department='IT');   ---(!=) is also used here inlpace of NOT



----BETWEEN,LIKE,IN operators------------------------
--1.Retrieve employees whose salary is between 40,000 and 60,000.
select*from employee3 where salary BETWEEN 40000 AND 60000;

--2.Find employees whose email addresses end with gmail.com.
select*from employee3 where first_name LIKE'A%';            ---'%a%'  aisa bhi kr skte han , ye denote krta ha ha ki agr kisike name main a arha ho khin pr bhi

--3.Retrieve employees who belong to either the 'Finance' or 'Marketing' departments.
select*from employee3 where department IN('Finance','Marketing');

-----------------IS NULL Operator, ORDER BY Operator, LIMIT Operator & DISTINCT Operator.----------------------------

--1.Find employees where the email column is NULL (if applicable).
select first_name,last_name,department from employee3 where age IS  NULL;

--2.List employees sorted by salary in descending order.
select *from employee3 ORDER BY salary DESC;

--3.Retrieve the top 5 highest-paid employees.
select*from employee3 ORDER BY salary DESC LIMIT 5;

--4.Retrieve a list of unique departments
SELECT DISTINCT department FROM employee3;


--it gives you count of department
SELECT count( DISTINCT department) AS dept_count FROM employee3;


