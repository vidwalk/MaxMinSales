USE [master]
GO
/****** Object:  Database [MaxMinManufacturingDM]    Script Date: 25/02/2020 11:01:38 ******/
CREATE DATABASE [MaxMinManufacturingDM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaxMinManufacturingDM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MaxMinManufacturingDM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MaxMinManufacturingDM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MaxMinManufacturingDM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MaxMinManufacturingDM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaxMinManufacturingDM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET  MULTI_USER 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaxMinManufacturingDM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MaxMinManufacturingDM] SET QUERY_STORE = OFF
GO
USE [MaxMinManufacturingDM]
GO
/****** Object:  Table [dbo].[DimCountry]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCountry](
	[CountryKey] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nchar](2) NOT NULL,
	[CountryName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DimCountry] PRIMARY KEY CLUSTERED 
(
	[CountryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMachine]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMachine](
	[MachineNumber] [int] NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[MachineTypeKey] [int] NOT NULL,
	[PlantNumber] [int] NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[DateOfPurchase] [date] NOT NULL,
 CONSTRAINT [PK_DimMachine] PRIMARY KEY CLUSTERED 
(
	[MachineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMachineType]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMachineType](
	[MachineTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[MachineType] [nvarchar](30) NOT NULL,
	[MaterialKey] [int] NOT NULL,
 CONSTRAINT [PK_DimMachineType] PRIMARY KEY CLUSTERED 
(
	[MachineTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMaterial]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMaterial](
	[MaterialKey] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DimMaterial] PRIMARY KEY CLUSTERED 
(
	[MaterialKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPlant]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPlant](
	[PlantNumber] [int] NOT NULL,
	[PlantName] [nvarchar](30) NOT NULL,
	[CountryKey] [int] NOT NULL,
 CONSTRAINT [PK_DimPlant] PRIMARY KEY CLUSTERED 
(
	[PlantNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProduct]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProduct](
	[ProductCode] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductSubtypeCode] [int] NOT NULL,
 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProductSubtype]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProductSubtype](
	[ProductSubtypeCode] [int] NOT NULL,
	[ProductSubtypeName] [nvarchar](50) NOT NULL,
	[ProductTypeCode] [int] NOT NULL,
 CONSTRAINT [PK_DimProductSubtype] PRIMARY KEY CLUSTERED 
(
	[ProductSubtypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProductType]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProductType](
	[ProductTypeCode] [int] NOT NULL,
	[ProductTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DinBatch]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DinBatch](
	[BatchNumber] [int] NOT NULL,
	[BatchName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DinBatch] PRIMARY KEY CLUSTERED 
(
	[BatchNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactManufacturing]    Script Date: 25/02/2020 11:01:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactManufacturing](
	[AcceptedProducts] [int] NOT NULL,
	[RejectedProducts] [int] NOT NULL,
	[ElapseTimeForManufacture] [decimal](6, 2) NOT NULL,
	[DateOfManufacture] [date] NOT NULL,
	[ProductCode] [int] NOT NULL,
	[BatchNumber] [int] NOT NULL,
	[MachineNumber] [int] NOT NULL,
 CONSTRAINT [PK_FactManufacturing] PRIMARY KEY CLUSTERED 
(
	[DateOfManufacture] ASC,
	[ProductCode] ASC,
	[BatchNumber] ASC,
	[MachineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country Dimension populated from the accounting system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimCountry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Dimension populated from the Manufacturing Automation System export file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductSubtype Dimension popualted from the accounting system. ProductSubtype table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimProductSubtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FactManufacturing populated from the manufacturing automation system export file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactManufacturing'
GO
USE [master]
GO
ALTER DATABASE [MaxMinManufacturingDM] SET  READ_WRITE 
GO
