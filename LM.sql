CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublishedYear INT,
    AvailableCopies INT
);
select * from Books;

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    MembershipDate DATE
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    Status ENUM('Borrowed', 'Returned'),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

INSERT INTO Books (Title, Author, Genre, PublishedYear, AvailableCopies)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 5),
('1984', 'George Orwell', 'Dystopian', 1949, 3),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 2);

INSERT INTO Members (Name, Email, PhoneNumber, MembershipDate)
VALUES
('Alice Johnson', 'alice@example.com', '1234567890', '2024-01-15'),
('Bob Smith', 'bob@example.com', '9876543210', '2024-02-10');

INSERT INTO Transactions (BookID, MemberID, BorrowDate, Status)
VALUES
(1, 1, '2024-11-10', 'Borrowed'),
(2, 2, '2024-11-12', 'Returned');


SELECT * FROM Members;
SELECT 
    Transactions.TransactionID,
    Members.Name AS MemberName,
    Books.Title AS BookTitle,
    Transactions.BorrowDate,
    Transactions.ReturnDate,
    Transactions.Status
FROM 
    Transactions
JOIN Members ON Transactions.MemberID = Members.MemberID
JOIN Books ON Transactions.BookID = Books.BookID;

INSERT INTO Books (Title, Author, Genre, PublishedYear, AvailableCopies)
VALUES ('Pride and Prejudice', 'Jane Austen', 'Classic', 1813, 4);

UPDATE Books
SET AvailableCopies = AvailableCopies - 1
WHERE BookID = 1;