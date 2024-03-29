USE [master]
GO
/****** Object:  Database [JobSolutions]    Script Date: 25-08-2021 04:19:59 PM ******/
CREATE DATABASE [JobSolutions]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JobSolutions', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JobSolutions.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JobSolutions_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JobSolutions_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JobSolutions] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobSolutions].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobSolutions] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JobSolutions] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JobSolutions] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JobSolutions] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JobSolutions] SET ARITHABORT OFF 
GO
ALTER DATABASE [JobSolutions] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JobSolutions] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JobSolutions] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JobSolutions] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JobSolutions] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JobSolutions] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JobSolutions] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JobSolutions] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JobSolutions] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JobSolutions] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JobSolutions] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JobSolutions] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JobSolutions] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JobSolutions] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JobSolutions] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JobSolutions] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JobSolutions] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JobSolutions] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JobSolutions] SET  MULTI_USER 
GO
ALTER DATABASE [JobSolutions] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JobSolutions] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JobSolutions] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JobSolutions] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JobSolutions] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JobSolutions] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JobSolutions] SET QUERY_STORE = OFF
GO
USE [JobSolutions]
GO
/****** Object:  Table [dbo].[AppliedJobs]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppliedJobs](
	[seeker_id] [numeric](18, 0) NOT NULL,
	[emp_id] [numeric](18, 0) NOT NULL,
	[job_id] [numeric](18, 0) NOT NULL,
	[applied_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployerCredentials]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployerCredentials](
	[employee_id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[phone] [numeric](18, 0) NOT NULL,
	[company_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EmployerCredentials] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndustryDetails]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndustryDetails](
	[industry_id] [numeric](18, 0) NOT NULL,
	[industry_type] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_IndustryDetails] PRIMARY KEY CLUSTERED 
(
	[industry_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDetails]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetails](
	[job_id] [numeric](18, 0) NOT NULL,
	[industry_id] [numeric](18, 0) NOT NULL,
	[job_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[location] [nvarchar](max) NOT NULL,
	[salary] [numeric](18, 0) NOT NULL,
	[emp_id] [numeric](18, 0) NOT NULL,
	[posted_date] [date] NOT NULL,
	[company_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JobDetails] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeekerCredentials]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeekerCredentials](
	[seeker_id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[phone] [numeric](18, 0) NOT NULL,
	[total_experience] [numeric](18, 0) NOT NULL,
	[location] [nvarchar](max) NULL,
	[notice_period] [numeric](18, 0) NOT NULL,
	[current_company] [nvarchar](max) NULL,
	[designation] [nvarchar](max) NULL,
 CONSTRAINT [PK_SeekerCredentials] PRIMARY KEY CLUSTERED 
(
	[seeker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeekerDetails]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeekerDetails](
	[seeker_id] [numeric](18, 0) NOT NULL,
	[skill_id] [numeric](18, 0) NOT NULL,
	[experience] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeekerEducation]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeekerEducation](
	[seeker_id] [numeric](18, 0) NOT NULL,
	[qualification] [nvarchar](50) NOT NULL,
	[specialization] [nvarchar](50) NOT NULL,
	[university] [nvarchar](max) NOT NULL,
	[course_type] [nvarchar](50) NOT NULL,
	[passing_year] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillSet]    Script Date: 25-08-2021 04:20:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillSet](
	[skill_id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[proficiency] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_SkillSet] PRIMARY KEY CLUSTERED 
(
	[skill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppliedJobs]  WITH CHECK ADD  CONSTRAINT [FK_AppliedJobs_EmployerCredentials] FOREIGN KEY([emp_id])
REFERENCES [dbo].[EmployerCredentials] ([employee_id])
GO
ALTER TABLE [dbo].[AppliedJobs] CHECK CONSTRAINT [FK_AppliedJobs_EmployerCredentials]
GO
ALTER TABLE [dbo].[AppliedJobs]  WITH CHECK ADD  CONSTRAINT [FK_AppliedJobs_JobDetails] FOREIGN KEY([job_id])
REFERENCES [dbo].[JobDetails] ([job_id])
GO
ALTER TABLE [dbo].[AppliedJobs] CHECK CONSTRAINT [FK_AppliedJobs_JobDetails]
GO
ALTER TABLE [dbo].[AppliedJobs]  WITH CHECK ADD  CONSTRAINT [FK_AppliedJobs_SeekerCredentials] FOREIGN KEY([seeker_id])
REFERENCES [dbo].[SeekerCredentials] ([seeker_id])
GO
ALTER TABLE [dbo].[AppliedJobs] CHECK CONSTRAINT [FK_AppliedJobs_SeekerCredentials]
GO
ALTER TABLE [dbo].[JobDetails]  WITH CHECK ADD  CONSTRAINT [FK_JobDetails_EmployerCredentials] FOREIGN KEY([emp_id])
REFERENCES [dbo].[EmployerCredentials] ([employee_id])
GO
ALTER TABLE [dbo].[JobDetails] CHECK CONSTRAINT [FK_JobDetails_EmployerCredentials]
GO
ALTER TABLE [dbo].[JobDetails]  WITH CHECK ADD  CONSTRAINT [FK_JobDetails_IndustryDetails] FOREIGN KEY([industry_id])
REFERENCES [dbo].[IndustryDetails] ([industry_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobDetails] CHECK CONSTRAINT [FK_JobDetails_IndustryDetails]
GO
ALTER TABLE [dbo].[SeekerDetails]  WITH CHECK ADD  CONSTRAINT [FK_SeekerDetails_SeekerCredentials] FOREIGN KEY([seeker_id])
REFERENCES [dbo].[SeekerCredentials] ([seeker_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SeekerDetails] CHECK CONSTRAINT [FK_SeekerDetails_SeekerCredentials]
GO
ALTER TABLE [dbo].[SeekerDetails]  WITH CHECK ADD  CONSTRAINT [FK_SeekerDetails_SkillSet] FOREIGN KEY([skill_id])
REFERENCES [dbo].[SkillSet] ([skill_id])
GO
ALTER TABLE [dbo].[SeekerDetails] CHECK CONSTRAINT [FK_SeekerDetails_SkillSet]
GO
ALTER TABLE [dbo].[SeekerEducation]  WITH CHECK ADD  CONSTRAINT [FK_SeekerEducation_SeekerCredentials] FOREIGN KEY([seeker_id])
REFERENCES [dbo].[SeekerCredentials] ([seeker_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SeekerEducation] CHECK CONSTRAINT [FK_SeekerEducation_SeekerCredentials]
GO
USE [master]
GO
ALTER DATABASE [JobSolutions] SET  READ_WRITE 
GO
