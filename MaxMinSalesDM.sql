USE [master]
GO
/****** Object:  Database [MaxMinSalesDM]    Script Date: 25/02/2020 14:22:41 ******/
CREATE DATABASE [MaxMinSalesDM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaxMinSalesDM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MaxMinSalesDM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MaxMinSalesDM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MaxMinSalesDM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MaxMinSalesDM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaxMinSalesDM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaxMinSalesDM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaxMinSalesDM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaxMinSalesDM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MaxMinSalesDM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaxMinSalesDM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MaxMinSalesDM] SET  MULTI_USER 
GO
ALTER DATABASE [MaxMinSalesDM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaxMinSalesDM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaxMinSalesDM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaxMinSalesDM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MaxMinSalesDM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MaxMinSalesDM] SET QUERY_STORE = OFF
GO
USE [MaxMinSalesDM]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 25/02/2020 14:22:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[PK_Customer] [int] NOT NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nchar](2) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Homeowner] [nchar](1) NULL,
	[MaritalStatus] [nchar](1) NULL,
	[NumCarsOwned] [smallint] NULL,
	[NumChildrenAtHome] [smallint] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[PK_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[PK_Date] [datetime] NOT NULL,
	[Date_Name] [nvarchar](50) NULL,
	[Year] [datetime] NULL,
	[Year_Name] [nvarchar](50) NULL,
	[Quarter] [datetime] NULL,
	[Quarter_Name] [nvarchar](50) NULL,
	[Month] [datetime] NULL,
	[Month_Name] [nvarchar](50) NULL,
	[Day_Of_Year] [int] NULL,
	[Day_Of_Year_Name] [nvarchar](50) NULL,
	[Day_Of_Quarter] [int] NULL,
	[Day_Of_Quarter_Name] [nvarchar](50) NULL,
	[Day_Of_Month] [int] NULL,
	[Day_Of_Month_Name] [nvarchar](50) NULL,
	[Month_Of_Year] [int] NULL,
	[Month_Of_Year_Name] [nvarchar](50) NULL,
	[Month_Of_Quarter] [int] NULL,
	[Month_Of_Quarter_Name] [nvarchar](50) NULL,
	[Quarter_Of_Year] [int] NULL,
	[Quarter_Of_Year_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[PK_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[PK_Product] [int] NOT NULL,
	[Product_Name] [nvarchar](50) NULL,
	[RetailPrice] [money] NULL,
	[Weight] [real] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[PK_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PK_Promotion] [int] NOT NULL,
	[Promotion_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PK_Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Information]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Information](
	[FK_Date] [datetime] NULL,
	[FK_Customer] [int] NULL,
	[FK_Product] [int] NULL,
	[FK_Promotion] [int] NULL,
	[FK_Sales_Person] [int] NULL,
	[FK_Store] [int] NULL,
	[Sales_in_Dollars] [money] NULL,
	[Sales_in_Units] [int] NULL,
	[Sales_Tax] [money] NULL,
	[Shipping] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Person]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Person](
	[PK_Sales_Person] [int] IDENTITY(1,1) NOT NULL,
	[Sales_Person_Name] [nvarchar](50) NULL,
	[Sales_Person_SCD_Original_ID] [int] NULL,
	[Sales_Person_SCD_Status]  AS (case when [Sales_Person_SCD_End_Date]='12/31/9999' then 'Active' else 'Inactive' end),
	[Sales_Person_SCD_Start_Date] [datetime] NULL,
	[Sales_Person_SCD_End_Date] [datetime] NULL,
	[Sales_Person_Territory] [int] NULL,
 CONSTRAINT [PK_Sales_Person] PRIMARY KEY CLUSTERED 
(
	[PK_Sales_Person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 25/02/2020 14:22:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[PK_Store] [int] NOT NULL,
	[Store_Name] [nvarchar](50) NULL,
	[Store_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[PK_Store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information] ON [dbo].[Sales_Information]
(
	[FK_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information1]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information1] ON [dbo].[Sales_Information]
(
	[FK_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information2]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information2] ON [dbo].[Sales_Information]
(
	[FK_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information3]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information3] ON [dbo].[Sales_Information]
(
	[FK_Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information4]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information4] ON [dbo].[Sales_Information]
(
	[FK_Sales_Person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Information5]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Information5] ON [dbo].[Sales_Information]
(
	[FK_Store] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sales_Person]    Script Date: 25/02/2020 14:22:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sales_Person] ON [dbo].[Sales_Person]
(
	[Sales_Person_SCD_Original_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Customer] FOREIGN KEY([FK_Customer])
REFERENCES [dbo].[Customer] ([PK_Customer])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Customer]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Date] FOREIGN KEY([FK_Date])
REFERENCES [dbo].[Date] ([PK_Date])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Date]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[Product] ([PK_Product])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Product]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Promotion] FOREIGN KEY([FK_Promotion])
REFERENCES [dbo].[Promotion] ([PK_Promotion])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Promotion]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Sales_Person] FOREIGN KEY([FK_Sales_Person])
REFERENCES [dbo].[Sales_Person] ([PK_Sales_Person])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Sales_Person]
GO
ALTER TABLE [dbo].[Sales_Information]  WITH NOCHECK ADD  CONSTRAINT [Sales_Information-Store] FOREIGN KEY([FK_Store])
REFERENCES [dbo].[Store] ([PK_Store])
GO
ALTER TABLE [dbo].[Sales_Information] NOCHECK CONSTRAINT [Sales_Information-Store]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'PK_Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'PK_Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Customer_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Customer_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Customer_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'CONSTRAINT',@level2name=N'PK_Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Date_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Date_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Month'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Day_Of_Month_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Day_Of_Month_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Month_Of_Quarter_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Month_Of_Quarter_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Quarter_Of_Year_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Quarter_Of_Year_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'CONSTRAINT',@level2name=N'PK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'PK_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'PK_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Product_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Product_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Product_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'CONSTRAINT',@level2name=N'PK_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion', @level2type=N'COLUMN',@level2name=N'PK_Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Promotion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion', @level2type=N'COLUMN',@level2name=N'PK_Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion', @level2type=N'COLUMN',@level2name=N'Promotion_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Promotion_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion', @level2type=N'COLUMN',@level2name=N'Promotion_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion', @level2type=N'CONSTRAINT',@level2name=N'PK_Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Promotion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Promotion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Sales_Person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Store'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'FK_Store' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'FK_Store'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_in_Dollars'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_in_Dollars' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_in_Dollars'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_in_Units'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_in_Units' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_in_Units'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Sales_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Shipping'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Shipping' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'COLUMN',@level2name=N'Shipping'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information1'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information2'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information3'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information4'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'INDEX',@level2name=N'IX_Sales_Information5'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Sales_Information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Product'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Product'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Product'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Promotion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Promotion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Sales_Person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Store'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVRelation', @value=N'Sales_Information-Store' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Store'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Information', @level2type=N'CONSTRAINT',@level2name=N'Sales_Information-Store'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'PK_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'PK_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Original_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person_SCD_Original_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Original_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Status'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person_SCD_Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Status'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Start_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person_SCD_Start_Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_Start_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_End_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Sales_Person_SCD_End_Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'COLUMN',@level2name=N'Sales_Person_SCD_End_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'CONSTRAINT',@level2name=N'PK_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person', @level2type=N'INDEX',@level2name=N'IX_Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Sales_Person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sales_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'PK_Store'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Store' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'PK_Store'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'Store_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Store_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'COLUMN',@level2name=N'Store_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store', @level2type=N'CONSTRAINT',@level2name=N'PK_Store'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store'
GO
EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Store' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store'
GO
EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'f1cc2150-4b18-48c8-b38c-0e926885faa3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Store'
GO
USE [master]
GO
ALTER DATABASE [MaxMinSalesDM] SET  READ_WRITE 
GO
