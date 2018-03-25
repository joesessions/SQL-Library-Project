--USE MASTER
--GO
--	drop database bookdb;
--	GO
--Create Database BookdB;
--GO
Use  BookdB
Go
	
Create Table tbl_bookId (
		bookId_bookId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		bookId_title VARCHAR(50) NOT NULL,
		bookId_publisherName VARCHAR(50) NOT NULL
	);

Create Table tbl_book_authors (
		book_authors_bookId int,
		book_authors_authorName varchar (50) NOT NULL,
	);

Create Table tbl_publisher (
		publisher_name varchar (50) NOT NULL,
		publisher_address varchar (70) NOT NULL,
		publisher_phone varchar (50) NOT NULL,
	);
	
Create Table tbl_Book_Loans(
		book_loans_loanID int PRIMARY KEY NOT NULL IDENTITY (1,1),
		book_loans_bookID int,
		book_loans_BranchId int,
		book_loans_CardNo int,
		book_loans_DateOut DATE,
		book_loans_DueDate DATE,
	);

Create Table tbl_borrower (
		borrower_ID int PRIMARY KEY NOT NULL IDENTITY (1,1),
		borrower_Name VARCHAR (60),
		borrower_Address VARCHAR (60),
		borrower_Phone VARCHAR (20),
	);

Create Table tbl_book_copies(
		book_copies_BookId int,
		book_copies_branchId int,
		book_copies_No_Of_Copies int,
	);

Create Table tbl_Library_branch(
		Library_branch_BranchId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		Library_branch_BranchName varchar (50),
		Library_branch_Address varchar (50)
	);

INSERT INTO tbl_Library_branch
	(Library_Branch_Branchname, Library_branch_address)
VALUES
	('Sharpstown', '234 West Left Street, Sharpstown, OR 94543'),
	('Central', '423 Center Middle Street, Toolsville, OR 93355'),
	('Podunk', '12298 Right Nowhere Highway, Bliss, OR 91120'),
	('Powell', '896 Burnside Dr., Portland, OR 90001');

INSERT INTO tbl_bookId
	(bookId_title, bookId_publisherName)
	VALUES
	('The Stand', 'Deathwatch Books'),
	('Carrie', 'Deathwatch Books'),
	('Who Cares?', 'Selfish Books'),
	('Love like Ghandi', 'Pandimensional Books'),
	('The Lost Tribe', 'Dangerman Books'),
	('Goodnight, Spy', 'Dangerman Books'),
	('Death to Moopie', 'Deathwatch Books'),
	('Killing Me Sophie', 'Dangerman Books'),
	('What is Love', 'Baby Don''t Hurt me books'),
	('This Goes to Eleven', 'Spinal Books'),
	('What Dog is Your Parachute?', 'Career Life Books'),
	('How to Kill a Mockingbird?', 'DYI Homeowner Books'),
	('Who''s Who is Lower Nowhere Podunk', 'Endless Endlist Books'),
	('Mommy, Help!', 'Entitled Youth Books'),
	('Elegy to My Bellybutton', 'Special Books'),
	('As You Wish', 'Princess Books'),
	('ROUS Defense', 'Princess Books'),
	('Humperdink', 'Princess Books'),
	('Gone With the Window', 'Yellow Brick Books'),
	('My Hooptie', 'Mixalot Books');

 
Insert INTO tbl_book_authors
		(book_authors_bookId, book_authors_authorName)
		VALUES
		(1, 'Stephen King'),
		(2, 'Stephen King'),
		(3, 'Prickwad Somesuch'),
		(4, 'Madonna'),
		(5, 'Mochican Smith'),
		(6, 'Jeffery Tate'),
		(7, 'Clive Devilish'),
		(8, 'Jeffery Tate'),
		(9, 'Frederick Haddaway'),
		(10, 'Nigel Tufnel'),
		(11, 'Rama Dama Lama'),
		(12, 'Bill B. Gun'),
		(13, 'Eso Teric'),
		(14, 'Snowflake Helicopter'),
		(15, 'Todd Purdue'),
		(16, 'Farm Boy'),
		(17, 'Dread Roberts'),
		(18, 'Grandpa'),
		(19, 'Mixed Metaphor'),
		(20, 'Sir Mixalot');

INSERT INTO tbl_Book_Loans
		(book_loans_bookID, book_loans_BranchId, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
		VALUES
		(2, 4, 1, '2018-03-14', '2018-03-22'),
		(20, 2, 2, '2017-12-20', '2018-03-22'),
		(1, 3, 4, '2018-3-15', '2009-04-5'),
		(3, 1, 3, '2018-3-15', '2018-03-21'),
		(4, 2, 6, '2018-3-15', '2009-04-5'),
		(4, 3, 7, '2018-3-15', '2018-03-21'),
		(4, 2, 7, '2018-3-15', '2018-03-21'),
		(6, 1, 4, '2018-3-15', '2018-03-21'),
		(7, 3, 2, '2018-3-15', '2018-03-21'),
		(10, 2, 3, '2018-3-15', '2018-03-21'),
		(11, 1, 1, '2018-3-15', '2018-03-21'),
		(2, 3, 4, '2018-3-15', '2018-03-21'),
		(4, 2, 3 ,'2018-3-15', '2018-03-21'),
		(5, 4, 3, '2018-3-15', '2018-03-21'),
		(6, 1, 4, '2018-3-15', '2018-03-21'),
		(19, 2, 2, '2018-3-15', '2018-03-21'),
		(14, 1, 4, '2018-3-15', '2018-03-21'),
		(2, 3, 2, '2018-3-15', '2018-03-21'),
		(3, 1, 8, '2018-3-15', '2018-03-21'),
		(19, 1, 3, '2018-3-15', '2018-03-21'),
		(18, 4, 1, '2018-3-14', '2018-03-21'),
		(20, 2, 2, '2017-12-20', '2018-03-22'),
		(17, 3, 4, '2018-3-15', '2018-03-23'),
		(16, 1, 3, '2018-3-15', '2018-03-22'),
		(15, 2, 6, '2018-3-15', '2018-03-22'),
		(14, 3, 7, '2018-3-15', '2018-03-22'),
		(13, 2, 7, '2018-3-15', '2018-03-24'),
		(12, 1, 4, '2018-3-15', '2018-03-24'),
		(11, 3, 2, '2018-3-15', '2018-03-24'),
		(10, 2, 3, '2018-3-15', '2018-03-24'),
		(9, 1, 1, '2018-3-15', '2018-03-25'),
		(8, 3, 4, '2018-3-15', '2018-03-25'),
		(7, 2, 3 ,'2018-3-15', '2018-03-26'),
		(6, 4, 3, '2018-3-15', '2018-03-26'),
		(5, 1, 4, '2018-3-15', '2018-03-26'),
		(4, 2, 2, '2018-3-15', '2018-03-26'),
		(3, 1, 4, '2018-3-15', '2018-03-26'),
		(2, 3, 2, '2018-3-15', '2018-03-26'),
		(1, 1, 8, '2018-3-15', '2018-04-5'),
		(2, 1, 3, '2018-3-15', '2018-04-5'),
		(3, 4, 1, '2018-3-14', '2018-04-1'),
		(4, 2, 2, '2017-12-20', '2018-04-2'),
		(5, 3, 4, '2018-3-15', '2018-04-5'),
		(6, 1, 3, '2018-3-15', '2018-04-5'),
		(7, 2, 6, '2018-3-15', '2018-04-5'),
		(8, 3, 7, '2018-3-15', '2018-04-5'),
		(9, 2, 7, '2018-3-15', '2018-04-5'),
		(11, 1, 4, '2018-3-15', '2018-04-5'),
		(10, 3, 2, '2018-3-15', '2018-04-5'),
		(9, 2, 3, '2018-3-15', '2018-04-5'),
		(13, 1, 1, '2018-3-15', '2018-04-5'),
		(5, 3, 4, '2018-3-15', '2018-04-5'),
		(2, 2, 3 ,'2018-3-15', '2018-04-5'),
		(4, 4, 3, '2018-3-15', '2018-04-5'),
		(4, 1, 4, '2018-3-15', '2018-04-5'),
		(2, 2, 2, '2018-3-15', '2018-04-5'),
		(7, 1, 4, '2018-3-15', '2018-04-5'),
		(8, 3, 2, '2018-3-15', '2018-04-5'),
		(9, 1, 8, '2018-3-15', '2018-04-5'),
		(10, 1, 3, '2018-3-15', '2018-03-21');

INSERT INTO tbl_borrower 
		(borrower_Name, borrower_Address, borrower_Phone) 
		VALUES
		('Jim Bo Bob', '123 Main St.', '234-234-2344'),
		('Judy Jan Jameson', '345 South St.', '345-345-3455'),
		('Sam Pan Fran', '545 West St', '654-654-6544'),
		('Ned Nedford', '543 July Ave.', '545-454-5454'),
		('Todd Lemkau', '787 Bridge St.', '563-543-3434'),
		('Frank Franco', '534 West St.', '654-345-3452'),
		('Ryan Warsaw', '222 Green St.', '504-535-4350'),
		('John Bon Scott', '20 Left St.', '897-678-6767'),
		('Jill Bon Scott', '22 Left St.', '897-611-6767');

INSERT INTO tbl_book_copies
	 (book_copies_BookId, book_copies_branchId, book_copies_No_Of_Copies)
	 VALUES
	 (1, 1, 3),
	 (2, 1, 2),
	 (3, 1, 5),
	 (4, 1, 3),
	 (5, 1, 2),
	 (6, 1, 5),
	 (7, 1, 3),
	 (8, 1, 2),
	 (9, 1, 5),
	 (10, 1, 3),
	 (11, 1, 2),
	 (12, 1, 5),
	 (13, 1, 3),
	 (14, 1, 2),
	 (15, 1, 5),
	 (16, 1, 3),
	 (17, 1, 2),
	 (18, 1, 5),
	 (19, 1, 3),
	 (20, 1, 2),
	  (1, 2, 3),
	 (2, 2, 2),
	 (3, 2, 5),
	 (4, 2, 3),
	 (5, 2, 2),
	 (6, 2, 5),
	 (7, 2, 3),
	 (8, 2, 2),
	 (9, 2, 5),
	 (10, 2, 3),
	 (11, 2, 2),
	 (12, 2, 5),
	 (13, 2, 3),
	 (14, 2, 2),
	 (15, 2, 5),
	 (16, 2, 3),
	 (17, 2, 2),
	 (18, 2, 5),
	 (19, 2, 3),
	 (20, 2, 2),
	  (1, 3, 3),
	 (2, 3, 2),
	 (3, 3, 5),
	 (4, 3, 3),
	 (5, 3, 2),
	 (6, 3, 5),
	 (7, 3, 3),
	 (8, 3, 2),
	 (9, 3, 5),
	 (10, 3, 3),
	 (1, 4, 3),
	 (2, 4, 2),
	 (3, 4, 5),
	 (4, 4, 3),
	 (5, 4, 2),
	 (6, 4, 5),
	 (7, 4, 3),
	 (8, 4, 2),
	 (9, 4, 5),
	 (10, 4, 3),
	 (11, 4, 2);

/* Start Queries  */
/* 1. How many copies of the book titled "The Lost Tribe" are 
owned by the library branch whose name is "Sharpstown"? */

SELECT tbl_bookId.bookId_title,  tbl_book_copies.book_copies_No_Of_Copies, tbl_Library_branch.Library_branch_BranchName
	 from 
	 tbl_book_copies
	 inner join tbl_Library_branch on tbl_book_copies.book_copies_branchId = tbl_Library_branch.Library_branch_BranchId
	 inner join tbl_bookId on tbl_book_copies.book_copies_BookId = tbl_bookId.bookId_bookId
	 where Library_branch_BranchName = 'Sharpstown' and bookId_title = 'The Lost Tribe' ;

/* 2. How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

SELECT tbl_bookId.bookId_title, tbl_book_copies.book_copies_No_Of_Copies, tbl_Library_branch.Library_branch_BranchName
	 from 
	 tbl_book_copies
	 inner join tbl_Library_branch on tbl_book_copies.book_copies_branchId = tbl_Library_branch.Library_branch_BranchId
	 inner join tbl_bookId on tbl_book_copies.book_copies_BookId = tbl_bookId.bookId_bookId
	 where  bookId_title = 'The Lost Tribe' ;

/* 3. 'Borrowers who have no books out: */
SELECT tbl_borrower.borrower_Name
	from tbl_borrower
	left outer join tbl_Book_Loans on tbl_borrower.borrower_ID = tbl_Book_Loans.book_loans_CardNo
	where tbl_Book_Loans.book_loans_CardNo IS NULL;


/* 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve 
the book title, the borrower's name, and the borrower's address. */

SELECT tbl_bookId.bookId_title, tbl_borrower.borrower_Name, tbl_borrower.borrower_Address, tbl_Book_Loans.book_loans_DueDate 
	from tbl_Book_Loans
	inner join tbl_Library_branch on tbl_Library_branch.Library_branch_BranchId = tbl_Book_Loans.book_loans_BranchId
	inner join tbl_borrower on tbl_Book_Loans.book_loans_CardNo = tbl_borrower.borrower_ID
	inner join tbl_bookId	on tbl_Book_Loans.book_loans_bookID = tbl_bookId.bookId_bookId
	where tbl_Book_Loans.book_loans_DueDate = CONVERT (date, getdate()) AND
		Library_branch_BranchName = 'Sharpstown';

/* 5. For each branch, retrieve branch name and number of books out */

SELECT  Library_branch_BranchName ,  COUNT (*)
from tbl_Book_Loans
	inner join tbl_Library_branch on tbl_Book_Loans.book_loans_BranchId = tbl_Library_branch.Library_branch_BranchId
	GROUP BY Library_branch_BranchName

/* 6. Retrieve the names, addresses, and number of books checked out for 
	all borrowers who have more than five books checked out. */

SELECT borrower_Name, borrower_Address, count(*)
	from tbl_borrower
	inner join  tbl_Book_Loans on tbl_borrower.borrower_ID = tbl_Book_Loans.book_loans_CardNo
	group by tbl_borrower.borrower_Name, tbl_borrower.borrower_Address
	having count(*) > 5

/* 7. For each book authored (or co-authored) by "Stephen King", 
retrieve the title and the number of copies owned by the library 
branch whose name is "Central". .*/

SELECT tbl_bookId.bookId_title, tbl_book_copies.book_copies_No_Of_Copies 
	FROM tbl_bookId
	inner join tbl_book_copies on tbl_bookId.bookId_bookId = tbl_book_copies.book_copies_BookId
	inner join tbl_Library_branch on tbl_book_copies.book_copies_branchId = tbl_Library_branch.Library_branch_BranchId
	inner join tbl_book_authors on tbl_bookId.bookId_bookId = tbl_book_authors.book_authors_bookId
	WHERE tbl_Library_branch.Library_branch_BranchName='Central';


SELECT	

select * from tbl_Book_Loans
select * from tbl_borrower
select * from tbl_bookId
select * from tbl_Library_branch


Create table tbl_dateTest(
		dateId int primary key not null identity (1,1),
		whenborn date
		);
Insert into tbl_dateTest
	(whenborn)
	VALUES
	('1900-10-10');				


/* select * from tbl_bookID

SELECT tbl_bookId.bookId_title, tbl_book_authors.book_authors_authorName
	from 
	tbl_bookId
	inner join tbl_book_authors on tbl_bookId.bookId_bookId = tbl_book_authors.book_authors_bookId;




