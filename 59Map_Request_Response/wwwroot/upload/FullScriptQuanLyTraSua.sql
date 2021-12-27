USE [master]
GO
/****** Object:  Database [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF]    Script Date: 12/14/2021 3:42:01 PM ******/
CREATE DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn1', FILENAME = N'C:\Program Files (x86)\Team_Meta\QuanLyTraSua\DuAn1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuAn1_log', FILENAME = N'C:\Program Files (x86)\Team_Meta\QuanLyTraSua\DuAn1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET RECOVERY FULL 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET QUERY_STORE = OFF
GO
USE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 12/14/2021 3:42:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id_employee] [int] NOT NULL,
	[Id_bill] [int] IDENTITY(1,1) NOT NULL,
	[Id_customer] [int] NULL,
	[Id_table] [int] NOT NULL,
	[DateCheckIn] [datetime] NOT NULL,
	[DateCheckOut] [datetime] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills_detail]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills_detail](
	[Id_bill_detaill] [int] IDENTITY(1,1) NOT NULL,
	[Id_bill] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Id_beverage] [int] NOT NULL,
	[totalPrice] [float] NULL,
	[sale] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_bill_detaill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id_role] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Password] [varchar](100) NULL,
	[DayOfBirth] [date] NOT NULL,
	[Id_employee] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
	[isDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[getReport12]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy danh sách theo tuần
CREATE View [dbo].[getReport12]
as
		select c.Name as 'Nhân viên', b.Id_customer as 'Mã khách', b.Id_bill as 'Mã bill', b.Id_table as 'Mã bàn', FORMAT(b.DateCheckIn, 'dd/MM/yyy') as'Ngày nhập',FORMAT(b.DateCheckOut, 'dd/MM/yyy') as 'Ngày xuất',FORMAT( Sum(a.totalPrice), '#,###') as 'Tổng tiền'  from Bills_detail a
		inner join Bills b on a.Id_bill = b.Id_bill
		inner join Employees c on c.Id_employee = b.Id_employee
		group by b.Id_bill, b.Id_customer, c.Name, b.Id_table, b.DateCheckIn, b.DateCheckOut
GO
/****** Object:  Table [dbo].[Beverages]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beverages](
	[Name] [nvarchar](55) NOT NULL,
	[Price] [float] NOT NULL,
	[Id_type] [int] NOT NULL,
	[Id_beverage] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[isDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_beverage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Email] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[Id_customer] [int] IDENTITY(1,1) NOT NULL,
	[Reward] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id_ingredient] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Id_supplier] [int] NOT NULL,
	[Id_type] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[mass] [real] NULL,
	[Id_unit] [int] NULL,
	[images] [nvarchar](750) NULL,
	[isDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InputBills]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputBills](
	[ID_Bill] [int] IDENTITY(1,1) NOT NULL,
	[DateCheckIn] [datetime] NOT NULL,
	[ID_employee] [int] NOT NULL,
	[SumPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InputBillsDetaill]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputBillsDetaill](
	[Id_BillDetaill] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [float] NOT NULL,
	[Id_Ingredient] [int] NOT NULL,
	[ID_Bill] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_BillDetaill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id_role] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id_schedule] [int] IDENTITY(1,1) NOT NULL,
	[Id_employee] [int] NOT NULL,
	[Id_shift] [int] NOT NULL,
	[Days] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_schedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[TimeBegin] [varchar](10) NOT NULL,
	[TimeEnd] [varchar](10) NOT NULL,
	[name] [nvarchar](45) NULL,
	[Id_shift] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_shift] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Name] [nvarchar](50) NOT NULL,
	[Id_supplier] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[isDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_supplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tables]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tables](
	[ID_Table] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[checkin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfBeverage]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfBeverage](
	[Id_type] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfIngredient]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfIngredient](
	[Id_type] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[isDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesVoucher]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesVoucher](
	[ID_Type] [int] IDENTITY(1,1) NOT NULL,
	[Sale] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[units]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[units](
	[ID_unit] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 12/14/2021 3:42:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Id_voucher] [varchar](6) NOT NULL,
	[DateBegin] [date] NOT NULL,
	[DateEnd] [date] NULL,
	[Id_employee] [int] NOT NULL,
	[ID_Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_voucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Beverages] ON 
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Hồng trà sữa', 20000, 1, 1, N'Images\hong-tra-sua (1).png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Lục trà sữa', 30000, 1, 2, N'Images\luc-tra-sua.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà sữa Olong', 25000, 1, 4, N'Images\tra-sua-olong.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà sữa Thái', 40000, 1, 5, N'Images\tra-sua-thai.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Sữa tươi trân châu đường đen', 35000, 1, 6, N'Images\sua-tuoi-tran-chau-duong-den.jpg', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà Olong', 15000, 2, 7, N'Images\tra-olong.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Hồng trà (trà đen)', 20000, 2, 8, N'Images\hong-tra.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Lục trà (trà xanh)', 20000, 2, 9, N'Images\LUC-TRA.png', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà chanh', 15000, 2, 10, N'Images\tra-chanh.jpg', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà trái cây', 35000, 2, 11, N'Images\tra-trai-cay.jpg', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà đào', 20000, 2, 12, N'Images\tra-dao-992x1024.jpg', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Gái Ngọt', 10000, 2, 13, N'Images\mikami.jpg', 1)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Yua mikami', 50000, 1, 14, N'Images\mikami1.jpg', 1)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'd', 66, 1, 15, N'Images\mikami.jpg', 1)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'a', 1, 1, 16, N'Images\mikami.jpg', 1)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà Sữa cỡ lớn', 50000, 1, 17, N'Images\sua-tuoi-tran-chau-duong-den.jpg', 0)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà Sữa cỡ lớn', 50000, 1, 18, N'Images\sua-tuoi-tran-chau-duong-den.jpg', 1)
GO
INSERT [dbo].[Beverages] ([Name], [Price], [Id_type], [Id_beverage], [Image], [isDelete]) VALUES (N'Trà cỡ lớn', 100000, 1, 19, N'Images\sua-tuoi-tran-chau-duong-den.jpg', 0)
GO
SET IDENTITY_INSERT [dbo].[Beverages] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 21, NULL, 2, CAST(N'2021-11-15T16:08:23.040' AS DateTime), CAST(N'2021-11-15T16:08:25.863' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 22, NULL, 3, CAST(N'2021-11-15T16:08:27.843' AS DateTime), CAST(N'2021-11-15T16:08:28.870' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 23, NULL, 2, CAST(N'2021-11-15T17:14:28.287' AS DateTime), CAST(N'2021-11-15T17:14:30.743' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 24, NULL, 3, CAST(N'2021-11-15T17:14:32.443' AS DateTime), CAST(N'2021-11-15T18:06:21.277' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 25, NULL, 2, CAST(N'2021-11-15T18:06:12.180' AS DateTime), CAST(N'2021-11-15T18:06:17.573' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 26, NULL, 7, CAST(N'2021-11-15T21:33:52.477' AS DateTime), CAST(N'2021-11-16T09:50:35.003' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 27, NULL, 3, CAST(N'2021-11-16T09:50:37.877' AS DateTime), CAST(N'2021-11-16T09:56:52.907' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 28, NULL, 2, CAST(N'2021-11-16T09:50:41.523' AS DateTime), CAST(N'2021-11-16T09:56:47.537' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 29, NULL, 4, CAST(N'2021-11-16T09:50:53.363' AS DateTime), CAST(N'2021-11-16T11:25:50.043' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 30, NULL, 3, CAST(N'2021-11-16T09:56:57.077' AS DateTime), CAST(N'2021-11-16T09:57:03.780' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 31, NULL, 7, CAST(N'2021-11-16T09:56:59.443' AS DateTime), CAST(N'2021-11-16T09:57:02.060' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 32, NULL, 2, CAST(N'2021-11-16T09:59:43.943' AS DateTime), CAST(N'2021-11-16T09:59:52.900' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 33, NULL, 2, CAST(N'2021-11-16T11:25:37.607' AS DateTime), CAST(N'2021-11-16T11:25:45.760' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 34, NULL, 7, CAST(N'2021-11-16T11:25:39.510' AS DateTime), CAST(N'2021-11-16T11:25:48.420' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 35, NULL, 2, CAST(N'2021-11-16T11:25:51.763' AS DateTime), CAST(N'2021-11-16T11:28:04.617' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 36, NULL, 3, CAST(N'2021-11-16T11:25:59.660' AS DateTime), CAST(N'2021-11-16T11:27:40.860' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 37, NULL, 4, CAST(N'2021-11-16T11:27:43.703' AS DateTime), CAST(N'2021-11-16T11:27:45.960' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 38, NULL, 3, CAST(N'2021-11-16T11:28:00.120' AS DateTime), CAST(N'2021-11-16T11:28:02.507' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 39, NULL, 4, CAST(N'2021-11-16T13:35:10.523' AS DateTime), CAST(N'2021-11-16T14:29:57.980' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 40, NULL, 3, CAST(N'2021-11-16T14:29:46.603' AS DateTime), CAST(N'2021-11-16T14:29:55.530' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 41, NULL, 3, CAST(N'2021-11-16T14:30:02.080' AS DateTime), CAST(N'2021-11-16T14:45:45.540' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 42, 1, 3, CAST(N'2021-11-16T14:45:48.533' AS DateTime), CAST(N'2021-11-16T14:49:16.217' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 44, NULL, 3, CAST(N'2021-11-16T16:27:29.777' AS DateTime), CAST(N'2021-11-16T16:27:37.210' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 45, NULL, 4, CAST(N'2021-11-16T16:27:43.823' AS DateTime), CAST(N'2021-11-16T16:27:46.273' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 46, 1, 4, CAST(N'2021-11-16T16:29:32.797' AS DateTime), CAST(N'2021-11-16T16:33:23.397' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 47, 1, 4, CAST(N'2021-11-16T16:33:27.573' AS DateTime), CAST(N'2021-11-16T16:33:56.820' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 48, 1, 3, CAST(N'2021-11-16T16:36:14.340' AS DateTime), CAST(N'2021-11-16T16:36:22.437' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 49, NULL, 3, CAST(N'2021-11-16T17:59:40.580' AS DateTime), CAST(N'2021-11-16T18:20:00.533' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 50, NULL, 7, CAST(N'2021-11-16T18:20:23.350' AS DateTime), CAST(N'2021-11-16T18:20:24.807' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 51, 1, 3, CAST(N'2021-11-16T22:05:42.147' AS DateTime), CAST(N'2021-11-16T22:18:26.243' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 52, 1, 2, CAST(N'2021-11-16T22:24:04.187' AS DateTime), CAST(N'2021-11-16T22:24:16.510' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 53, 1, 3, CAST(N'2021-11-17T10:27:11.150' AS DateTime), CAST(N'2021-11-17T10:27:27.443' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 54, 1, 3, CAST(N'2021-11-17T10:28:17.900' AS DateTime), CAST(N'2021-11-17T10:28:28.830' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 55, 1, 3, CAST(N'2021-11-17T10:28:47.893' AS DateTime), CAST(N'2021-11-17T10:28:50.220' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 56, NULL, 3, CAST(N'2021-11-17T10:33:34.913' AS DateTime), CAST(N'2021-11-17T10:33:36.853' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 57, NULL, 3, CAST(N'2021-11-17T10:33:38.150' AS DateTime), CAST(N'2021-11-17T10:33:40.500' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 58, NULL, 3, CAST(N'2021-11-17T10:33:41.620' AS DateTime), CAST(N'2021-11-17T10:33:45.560' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 59, NULL, 4, CAST(N'2021-11-17T10:33:49.773' AS DateTime), CAST(N'2021-11-17T10:33:50.817' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 60, NULL, 2, CAST(N'2021-11-17T10:44:05.300' AS DateTime), CAST(N'2021-11-17T10:44:09.633' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 61, 1, 7, CAST(N'2021-11-17T11:08:13.747' AS DateTime), CAST(N'2021-11-17T11:08:17.300' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 62, 1, 7, CAST(N'2021-11-17T11:09:12.707' AS DateTime), CAST(N'2021-11-17T11:09:19.560' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 63, 3, 4, CAST(N'2021-11-17T11:14:35.590' AS DateTime), CAST(N'2021-11-17T11:14:41.203' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 64, 3, 4, CAST(N'2021-11-17T11:14:53.907' AS DateTime), CAST(N'2021-11-17T11:15:05.547' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 65, 1, 7, CAST(N'2021-11-17T13:26:39.520' AS DateTime), CAST(N'2021-11-17T13:26:46.780' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 66, 1, 7, CAST(N'2021-11-17T15:41:49.463' AS DateTime), CAST(N'2021-11-17T15:41:51.773' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 67, 1, 3, CAST(N'2021-11-17T15:41:58.543' AS DateTime), CAST(N'2021-11-17T15:42:15.137' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 68, 1, 3, CAST(N'2021-11-17T16:38:41.043' AS DateTime), CAST(N'2021-11-17T16:38:45.747' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 69, 1, 3, CAST(N'2021-11-17T18:22:48.103' AS DateTime), CAST(N'2021-11-17T18:27:29.897' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 70, 1, 2, CAST(N'2021-11-17T20:19:06.170' AS DateTime), CAST(N'2021-11-17T20:19:10.703' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 71, 1, 3, CAST(N'2021-11-18T13:57:17.253' AS DateTime), CAST(N'2021-11-18T16:20:10.730' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 72, 1, 3, CAST(N'2021-11-18T16:22:47.073' AS DateTime), CAST(N'2021-11-18T17:06:37.077' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 73, 1, 3, CAST(N'2021-11-18T17:13:03.600' AS DateTime), CAST(N'2021-11-18T17:14:16.630' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 74, 1, 3, CAST(N'2021-11-19T11:15:06.380' AS DateTime), CAST(N'2021-11-19T11:15:28.570' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 75, 1, 3, CAST(N'2021-11-19T15:36:40.287' AS DateTime), CAST(N'2021-11-19T17:11:35.903' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 77, 1, 1, CAST(N'2021-11-19T15:55:21.873' AS DateTime), CAST(N'2021-11-22T16:57:33.457' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 78, 1, 2, CAST(N'2021-11-19T17:01:56.480' AS DateTime), CAST(N'2021-11-19T17:11:34.233' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 79, 1, 7, CAST(N'2021-11-20T18:25:09.477' AS DateTime), CAST(N'2021-11-22T16:57:35.400' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 80, 1, 2, CAST(N'2021-11-22T16:26:17.733' AS DateTime), CAST(N'2021-11-22T16:57:28.890' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 81, 1, 2, CAST(N'2021-11-22T17:03:11.257' AS DateTime), CAST(N'2021-11-24T16:45:52.507' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 83, 3, 2, CAST(N'2021-11-25T22:29:02.657' AS DateTime), CAST(N'2021-11-25T22:29:16.240' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 85, 1, 8, CAST(N'2021-11-26T10:02:36.993' AS DateTime), CAST(N'2021-11-25T22:29:16.240' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 90, 1, 8, CAST(N'2020-01-08T10:00:00.000' AS DateTime), CAST(N'2020-01-08T10:01:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 91, NULL, 9, CAST(N'2021-11-28T13:27:10.177' AS DateTime), CAST(N'2021-11-28T13:27:17.367' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 92, NULL, 1, CAST(N'2021-11-28T19:05:10.023' AS DateTime), CAST(N'2021-11-29T16:45:29.137' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 93, NULL, 7, CAST(N'2021-11-29T17:15:42.897' AS DateTime), CAST(N'2021-11-29T17:16:01.350' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 94, NULL, 7, CAST(N'2021-11-29T17:16:11.887' AS DateTime), CAST(N'2021-11-29T18:15:26.140' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 95, NULL, 7, CAST(N'2021-11-29T18:33:54.383' AS DateTime), CAST(N'2021-11-29T18:34:14.313' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 97, NULL, 7, CAST(N'2021-11-30T15:15:41.340' AS DateTime), CAST(N'2021-11-30T15:18:13.200' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 98, NULL, 7, CAST(N'2021-12-01T09:02:35.863' AS DateTime), CAST(N'2021-12-01T09:02:40.800' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 99, NULL, 7, CAST(N'2021-12-01T19:14:46.913' AS DateTime), CAST(N'2021-12-01T19:15:58.157' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 100, NULL, 7, CAST(N'2021-12-01T20:55:11.793' AS DateTime), CAST(N'2021-12-01T20:55:44.883' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 101, NULL, 7, CAST(N'2021-12-02T17:24:07.467' AS DateTime), CAST(N'2021-12-02T17:24:30.197' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 102, NULL, 7, CAST(N'2021-12-03T12:16:40.723' AS DateTime), CAST(N'2021-12-03T12:17:00.090' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 103, NULL, 7, CAST(N'2021-12-03T12:19:34.047' AS DateTime), CAST(N'2021-12-03T12:19:40.050' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 104, NULL, 7, CAST(N'2021-12-03T12:21:39.220' AS DateTime), CAST(N'2021-12-03T12:21:40.850' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 105, NULL, 7, CAST(N'2021-12-03T12:25:33.027' AS DateTime), CAST(N'2021-12-03T12:25:43.320' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 106, NULL, 7, CAST(N'2021-12-03T12:27:25.583' AS DateTime), CAST(N'2021-12-03T12:27:33.007' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 107, NULL, 7, CAST(N'2021-12-03T12:28:26.127' AS DateTime), CAST(N'2021-12-03T12:28:29.550' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 108, NULL, 7, CAST(N'2021-12-03T12:29:50.867' AS DateTime), CAST(N'2021-12-03T12:29:59.183' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 109, NULL, 7, CAST(N'2021-12-03T12:31:21.170' AS DateTime), CAST(N'2021-12-03T12:31:26.257' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 110, NULL, 7, CAST(N'2021-12-03T12:32:45.090' AS DateTime), CAST(N'2021-12-03T12:32:49.917' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 111, NULL, 7, CAST(N'2021-12-03T12:34:12.023' AS DateTime), CAST(N'2021-12-03T12:34:17.080' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 112, NULL, 7, CAST(N'2021-12-03T12:34:56.447' AS DateTime), CAST(N'2021-12-03T12:34:58.773' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 113, NULL, 7, CAST(N'2021-12-03T12:35:29.643' AS DateTime), CAST(N'2021-12-03T12:35:32.070' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 114, NULL, 7, CAST(N'2021-12-03T12:36:07.457' AS DateTime), CAST(N'2021-12-03T12:36:09.510' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 115, NULL, 7, CAST(N'2021-12-03T12:36:34.813' AS DateTime), CAST(N'2021-12-03T12:36:36.980' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 116, NULL, 7, CAST(N'2021-12-03T12:39:14.840' AS DateTime), CAST(N'2021-12-03T12:39:16.947' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 117, NULL, 7, CAST(N'2021-12-03T12:43:06.487' AS DateTime), CAST(N'2021-12-03T12:43:08.360' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 118, NULL, 7, CAST(N'2021-12-03T12:45:05.557' AS DateTime), CAST(N'2021-12-03T12:45:08.087' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 119, NULL, 7, CAST(N'2021-12-03T12:45:40.843' AS DateTime), CAST(N'2021-12-03T12:45:44.077' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 120, NULL, 7, CAST(N'2021-12-03T12:46:47.063' AS DateTime), CAST(N'2021-12-03T12:46:49.240' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 121, NULL, 7, CAST(N'2021-12-03T12:48:02.970' AS DateTime), CAST(N'2021-12-03T12:48:11.933' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 122, NULL, 7, CAST(N'2021-12-03T12:48:49.360' AS DateTime), CAST(N'2021-12-03T12:48:53.593' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 123, NULL, 7, CAST(N'2021-12-03T12:52:13.670' AS DateTime), CAST(N'2021-12-03T13:03:15.957' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 124, NULL, 1, CAST(N'2021-12-03T12:52:19.067' AS DateTime), CAST(N'2021-12-03T12:52:22.247' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 125, NULL, 7, CAST(N'2021-12-03T13:04:39.360' AS DateTime), CAST(N'2021-12-03T13:04:43.413' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 126, NULL, 7, CAST(N'2021-12-03T13:09:16.837' AS DateTime), CAST(N'2021-12-03T13:09:19.293' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 127, NULL, 13, CAST(N'2021-12-03T15:10:53.770' AS DateTime), CAST(N'2021-12-03T15:10:55.963' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 128, NULL, 7, CAST(N'2021-12-03T15:11:43.193' AS DateTime), CAST(N'2021-12-03T15:12:07.247' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 129, NULL, 13, CAST(N'2021-12-03T15:13:30.423' AS DateTime), CAST(N'2021-12-03T15:14:04.123' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 130, NULL, 13, CAST(N'2021-12-03T15:21:26.047' AS DateTime), CAST(N'2021-12-03T15:21:59.157' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 131, NULL, 13, CAST(N'2021-12-03T15:23:18.520' AS DateTime), CAST(N'2021-12-03T15:23:29.933' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 132, NULL, 13, CAST(N'2021-12-03T15:27:17.027' AS DateTime), CAST(N'2021-12-03T15:27:45.347' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 134, NULL, 2, CAST(N'2021-12-03T15:43:38.617' AS DateTime), CAST(N'2021-12-03T16:08:51.730' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 136, NULL, 2, CAST(N'2021-12-04T10:50:13.113' AS DateTime), CAST(N'2021-12-04T15:41:34.157' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 144, NULL, 7, CAST(N'2021-12-04T15:49:10.493' AS DateTime), CAST(N'2021-12-04T15:49:39.777' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 145, NULL, 5, CAST(N'2021-12-04T16:04:02.370' AS DateTime), CAST(N'2021-12-04T16:04:20.343' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 146, NULL, 5, CAST(N'2021-12-04T16:05:25.850' AS DateTime), CAST(N'2021-12-04T16:05:55.183' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 148, NULL, 7, CAST(N'2021-12-04T22:25:24.480' AS DateTime), CAST(N'2021-12-04T22:27:54.697' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 150, NULL, 7, CAST(N'2021-12-04T22:34:02.250' AS DateTime), CAST(N'2021-12-06T19:06:56.747' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (1, 153, 4, 1, CAST(N'2021-12-04T22:36:00.360' AS DateTime), CAST(N'2021-12-05T09:59:45.710' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 156, 4, 1, CAST(N'2021-12-05T10:04:31.517' AS DateTime), CAST(N'2021-12-05T10:04:43.920' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 157, NULL, 1, CAST(N'2021-12-05T10:05:25.520' AS DateTime), CAST(N'2021-12-05T10:05:50.700' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 158, 4, 2, CAST(N'2021-12-05T10:06:27.840' AS DateTime), CAST(N'2021-12-05T10:06:40.107' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 159, 4, 5, CAST(N'2021-12-05T10:07:00.187' AS DateTime), CAST(N'2021-12-05T10:08:04.740' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 161, NULL, 5, CAST(N'2021-12-05T12:45:57.517' AS DateTime), CAST(N'2021-12-05T12:57:04.587' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 162, NULL, 2, CAST(N'2021-12-05T12:57:13.887' AS DateTime), CAST(N'2021-12-05T13:06:18.983' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 164, NULL, 15, CAST(N'2021-12-05T15:42:04.400' AS DateTime), CAST(N'2021-12-05T19:31:58.367' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 166, NULL, 5, CAST(N'2021-12-05T21:24:52.943' AS DateTime), CAST(N'2021-12-06T19:07:17.680' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (15, 167, NULL, 6, CAST(N'2021-12-06T19:07:11.453' AS DateTime), CAST(N'2021-12-06T19:07:15.050' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (15, 168, NULL, 6, CAST(N'2021-12-06T19:07:25.483' AS DateTime), CAST(N'2021-12-06T19:07:33.003' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (15, 169, NULL, 6, CAST(N'2021-12-06T19:16:14.123' AS DateTime), CAST(N'2021-12-06T19:16:42.513' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 179, NULL, 7, CAST(N'2021-12-10T18:07:08.580' AS DateTime), CAST(N'2021-12-10T18:16:31.307' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 180, NULL, 7, CAST(N'2021-12-10T18:17:36.837' AS DateTime), CAST(N'2021-12-10T18:17:39.797' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 181, NULL, 7, CAST(N'2021-12-10T18:30:17.370' AS DateTime), CAST(N'2021-12-12T20:46:11.600' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 182, NULL, 1, CAST(N'2021-12-10T18:30:43.317' AS DateTime), CAST(N'2021-12-10T18:30:52.193' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 183, NULL, 2, CAST(N'2021-12-10T18:30:44.603' AS DateTime), CAST(N'2021-12-12T20:47:01.747' AS DateTime), 1)
GO
INSERT [dbo].[Bills] ([Id_employee], [Id_bill], [Id_customer], [Id_table], [DateCheckIn], [DateCheckOut], [status]) VALUES (9, 184, NULL, 15, CAST(N'2021-12-12T20:41:20.290' AS DateTime), CAST(N'2021-12-12T20:41:24.193' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills_detail] ON 
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (111, 83, 1, 2, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (112, 83, 2, 4, 50000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (114, 85, 7, 14, 350000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (115, 90, 9, 14, 800000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (116, 91, 3, 7, 45000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (117, 91, 4, 5, 160000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (118, 92, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (119, 92, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (120, 93, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (121, 94, 2, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (123, 95, 3, 2, 90000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (126, 97, 3, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (127, 98, 4, 4, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (128, 99, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (129, 99, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (130, 100, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (131, 101, 35, 5, 1400000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (132, 102, 6, 9, 120000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (133, 102, 4, 7, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (134, 102, 8, 12, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (135, 103, 3, 4, 75000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (136, 103, 3, 5, 120000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (137, 104, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (138, 105, 5, 7, 75000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (139, 105, 4, 8, 80000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (140, 106, 3, 12, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (141, 106, 4, 6, 140000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (142, 107, 4, 4, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (143, 108, 1, 11, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (144, 108, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (145, 109, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (146, 109, 1, 1, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (147, 110, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (148, 110, 1, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (149, 111, 2, 2, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (150, 111, 2, 9, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (151, 112, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (152, 113, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (153, 114, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (154, 115, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (155, 116, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (156, 117, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (157, 118, 1, 6, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (158, 119, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (159, 120, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (160, 121, 1, 11, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (161, 121, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (162, 122, 5, 8, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (163, 124, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (164, 123, 1, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (165, 125, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (166, 126, 3, 4, 75000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (167, 127, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (168, 128, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (169, 129, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (171, 131, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (172, 132, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (173, 132, 5, 8, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (174, 134, 9, 8, 180000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (175, 134, 11, 2, 330000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (176, 136, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (177, 136, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (178, 136, 2, 7, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (179, 136, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (180, 136, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (184, 144, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (185, 144, 1, 9, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (186, 144, 1, 11, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (187, 145, 1, 11, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (188, 145, 1, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (189, 145, 1, 6, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (190, 146, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (191, 146, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (192, 148, 3, 6, 105000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (193, 148, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (194, 148, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (195, 153, 2, 7, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (196, 153, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (197, 153, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (198, 153, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (199, 153, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (203, 156, 1, 2, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (204, 157, 1, 4, 12500, 50)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (205, 158, 8, 9, 160000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (206, 159, 4, 7, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (207, 159, 1, 7, 7500, 50)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (208, 161, 1, 6, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (209, 161, 1, 6, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (210, 162, 3, 8, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (211, 162, 3, 8, 60000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (212, 164, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (213, 164, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (214, 166, 1, 7, 15000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (215, 150, 1, 2, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (216, 150, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (217, 150, 1, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (218, 167, 1, 2, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (219, 167, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (220, 168, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (221, 168, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (222, 169, 1, 2, 30000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (223, 169, 1, 4, 25000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (224, 169, 1, 5, 40000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (243, 179, 1, 8, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (244, 180, 1, 19, 100000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (245, 182, 4, 6, 140000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (246, 182, 3, 5, 120000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (247, 184, 1, 11, 35000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (248, 184, 1, 17, 50000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (249, 181, 1, 12, 20000, 0)
GO
INSERT [dbo].[Bills_detail] ([Id_bill_detaill], [Id_bill], [Quantity], [Id_beverage], [totalPrice], [sale]) VALUES (250, 183, 1, 11, 35000, 0)
GO
SET IDENTITY_INSERT [dbo].[Bills_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Email], [name], [Gender], [Id_customer], [Reward]) VALUES (N'tungnh230802@gmail.com', N'Nguyễn Hoàng Tùng', N'Nam', 1, 490)
GO
INSERT [dbo].[Customers] ([Email], [name], [Gender], [Id_customer], [Reward]) VALUES (N'tungdz0001@gmail.com', N'Nguyễn Hoàng Tùng', N'Nữ', 3, 501)
GO
INSERT [dbo].[Customers] ([Email], [name], [Gender], [Id_customer], [Reward]) VALUES (N'tieptvps17468@fpt.edu.vn', N'Trần Văn Tiếp', N'Nam', 4, 327)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'tungdz0001@gmail.com', N'binh thuan', N'1292201552198220877194054219216496220885', CAST(N'2021-11-07' AS Date), 1, N'Hoàng Nguyễn Tùng', 100000000, 0)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'tranvantiep0805@gmail.com', N'quang ngai', N'1292201552198220877194054219216496220885', CAST(N'2002-06-25' AS Date), 8, N'Tiếp Trần Văn', 100000000, 1)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'tieptvps17468@fpt.edu.vn', N'Quảng Ngãi', N'1292201552198220877194054219216496220885', CAST(N'2002-06-25' AS Date), 9, N'Trần Văn Tiếp', 100000000, 0)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'vinhtnps15447@fpt.edu.vn', N'Kon Tum', N'1292201552198220877194054219216496220885', CAST(N'2002-06-11' AS Date), 10, N'Trương Nhật Vinh', 1000000, 0)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (2, 1, N'thanh@gmail.com', N'Đâu đó?', N'1292201552198220877194054219216496220885', CAST(N'2002-01-01' AS Date), 12, N'Hồ Văn Thành', 1000000, 0)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'thien@gmail.com', N'Đâu đó?', N'1292201552198220877194054219216496220885', CAST(N'2002-01-01' AS Date), 14, N'Đào Tấn Thiện', 1000000, 0)
GO
INSERT [dbo].[Employees] ([Id_role], [Gender], [Email], [Address], [Password], [DayOfBirth], [Id_employee], [Name], [Salary], [isDelete]) VALUES (1, 1, N'chinhchu@gmail.com', N'Đâu đó?', N'1962026656160185351301320480154111117132155', CAST(N'1985-01-01' AS Date), 15, N'Mr. Tăng Thanh Phương', 99999999, 0)
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (61, N'nước lọc', 5, 6, 130000, 1, 1, N'Images\HOD_postBinh19L_(500-500).jpg', 0)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (62, N'nước lọc', 5, 6, 13000, 20, 2, N'Images\HOD_postBinh19L_(500-500).jpg', 0)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (63, N'Nước lọc', 5, 6, 13000, 20, 2, N'Images\HOD_postBinh19L_(500-500).jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (66, N'Trà ô long', 5, 11, 56000, 10, 1, N'Images\traOLong.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (67, N'Lục trà lài', 5, 11, 70000, 10, 1, N'Images\traLucTai.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (68, N'Bột sữa vanablanca', 5, 12, 80000, 5, 1, N'Images\GLOFOOD PRODUCTS - VANA BLANCA.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (69, N'Trân châu đen', 5, 13, 35000, 10, 1, N'Images\download.jfif', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (70, N'Thạch trân châu truyền thống', 5, 14, 50000, 8, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU TRUYEN THONG 2KG.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (71, N'Thạch trân châu truyền thống', 5, 14, 30000, 5, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU DUONG NAU 2KG.jpg', 0)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (72, N'Thạch trân châu truyền thống', 5, 14, 100000, 10, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU VAI 2KG.jpg', 0)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (73, N'Thạch trân châu đường nâu', 5, 14, 100000, 10, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU DUONG NAU 2KG.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (74, N'Thạch trân châu đường nâu', 5, 14, 80000, 10, 1, N'Images\t5.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (75, N'Thạch trân châu khoai môn', 5, 14, 100000, 10, 1, N'Images\20e03402b36a46341f7b.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (76, N'Thạch trân châu khoai môn', 5, 14, 20000, 10, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU DAU 2KG.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (77, N'Thạch trân châu khoai môn', 5, 14, 60000, 10, 1, N'Images\t5.jpg', 1)
GO
INSERT [dbo].[Ingredients] ([Id_ingredient], [Name], [Id_supplier], [Id_type], [Price], [mass], [Id_unit], [images], [isDelete]) VALUES (78, N'Thạch trân châu đào', 5, 6, 40000, 10, 1, N'Images\GLOFOOD PRODUCTS - THACH TRAN CHAU DAO 2KG.jpg', 0)
GO
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
SET IDENTITY_INSERT [dbo].[InputBills] ON 
GO
INSERT [dbo].[InputBills] ([ID_Bill], [DateCheckIn], [ID_employee], [SumPrice]) VALUES (1, CAST(N'2021-12-13T01:54:12.003' AS DateTime), 9, 819000)
GO
INSERT [dbo].[InputBills] ([ID_Bill], [DateCheckIn], [ID_employee], [SumPrice]) VALUES (2, CAST(N'2021-12-13T01:54:12.003' AS DateTime), 9, 1722000)
GO
INSERT [dbo].[InputBills] ([ID_Bill], [DateCheckIn], [ID_employee], [SumPrice]) VALUES (3, CAST(N'2021-12-14T03:34:54.167' AS DateTime), 15, 85000)
GO
SET IDENTITY_INSERT [dbo].[InputBills] OFF
GO
SET IDENTITY_INSERT [dbo].[InputBillsDetaill] ON 
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (1, 1, 63, 1)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (2, 1, 66, 1)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (3, 1, 68, 1)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (4, 5, 72, 1)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (5, 9, 77, 1)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (6, 10, 77, 2)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (7, 3, 69, 2)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (8, 9, 63, 2)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (9, 7, 74, 2)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (10, 1, 69, 3)
GO
INSERT [dbo].[InputBillsDetaill] ([Id_BillDetaill], [quantity], [Id_Ingredient], [ID_Bill]) VALUES (11, 1, 72, 3)
GO
SET IDENTITY_INSERT [dbo].[InputBillsDetaill] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id_role], [Name]) VALUES (1, N'Quản lý')
GO
INSERT [dbo].[Roles] ([Id_role], [Name]) VALUES (2, N'Nhân viên')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON 
GO
INSERT [dbo].[Schedules] ([Id_schedule], [Id_employee], [Id_shift], [Days]) VALUES (2, 1, 2, 35678)
GO
INSERT [dbo].[Schedules] ([Id_schedule], [Id_employee], [Id_shift], [Days]) VALUES (3, 8, 2, 234567)
GO
INSERT [dbo].[Schedules] ([Id_schedule], [Id_employee], [Id_shift], [Days]) VALUES (4, 8, 4, 2345)
GO
SET IDENTITY_INSERT [dbo].[Schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Shifts] ON 
GO
INSERT [dbo].[Shifts] ([TimeBegin], [TimeEnd], [name], [Id_shift]) VALUES (N'7h', N'9h', N'ca 1', 1)
GO
INSERT [dbo].[Shifts] ([TimeBegin], [TimeEnd], [name], [Id_shift]) VALUES (N'9h', N'11h', N'ca 2', 2)
GO
INSERT [dbo].[Shifts] ([TimeBegin], [TimeEnd], [name], [Id_shift]) VALUES (N'19h', N'21h', N'ca 3', 4)
GO
SET IDENTITY_INSERT [dbo].[Shifts] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'Không có', 5, N'', N'', 1)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'jlk', 6, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'jlk', 7, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'jlk', 8, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'ádff', 9, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'fsdfsadf', 10, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N't', 11, N'', N'', 0)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'a', 12, N'a@a.com', N'', 1)
GO
INSERT [dbo].[Suppliers] ([Name], [Id_supplier], [Email], [Address], [isDelete]) VALUES (N'đường', 13, N'a@gmail.com', N'c', 1)
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[tables] ON 
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (1, N'bàn 1', N'Trống', 1)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (2, N'bàn 2', N'Trống', 1)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (3, N'bàn 3', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (4, N'bàn 4', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (5, N'bàn 5', N'Trống', 1)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (6, N'bàn 6', N'Trống', 1)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (7, N'bàn 7', N'Trống', 1)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (8, N'8', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (9, N'bàn 9', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (10, N'Bàn 8', N'Trống', NULL)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (11, N'bàn 10', N'Trống', NULL)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (12, N'bàn 12', N'Trống', NULL)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (13, N'bàn 8', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (14, N'bàn 9', N'Trống', 0)
GO
INSERT [dbo].[tables] ([ID_Table], [name], [Status], [checkin]) VALUES (15, N'bàn 9', N'Trống', 1)
GO
SET IDENTITY_INSERT [dbo].[tables] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfBeverage] ON 
GO
INSERT [dbo].[TypesOfBeverage] ([Id_type], [Name]) VALUES (1, N'Trà sữa')
GO
INSERT [dbo].[TypesOfBeverage] ([Id_type], [Name]) VALUES (2, N'Trà')
GO
INSERT [dbo].[TypesOfBeverage] ([Id_type], [Name]) VALUES (3, N'khác')
GO
SET IDENTITY_INSERT [dbo].[TypesOfBeverage] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesOfIngredient] ON 
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (5, N'các loại nước', 0)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (6, N'Khác', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (7, N'Các loại nước', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (8, N'fsfafsd', 0)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (9, N'sadfadffsdf', 0)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (10, N'm', 0)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (11, N'trà', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (12, N'Bột trà sữa', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (13, N'Trân châu', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (14, N'các loại thạch', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (15, N'bột vani', 1)
GO
INSERT [dbo].[TypesOfIngredient] ([Id_type], [Name], [isDelete]) VALUES (16, N'a', 0)
GO
SET IDENTITY_INSERT [dbo].[TypesOfIngredient] OFF
GO
SET IDENTITY_INSERT [dbo].[TypesVoucher] ON 
GO
INSERT [dbo].[TypesVoucher] ([ID_Type], [Sale]) VALUES (1, 20)
GO
INSERT [dbo].[TypesVoucher] ([ID_Type], [Sale]) VALUES (4, 50)
GO
INSERT [dbo].[TypesVoucher] ([ID_Type], [Sale]) VALUES (5, 70)
GO
INSERT [dbo].[TypesVoucher] ([ID_Type], [Sale]) VALUES (7, 90)
GO
INSERT [dbo].[TypesVoucher] ([ID_Type], [Sale]) VALUES (8, 100)
GO
SET IDENTITY_INSERT [dbo].[TypesVoucher] OFF
GO
SET IDENTITY_INSERT [dbo].[units] ON 
GO
INSERT [dbo].[units] ([ID_unit], [Name]) VALUES (1, N'kg')
GO
INSERT [dbo].[units] ([ID_unit], [Name]) VALUES (2, N'Lít')
GO
SET IDENTITY_INSERT [dbo].[units] OFF
GO
INSERT [dbo].[Vouchers] ([Id_voucher], [DateBegin], [DateEnd], [Id_employee], [ID_Type], [Status]) VALUES (N'ABaAab', CAST(N'2021-11-07' AS Date), CAST(N'2021-11-07' AS Date), 9, 1, 0)
GO
INSERT [dbo].[Vouchers] ([Id_voucher], [DateBegin], [DateEnd], [Id_employee], [ID_Type], [Status]) VALUES (N'RMrRrm', CAST(N'2021-11-07' AS Date), CAST(N'2021-11-07' AS Date), 9, 1, 0)
GO
INSERT [dbo].[Vouchers] ([Id_voucher], [DateBegin], [DateEnd], [Id_employee], [ID_Type], [Status]) VALUES (N'TLtTtl', CAST(N'2021-11-07' AS Date), CAST(N'2021-11-07' AS Date), 9, 1, 0)
GO
INSERT [dbo].[Vouchers] ([Id_voucher], [DateBegin], [DateEnd], [Id_employee], [ID_Type], [Status]) VALUES (N'YNyYyn', CAST(N'2021-11-07' AS Date), CAST(N'2021-11-07' AS Date), 9, 1, 0)
GO
ALTER TABLE [dbo].[Beverages] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[Bills] ADD  DEFAULT (getdate()) FOR [DateCheckIn]
GO
ALTER TABLE [dbo].[Bills] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Bills_detail] ADD  DEFAULT ((0)) FOR [sale]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((0)) FOR [Reward]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ('1292201552198220877194054219216496220885') FOR [Password]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[InputBills] ADD  DEFAULT (getdate()) FOR [DateCheckIn]
GO
ALTER TABLE [dbo].[tables] ADD  DEFAULT (N'trống') FOR [Status]
GO
ALTER TABLE [dbo].[Vouchers] ADD  DEFAULT (getdate()) FOR [DateBegin]
GO
ALTER TABLE [dbo].[Vouchers] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Beverages]  WITH CHECK ADD  CONSTRAINT [FK_Id_type_Beverages] FOREIGN KEY([Id_type])
REFERENCES [dbo].[TypesOfBeverage] ([Id_type])
GO
ALTER TABLE [dbo].[Beverages] CHECK CONSTRAINT [FK_Id_type_Beverages]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Id_customer] FOREIGN KEY([Id_customer])
REFERENCES [dbo].[Customers] ([Id_customer])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Id_customer]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Id_employee_Employee] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employees] ([Id_employee])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Id_employee_Employee]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Id_table] FOREIGN KEY([Id_table])
REFERENCES [dbo].[tables] ([ID_Table])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Id_table]
GO
ALTER TABLE [dbo].[Bills_detail]  WITH CHECK ADD  CONSTRAINT [FK_Id_beverage_Bill_detail] FOREIGN KEY([Id_beverage])
REFERENCES [dbo].[Beverages] ([Id_beverage])
GO
ALTER TABLE [dbo].[Bills_detail] CHECK CONSTRAINT [FK_Id_beverage_Bill_detail]
GO
ALTER TABLE [dbo].[Bills_detail]  WITH CHECK ADD  CONSTRAINT [FK_Id_bill_BillDetail] FOREIGN KEY([Id_bill])
REFERENCES [dbo].[Bills] ([Id_bill])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bills_detail] CHECK CONSTRAINT [FK_Id_bill_BillDetail]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [fk_idRole] FOREIGN KEY([Id_role])
REFERENCES [dbo].[Roles] ([Id_role])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [fk_idRole]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD  CONSTRAINT [fk] FOREIGN KEY([Id_unit])
REFERENCES [dbo].[units] ([ID_unit])
GO
ALTER TABLE [dbo].[Ingredients] CHECK CONSTRAINT [fk]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_ID_supplier] FOREIGN KEY([Id_supplier])
REFERENCES [dbo].[Suppliers] ([Id_supplier])
GO
ALTER TABLE [dbo].[Ingredients] CHECK CONSTRAINT [FK_ID_supplier]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_ID_Type] FOREIGN KEY([Id_type])
REFERENCES [dbo].[TypesOfIngredient] ([Id_type])
GO
ALTER TABLE [dbo].[Ingredients] CHECK CONSTRAINT [FK_ID_Type]
GO
ALTER TABLE [dbo].[InputBills]  WITH CHECK ADD  CONSTRAINT [FK_ID_employee] FOREIGN KEY([ID_employee])
REFERENCES [dbo].[Employees] ([Id_employee])
GO
ALTER TABLE [dbo].[InputBills] CHECK CONSTRAINT [FK_ID_employee]
GO
ALTER TABLE [dbo].[InputBillsDetaill]  WITH CHECK ADD  CONSTRAINT [FK_ID_ingredient] FOREIGN KEY([Id_Ingredient])
REFERENCES [dbo].[Ingredients] ([Id_ingredient])
GO
ALTER TABLE [dbo].[InputBillsDetaill] CHECK CONSTRAINT [FK_ID_ingredient]
GO
ALTER TABLE [dbo].[InputBillsDetaill]  WITH CHECK ADD  CONSTRAINT [FK_ID_InputBills] FOREIGN KEY([ID_Bill])
REFERENCES [dbo].[InputBills] ([ID_Bill])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InputBillsDetaill] CHECK CONSTRAINT [FK_ID_InputBills]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Id_employee_schedule] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employees] ([Id_employee])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Id_employee_schedule]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Id_Shift] FOREIGN KEY([Id_shift])
REFERENCES [dbo].[Shifts] ([Id_shift])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Id_Shift]
GO
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Id_employe_voucher] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employees] ([Id_employee])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Id_employe_voucher]
GO
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Id_TypeVoucher_voucher] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[TypesVoucher] ([ID_Type])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Id_TypeVoucher_voucher]
GO
/****** Object:  StoredProcedure [dbo].[a]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[a]
as
	begin
	select * from Employees
	end
GO
/****** Object:  StoredProcedure [dbo].[addCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addCustomer] 
@idcus int,@idBill int
as
begin 
	update Bills set Id_customer = @idcus
	where Id_bill = @idBill
end
GO
/****** Object:  StoredProcedure [dbo].[CHANGE_PASSWORD]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CHANGE_PASSWORD] 
@EMAIL varchar(50),
@OLDPASS varchar(100),
@NEWPASS varchar(100)
AS
BEGIN
		DECLARE @OP varchar(100)
		SELECT @OP = Password from Employees where Email = @EMAIL
		IF @OP = @OLDPASS
		BEGIN 
		UPDATE Employees SET Password = @NEWPASS where Email = @EMAIL
		return 1
		END
		ELSE
		return -1
END
GO
/****** Object:  StoredProcedure [dbo].[changeQuantityBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[changeQuantityBillDetail]
@idBillDetail int, @quantity int
as
begin
	declare @price float
	select @price = a.Price from Beverages a
	inner join Bills_detail on @idBillDetail = Bills_detail.Id_bill_detaill and Bills_detail.Id_beverage = a.Id_beverage
	update Bills_detail set Quantity = @quantity, totalPrice = @price * @quantity
	where Id_bill_detaill = @idBillDetail
end
GO
/****** Object:  StoredProcedure [dbo].[ChangeReward]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChangeReward]
@id_Customer int, @Point int
as
begin
	declare @Rewad int = 0;
	select @Rewad = reward from Customers
	where Id_customer = @id_Customer

	update Customers set Reward = @Rewad + @Point 
	where Id_customer = @id_Customer
end
GO
/****** Object:  StoredProcedure [dbo].[CHECK_EXIST_EMAIL]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CHECK_EXIST_EMAIL]
AS
BEGIN
		SELECT Email from Employees
END
GO
/****** Object:  StoredProcedure [dbo].[CHECK_EXIST_EMAIL_BY_ID]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CHECK_EXIST_EMAIL_BY_ID]
@email varchar(50),
@id_employee int
AS
BEGIN
		SELECT * from Employees where Email = @email and Id_employee = @id_employee
END
GO
/****** Object:  StoredProcedure [dbo].[checkOut]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[checkOut]
@idBill int
as
begin
	update bills set status = 1, DateCheckOut = GETDATE()
	where Id_bill = @idBill
end
GO
/****** Object:  StoredProcedure [dbo].[CREATE_NEW_PASS]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CREATE_NEW_PASS] 
@Email nvarchar(50),
@Password nvarchar(100)
AS
BEGIN
Update Employees SET Password = @Password
where Email = @Email
END


select * from Employees
GO
/****** Object:  StoredProcedure [dbo].[DELETE_DATA_FROM_EMPLOYEE]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DELETE_DATA_FROM_EMPLOYEE] @Email varchar(50)
AS
BEGIN
		--DELETE from Employees 
		--where Email = @Email
		UPDATE Employees SET isDelete = 1 where Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_DATA_FROM_ROLES]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DELETE_DATA_FROM_ROLES]
@id_role int
AS
BEGIN
		DELETE FROM Roles
		where Id_role = @id_role
		DBCC CHECKIDENT ('Roles', RESEED, 2) -- Reset identity to 2
END
GO
/****** Object:  StoredProcedure [dbo].[deleteBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[deleteBillDetail]
@idBillDetail int
as
begin
	declare @idBill int;
	select @idBill = Id_bill from Bills_detail where Id_bill_detaill = @idBillDetail

	delete Bills_detail
	where Id_bill_detaill = @idBillDetail

	declare @count int;
	select @count = count(*) from Bills_detail where Id_bill = @idBill

	if(@count = 0) 
	begin
		declare @idtable int
		select @idtable = Id_table from Bills where Id_bill = @idBill;
		update tables set Status = N'Trống' where ID_Table = @idtable;
		delete Bills where Id_bill = @idBill
	end
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataSchedule]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc delete data schedules
create proc [dbo].[DeleteDataSchedule]
@Id_shift int, @Id_employee int, @day int
as
	begin
		delete from Schedules where Id_shift = @Id_shift and Id_employee = @Id_employee and Days = @day
	end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataShifts]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc delete data table shifts
create proc [dbo].[DeleteDataShifts]
@Id_shift int
as
	begin
		delete from Shifts where Id_shift = @Id_shift
	end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataTypeVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc delete data TypeVoucher
CREATE proc [dbo].[DeleteDataTypeVoucher]
@Id int
as
	begin 
		if(not exists(select * from Vouchers where ID_Type = @Id))
			begin
					delete from TypesVoucher where ID_Type = @Id
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[deleteDataUnit]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteDataUnit]
@id int
as
	begin
		if(not exists(select * from Ingredients where Id_unit = @id))
		begin
				delete units where ID_unit = @id
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[DeleteDataVoucher]
@Id_type int, @DayBegin varchar(50), @DayEnd varchar(50)
as
	begin
		delete Vouchers where ID_Type = @Id_type and DateBegin = @DayBegin and DateEnd = @DayEnd
	end
GO
/****** Object:  StoredProcedure [dbo].[DeleteTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteTable]
@id int
as
	begin
			begin
				Update tables set checkin = '0' where ID_Table = @id and Status = N'trống'
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[deleteVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteVoucher]
@id_voucher varchar(6)
as
begin
	delete Vouchers
	where Id_voucher = @id_voucher
end
GO
/****** Object:  StoredProcedure [dbo].[EmployeeLOGIN]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeLOGIN] @EMAIL VARCHAR(50), @PASSWORD VARCHAR(100)
AS 
BEGIN
	DECLARE @STATUS INT
	IF EXISTS(SELECT * FROM Employees 
	WHERE Email = @EMAIL AND Password = @PASSWORD)
		SET @STATUS = 1
	ELSE 
		SET @STATUS = 0
	SELECT @STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[FORGOT_PASSWORD]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FORGOT_PASSWORD] @EMAIL varchar(50)
AS
BEGIN
	Declare @STATUS int

if exists(select Id_employee from Employees where Email = @EMAIL)
	set @STATUS = 1
else
	set @STATUS = 0
select @STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[GET_ROLES]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_ROLES]
AS
BEGIN
		Select Id_role,Name from Roles
END
GO
/****** Object:  StoredProcedure [dbo].[getBillInput]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy dữ liệu của nguyên liệu
CREATE proc [dbo].[getBillInput]
as
	begin
		select a.ID_Bill, b.Name, format(a.DateCheckIn,'dd/MM/yyyy'), format(a.SumPrice,'#,###')  from InputBills a
		inner join Employees b on b.Id_employee = a.ID_employee
	end
GO
/****** Object:  StoredProcedure [dbo].[getBillInputInBetween]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- lấy danh sách bill nhập nguyên liệu trong khoảng thời gian
CREATE proc [dbo].[getBillInputInBetween]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select a.ID_Bill, b.Name, format(a.DateCheckIn,'dd/MM/yyyy') as 'Ngày xuất', format(a.SumPrice,'#,###') as 'Tổng tiền' from InputBills a
		inner join Employees b on b.Id_employee = a.ID_employee
		and a.DateCheckIn between @dayStar and @dayEnd
	end
GO
/****** Object:  StoredProcedure [dbo].[getBillsDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy danh sách tất cả các bill
CREATE proc [dbo].[getBillsDetail]
as
	begin
		select c.Name, b.Id_customer, b.Id_bill, b.Id_table, FORMAT(b.DateCheckIn,'dd/MM/yyyy'), FORMAT(b.DateCheckOut,'dd/MM/yyyy'), format(Sum(a.totalPrice),'#,###') from Bills_detail a
		inner join Bills b on a.Id_bill = b.Id_bill
		inner join Employees c on c.Id_employee = b.Id_employee
		group by b.Id_bill, b.Id_customer, c.Name, b.Id_table, b.DateCheckIn, b.DateCheckOut
	end
GO
/****** Object:  StoredProcedure [dbo].[getConfigurationSale]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getConfigurationSale]
@id int
as
	begin
		if(@id = 0)
			begin
				select ID_Type, Sale from TypesVoucher 
			end
		else
			begin
				select ID_Type, Sale from TypesVoucher where ID_Type = @id
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[getCountSaleVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get count Sale in vouchers
create proc [dbo].[getCountSaleVoucher]
@Id_type int
as
	begin
		select count(ID_Type) from Vouchers where ID_Type = @Id_type
	end
GO
/****** Object:  StoredProcedure [dbo].[getDataSchedule]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get data schedule
CREATE proc [dbo].[getDataSchedule]
as
	begin
		select b.Id_schedule, a.Name, b.Days, c.Id_shift from Employees a
		inner join Schedules b on a.Id_employee = b.Id_employee
		inner join Shifts c on b.Id_shift = c.Id_shift
	end
GO
/****** Object:  StoredProcedure [dbo].[GetDataShifts]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetDataShifts]
as
	begin
		select Id_shift, name, TimeBegin, TimeEnd from Shifts
	end
GO
/****** Object:  StoredProcedure [dbo].[getDataTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getDataTable]
as
	begin
		select ID_Table, name, Status from tables where checkin = 1
	end
GO
/****** Object:  StoredProcedure [dbo].[getDataTypeVouchers]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc for table TypeOfVoucher
-- proc get data
create proc [dbo].[getDataTypeVouchers]
as
	begin 
		select ID_Type,CONCAT(CAST(Sale AS varchar(10)),'%') from TypesVoucher
	end
GO
/****** Object:  StoredProcedure [dbo].[getDataUnits]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get data units
create proc [dbo].[getDataUnits]
as
	begin
		select * from units
	end
GO
/****** Object:  StoredProcedure [dbo].[getDataVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getDataVoucher]
as
	begin
		select a.Id_voucher, a.DateBegin, a.DateEnd, CONCAT(CAST(b.Sale AS varchar(10)),'%'), a.Status, a.ID_Type from Vouchers a 
		inner join TypesVoucher b on a.ID_Type = b.ID_Type
	end
GO
/****** Object:  StoredProcedure [dbo].[getEmailSendVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	-- proc get email for send voucher
create proc [dbo].[getEmailSendVoucher]
@reward int
as
	begin
		select Email from Customers where Reward <= @reward
	end
GO
/****** Object:  StoredProcedure [dbo].[getIdCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getIdCustomer]
@email varchar(50)
as
begin
	select Id_customer from Customers where Email = @Email
end
GO
/****** Object:  StoredProcedure [dbo].[getListBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getListBillDetail] 
@idBill int
as
begin 
	select * from Bills_detail
	where Id_bill = @idBill
end
GO
/****** Object:  StoredProcedure [dbo].[getListMenu]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[getListMenu]
@Id_table int
as
begin
	select bv.Name,bd.Quantity,FORMAT(bv.Price,'#,###'),FORMAT(bd.totalPrice,'#,###'), CONCAT(CAST(bd.sale AS varchar(10)),'%'), Id_bill_detaill from Bills_detail as bd, Bills as b, Beverages as bv
	where bd.Id_bill = b.Id_bill and bd.Id_beverage = bv.Id_beverage
	and b.Id_table = @Id_table and B.status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[getListMenuNotVnd]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getListMenuNotVnd]
@Id_table int
as
begin
	select bv.Name,bd.Quantity,bv.Price  ,bd.totalPrice , bd.sale, Id_bill_detaill from Bills_detail as bd, Bills as b, Beverages as bv
	where bd.Id_bill = b.Id_bill and bd.Id_beverage = bv.Id_beverage
	and b.Id_table = @Id_table and B.status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[getMaxID]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getMaxID]
as
begin
	select max(id_bill) from Bills
end
GO
/****** Object:  StoredProcedure [dbo].[getMaxIdCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getMaxIdCustomer]
as
begin 
	select max(id_customer) from Customers	
end
GO
/****** Object:  StoredProcedure [dbo].[getNameForInputBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getNameForInputBillDetail]
as
	begin
		select ID_unit, Name from units
	end
GO
/****** Object:  StoredProcedure [dbo].[getNameIngredientForInputBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- get name ingredient for inputBillDetail
CREATE proc [dbo].[getNameIngredientForInputBillDetail]
@id_type int
as
	begin
		select Name, Id_ingredient from Ingredients where Id_type = @id_type
	end
GO
/****** Object:  StoredProcedure [dbo].[GETNHANVIEN]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GETNHANVIEN]
AS
BEGIN
		Select Id_role,Name,Gender,Email,Address,DayOfBirth,FORMAT(Salary,'#,###'),Id_employee,isDelete,Salary from Employees
		Where isDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[getPriceBillInput]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- lấy tổng tiền của bill nhập nguyên liệu
create proc [dbo].[getPriceBillInput]
as
	begin
		select sum(SumPrice) from InputBills
	end
GO
/****** Object:  StoredProcedure [dbo].[getReport1]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getReport1]
as
	begin
		select c.Name as 'Nhân viên', b.Id_customer as 'Mã khách', b.Id_bill as 'Mã bill', b.Id_table as 'Mã bàn', FORMAT(b.DateCheckIn, 'dd/MM/yyy') as'Ngày nhập',FORMAT(b.DateCheckOut, 'dd/MM/yyy') as 'Ngày xuất',FORMAT( Sum(a.totalPrice), '#,###') as 'Tổng tiền'  from Bills_detail a
		inner join Bills b on a.Id_bill = b.Id_bill
		inner join Employees c on c.Id_employee = b.Id_employee
		group by b.Id_bill, b.Id_customer, c.Name, b.Id_table, b.DateCheckIn, b.DateCheckOut
	end
GO
/****** Object:  StoredProcedure [dbo].[getRewardCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getRewardCustomer]
@id_cutomer int
as
begin
	select Reward from Customers
	where Id_customer = @id_cutomer
end
GO
/****** Object:  StoredProcedure [dbo].[getSaleForVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getSaleForVoucher]
as
	begin
		select ID_Type, Sale from TypesVoucher
	end
GO
/****** Object:  StoredProcedure [dbo].[getSumprice]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getSumprice]
@id_table int 
as 
begin 
	select sum(bd.totalPrice) from Bills_detail as bd, Bills as b
	where bd.Id_bill = b.Id_bill and b.Id_table = @id_table and B.status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[getSumPriceInBetween]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- lấy tổng số tiền bill nhập nguyên liệu trong khoảng thời gian
CREATE proc [dbo].[getSumPriceInBetween]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select sum(SumPrice) from InputBills where DateCheckIn between @dayStar and @dayEnd
	end
GO
/****** Object:  StoredProcedure [dbo].[getTotalPriceBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getTotalPriceBill]
@idBill int
as 
begin
	select SUM(totalPrice) from Bills_detail 
	where Id_bill = @idBill
end
GO
/****** Object:  StoredProcedure [dbo].[getTypeIngredientForInputBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getTypeIngredientForInputBillDetail]
as
	begin
		select Name, Id_type from TypesOfIngredient
	end
GO
/****** Object:  StoredProcedure [dbo].[getTypeVoucherById]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getTypeVoucherById]
@id_voucher varchar(6)
as
begin
	if(exists(select * from Vouchers
	where Id_voucher = @id_voucher and DateEnd > GETDATE()))
	begin
		select t.Sale from Vouchers v, TypesVoucher t where v.Id_voucher = @id_voucher
		and v.ID_Type = t.ID_Type
	end
	else
		begin
		if(exists(select * from Vouchers
		where Id_voucher = @id_voucher and DateEnd < GETDATE()))
			select -1;
		else
			select 0;
		end
end
GO
/****** Object:  StoredProcedure [dbo].[getUncheckBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getUncheckBill]
@Id_table int
as
begin
	select * from bills 
	where Id_table = @Id_table and status = 0
end
GO
/****** Object:  StoredProcedure [dbo].[getVoucherSendMail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getVoucherSendMail]
@id_type int
as
	begin
		declare @status int = 0
		if(exists(select Id_voucher from Vouchers where Status = @status))
		begin
			select * from Vouchers a,TypesVoucher b where a.Status = 0 and b.ID_Type = @id_type and a.DateEnd > GETDATE()
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[INSERT_DATA_TO_EMPLOYEE]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERT_DATA_TO_EMPLOYEE] 
@Id_role int,
@Gender nvarchar(10),
@Email varchar(50),
@Address nvarchar(50),
@DayOfBirth date,
@Name nvarchar(50),
@Salary float
AS
BEGIN
		INSERT INTO Employees(Id_role,Name,Gender,Email,Address,DayOfBirth,Salary)
		VALUES(@Id_role,@Name,@Gender,@Email,@Address,@DayOfBirth,@Salary)
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_DATA_TO_ROLES]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERT_DATA_TO_ROLES]
@Name nvarchar(20)
AS
BEGIN
		IF EXISTS(select * from Roles where LOWER(Name) like N'%' + lower(@Name) + '%' )
		return 1;
		ELSE
		INSERT INTO ROLES(Name)
		VALUES(@Name)
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_VAITRO]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INSERT_VAITRO]
AS
BEGIN
		SELECT * from Roles
END
GO
/****** Object:  StoredProcedure [dbo].[insertBillDetailIngredient]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc insert inputBillDetail
CREATE proc [dbo].[insertBillDetailIngredient]
@quantity nvarchar(45),
@nameType nvarchar(45), @datetime datetime
as
	begin
		declare @id_ingredient int, @id_bill int
		select @id_ingredient = Id_ingredient from Ingredients where Name = @nameType
		select @id_bill = ID_Bill from InputBills where DateCheckIn = @datetime
		insert into InputBillsDetaill(quantity,Id_Ingredient,ID_Bill)
		values(@quantity,@id_ingredient,@id_bill)
	end
GO
/****** Object:  StoredProcedure [dbo].[insertBillIngredient]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertBillIngredient]
@dayCheck datetime, @sumprice float, @mail nvarchar(50)
as
	begin
		declare @id_employee int
		select @id_employee = Id_employee from Employees where Email = @mail
		insert into InputBills(DateCheckIn,ID_employee, SumPrice) values(@dayCheck,@id_employee,@sumprice)
	end
GO
/****** Object:  StoredProcedure [dbo].[InsertDataSchedule]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc Insert data Schedules
create proc [dbo].[InsertDataSchedule]
@day int, @Id_employee int, @Id_shift int
as
	begin
		if(not exists(select * from Schedules where Id_employee = @Id_employee and Id_shift = @Id_shift and Days = @day))
			begin
					insert into Schedules(Id_employee, Id_shift, Days)
					values(@Id_employee, @Id_shift, @day)
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[InsertDataShifts]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertDataShifts]
@name nvarchar(50), @TimeBegin varchar(50), @TimeEnd varchar(50)
as
	begin
		if(not exists(select * from Shifts where name = @name))
		begin
			insert into Shifts(TimeBegin,TimeEnd, name) 
			values(@TimeBegin, @TimeEnd, @name)
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[InsertDataTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- insert data table
CREATE proc [dbo].[InsertDataTable]
@name nvarchar(50), @Status nvarchar(20)
as
	begin
		if(not exists(select * from tables where name = @name and checkin = 1))
		insert into tables (name, Status,checkin) values(@name, @Status,'1')
	end
GO
/****** Object:  StoredProcedure [dbo].[InsertDataTypeVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc insert data TypeVoucher
create proc [dbo].[InsertDataTypeVoucher]
@Sale float
as
	begin
			if(not exists(select * from TypesVoucher where Sale = @Sale))
			begin
				insert into TypesVoucher(Sale) values (@Sale)
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[InsertDataUnit]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertDataUnit]
@name nvarchar(10)
as
	begin
		if(not exists(select * from units where Name = @name))
			begin
				insert into units(Name) values(@name)
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[insertDataVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc insert data Voucher
create proc [dbo].[insertDataVoucher]
@Id_voucher varchar(6), @DayBegin date, @DayEnd date,  @mail varchar(50), @Id_type int, @Status int
as
	begin
		declare @Id_employee int
		if(not exists (select Id_voucher from Vouchers where Id_voucher = @Id_voucher))
		begin
			select @Id_employee = Id_employee from Employees where Email = @mail
			insert into Vouchers(Id_voucher, DateBegin, DateEnd,Id_employee ,ID_Type, Status) values (@Id_voucher, @DayBegin, @DayEnd,@Id_employee ,@Id_type, @Status)
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[LayId_EMP]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LayId_EMP] @email varchar(50)
AS
BEGIN
	select Id_employee from Employees where Email = @email
END
GO
/****** Object:  StoredProcedure [dbo].[LayVaiTroNV]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LayVaiTroNV] @email varchar(50)
AS
BEGIN
	select Id_role from Employees where Email = @email
END
GO
/****** Object:  StoredProcedure [dbo].[LoadBillInBetweenDate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy danh sách bill trong khảng ngày tháng
CREATE proc [dbo].[LoadBillInBetweenDate]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select c.Name, b.Id_customer, b.Id_bill, b.Id_table, Sum(a.totalPrice) as SumPrice, b.DateCheckIn, b.DateCheckOut from Bills_detail a
		inner join Bills b on a.Id_bill = b.Id_bill and b.DateCheckOut between @dayStar and @dayEnd
		inner join Employees c on c.Id_employee = b.Id_employee
		group by b.Id_bill, b.Id_customer, c.Name, b.Id_table, b.DateCheckIn, b.DateCheckOut
	end
GO
/****** Object:  StoredProcedure [dbo].[LoadBillInDayOfWeek]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy danh sách theo tuần
CREATE proc [dbo].[LoadBillInDayOfWeek]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select c.Name as 'Nhân viên', b.Id_customer as 'Mã khách', b.Id_bill as 'Mã bill', b.Id_table as 'Mã bàn', FORMAT(b.DateCheckIn, 'dd/MM/yyy') as'Ngày nhập',FORMAT(b.DateCheckOut, 'dd/MM/yyy') as 'Ngày xuất',FORMAT( Sum(a.totalPrice), '#,###') as 'Tổng tiền'  from Bills_detail a
		inner join Bills b on a.Id_bill = b.Id_bill and b.DateCheckOut between @dayStar and @dayEnd 
		inner join Employees c on c.Id_employee = b.Id_employee
		group by b.Id_bill, b.Id_customer, c.Name, b.Id_table, b.DateCheckIn, b.DateCheckOut
	end
GO
/****** Object:  StoredProcedure [dbo].[loadIdShift]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- load shift
CREATE proc [dbo].[loadIdShift]
as
	begin
		select Id_shift, name from Shifts
	end
GO
/****** Object:  StoredProcedure [dbo].[loadName]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- load Name
create proc [dbo].[loadName]
as
	begin
		select Name, Id_employee from Employees
	end
GO
/****** Object:  StoredProcedure [dbo].[LoadPriceBillsDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy tổng tiền của tất cả các bill
create proc [dbo].[LoadPriceBillsDetail]
as
	begin
		select sum(totalPrice)  from Bills_detail 
	end
GO
/****** Object:  StoredProcedure [dbo].[loadTypeVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[loadTypeVoucher]
as
	begin
		select ID_Type, Sale from TypesVoucher
	end
GO
/****** Object:  StoredProcedure [dbo].[LOGIN]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOGIN] @EMAIL VARCHAR(50), @PASSWORD NVARCHAR(100)
AS 
BEGIN
	DECLARE @STATUS INT
	IF EXISTS(SELECT * FROM Employees 
	WHERE Email = @EMAIL AND Password = @PASSWORD AND isDelete = 0)
		BEGIN
			SET @STATUS = 1
		END
	ELSE 
		SET @STATUS = 0
	SELECT @STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[MercyTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE proc [dbo].[MercyTable]
	@idTable1 int, @idTable2 int
	as 
	begin
		declare @idFirstBill int;
		declare @idSecondBill int;

		select @idFirstBill = Id_bill from Bills where Id_table = @idTable1 and status = 0;
		select @idSecondBill = Id_bill from Bills where Id_table = @idTable2 and status = 0;
		
		if(@idFirstBill is not null)
		begin

				update Bills set status = 1
				where Id_bill = @idFirstBill
				update Bills_detail set Id_bill= @idSecondBill
				where Id_bill = @idFirstBill
				update tables set Status = N'Trống' where ID_Table = @idTable1
				delete Bills where Id_bill = @idFirstBill
		end
	end
GO
/****** Object:  StoredProcedure [dbo].[priceAfterUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[priceAfterUpdate]
@id int
as
	begin
		select (ib.quantity*i.Price) from InputBillsDetaill ib 
		inner join Ingredients i on ib.Id_Ingredient = i.Id_ingredient
		where ib.Id_bill = @id 
	end
GO
/****** Object:  StoredProcedure [dbo].[PriceInputBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc sum price input bill
create proc [dbo].[PriceInputBill]
@id_type int, @number int
as 
	begin
		select Price*@number from Ingredients where Id_ingredient = @id_type
	end
GO
/****** Object:  StoredProcedure [dbo].[SEARCH_EMPLOYEE]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SEARCH_EMPLOYEE]
@Name nvarchar(50),
@Id_role int
AS
BEGIN
		SET NOCOUNT ON;
		SELECT  Id_role,Name,Gender,Email,Address,DayOfBirth,Salary from Employees
		where LOWER(Name) like N'%' + lower(@Name) + '%' and Id_role = @Id_role and isDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[SEARCH_ROLES]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SEARCH_ROLES]
@Name nvarchar(50)
AS
BEGIN
		SET NOCOUNT ON;
		SELECT  Id_role,Name from Roles
		where LOWER(Name) like N'%' + lower(@Name) + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SearchDataShifts]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchDataShifts]
@name nvarchar(50)
as
	begin
		set nocount on;
		select Id_shift, name, TimeBegin, TimeEnd from Shifts where name like '%' + @name +'%'
	end
GO
/****** Object:  StoredProcedure [dbo].[SearchDataTypeVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc search data TypeVoucher
create proc [dbo].[SearchDataTypeVoucher]
@Sale float
as
	begin
		set nocount on;
		select * from TypesVoucher where Sale = @Sale
	end
GO
/****** Object:  StoredProcedure [dbo].[SearchDataVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- search Sale in Voucher
CREATE proc [dbo].[SearchDataVoucher]
@Id_type int
as
	begin
		set nocount on;
		select a.Id_voucher, a.DateBegin, a.DateEnd, CONCAT(CAST(b.Sale AS varchar(10)),'%'), a.Status, a.ID_Type from Vouchers a 
		inner join TypesVoucher b on a.ID_Type = b.ID_Type and a.ID_Type = @Id_type
	end
GO
/****** Object:  StoredProcedure [dbo].[searchScheduleByName]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[searchScheduleByName]
@namenv nvarchar(50)
as
	begin
		set nocount on;
		select b.Id_schedule, a.Name, b.Days, c.Id_shift from Employees a
		inner join Schedules b on a.Id_employee = b.Id_employee
		inner join Shifts c on b.Id_shift = c.Id_shift where a.Name like '%' + @namenv + '%'
	end
GO
/****** Object:  StoredProcedure [dbo].[searchSchedules]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc search schedules
create proc [dbo].[searchSchedules]
@Id_employee int
as
	begin
		set nocount on;
		select b.Id_schedule, a.Name, b.Days, c.Id_shift from Employees a
		inner join Schedules b on a.Id_employee = b.Id_employee and a.Id_employee = @Id_employee
		inner join Shifts c on b.Id_shift = c.Id_shift
	end

GO
/****** Object:  StoredProcedure [dbo].[SearchTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchTable]
@name nvarchar(50)
as
	begin
		select ID_Table, name, Status from tables where name like + '%' + @name + '%' and checkin = 1
	end
GO
/****** Object:  StoredProcedure [dbo].[SearchUnit]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchUnit]
@name nvarchar(10)
as
	begin
		select * from units where Name like '%'+ @name+ '%'
	end
GO
/****** Object:  StoredProcedure [dbo].[SearchVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchVoucher]
@id int
as
	begin
	    select a.Id_voucher, a.DateBegin, a.DateEnd, CONCAT(CAST(b.Sale AS varchar(10)),'%'), a.Status, a.ID_Type from Vouchers a 
		inner join TypesVoucher b on a.ID_Type = b.ID_Type and a.ID_Type = @id
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_BeverageDelete]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_BeverageDelete](@id_beverage   int)
AS
  BEGIN

        BEGIN
			UPDATE Beverages SET isDelete = 1 
			where id_beverage = @id_beverage
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_BeverageInsert]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_BeverageInsert](
                                          @Name   NVARCHAR(55),
                                          @Price       int,
                                          @id_type        int,
                                          @image nvarchar(500))
AS
  BEGIN

        BEGIN
			insert into Beverages(Name,Price,Id_type,Image)
			values(@Name,@Price,@id_type,@image)
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_BeverageSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BeverageSearch](@Name   NVARCHAR(55),@Col   NVARCHAR(55))
AS
  BEGIN

        BEGIN
			set nocount on;
			if @col = 'Name'
			begin
				select Name,Price,Id_type,Id_beverage,Image,isdelete
				from	Beverages where Name like '%'+@Name+'%' and isDelete = 0
			end
			if @col = 'Price'
			begin
				select Name,Price,Id_type,Id_beverage,Image
				from	Beverages where	price like '%'+@Name+'%' and isDelete = 0
			end
			if @col = 'Id_type'
			begin
				select Name,Price,Id_type,Id_beverage,Image
				from	Beverages where Id_type like '%'+@Name+'%' and isDelete = 0
			end
			if @col = 'Id_beverage'
			begin
				select Name,Price,Id_type,Id_beverage,Image
				from	Beverages where Id_beverage like '%'+@Name+'%' and isDelete = 0
			end
			if @col = 'all'
			begin
				select Name,Price,Id_type,Id_beverage,Image
				from	Beverages where isDelete = 0
			end
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_BeverageUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_BeverageUpdate](
                                          @Name   NVARCHAR(55),
                                          @Price       int,
                                          @id_type        int,
                                          @image nvarchar(500),
										  @id_beverage int)
AS
  BEGIN

        BEGIN
			update Beverages
			set Name = @Name,
				Price = @Price,
				Id_type = @id_type,
				Image = @image
			where Id_beverage = @id_beverage

        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_BillDeleteDoUong]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_BillDeleteDoUong](@id_bill int)
AS
  BEGIN

        BEGIN
			delete bills
			where Id_bill = @id_bill
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BillDeleteNL]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BillDeleteNL](@id_bill int)
AS
  BEGIN

        BEGIN
			delete InputBillsDetaill where ID_Bill = @id_bill
			delete InputBills
			where Id_bill = @id_bill
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BillsDetailDeleteDoUong]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_BillsDetailDeleteDoUong](@id_bill int)
AS
  BEGIN

        BEGIN
			delete Bills_detail
			where Id_bill_detaill = @id_bill
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BillsDetailDeleteNL]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_BillsDetailDeleteNL](@id_bill int)
AS
  BEGIN

        BEGIN
			delete InputBillsDetaill
			where Id_BillDetaill = @id_bill
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BillsDetailSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop proc sp_BillsDetailSearch
CREATE PROCEDURE [dbo].[sp_BillsDetailSearch](@Name   NVARCHAR(55),@Col   NVARCHAR(55))
AS
  BEGIN

        BEGIN
			set nocount on;
			if @col = 'Id_Employee'
			begin
				
		select e.Name,tb.name,b.DateCheckOut,b.Id_bill from bills b  
		inner join Employees e on b.Id_employee = e.Id_employee 
		inner join dbo.tables tb on b.Id_table = tb.ID_Table 
		where convert(varchar(10), b.DateCheckIn, 102) 
			= convert(varchar(10), getdate(), 102) and b.status = 1 and e.Name like '%'+@Name+'%'
			end

			if @col = 'Id_table'
			begin
				select e.Name,tb.name,b.DateCheckOut,b.Id_bill from bills b  
		inner join Employees e on b.Id_employee = e.Id_employee 
		inner join dbo.tables tb on b.Id_table = tb.ID_Table 
		where convert(varchar(10), b.DateCheckIn, 102) 
			= convert(varchar(10), getdate(), 102) and b.status = 1 and b.Id_table like '%'+@Name+'%'
			end
			if @col = 'DateCheckOut'
			begin
				select e.Name,tb.name,b.DateCheckOut,b.Id_bill from bills b  
		inner join Employees e on b.Id_employee = e.Id_employee 
		inner join dbo.tables tb on b.Id_table = tb.ID_Table 
		where convert(varchar(10), b.DateCheckIn, 102) 
			= convert(varchar(10), getdate(), 102) and b.status = 1 and b.DateCheckOut like '%'+@Name+'%'
			end
			
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CreateCustomer]
@Email nvarchar(50), 
@Gender nvarchar(10),
@name nvarchar(50)
as
begin
	if not exists (select * from Customers where Email = @Email)
	begin
		insert into Customers (Email, Gender, name)
		values(@Email,@Gender,@name)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CustomerSearch](@Email NVARCHAR(50))
AS
  BEGIN

        BEGIN
			set nocount on;
			select Name, Email, Gender,Id_customer,Reward
			from Customers where name like '%' + @Email + '%'
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CustomerUpdate](
                                          @Email   NVARCHAR(55),
                                          @Gender       NVARCHAR(10),
                                          @idCustomers       int,
                                          @reward int,
										  @name nvarchar(50))
AS
  BEGIN
        BEGIN
				update Customers
				set
				Email = @Email,
				Gender = @Gender,
				Reward = @reward,
				Name = @name
				where Id_customer = @idCustomers
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_FindCustomerById]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_FindCustomerById]
@email varchar(50)
as
begin
	select * from Customers 
	where Email = @email
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBeverage]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetBeverage]
as
begin
            SELECT name,price,id_type,id_beverage,image,isdelete
            FROM   beverages where isdelete = 0

end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBeverageById]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetBeverageById]
@id_type int
as
begin
            SELECT name,price,id_type,id_beverage,image
            FROM   beverages where Id_type = @id_type

end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBillsDetailDoUong]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec sp_GetBillsNguyenLieuToday
--drop proc sp_GetBillsDetailDoUong
CREATE proc [dbo].[sp_GetBillsDetailDoUong]( @id_bill int)
as
begin
	select b.Name, bd.Quantity,bd.Id_bill_detaill,bd.totalPrice,format(bd.totalPrice,'#,###') from Bills_detail bd inner join Beverages b on bd.Id_beverage = b.Id_beverage where bd.Id_bill =@id_bill
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBillsDetailNL]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop proc sp_GetBillsDetailNL
CREATE proc [dbo].[sp_GetBillsDetailNL]( @id_bill int)
as
begin
	
	select i.Name,ib.quantity,ib.Id_BillDetaill, format(i.Price,'#,###'), format((i.Price * ib.quantity),'#,###'),i.Price, (i.Price * ib.quantity)   from InputBillsDetaill ib 
	inner join Ingredients i on ib.Id_Ingredient = i.Id_ingredient
	where ib.Id_bill = @id_bill 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBillsDoUongToday]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetBillsDoUongToday]
as
begin
		select e.Name,tb.name,b.DateCheckOut,b.Id_bill from bills b  
inner join Employees e on b.Id_employee = e.Id_employee 
inner join dbo.tables tb on b.Id_table = tb.ID_Table 
where convert(varchar(10), b.DateCheckIn, 102) 
    = convert(varchar(10), getdate(), 102) and b.status = 1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBillsNguyenLieuToday]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop proc sp_GetBillsNguyenLieuToday
CREATE proc [dbo].[sp_GetBillsNguyenLieuToday]
as
begin
		select e.Name,ib.DateCheckIn,format(ib.SumPrice,'#,###'),ib.ID_Bill, ib.SumPrice from inputbills ib inner join Employees e on ib.ID_employee = e.Id_employee where convert(varchar(10), ib.DateCheckIn, 102) 
    = convert(varchar(10), getdate(), 102) 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCustomers]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetCustomers]
as
begin
      select  Name, Email, Gender,Id_customer,Reward  from Customers
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetIngredient]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetIngredient]
as
begin
    SELECT Id_ingredient, Name, Id_supplier, Id_type, mass, Id_unit, images , FORMAT(Price, '#,###'), Price
    FROM Ingredients where isDelete = 1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSupplier]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetSupplier]
as
begin
    SELECT Name, Id_supplier, Email, Address
    FROM Suppliers where isDelete = 1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeOfIngredient]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetTypeOfIngredient]
as
begin
    SELECT Id_type, Name
    FROM TypesOfIngredient where isDelete = 1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_IngredientDelete]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IngredientDelete](@Id_ingredient int)
AS
	BEGIN
		update Ingredients set isDelete = 0
		where Id_ingredient = @Id_ingredient
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_IngredientInsert]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_IngredientInsert] (@Name nvarchar(100),
									  @Id_supplier int,
									  @Id_type int,
								 	  @Price float,
									  @Mass real,
									  @Id_unit int,
									  @Images nvarchar(750))
										
AS
  BEGIN
		insert into Ingredients(Name,Id_supplier,Id_type,Price,mass, Id_unit, images,isDelete)
		values(@Name,@Id_supplier,@Id_type,@Price,@Mass,@Id_unit,@Images, 1)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_IngredientSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_IngredientSearch](@Name NVARCHAR(100))
AS
  BEGIN

        BEGIN
			set nocount on;
			select Name, Id_type, Price, Id_supplier
			from Ingredients where Name like '%' + @Name + '%' and isDelete = 1
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_IngredientUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_IngredientUpdate](@Name nvarchar(100),
									  @Id_supplier int,
									  @Id_type int,
								 	  @Price float,
									  @Mass real,
									  @Id_unit int,
									  @Id_ingredient int,
									  @Images nvarchar(750))
AS
  BEGIN
		update Ingredients
		set Name = @Name,
			Id_supplier = @Id_supplier,
			Id_type = @Id_type,
			Price = @Price,
			mass = @Mass,
			Id_unit = @Id_unit,
			images = @Images
		where Id_ingredient = @Id_ingredient
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_InputBillsDetailSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- drop proc sp_InputBillsDetailSearch
CREATE PROCEDURE [dbo].[sp_InputBillsDetailSearch](@Name   NVARCHAR(55),@Col   NVARCHAR(55))
AS
  BEGIN

        BEGIN
			set nocount on;
			
			if @col = 'DateCheckIn'
			begin
				select e.Name,ib.DateCheckIn,ib.SumPrice,ib.ID_Bill from inputbills ib inner join Employees e on ib.ID_employee = e.Id_employee where convert(varchar(10), ib.DateCheckIn, 102) 
    = convert(varchar(10), getdate(), 102) and ib.DateCheckIn = @Name
			end
			if @col = 'ID_employee'
			begin
				select e.Name,ib.DateCheckIn,ib.SumPrice,ib.ID_Bill from inputbills ib inner join Employees e on ib.ID_employee = e.Id_employee where convert(varchar(10), ib.DateCheckIn, 102) 
    = convert(varchar(10), getdate(), 102) and e.Id_employee = @Name
			end
			if @col = 'SumPrice'
			begin
				select e.Name,ib.DateCheckIn,ib.SumPrice,ib.ID_Bill from inputbills ib inner join Employees e on ib.ID_employee = e.Id_employee where convert(varchar(10), ib.DateCheckIn, 102) 
    = convert(varchar(10), getdate(), 102) and ib.SumPrice = @Name
			end
        END
	END

	--------------------- new
	if OBJECT_ID ('sp_UpdateBillsDetailDoUong') is not null 
drop proc sp_UpdateBillsDetailDoUong
GO
/****** Object:  StoredProcedure [dbo].[sp_insertBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertBill]
@idTable int, @idEmployee INT
as
begin 
	insert into bills (id_table, Id_employee)
	values (@idtable, @idemployee)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertBillDetail]
@idBill int, @idBeverage int, @quantity int, @sale int
as
begin
	declare @price float;
	declare @newQuantity int;
	declare @isExistBillInfo int = 0;
	declare @quantityBeverage int;
	select @price = Price from Beverages
	where Id_beverage = @idBeverage
	if(@sale = 0)
	begin
		select @isExistBillInfo = Id_bill_detaill, @quantityBeverage = Quantity from Bills_detail
		where Id_bill = @idBill and Id_beverage = @idBeverage and sale = 0
		
		if(@isExistBillInfo > 0)
		begin
			set @newQuantity = @quantityBeverage + @quantity
			if(@newQuantity > 0)
				update Bills_detail set Quantity = @newQuantity, totalPrice = @newQuantity * @price
				where Id_beverage = @idBeverage and Id_bill = @idBill and sale = 0
			else
				delete Bills_detail where Id_bill = @idBill and Id_beverage = @idBeverage and sale = 0
		end
		else
		begin
			insert into Bills_detail(Id_beverage,Id_bill,Quantity, sale,totalPrice)
			values (@idBeverage, @idBill, @quantity, @sale, @price * @quantity)	
		end
	end
	else
	begin
		select @isExistBillInfo = Id_bill_detaill, @quantityBeverage = Quantity from Bills_detail
		where Id_bill = @idBill and Id_beverage = @idBeverage and sale = @sale
		
		if(@isExistBillInfo > 0)
		begin
			set @newQuantity = @quantityBeverage + @quantity;
			if(@newQuantity > 0)
				update Bills_detail set Quantity = @newQuantity, totalPrice = (@newQuantity * @price) * (100 - @sale)/100
				where Id_beverage = @idBeverage and Id_bill = @idBill and sale = @sale
			else
				delete Bills_detail where Id_bill = @idBill and Id_beverage = @idBeverage and sale = @sale
		end
		else
		begin
			insert into Bills_detail(Id_beverage,Id_bill,Quantity, sale,totalPrice)
			values (@idBeverage, @idBill, @quantity, @sale, (@price * @quantity) * (100 - @sale)/100)	
		end
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierDelete]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SupplierDelete](@Id_supplier int)
AS
	BEGIN
			if(not exists(select * from Ingredients where Id_supplier = @Id_supplier))
				begin
					Update Suppliers set isDelete = 0
					where Id_supplier = @Id_supplier
				end
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierInsert]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SupplierInsert] (@Name nvarchar(50),
									@Email nvarchar(50),
									@Address nvarchar(100))
									
AS
  BEGIN
				insert into Suppliers(Name, Email, Address, isDelete)
				values(@Name, @Email, @Address, 1)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SupplierSearch](@Name NVARCHAR(50))
AS
  BEGIN

        BEGIN
			set nocount on;
			select Name, Id_supplier
			from Suppliers where Name like '%' + @Name + '%' and isDelete = 1
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_SupplierUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_SupplierUpdate](@Name nvarchar(50),
								   @Email nvarchar(50),
								   @Address nvarchar(100),
								   @Id_supplier int)
AS
  BEGIN
		update Suppliers
		set Name = @Name,
			Email = @Email,
			Address = @Address
		where Id_supplier = @Id_supplier
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfBeverageDelete]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfBeverageDelete](   @ID   int)
AS
  BEGIN
	
        BEGIN
			delete TypesOfBeverage
			where Id_type = @ID
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfBeverageGet]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfBeverageGet] 
										
AS
  BEGIN
		select id_type, name from typesofbeverage
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfBeverageInsertSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfBeverageInsertSearch](   @Name   NVARCHAR(55),
										@StatementType nvarchar(20) = '')
AS
  BEGIN
	IF @StatementType = 'Insert'
        BEGIN
			insert into TypesOfBeverage(Name)
			values(@Name)
        END
	IF @StatementType = 'Search'
        BEGIN
			select Id_type, Name 
			from TypesOfBeverage where Name like '%'+@Name+'%'
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfBeverageUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfBeverageUpdate] (  @Name   NVARCHAR(55),
											@id_type int)
										
AS
  BEGIN
		update TypesOfBeverage
		set Name = @Name
		where Id_type = @id_type
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfIngredientDelete]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TypeOfIngredientDelete](@Id_type int)
AS
	BEGIN
		if(not exists(select * from Ingredients where Id_type = @Id_type))
			begin
							update TypesOfIngredient set isDelete = 0
							where Id_type = @Id_type
			end
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfIngredientInsert]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TypeOfIngredientInsert] (@Name nvarchar(50))
										
AS
  BEGIN
		insert into TypesOfIngredient(Name, isDelete)
		values(@Name,1)
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfIngredientSearch]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfIngredientSearch](@Name NVARCHAR(50))
AS
  BEGIN

        BEGIN
			set nocount on;
			select Name, Id_type
			from TypesOfIngredient where Name like '%' + @Name + '%'
        END
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeOfIngredientUpdate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TypeOfIngredientUpdate](@Name nvarchar(50),
										   @Id_type int)
AS
  BEGIN
		update TypesOfIngredient
		set Name = @Name
		where Id_type = @Id_type
	END
-- exec sp_TypeOfIngredientUpdate 'Dau', 1
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBillsDetailDoUong]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_UpdateBillsDetailDoUong](@quantity int,@id_bill int)
AS
  BEGIN

        BEGIN
			update Bills_detail
			set  totalPrice = (totalPrice/Quantity)*@quantity,Quantity = @quantity
			where Id_bill_detaill = @id_bill
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBillsDetailNL]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_UpdateBillsDetailNL](@quantity int,@id_bill int)
AS
  BEGIN

        BEGIN

			update InputBillsDetaill
			set Quantity = @quantity
			where Id_BillDetaill = @id_bill;
        END
END
GO
/****** Object:  StoredProcedure [dbo].[StaticCustomer]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticCustomer]
as
	begin
		select c.name, sum(b.Quantity) as 'Số lượng', FORMAT(sum(b.totalPrice),'#,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a 
		inner join Bills_detail b on a.Id_bill = b.Id_bill
		inner join Customers c on c.Id_customer = a.Id_customer
		group by c.name
	end
GO
/****** Object:  StoredProcedure [dbo].[StaticCustomerMonth]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticCustomerMonth]
as
begin
		select FORMAT(a.DateCheckOut,'MM/yyyy') as 'Tháng',c.Id_customer as 'Mã khách hàng', c.name as'Họ tên' ,count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),'#,###') as 'Tổng tiền',SUM(b.totalPrice) from Bills a, Bills_detail b, Customers c
		where a.Id_bill = b.Id_bill and a.Id_customer = c.Id_customer group by FORMAT(a.DateCheckOut,'MM/yyyy'), c.name,c.Id_customer
end
GO
/****** Object:  StoredProcedure [dbo].[StaticCustomerWeek]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[StaticCustomerWeek]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select a.Id_customer, sum(b.Quantity), sum(b.totalPrice) from Bills a 
		inner join Bills_detail b on a.Id_bill = b.Id_bill and a.DateCheckOut between @dayStar and @dayEnd
		group by a.Id_customer
	end
GO
/****** Object:  StoredProcedure [dbo].[StaticCustomerYears]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticCustomerYears]
as
begin
		select FORMAT(a.DateCheckOut,'yyyy') as 'Năm',c.Id_customer as 'Mã khách hàng', c.name as'Họ tên' ,count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),'#,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a, Bills_detail b, Customers c
		where a.Id_bill = b.Id_bill and a.Id_customer = c.Id_customer group by FORMAT(a.DateCheckOut,'yyyy'), c.name,c.Id_customer
end
GO
/****** Object:  StoredProcedure [dbo].[StaticDataEmployee]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticDataEmployee]
as
	begin
		select c.Name, count(DISTINCT a.Id_bill) as'Tổng bill', FORMAT(sum(b.totalPrice),'#,###') as'Tổng tiền', SUM(b.totalPrice) from Bills a
		inner join Bills_detail b on a.Id_bill = b.Id_bill
		inner join Employees c on c.Id_employee = a.Id_employee
		group by c.Name
	end
GO
/****** Object:  StoredProcedure [dbo].[StaticEmployeeWeek]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticEmployeeWeek]
as
begin
		select FORMAT(a.DateCheckOut,'MM/yyyy') as 'Tháng',c.Id_employee as 'Mã nhân viên', c.Name as'Họ tên' ,count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),'#,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a, Bills_detail b, Employees c
		where a.Id_bill = b.Id_bill and a.Id_employee = c.Id_employee group by FORMAT(a.DateCheckOut,'MM/yyyy'), c.name,c.Id_employee
end
GO
/****** Object:  StoredProcedure [dbo].[StaticEmployeeYears]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticEmployeeYears]
as
begin
		select FORMAT(a.DateCheckOut,'yyyy') as 'Năm',c.Id_employee as 'Mã nhân viên', c.Name as'Họ tên' ,count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),'#,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a, Bills_detail b, Employees c
		where a.Id_bill = b.Id_bill and a.Id_employee = c.Id_employee group by FORMAT(a.DateCheckOut,'yyyy'), c.name,c.Id_employee
end
GO
/****** Object:  StoredProcedure [dbo].[StaticOverAllBillsMonth]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticOverAllBillsMonth]
as
	begin
		select FORMAT(a.DateCheckOut,'MM/yyyy') as 'Tháng', count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),' #,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a, Bills_detail b
		where a.Id_bill = b.Id_bill group by FORMAT(a.DateCheckOut,'MM/yyyy')
	end
GO
/****** Object:  StoredProcedure [dbo].[StaticOverAllBillsYears]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticOverAllBillsYears]
as
begin
		select  Year(a.DateCheckOut) as 'Năm', count(DISTINCT a.Id_bill) as 'Tổng số bill', FORMAT(sum(b.totalPrice),'#,###') as 'Tổng tiền', sum(b.totalPrice) from Bills a
		inner join Bills_detail b on a.Id_bill = b.Id_bill
		group by  Year(a.DateCheckOut)
end
GO
/****** Object:  StoredProcedure [dbo].[StaticOverAllDate]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StaticOverAllDate]
@dayStar varchar(50), @dayEnd varchar(50)
as
begin
	select FORMAT(a.DateCheckOut,'dd/MM/yyyy') as 'Ngày', count(DISTINCT a.Id_bill) as 'Tổng số bill' ,FORMAT(SUM(b.totalPrice),'#,###') as 'Tổng tiền', SUM(b.totalPrice) from Bills a, Bills_detail b
	where a.Id_bill = b.Id_bill and a.DateCheckOut between @dayStar and @dayEnd
	group by FORMAT(a.DateCheckOut,'dd/MM/yyyy')
end
GO
/****** Object:  StoredProcedure [dbo].[SumPriceDateTime]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc lấy tổng số tiền trong khoảng ngày tháng
CREATE proc [dbo].[SumPriceDateTime]
@dayStar varchar(50), @dayEnd varchar(50)
as
	begin
		select sum(a.totalPrice)  from Bills_detail a 
		inner join Bills b on a.Id_bill = b.Id_bill and b.DateCheckOut between @dayStar and @dayEnd
	end
GO
/****** Object:  StoredProcedure [dbo].[switchTalbe]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[switchTalbe]
@idTable1 int, @idTable2 int, @idEmployee int
as
begin
	declare @idFirstBill int;
	declare @idSecondBill int;
	declare @isFirstTable int = 1;
	declare @isSecondTable int = 1;

	select @idFirstBill = Id_bill from Bills where Id_table = @idTable1 and status = 0;
	select @idSecondBill = Id_bill from Bills where Id_table = @idTable2 and status = 0;

	if(@idFirstBill is null)
	begin
		insert into Bills (DateCheckIn, DateCheckOut, Id_table, status, Id_employee)
		values (getdate(),null, @idTable1, 0, @idEmployee)

		select @idFirstBill = max(Id_bill)  from Bills
		where Id_table = @idTable1 and status = 0;

	end

	select @isFirstTable = count(*) from Bills_detail where Id_bill = @idFirstBill

	if(@idSecondBill is null)
	begin
		insert into Bills (DateCheckIn, DateCheckOut, Id_table, status, Id_employee)
		values (getdate(),null, @idTable2, 0, @idEmployee)

		select @idSecondBill = max(Id_bill)  from Bills
		where Id_table = @idTable2 and status = 0;
	end

	select @isSecondTable = count(*) from Bills_detail where Id_bill = @idSecondBill


	select Id_bill_detaill into IdbillInfoTable from Bills_detail
	where Id_bill = @idSecondBill

	update Bills_detail set Id_bill= @idSecondBill
	where Id_bill = @idFirstBill

	update Bills_detail set Id_bill = @idFirstBill
	where Id_bill_detaill in (select * from IdbillInfoTable)

	drop table IdbillInfoTable

	if(@isFirstTable = 0 )
		update tables set Status = N'Trống' where ID_Table = @idTable2
	
	if(@isSecondTable =0 )
		update tables set Status = N'Trống' where ID_Table = @idTable1
end
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DATA_TO_EMPLOYEE]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_DATA_TO_EMPLOYEE] 
@Id_role int,
@Id_employee int,
@Name nvarchar(50),
@Gender int,
@Email varchar(50),
@Address nvarchar(50),
@DayOfBirth date,
@Salary float
AS -- 
BEGIN
	IF EXISTS(select * from  Employees where Email = @Email)
		UPDATE Employees SET Id_role = @Id_role, Address =  @Address, Gender = @Gender,
												  Email = @Email,DayOfBirth = @DayOfBirth,Salary = @Salary,Name = @Name
												  where Email = @Email and Id_employee = @Id_employee
		ELSE
		UPDATE Employees SET Id_role = @Id_role, Address =  @Address, Gender = @Gender,
												  Email = @Email,DayOfBirth = @DayOfBirth,Salary = @Salary,Name = @Name
												where Id_employee = @Id_employee
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DATA_TO_ROLES]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UPDATE_DATA_TO_ROLES]
@id_role int,
@name nvarchar(50)
AS
BEGIN
		IF EXISTS(select * from Roles where LOWER(Name) like N'%' + lower(@Name) + '%' )
		return 1;
		ELSE
		UPDATE Roles
		SET Name = @name 
		where Id_role = @id_role 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerAfterSendVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- update reward after send voucher mail to customer
create proc [dbo].[UpdateCustomerAfterSendVoucher]
@email nvarchar(50)
as
	begin
		Update Customers set Reward = 0 where Email = @email
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateDataSchedule]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc update data schedules
create proc [dbo].[UpdateDataSchedule]
@Id_shift int, @Id_employee int, @day int, @Id_schedule int
as
	begin
		update Schedules set Id_employee = @Id_employee, Id_shift = @Id_shift, Days = @day where Id_schedule = @Id_schedule
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateDataShifts]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateDataShifts]
@Id_shift int, @TimeBegin varchar(50), @TimeEnd varchar(50)
as
	begin
		Update Shifts set TimeBegin = @TimeBegin, TimeEnd = @TimeEnd where Id_shift = @Id_shift
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateDatatypeVoucher]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc Update data TypeVoucher
create proc [dbo].[UpdateDatatypeVoucher]
@Id int, @Sale float
as
	begin
		if(not exists(select * from TypesVoucher where Sale = @Sale))
			begin
				Update TypesVoucher set Sale = @Sale where ID_Type = @Id
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateDataUnits]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- update data units
create proc [dbo].[UpdateDataUnits]
@name nvarchar(10), @id int
as
	begin
		if(not exists(select * from units where Name = @name))
			begin
				update units set Name = @name where ID_unit = @id
			end
	end
GO
/****** Object:  StoredProcedure [dbo].[updateInputBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateInputBill]
@id int, @sumPrice float
as
	begin
		Update InputBills set SumPrice = @sumPrice where ID_Bill = @id
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateTable]
@name nvarchar(50), @Status nvarchar(20), @id int
as
	begin
			update tables set name = @name, Status = @Status where ID_Table = @id
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateVoucherForSend]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- proc update voucher after send mail to customer
create proc [dbo].[UpdateVoucherForSend]
@Id_voucher nvarchar(6)
as
	begin
		Update Vouchers set Status = 1 where Id_voucher = @Id_voucher
	end
GO
/****** Object:  Trigger [dbo].[UpdateBill]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UpdateBill]
on [dbo].[Bills] for update
as
begin
	declare @idbill int;
	select @idbill = id_bill from inserted;
	
	declare  @idtable int;
	select @idtable = Id_table from bills
	where  Id_bill = @idbill;	

	declare @count int = 0;
	select @count = count(*) from Bills
	where Id_table = @idtable and status = 0;

	if(@count = 0)
		update tables set
		Status = N'Trống' where ID_Table = @idtable;
end
GO
ALTER TABLE [dbo].[Bills] ENABLE TRIGGER [UpdateBill]
GO
/****** Object:  Trigger [dbo].[updateBillDetail]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[updateBillDetail]
on [dbo].[Bills_detail] for insert, update
as 
begin
	declare @idbill int;
	select @idbill = Id_bill from inserted;

	declare  @idtable int;
	select @idtable = Id_table from bills
	where  Id_bill = @idbill and status = 0;

	declare @count int
	select @count = count(*) from Bills_detail
	where Id_bill = @idbill

	if(@count > 0)
		update tables set Status = N'Có người' where ID_Table = @idtable;
	else 
		update tables set Status = N'Trống' where ID_Table = @idtable;
end
GO
ALTER TABLE [dbo].[Bills_detail] ENABLE TRIGGER [updateBillDetail]
GO
/****** Object:  Trigger [dbo].[utg_updateTable]    Script Date: 12/14/2021 3:42:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[utg_updateTable]
on [dbo].[tables] for update 
as
begin
	declare @idTable int;
	declare @status nvarchar(10)
	select @idTable = ID_Table, @status = Status from inserted

	declare @idBill int;
	select @idBill = Id_bill from Bills
	where Id_table = @idTable and status = 0;

	declare @countBillDetail int
	select @countBillDetail = count(*) from Bills_detail 
	where Id_bill = @idBill
	
	if(@countBillDetail >0 and @status <> N'Có người')
		update tables set Status = N'Có người' where ID_Table = @idtable;
	else if(@countBillDetail <= 0 and @status <> N'Trống')
		update tables set Status = N'Trống' where ID_Table = @idtable;
end
GO
ALTER TABLE [dbo].[tables] ENABLE TRIGGER [utg_updateTable]
GO
USE [master]
GO
ALTER DATABASE [C:\PROGRAM FILES (X86)\TEAM_META\QUANLYTRASUA\DUAN1.MDF] SET  READ_WRITE 
GO
