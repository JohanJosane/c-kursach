USE [master]
GO
/****** Object:  Database [CopsBase]    Script Date: 26.04.2023 9:41:35 ******/
CREATE DATABASE [CopsBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CopsBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CopsBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CopsBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CopsBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CopsBase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CopsBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CopsBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CopsBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CopsBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CopsBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CopsBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [CopsBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CopsBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CopsBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CopsBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CopsBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CopsBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CopsBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CopsBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CopsBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CopsBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CopsBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CopsBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CopsBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CopsBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CopsBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CopsBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CopsBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CopsBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CopsBase] SET  MULTI_USER 
GO
ALTER DATABASE [CopsBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CopsBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CopsBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CopsBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CopsBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CopsBase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CopsBase] SET QUERY_STORE = OFF
GO
USE [CopsBase]
GO
/****** Object:  Table [dbo].[CarAccident]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarAccident](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Place] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CarAccident] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cops]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[PostCops] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cops] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
	[DateOfBirthday] [date] NOT NULL,
	[ResidentialAddress] [nvarchar](50) NOT NULL,
	[DriversLicense] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Protocol]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protocol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncidentAmount] [nvarchar](50) NOT NULL,
	[DateOfPayment] [date] NOT NULL,
	[CopsId] [int] NOT NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK_Protocol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PTS]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerId] [int] NOT NULL,
	[RegistrNumber] [nvarchar](50) NOT NULL,
	[NumberVIN] [nvarchar](50) NOT NULL,
	[CarBrand] [nvarchar](50) NOT NULL,
	[CarModel] [nvarchar](50) NOT NULL,
	[HP] [nvarchar](50) NOT NULL,
	[TipTS] [nvarchar](50) NOT NULL,
	[ColorCar] [nvarchar](50) NOT NULL,
	[Weight] [nvarchar](50) NOT NULL,
	[YearOfIssue] [date] NOT NULL,
 CONSTRAINT [PK_PTS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.04.2023 9:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CarAccident] ON 

INSERT [dbo].[CarAccident] ([Id], [Date], [Place]) VALUES (1, CAST(N'2022-12-22' AS Date), N'Екатеринбург')
INSERT [dbo].[CarAccident] ([Id], [Date], [Place]) VALUES (2, CAST(N'2023-08-05' AS Date), N'Москва')
INSERT [dbo].[CarAccident] ([Id], [Date], [Place]) VALUES (3, CAST(N'0001-01-12' AS Date), N'Питер')
SET IDENTITY_INSERT [dbo].[CarAccident] OFF
GO
SET IDENTITY_INSERT [dbo].[Cops] ON 

INSERT [dbo].[Cops] ([Id], [FIO], [PostCops], [NumberPhone]) VALUES (1, N'Френк Тенпенни', N'Officer', N'+63442375533')
INSERT [dbo].[Cops] ([Id], [FIO], [PostCops], [NumberPhone]) VALUES (2, N'Эдди Пуласки', N'Officer', N'+69453762285')
INSERT [dbo].[Cops] ([Id], [FIO], [PostCops], [NumberPhone]) VALUES (3, N' Натан Кросс', N'Sergeant', N'+38730982787')
INSERT [dbo].[Cops] ([Id], [FIO], [PostCops], [NumberPhone]) VALUES (4, N'Леон Кеннеди', N'Officer', N'+9776654545')
SET IDENTITY_INSERT [dbo].[Cops] OFF
GO
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([Id], [FIO], [NumberPhone], [DateOfBirthday], [ResidentialAddress], [DriversLicense]) VALUES (1, N'Сухих Максим Андреевич', N'+79127563784', CAST(N'2004-08-01' AS Date), N'Ломоносова 6', N'87 65 789652')
INSERT [dbo].[Owner] ([Id], [FIO], [NumberPhone], [DateOfBirthday], [ResidentialAddress], [DriversLicense]) VALUES (2, N'Родин Олег Альбертович', N'+79127592605', CAST(N'2004-06-15' AS Date), N'Ленина 34', N'93 09 234985')
INSERT [dbo].[Owner] ([Id], [FIO], [NumberPhone], [DateOfBirthday], [ResidentialAddress], [DriversLicense]) VALUES (3, N'Жуков Алексей Николаевич', N'+79047638294', CAST(N'2004-09-12' AS Date), N'Дончука 4', N'34 87 763085')
INSERT [dbo].[Owner] ([Id], [FIO], [NumberPhone], [DateOfBirthday], [ResidentialAddress], [DriversLicense]) VALUES (4, N'Ималиев Радик Алмазовчи', N'+79127593456', CAST(N'2004-01-27' AS Date), N'Ленина 54', N'98 45 075496')
INSERT [dbo].[Owner] ([Id], [FIO], [NumberPhone], [DateOfBirthday], [ResidentialAddress], [DriversLicense]) VALUES (5, N'Оскретков Данил Васильевич', N'+79120743874', CAST(N'0001-04-10' AS Date), N'Воргашер ', N'87 43 873450')
SET IDENTITY_INSERT [dbo].[Owner] OFF
GO
SET IDENTITY_INSERT [dbo].[Protocol] ON 

INSERT [dbo].[Protocol] ([Id], [IncidentAmount], [DateOfPayment], [CopsId], [OwnerId]) VALUES (1, N'3000000р', CAST(N'2022-12-30' AS Date), 1, 3)
SET IDENTITY_INSERT [dbo].[Protocol] OFF
GO
SET IDENTITY_INSERT [dbo].[PTS] ON 

INSERT [dbo].[PTS] ([Id], [OwnerId], [RegistrNumber], [NumberVIN], [CarBrand], [CarModel], [HP], [TipTS], [ColorCar], [Weight], [YearOfIssue]) VALUES (1, 1, N'Т228ХС', N'896D5FBZ8X7V5H5JU', N'Lamborgini', N'Galardo', N'1600', N'B', N'Yellow', N'1200', CAST(N'2002-01-01' AS Date))
INSERT [dbo].[PTS] ([Id], [OwnerId], [RegistrNumber], [NumberVIN], [CarBrand], [CarModel], [HP], [TipTS], [ColorCar], [Weight], [YearOfIssue]) VALUES (2, 2, N'П137РО', N'97D6G97SD7WDFV5H7', N'Tesla ', N'Model X', N'1800', N'B', N'White', N'2000', CAST(N'2018-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[PTS] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1, N'admin', N'admin', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (2, N'JohanJosane', N'govno', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (3, N'Oleg', N'ZZZ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Protocol]  WITH CHECK ADD  CONSTRAINT [FK_Protocol_Cops] FOREIGN KEY([CopsId])
REFERENCES [dbo].[Cops] ([Id])
GO
ALTER TABLE [dbo].[Protocol] CHECK CONSTRAINT [FK_Protocol_Cops]
GO
ALTER TABLE [dbo].[Protocol]  WITH CHECK ADD  CONSTRAINT [FK_Protocol_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owner] ([Id])
GO
ALTER TABLE [dbo].[Protocol] CHECK CONSTRAINT [FK_Protocol_Owner]
GO
ALTER TABLE [dbo].[PTS]  WITH CHECK ADD  CONSTRAINT [FK_PTS_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owner] ([Id])
GO
ALTER TABLE [dbo].[PTS] CHECK CONSTRAINT [FK_PTS_Owner]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [CopsBase] SET  READ_WRITE 
GO
