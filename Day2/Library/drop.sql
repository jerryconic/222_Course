/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          Library.dez                                     */
/* Project name:          Library                                         */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2025-04-25 15:24                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [BorrowRecord] DROP CONSTRAINT [Member_BorrowRecord]
GO


ALTER TABLE [BorrowDetail] DROP CONSTRAINT [BookStock_BorrowDetail]
GO


ALTER TABLE [BorrowDetail] DROP CONSTRAINT [BorrowRecord_BorrowDetail]
GO


ALTER TABLE [PreBorrowRecord] DROP CONSTRAINT [Member_PreBorrowRecord]
GO


ALTER TABLE [PreBorrowDetail] DROP CONSTRAINT [BookStock_PreBorrowDetail]
GO


ALTER TABLE [PreBorrowDetail] DROP CONSTRAINT [PreBorrowRecord_PreBorrowDetail]
GO


ALTER TABLE [BookingRoom] DROP CONSTRAINT [Member_BookingRoom]
GO


ALTER TABLE [BookingRoom] DROP CONSTRAINT [MeetingRoom_BookingRoom]
GO


ALTER TABLE [BookStock] DROP CONSTRAINT [Book_BookStock]
GO


ALTER TABLE [Book] DROP CONSTRAINT [Publisher_Book]
GO


ALTER TABLE [Book_Author] DROP CONSTRAINT [Book_Book_Author]
GO


ALTER TABLE [Book_Author] DROP CONSTRAINT [Author_Book_Author]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PreBorrowDetail"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PreBorrowDetail] DROP CONSTRAINT [PK_PreBorrowDetail]
GO


DROP TABLE [PreBorrowDetail]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BorrowDetail"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BorrowDetail] DROP CONSTRAINT [PK_BorrowDetail]
GO


DROP TABLE [BorrowDetail]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BookStock"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BookStock] DROP CONSTRAINT [PK_BookStock]
GO


DROP TABLE [BookStock]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Book_Author"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Book_Author] DROP CONSTRAINT [PK_Book_Author]
GO


DROP TABLE [Book_Author]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Book"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Book] DROP CONSTRAINT [PK_Book]
GO


DROP TABLE [Book]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BookingRoom"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BookingRoom] DROP CONSTRAINT [PK_BookingRoom]
GO


DROP TABLE [BookingRoom]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Publisher"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Publisher] DROP CONSTRAINT [PK_Publisher]
GO


DROP TABLE [Publisher]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Author"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Author] DROP CONSTRAINT [PK_Author]
GO


DROP TABLE [Author]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "MeetingRoom"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [MeetingRoom] DROP CONSTRAINT [PK_MeetingRoom]
GO


DROP TABLE [MeetingRoom]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "PreBorrowRecord"                                           */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [PreBorrowRecord] DROP CONSTRAINT [PK_PreBorrowRecord]
GO


DROP TABLE [PreBorrowRecord]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "BorrowRecord"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [BorrowRecord] DROP CONSTRAINT [PK_BorrowRecord]
GO


DROP TABLE [BorrowRecord]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Member"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Member] DROP CONSTRAINT [PK_Member]
GO


DROP TABLE [Member]
GO

