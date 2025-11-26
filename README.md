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
