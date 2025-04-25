/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          New project                                     */
/* Project name:          New project                                     */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2025-04-25 14:10                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Course] DROP CONSTRAINT [Subject_Course]
GO


ALTER TABLE [Course] DROP CONSTRAINT [Classroom_Course]
GO


ALTER TABLE [Course] DROP CONSTRAINT [Professor_Course]
GO


ALTER TABLE [ChooseCourse] DROP CONSTRAINT [Student_ChooseCourse]
GO


ALTER TABLE [ChooseCourse] DROP CONSTRAINT [Course_ChooseCourse]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ChooseCourse"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ChooseCourse] DROP CONSTRAINT [PK_ChooseCourse]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'choose_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'student_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'course_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'choose_time'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', NULL, NULL
GO


DROP TABLE [ChooseCourse]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Course"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Course] DROP CONSTRAINT [PK_Course]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'subject_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'room_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'professor_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_year'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_semister'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Course', NULL, NULL
GO


DROP TABLE [Course]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Professor"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Professor] DROP CONSTRAINT [PK_Professor]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Professor', 'COLUMN', N'professor_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Professor', 'COLUMN', N'professor_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Professor', NULL, NULL
GO


DROP TABLE [Professor]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Subject"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Subject] DROP CONSTRAINT [PK_Subject]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'subject_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'subject_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'grade'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Subject', NULL, NULL
GO


DROP TABLE [Subject]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Classroom"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Classroom] DROP CONSTRAINT [PK_Classroom]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'room_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'room_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'floor_no'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', NULL, NULL
GO


DROP TABLE [Classroom]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Student"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Student] DROP CONSTRAINT [PK_Student]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'student_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'student_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'email'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Student', NULL, NULL
GO


DROP TABLE [Student]
GO

