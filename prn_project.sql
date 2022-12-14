USE [master]
GO
/****** Object:  Database [prn_project_2]    Script Date: 11/27/2022 10:09:46 PM ******/
CREATE DATABASE [prn_project_2] 
GO
ALTER DATABASE [prn_project_2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prn_project_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prn_project_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prn_project_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prn_project_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prn_project_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prn_project_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [prn_project_2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [prn_project_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prn_project_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prn_project_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prn_project_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prn_project_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prn_project_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prn_project_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prn_project_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prn_project_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prn_project_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prn_project_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prn_project_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prn_project_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prn_project_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prn_project_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prn_project_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prn_project_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prn_project_2] SET  MULTI_USER 
GO
ALTER DATABASE [prn_project_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prn_project_2] SET DB_CHAINING OFF 
GO
USE [prn_project_2]
GO
/****** Object:  Table [dbo].[ActivityDetail]    Script Date: 11/27/2022 10:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityDetail](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [nvarchar](40) NOT NULL,
	[SubjectId] [nvarchar](40) NOT NULL,
	[TeacherId] [nvarchar](40) NOT NULL,
	[StudentGroup] [nvarchar](40) NOT NULL,
	[Classroom] [nvarchar](40) NOT NULL,
	[Slot] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[CourseSessionNumber] [int] NOT NULL,
	[Campus] [nvarchar](40) NOT NULL,
	[Booker] [nvarchar](40) NOT NULL,
	[recordTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/27/2022 10:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [nvarchar](40) NOT NULL,
	[StudentName] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
	[DOB] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 11/27/2022 10:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectId] [nvarchar](40) NOT NULL,
	[SubjectName] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 11/27/2022 10:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TeacherId] [nvarchar](40) NOT NULL,
	[TeacherName] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActivityDetail] ON 

INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (1, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-10-18T00:00:00.000' AS DateTime), 21, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (2, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 2, CAST(N'2022-10-18T00:00:00.000' AS DateTime), 22, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (3, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-10-20T00:00:00.000' AS DateTime), 23, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (4, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-10-25T00:00:00.000' AS DateTime), 24, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (5, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 2, CAST(N'2022-10-25T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (6, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-10-27T00:00:00.000' AS DateTime), 26, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (7, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-11-01T00:00:00.000' AS DateTime), 27, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (8, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 2, CAST(N'2022-11-01T00:00:00.000' AS DateTime), 28, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (9, N'HE160369', N'SWT301', N'HienDA', N'SE1627-NET', N'DE-C304', 1, CAST(N'2022-11-03T00:00:00.000' AS DateTime), 29, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (11, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-17T00:00:00.000' AS DateTime), 22, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (12, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-19T00:00:00.000' AS DateTime), 23, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (13, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-21T00:00:00.000' AS DateTime), 24, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (14, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-24T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (15, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-26T00:00:00.000' AS DateTime), 26, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (16, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-28T00:00:00.000' AS DateTime), 27, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (17, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-10-31T00:00:00.000' AS DateTime), 28, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (18, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-11-02T00:00:00.000' AS DateTime), 29, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (19, N'HE160369', N'SWR302', N'ThangPD10', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-11-04T00:00:00.000' AS DateTime), 30, N'FU-HL', N'dungttp', CAST(N'2022-08-09T12:05:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (20, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-10-18T00:00:00.000' AS DateTime), 22, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (21, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 5, CAST(N'2022-10-20T00:00:00.000' AS DateTime), 23, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (22, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-10-20T00:00:00.000' AS DateTime), 24, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (23, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-10-25T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (24, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 5, CAST(N'2022-10-25T00:00:00.000' AS DateTime), 26, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (25, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-10-27T00:00:00.000' AS DateTime), 27, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (26, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-11-01T00:00:00.000' AS DateTime), 28, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (27, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 5, CAST(N'2021-11-03T00:00:00.000' AS DateTime), 29, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (28, N'HE160369', N'JPD123', N'ThuLX', N'SE1627-NET', N'DE-C303', 6, CAST(N'2022-11-03T00:00:00.000' AS DateTime), 30, N'FU-HL', N'dungttp', CAST(N'2022-08-29T23:52:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (29, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-17T00:00:00.000' AS DateTime), 22, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (30, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-19T00:00:00.000' AS DateTime), 23, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (31, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-21T00:00:00.000' AS DateTime), 24, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (32, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-24T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (33, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-26T00:00:00.000' AS DateTime), 26, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (34, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-28T00:00:00.000' AS DateTime), 27, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (35, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-10-31T00:00:00.000' AS DateTime), 28, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (36, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 2, CAST(N'2022-11-04T00:00:00.000' AS DateTime), 29, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (37, N'HE160369', N'PRN211', N'ChiLP', N'SE1627-NET', N'DE-C303', 3, CAST(N'2022-11-12T00:00:00.000' AS DateTime), 30, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:08:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (42, N'HE160369', N'ITE302c', N'NangNTH', N'SE1627-NET', N'BE-312', 3, CAST(N'2022-11-05T00:00:00.000' AS DateTime), 5, N'FU-HL', N'dungttp', CAST(N'2022-08-12T14:36:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (43, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-17T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (44, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-19T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (45, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-21T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (46, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-24T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (47, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-26T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (48, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-28T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (49, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-10-31T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (50, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-11-02T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
INSERT [dbo].[ActivityDetail] ([ActivityId], [StudentId], [SubjectId], [TeacherId], [StudentGroup], [Classroom], [Slot], [Time], [CourseSessionNumber], [Campus], [Booker], [recordTime]) VALUES (51, N'HE160369', N'PRJ301', N'KhuonngPD', N'SE1638', N'DE-C204', 5, CAST(N'2022-11-04T00:00:00.000' AS DateTime), 25, N'FU-HL', N'dungttp', CAST(N'2022-08-09T15:27:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ActivityDetail] OFF
GO
INSERT [dbo].[Students] ([StudentId], [StudentName], [Email], [DOB]) VALUES (N'HE160369', N'Nguyen An Thuyen', N'thuyennahe160369@fpt.edu.vn', CAST(N'2001-01-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'ITE302c', N'Ethics in IT(ITE302c)')
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2(JPD123)')
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'PRJ301', N'Java Web Application Development(PRJ301)')
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'PRN211', N'Basic Cross-Platform Application Programming With .NET(PRN211)')
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'SWR302', N'Software Requirement(SWR302)')
INSERT [dbo].[Subjects] ([SubjectId], [SubjectName]) VALUES (N'SWT301', N'Software Testing(SWT301)')
GO
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'ChiLP', N'Le Phuong Chi', N'ChiLP2@fe.edu.vn')
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'HienDA', N'Dao Anh Hien', N'hienda@fe.edu.vn')
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'KhuongPD', N'Phung Duy Khuong', N'KhuongPD2@fe.edu.vn
')
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'NangNTH', N'Nguyen Thi Hai Nang', N'NangNTH@fe.edu.vn')
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'ThangPD10', N'Pham Duc Thang', N'ThangPD10@fe.edu.vn
')
INSERT [dbo].[Teachers] ([TeacherId], [TeacherName], [Email]) VALUES (N'ThuLX', N'Lai Xuan Thu', N'	ThuLX@fe.edu.vn')
GO
ALTER TABLE [dbo].[ActivityDetail]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[ActivityDetail]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([SubjectId])
GO
USE [master]
GO
ALTER DATABASE [prn_project_2] SET  READ_WRITE 
GO
