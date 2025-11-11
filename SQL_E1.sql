CREATE DATABASE UST_2;
USE UST_2;
CREATE TABLE books(book_id int,book_name varchar(20),authour varchar(20),price int,publisher varchar(20));
INSERT INTO books VALUES (1,'c','balu',100,'BPB');
INSERT INTO books VALUES (2,'c++','gowri',200,'MCGRAW');
INSERT INTO books VALUES (3,'java','mano',300,'BPB');
INSERT INTO books VALUES (4,'perl','james',400,'BPB');
INSERT INTO books VALUES (5,'ruby','antony',500,'MCGRAW');
SELECT *FROM books;
SELECT book_name FROM books;
SELECT COUNT(book_id) as no_of_books FROM books;
SELECT authour FROM books WHERE book_name='c++';
SELECT book_name FROM books WHERE price>200;
SELECT book_name FROM books WHERE price between 200 and 400;
SELECT book_name FROM books WHERE authour='antony';
SELECT book_name FROM books WHERE price in(SELECT MAX(price) as max_price FROM books);
SELECT MIN(price) as max_price FROM books;
SELECT book_name FROM books WHERE price in(SELECT MIN(price) as max_price FROM books);
SELECT publisher,COUNT(*) as no_of_publisher FROM books GROUP BY publisher;
SELECT AVG(price) FROM books WHERE publisher='MCGRAW';
SELECT * FROM books limit 2;
SELECT * FROM books ORDER BY book_id DESC limit 2 ;




