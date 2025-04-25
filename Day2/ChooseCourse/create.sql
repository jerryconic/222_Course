/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.3                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          New project                                     */
/* Project name:          New project                                     */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-04-25 14:10                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Student"                                                    */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Student] (
    [student_id] INTEGER NOT NULL,
    [student_name] NVARCHAR(40),
    [email] NVARCHAR(40),
    CONSTRAINT [PK_Student] PRIMARY KEY ([student_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'學生基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Student', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'學生編編號', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'student_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'學生姓名', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'student_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'電子郵件信箱', 'SCHEMA', N'dbo', 'TABLE', N'Student', 'COLUMN', N'email'
GO


/* ---------------------------------------------------------------------- */
/* Add table "Classroom"                                                  */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Classroom] (
    [room_id] INTEGER NOT NULL,
    [room_name] NCHAR(20),
    [floor_no] TINYINT,
    CONSTRAINT [PK_Classroom] PRIMARY KEY ([room_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'教室基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教室編號', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'room_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教室名稱', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'room_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'樓層數(1~20)', 'SCHEMA', N'dbo', 'TABLE', N'Classroom', 'COLUMN', N'floor_no'
GO


/* ---------------------------------------------------------------------- */
/* Add table "Subject"                                                    */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Subject] (
    [subject_id] INTEGER NOT NULL,
    [subject_name] NVARCHAR(40),
    [grade] DECIMAL(2,1),
    CONSTRAINT [PK_Subject] PRIMARY KEY ([subject_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'科目基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Subject', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'科目編號', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'subject_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'科目名稱', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'subject_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'學分數(0.0 ~ 4.0)', 'SCHEMA', N'dbo', 'TABLE', N'Subject', 'COLUMN', N'grade'
GO


/* ---------------------------------------------------------------------- */
/* Add table "Professor"                                                  */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Professor] (
    [professor_id] INTEGER NOT NULL,
    [professor_name] NVARCHAR(40),
    CONSTRAINT [PK_Professor] PRIMARY KEY ([professor_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'教授基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Professor', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教授編號', 'SCHEMA', N'dbo', 'TABLE', N'Professor', 'COLUMN', N'professor_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教授姓名', 'SCHEMA', N'dbo', 'TABLE', N'Professor', 'COLUMN', N'professor_name'
GO


/* ---------------------------------------------------------------------- */
/* Add table "Course"                                                     */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [Course] (
    [course_id] INTEGER NOT NULL,
    [subject_id] INTEGER NOT NULL,
    [room_id] INTEGER NOT NULL,
    [professor_id] INTEGER,
    [course_year] SMALLINT,
    [course_semister] TINYINT,
    CONSTRAINT [PK_Course] PRIMARY KEY ([course_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'課程基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Course', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'課程編號', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'科目', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'subject_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教室', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'room_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'教授', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'professor_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'課程年度(2000~2100)', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_year'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'上下學期(1:上學期, 2:下學期)', 'SCHEMA', N'dbo', 'TABLE', N'Course', 'COLUMN', N'course_semister'
GO


/* ---------------------------------------------------------------------- */
/* Add table "ChooseCourse"                                               */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [ChooseCourse] (
    [choose_id] INTEGER NOT NULL,
    [student_id] INTEGER NOT NULL,
    [course_id] INTEGER NOT NULL,
    [choose_time] DATETIME,
    CONSTRAINT [PK_ChooseCourse] PRIMARY KEY ([choose_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'選課紀錄', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'選課編號', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'choose_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'學生', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'student_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'課程', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'course_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'選課時間', 'SCHEMA', N'dbo', 'TABLE', N'ChooseCourse', 'COLUMN', N'choose_time'
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Course] ADD CONSTRAINT [Subject_Course] 
    FOREIGN KEY ([subject_id]) REFERENCES [Subject] ([subject_id])
GO


ALTER TABLE [Course] ADD CONSTRAINT [Classroom_Course] 
    FOREIGN KEY ([room_id]) REFERENCES [Classroom] ([room_id])
GO


ALTER TABLE [Course] ADD CONSTRAINT [Professor_Course] 
    FOREIGN KEY ([professor_id]) REFERENCES [Professor] ([professor_id])
GO


ALTER TABLE [ChooseCourse] ADD CONSTRAINT [Student_ChooseCourse] 
    FOREIGN KEY ([student_id]) REFERENCES [Student] ([student_id])
GO


ALTER TABLE [ChooseCourse] ADD CONSTRAINT [Course_ChooseCourse] 
    FOREIGN KEY ([course_id]) REFERENCES [Course] ([course_id])
GO

