# 📘 Database Design Assignment

## **Title:** Book Management System (Beginner-Level Assignment)

### **🎯 Objective**

Design a simple relational database schema for a **Book Management System**. This assignment will test your understanding of database tables, relationships, and basic normalization.

---

## **📝 Problem Statement**

A small library wants to maintain information about **books**, **authors**, and **borrowers**. They need a basic system that can:

* Store details of books
* Track which author wrote which book
* Track which borrower borrowed which book

Your job is to design the database schema.

---

## **📂 Requirements**

### **1. Books**

Each book should have:

* Title
* ISBN
* Publication year
* Genre
* Authors (A book can have multiple authors)

### **2. Authors**

Each author should have:

* Full Name
* Country
* Date of Birth

### **3. Borrowers**

Each borrower should have:

* Full Name
* Email
* Phone Number

### **4. Borrow Records**

Track which borrower borrowed which book:

* Borrow Date
* Return Date (nullable)
* Status (`borrowed` or `returned`)

---

## **📐 Tasks**

### **Task 1: Identify Entities**

List the entities required for the system.

### **Task 2: Define Attributes**

Define attributes for each entity with correct data types.

### **Task 3: Define Relationships**

Specify the relationships:

* Author ↔ Book (M:N via a join table)
* Borrower → Borrow Records (1:N)
* Book → Borrow Records (1:N)

### **Task 4: Draw ER Diagram**

Create a simple ER diagram (hand-drawn or digital).

### **Task 5: Write SQL Schema**

Write SQL `CREATE TABLE` statements for all tables.

---

## **📦 Deliverables**

* Document explaining Entities, Attributes, and Relationships
* ER Diagram file/image
* SQL schema file

---

## **⭐ Bonus (Optional)**

Add validation constraints:

* Email unique for borrowers
* ISBN unique for books
* Prevent double-borrowing of the same book unless it is returned

---

## **📌 Notes for Students**

Keep the design simple.
Focus on understanding how tables relate.
Aim for a clean, normalized database structure.

Good luck! 🚀

---

## **🛠️ Installation & Setup**

This section explains how to set up the database and seed it with sample data using SQLite.

### **Prerequisites**

- SQLite3 installed on your system
  - **Mac/Linux**: Usually pre-installed. Check with `sqlite3 --version`
  - **Windows**: Download from [sqlite.org](https://www.sqlite.org/download.html)

### **Setup Instructions**

1. **Create the database and tables**

   ```bash
   sqlite3 library.db < tables.sql
   ```

   This creates a new SQLite database file named `library.db` and sets up all the required tables (authors, books, book_authors, borrowers, borrow_records).

2. **Seed the database with sample data**

   ```bash
   sqlite3 library.db < seed.sql
   ```

   This populates the database with sample data including 7 authors, 25 books, 6 borrowers, and 10 borrow records.

3. **Verify the setup**

   Open the database and check the data:

   ```bash
   sqlite3 library.db
   ```

   Then run some queries:

   ```sql
   -- Check authors
   SELECT * FROM authors;

   -- Check books
   SELECT * FROM books LIMIT 5;

   -- Check borrow records
   SELECT * FROM borrow_records;

   -- Exit SQLite
   .quit
   ```

### **Alternative: All-in-One Setup**

You can also combine both steps into one command:

```bash
sqlite3 library.db < tables.sql && sqlite3 library.db < seed.sql
```

### **Reset the Database**

To start fresh, simply delete the database file and recreate it:

```bash
rm library.db
sqlite3 library.db < tables.sql
sqlite3 library.db < seed.sql
```
