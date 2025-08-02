# 📘 PostgreSQL 30-Day Challenge + Bookstore Database Project

Welcome to my **PostgreSQL learning repository**, where I completed a structured **30-day challenge** to master SQL using PostgreSQL.  
As a capstone, I built a real-world **Online Bookstore Database Project** to apply and demonstrate my knowledge.

---

## 📅 30-Day Challenge Overview

Each day covers a key PostgreSQL concept and includes practical queries and practice problems.

| Day Range | Topics Covered |
|-----------|----------------|
| 1–5       | Basic SQL (SELECT, INSERT, UPDATE, DELETE) |
| 6–10      | Filtering, Sorting, WHERE, LIKE, Wildcards |
| 11–15     | Aggregate Functions, GROUP BY, HAVING |
| 16–20     | Joins (INNER, LEFT, RIGHT, FULL), Aliases |
| 21–25     | Views, Subqueries, Indexing, Constraints |
| 26–30     | Real-World Querying, Optimization, Project |

 

---

## 📚 Final Project: Online Bookstore Management System

Built a full-featured relational database for managing a bookstore using PostgreSQL and CSV data files.

### 🧩 Tables Designed:
- **Books**: Book_ID, Title, Author, Genre, Published_Year, Price, Stock
- **Customers**: Customer_ID, Name, Email, Phone, City, Country
- **Orders**: Order_ID, Customer_ID (FK), Book_ID (FK), Order_Date, Quantity, Total_Amount

### 📈 Key SQL Features:
- Data import via `COPY` from CSVs
- Constraints: `PRIMARY KEY`, `FOREIGN KEY`
- Real-world `JOIN`s, aggregations, and subqueries
- Business insights like:
  - Top-selling books
  - Genre-wise and author-wise sales
  - High-spending customers
  - Stock vs quantity sold
  - Revenue and order tracking

---

## 🔍 Example Queries Used

✅ **Basic:**
- Retrieve books by genre/year
- Customers from specific countries
- Orders in a date range
- Most/least expensive books

✅ **Advanced:**
- Total books sold per genre
- Customers with 2+ orders
- Author-wise quantity sold
- Remaining stock after orders
- Top 3 expensive books per genre
- Cities with customers spending over $30

 

---

---

## ⚙️ How to Run

1. Open PostgreSQL (psql or pgAdmin)
2. Run `Major_Project_SQL.sql`
3. Make sure to replace file paths in `COPY` statements if needed
4. Explore the queries and tables!

---

## 🛠 Tech Stack

- **Database**: PostgreSQL
- **Languages**: SQL
- **Tools**: PgAdmin / psql / VS Code
- **Data Format**: CSV

---

## 🎓 What I Learned

- ✅ Real-world database schema design
- ✅ Advanced querying techniques
- ✅ Analytical thinking using SQL
- ✅ How to build insights from raw data
- ✅ Proper folder structure for SQL projects

---

## 💬 Let’s Connect!

If you’re also learning databases, feel free to explore this project, give feedback, or connect with me.  
I’m open to learning, collaboration, and backend internship opportunities!

---

## 📌 Tags

`#PostgreSQL` `#SQL` `#100DaysOfCode` `#DatabaseProject` `#BackendDevelopment` `#DataAnalytics` `#BookstoreDB`


