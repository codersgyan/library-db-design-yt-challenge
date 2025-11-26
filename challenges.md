# 📘 SQL Query Challenges — Book Management System

Below are **10 SQL practice challenges** based on the Book Management System schema.
Students must write SQL queries to solve each problem.

---

## 1. Get all books written by a given author
**Input:** `author_id`
**Goal:** Return all book titles written by that author.

---

## 2. List all authors for a given book
**Input:** `book_id`
**Goal:** Return all authors who contributed to the book.

---

## 3. Count how many books a borrower has borrowed this year
**Input:** `borrower_id`
**Goal:** Count the number of borrow records for the current year.

---

## 4. Get all books that are currently borrowed
**Condition:** `status = 'borrowed'`
**Goal:** List book titles, borrower names, and borrow dates.

---

## 5. Find the top 5 most borrowed books
**Goal:** Show book titles ordered by borrow frequency (descending).

---

## 6. List all overdue books
**Condition:**
- `return_date IS NULL`
- `borrow_date` older than X days
**Goal:** Show overdue book titles and borrower info.

---

## 7. List authors who have written more than 3 books
**Goal:** Return `author_id`, author name, and count of books authored.

---

## 8. Find all borrowers who have at least one unreturned book
**Condition:** `status = 'borrowed'`
**Goal:** List borrowers with pending returns.

---

## 9. List all books borrowed by a borrower in a given month
**Inputs:** `borrower_id`, `month`
**Goal:** List book titles borrowed in that month.

---

## 10. List all books that have never been borrowed
**Goal:** Identify books with no entries in `borrow_records`.
