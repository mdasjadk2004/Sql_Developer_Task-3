use employee;

SELECT * FROM Book;

SELECT title, genre FROM Book;

#Using WHERE, AND, OR, LIKE, BETWEEN
SELECT * FROM author
WHERE nationality = 'British';

SELECT * FROM book
WHERE genre = 'Fantasy' and published_year >= 1997;

SELECT * FROM member
WHERE phone IS NULL OR email LIKE '%example.com';

SELECT * FROM Book
WHERE title LIKE '%Harry Potter%';

SELECT * FROM Book
ORDER BY published_year ASC;

SELECT * FROM Book
WHERE published_year BETWEEN 1997 AND 2003;

#1--Here, we are combining all the queries to create a complex SQL query
#Apply WHERE, AND, OR, LIKE, BETWEEN and SORT in one query
SELECT 
Borrow.borrow_id,
Book.title,
Member.name AS member_name,
Borrow.borrow_date,
Borrow.return_date
FROM Borrow
JOIN Book ON Borrow.book_id = Book.book_id
JOIN Member ON Borrow.member_id = Member.member_id
WHERE Borrow.borrow_date BETWEEN '2023-04-01' AND '2023-04-15'AND(Book.title LIKE '%Data%' OR Member.name LIKE 'A%')ORDER BY 
Borrow.borrow_date DESC;

#2--Just create other query to Retrieve a list of books borrowed.
SELECT 
Borrow.borrow_id,
Member.name AS member_name,
Book.title AS book_title,
Borrow.borrow_date,
Borrow.return_date FROM Borrow
JOIN Member ON Borrow.member_id = Member.member_id
JOIN Book ON Borrow.book_id = Book.book_id
ORDER BY Borrow.return_date ASC, Member.name ASC;  






