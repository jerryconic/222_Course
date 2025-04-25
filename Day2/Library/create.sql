/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          Library.dez                                     */
/* Project name:          Library                                         */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-04-25 15:24                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Member"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Member] (
    [member_id] INTEGER NOT NULL,
    [member_name] NVARCHAR(40),
    [address] NVARCHAR(40),
    [email] NVARCHAR(40),
    [entrance_date] DATETIME,
    [book_fee] SMALLINT,
    [room_fee] SMALLINT,
    CONSTRAINT [PK_Member] PRIMARY KEY ([member_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BorrowRecord"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BorrowRecord] (
    [borrow_id] INTEGER NOT NULL,
    [borrow_date] DATETIME,
    [member_id] INTEGER NOT NULL,
    CONSTRAINT [PK_BorrowRecord] PRIMARY KEY ([borrow_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PreBorrowRecord"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PreBorrowRecord] (
    [pre_borrow_id] INTEGER NOT NULL,
    [pre_borrow_date] DATETIME,
    [member_id] INTEGER NOT NULL,
    CONSTRAINT [PK_PreBorrowRecord] PRIMARY KEY ([pre_borrow_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "MeetingRoom"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [MeetingRoom] (
    [room_id] INTEGER NOT NULL,
    [room_name] VARCHAR(20),
    [capacity] TINYINT,
    CONSTRAINT [PK_MeetingRoom] PRIMARY KEY ([room_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Author"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Author] (
    [author_id] INTEGER NOT NULL,
    [author_name] VARCHAR(20),
    [email] VARCHAR(50),
    CONSTRAINT [PK_Author] PRIMARY KEY ([author_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Publisher"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Publisher] (
    [publisher_id] INTEGER NOT NULL,
    [publisher_name] VARCHAR(20),
    [address] VARCHAR(100),
    [phone] VARCHAR(20),
    [contact_name] VARCHAR(20),
    CONSTRAINT [PK_Publisher] PRIMARY KEY ([publisher_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BookingRoom"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BookingRoom] (
    [booking_id] INTEGER NOT NULL,
    [member_id] INTEGER NOT NULL,
    [room_id] INTEGER NOT NULL,
    [apply_date] DATETIME,
    [booking_date] DATETIME,
    [booking_stime] DATETIME,
    [booking_etime] DATETIME,
    CONSTRAINT [PK_BookingRoom] PRIMARY KEY ([booking_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Book"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Book] (
    [book_id] INTEGER NOT NULL,
    [book_name] VARCHAR(20),
    [ISBN] VARCHAR(13),
    [descriptions] VARCHAR(100),
    [publisher_id] INTEGER NOT NULL,
    [photo] VARBINARY(max),
    CONSTRAINT [PK_Book] PRIMARY KEY ([book_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Book_Author"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Book_Author] (
    [book_id] INTEGER NOT NULL,
    [author_id] INTEGER NOT NULL,
    CONSTRAINT [PK_Book_Author] PRIMARY KEY ([book_id], [author_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BookStock"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BookStock] (
    [stock_id] INTEGER NOT NULL,
    [book_id] INTEGER,
    [status] CHAR(20),
    CONSTRAINT [PK_BookStock] PRIMARY KEY ([stock_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "BorrowDetail"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [BorrowDetail] (
    [borrow_id] INTEGER NOT NULL,
    [stock_id] INTEGER NOT NULL,
    [return_date] DATETIME,
    CONSTRAINT [PK_BorrowDetail] PRIMARY KEY ([borrow_id], [stock_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PreBorrowDetail"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PreBorrowDetail] (
    [pre_borrow_id] INTEGER NOT NULL,
    [stock_id] INTEGER NOT NULL,
    [is_borrowed] BIT,
    CONSTRAINT [PK_PreBorrowDetail] PRIMARY KEY ([pre_borrow_id], [stock_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [BorrowRecord] ADD CONSTRAINT [Member_BorrowRecord] 
    FOREIGN KEY ([member_id]) REFERENCES [Member] ([member_id])
GO


ALTER TABLE [BorrowDetail] ADD CONSTRAINT [BookStock_BorrowDetail] 
    FOREIGN KEY ([stock_id]) REFERENCES [BookStock] ([stock_id])
GO


ALTER TABLE [BorrowDetail] ADD CONSTRAINT [BorrowRecord_BorrowDetail] 
    FOREIGN KEY ([borrow_id]) REFERENCES [BorrowRecord] ([borrow_id])
GO


ALTER TABLE [PreBorrowRecord] ADD CONSTRAINT [Member_PreBorrowRecord] 
    FOREIGN KEY ([member_id]) REFERENCES [Member] ([member_id])
GO


ALTER TABLE [PreBorrowDetail] ADD CONSTRAINT [BookStock_PreBorrowDetail] 
    FOREIGN KEY ([stock_id]) REFERENCES [BookStock] ([stock_id])
GO


ALTER TABLE [PreBorrowDetail] ADD CONSTRAINT [PreBorrowRecord_PreBorrowDetail] 
    FOREIGN KEY ([pre_borrow_id]) REFERENCES [PreBorrowRecord] ([pre_borrow_id])
GO


ALTER TABLE [BookingRoom] ADD CONSTRAINT [Member_BookingRoom] 
    FOREIGN KEY ([member_id]) REFERENCES [Member] ([member_id])
GO


ALTER TABLE [BookingRoom] ADD CONSTRAINT [MeetingRoom_BookingRoom] 
    FOREIGN KEY ([room_id]) REFERENCES [MeetingRoom] ([room_id])
GO


ALTER TABLE [BookStock] ADD CONSTRAINT [Book_BookStock] 
    FOREIGN KEY ([book_id]) REFERENCES [Book] ([book_id])
GO


ALTER TABLE [Book] ADD CONSTRAINT [Publisher_Book] 
    FOREIGN KEY ([publisher_id]) REFERENCES [Publisher] ([publisher_id])
GO


ALTER TABLE [Book_Author] ADD CONSTRAINT [Book_Book_Author] 
    FOREIGN KEY ([book_id]) REFERENCES [Book] ([book_id])
GO


ALTER TABLE [Book_Author] ADD CONSTRAINT [Author_Book_Author] 
    FOREIGN KEY ([author_id]) REFERENCES [Author] ([author_id])
GO

