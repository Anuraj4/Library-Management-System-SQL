# Library Management System 📚

## Project Overview
The **Library Management System** is a simple SQL-based project designed to manage a library's records, including books, members, and transactions. This project demonstrates the use of SQL queries for CRUD operations, joins, aggregate functions, and constraints. It is perfect for showcasing SQL skills during interviews or as part of a portfolio.

---

## Features
- **Books Management**: Add, view, update, and delete book records.
- **Members Management**: Manage library members with details like name, email, phone number, and membership date.
- **Transactions**: Record and manage borrowing and returning of books.
- **Insights and Analytics**:
  - List all transactions with member and book details.
  - Count the available books by genre.
  - Identify the most borrowed books.

---

## Database Design
The project consists of three main tables:

1. **Books**: Stores information about the books in the library.
   - Columns: `BookID`, `Title`, `Author`, `Genre`, `PublishedYear`, `AvailableCopies`

2. **Members**: Stores information about the library members.
   - Columns: `MemberID`, `Name`, `Email`, `PhoneNumber`, `MembershipDate`

3. **Transactions**: Tracks borrowing and returning of books.
   - Columns: `TransactionID`, `BookID`, `MemberID`, `BorrowDate`, `ReturnDate`, `Status`
   - Relationships:
     - `BookID` references `Books(BookID)`
     - `MemberID` references `Members(MemberID)`

---

## Installation and Setup
Follow these steps to set up the project locally:

### Prerequisites
- [MySQL Community Server](https://dev.mysql.com/downloads/mysql/) installed.
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) (optional, for GUI).

