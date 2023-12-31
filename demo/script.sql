USE [master]
GO
/****** Object:  Database [Viskunov1]    Script Date: 08.12.2023 23:06:21 ******/
CREATE DATABASE [Viskunov1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Viskunov1', FILENAME = N'B:\Database\Viskunov1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Viskunov1_log', FILENAME = N'B:\Database\Viskunov1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Viskunov1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Viskunov1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Viskunov1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Viskunov1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Viskunov1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Viskunov1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Viskunov1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Viskunov1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Viskunov1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Viskunov1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Viskunov1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Viskunov1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Viskunov1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Viskunov1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Viskunov1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Viskunov1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Viskunov1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Viskunov1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Viskunov1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Viskunov1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Viskunov1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Viskunov1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Viskunov1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Viskunov1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Viskunov1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Viskunov1] SET  MULTI_USER 
GO
ALTER DATABASE [Viskunov1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Viskunov1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Viskunov1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Viskunov1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Viskunov1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Viskunov1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Viskunov1] SET QUERY_STORE = ON
GO
ALTER DATABASE [Viskunov1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Viskunov1]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[DeliveryData] [datetime] NULL,
	[PointIssue] [int] NULL,
	[ClientID] [int] NULL,
	[CodeToGet] [float] NULL,
	[OrderStatues] [nvarchar](255) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ProductArticleNumber] [nvarchar](255) NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfIssue]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfIssue](
	[IssueID] [int] IDENTITY(1,1) NOT NULL,
	[PointOfIssue] [nvarchar](255) NULL,
 CONSTRAINT [PK_PointOfIssue] PRIMARY KEY CLUSTERED 
(
	[IssueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](255) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[UnitMeasure] [nvarchar](255) NULL,
	[Cost] [float] NULL,
	[MaxDiscount] [float] NULL,
	[Manufacturer] [nvarchar](255) NULL,
	[Supplier] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[CurrDiscount] [float] NULL,
	[QuantityStock] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[ProductPhoto] [nvarchar](255) NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Role] [int] NULL,
	[Surname] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Patronymic] [nvarchar](255) NULL,
 CONSTRAINT [PK_User$] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (1, CAST(N'2022-05-01T00:00:00.000' AS DateTime), CAST(N'2022-05-07T00:00:00.000' AS DateTime), 2, 101, 111, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (2, CAST(N'2022-05-02T00:00:00.000' AS DateTime), CAST(N'2022-05-08T00:00:00.000' AS DateTime), 8, NULL, 112, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (3, CAST(N'2022-05-03T00:00:00.000' AS DateTime), CAST(N'2022-05-09T00:00:00.000' AS DateTime), 10, NULL, 113, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (4, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 12, NULL, 114, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (5, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 15, NULL, 115, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (6, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 18, 102, 116, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (7, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 20, NULL, 117, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (8, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 25, NULL, 118, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (9, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 30, NULL, 119, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderDate], [DeliveryData], [PointIssue], [ClientID], [CodeToGet], [OrderStatues]) VALUES (10, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 36, 103, 120, N'Новый ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'K478R4', 10, 1)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'S563T4', 2, 2)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'K083T5', 11, 3)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'B037T5', 1, 4)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'R922T5', 7, 5)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'V783T5', 1, 6)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'H937R3', 1, 7)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'F903T5', 4, 8)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'R836R5', 1, 9)
INSERT [dbo].[OrderProduct] ([ProductArticleNumber], [Quantity], [OrderID]) VALUES (N'D832R2', 5, 10)
GO
SET IDENTITY_INSERT [dbo].[PointOfIssue] ON 

INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (1, N'344288, г. Ковров, ул. Чехова, 1')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (2, N'614164, г.Ковров,  ул. Степная, 30')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (3, N'394242, г. Ковров, ул. Коммунистическая, 43')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (4, N'660540, г. Ковров, ул. Солнечная, 25')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (5, N'125837, г. Ковров, ул. Шоссейная, 40')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (6, N'125703, г. Ковров, ул. Партизанская, 49')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (7, N'625283, г. Ковров, ул. Победы, 46')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (8, N'614611, г. Ковров, ул. Молодежная, 50')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (9, N'454311, г.Ковров, ул. Новая, 19')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (10, N'660007, г.Ковров, ул. Октябрьская, 19')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (11, N'603036, г. Ковров, ул. Садовая, 4')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (12, N'450983, г.Ковров, ул. Комсомольская, 26')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (13, N'394782, г. Ковров, ул. Чехова, 3')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (14, N'603002, г. Ковров, ул. Дзержинского, 28')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (15, N'450558, г. Ковров, ул. Набережная, 30')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (16, N'394060, г.Ковров, ул. Фрунзе, 43')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (17, N'410661, г. Ковров, ул. Школьная, 50')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (18, N'625590, г. Ковров, ул. Коммунистическая, 20')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (19, N'625683, г. Ковров, ул. 8 Марта')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (20, N'400562, г. Ковров, ул. Зеленая, 32')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (21, N'614510, г. Ковров, ул. Маяковского, 47')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (22, N'410542, г. Ковров, ул. Светлая, 46')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (23, N'620839, г. Ковров, ул. Цветочная, 8')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (24, N'443890, г. Ковров, ул. Коммунистическая, 1')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (25, N'603379, г. Ковров, ул. Спортивная, 46')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (26, N'603721, г. Ковров, ул. Гоголя, 41')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (27, N'410172, г. Ковров, ул. Северная, 13')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (28, N'420151, г. Ковров, ул. Вишневая, 32')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (29, N'125061, г. Ковров, ул. Подгорная, 8')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (30, N'630370, г. Ковров, ул. Шоссейная, 24')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (31, N'614753, г. Ковров, ул. Полевая, 35')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (32, N'426030, г. Ковров, ул. Маяковского, 44')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (33, N'450375, г. Ковров ул. Клубная, 44')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (34, N'625560, г. Ковров, ул. Некрасова, 12')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (35, N'630201, г. Ковров, ул. Комсомольская, 17')
INSERT [dbo].[PointOfIssue] ([IssueID], [PointOfIssue]) VALUES (36, N'190949, г. Ковров, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[PointOfIssue] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'B025Y5', N'Блюдо', N'шт.', 1890, 5, N'Home Philosophy', N'Стокманн', N'Интерьерные аксессуары', 3, 8, N'Блюдо декоративное flower 35 см Home Philosophy', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'B037T5', N'Блюдо', N'шт.', 690, 5, N'Home Philosophy', N'Стокманн', N'Интерьерные аксессуары', 2, 14, N'Блюдо декоративное Flower 35 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'D034T5', N'Диффузор', N'шт.', 800, 20, N'Miksdo', N'Hoff', N'Ароматы для дома', 2, 15, N'Диффузор Mikado intense Апельсин с корицей', N'D034T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'D044T5', N'Декор настенный', N'шт.', 1790, 5, N'Home Philosophy', N'Стокманн', N'Интерьерные аксессуары', 3, 7, N'Декор настенный Фантазия 45х45х1 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'D826T5', N'Диффузор', N'шт.', 600, 5, N'True Scents', N'Hoff', N'Ароматы для дома', 2, 13, N'Диффузор True Scents 45 мл манго', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'D832R2', N'Растение', N'шт.', 1000, 10, N'Home Philosophy', N'Стокманн', N'Интерьерные аксессуары', 3, 15, N'Декоративное растение 102 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'D947R5', N'Диффузор', N'шт.', 500, 5, N'Aroma', N'Hoff', N'Ароматы для дома', 4, 6, N'Диффузор Aroma Harmony Lavender', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'F837T5', N'Фоторамка', N'шт.', 999, 5, N'Gallery', N'Hoff', N'Картины и фоторамки', 2, 15, N'Шкатулка для украшений из дерева Stowit', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'F903T5', N'Фоторамка', N'шт.', 600, 15, N'Gallery', N'Hoff', N'Картины и фоторамки', 2, 3, N'Фоторамка Gallery 20х30 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'F928T5', N'Фоторамка', N'шт.', 1590, 25, N'Umbra', N'Стокманн', N'Картины и фоторамки', 2, 13, N'Фоторамка Prisma 10х10 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'F933T5', N'Кашпо', N'шт.', 1400, 20, N'Cube Color', N'Hoff', N'Горшки и подставки', 4, 23, N'Настольное кашпо с автополивом Cube Color', N'F933T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'F937R4', N'Фоторамка', N'шт.', 359, 15, N'Gallery', N'Hoff', N'Картины и фоторамки', 4, 17, N'Фоторамка 10х15 см Gallery серый с патиной/золотой', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'H023R8', N'Часы', N'шт.', 5600, 15, N'Umbra', N'Стокманн', N'Часы', 2, 6, N'Часы настенные Ribbon 30,5 см', N'H023R8.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'H937R3', N'Часы', N'шт.', 999, 10, N'Umbra', N'Hoff', N'Часы', 3, 4, N'Часы настенные 6500 30,2 см', N'H937R3.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'K083T5', N'Аромат', N'шт.', 2790, 20, N'Esteban', N'Стокманн', N'Ароматы для дома', 2, 6, N'Сменный аромат Figue noire 250 мл', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'K478R4', N'Аромат', N'шт.', 3500, 30, N'Esteban', N'Стокманн', N'Ароматы для дома', 4, 4, N'Аромат для декобукета Esteban', N'K478R4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'K937T4', N'Аромат', N'шт.', 7900, 25, N'Esteban', N'Стокманн', N'Ароматы для дома', 2, 17, N'Деко-букет Кедр 250 мл', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'P846R4', N'Подставка', N'шт.', 1400, 15, N'Valley', N'Стокманн', N'Горшки и подставки', 3, 12, N'Подставка для цветочных горшков 55x25x35 см Valley', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'P927R2', N'Подставка', N'шт.', 4000, 15, N'Valley', N'Стокманн', N'Горшки и подставки', 2, 4, N'Подставка для цветочных горшков Valley', N'P927R2.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'P936E4', N'Подставка', N'шт.', 3590, 15, N'Umbra', N'Стокманн', N'Горшки и подставки', 4, 9, N'Подставка для газет и журналов Zina', N'P936E4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'R836R5', N'Шкатулка', N'шт.', 8000, 30, N'Umbra', N'Стокманн', N'Шкатулки и подставки', 5, 3, N'Шкатулка для украшений из дерева Stowit', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'R922T5', N'Шкатулка', N'шт.', 690, 10, N'Home Philosophy', N'Стокманн', N'Шкатулки и подставки', 2, 4, N'Шкатулка из керамики Lana 6х7 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'S039T5', N'Свеча', N'шт.', 250, 10, N'True Scents', N'Hoff', N'Свечи', 2, 18, N'Свеча True Moods Feel happy', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'S563T4', N'Свеча', N'шт.', 1000, 20, N'True Scents', N'Hoff', N'Свечи', 3, 12, N'Свеча в стакане True Scents', N'S563T4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'S936Y5', N'Свеча', N'шт.', 299, 15, N'True Scents', N'Hoff', N'Ароматы для дома', 3, 4, N'Свеча в стакане True Scents', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'S937T5', N'Подсвечник', N'шт.', 2600, 10, N'Kersten', N'Стокманн', N'Ароматы для дома', 3, 23, N'Подсвечник 37 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'V432R6', N'Ваза', N'шт.', 1990, 10, N'Kersten', N'Стокманн', N'Вазы', 3, 30, N'Ваза из фаянса 28,00 x 9,50 x 9,50 см', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'V483R7', N'Ваза', N'шт.', 100, 15, N'Весна', N'Hoff', N'Вазы', 3, 7, N'Ваза «Весна» 18 см стекло, цвет прозрачный', N'V483R7.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'V783T5', N'Ваза', N'шт.', 1300, 25, N'Home Philosophy', N'Стокманн', N'Вазы', 2, 13, N'Ваза из керамики Betty', N'V783T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [UnitMeasure], [Cost], [MaxDiscount], [Manufacturer], [Supplier], [Category], [CurrDiscount], [QuantityStock], [Description], [ProductPhoto]) VALUES (N'V937E4', N'Ваза', N'шт.', 1999, 15, N'Kersten', N'Hoff', N'Вазы', 3, 21, N'Ваза 18H2535S 30,5 см', NULL)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Client')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (1, N'loginDEbct2018', N'Qg3gff', 1, N'Алексеев ', N'Владислав', N'Аркадьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (2, N'loginDEvtg2018', N'ETMNzL', 2, N'Савельева ', N'Евфросиния', N'Арсеньевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (3, N'loginDEuro2018', N'a1MIcO', 1, N'Никонов ', N'Мэлс', N'Лукьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (4, N'loginDEpst2018', N'0CyGnX', 1, N'Горшкова ', N'Агафья', N'Онисимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (5, N'loginDEpsu2018', N'Vx9cQ{', 3, N'Горбачёв ', N'Пантелеймон', N'Германович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (6, N'loginDEzqs2018', N'qM9p7i', 3, N'Ершова ', N'Иванна', N'Максимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (7, N'loginDEioe2018', N'yMPu&2', 3, N'Туров ', N'Денис', N'Геласьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (8, N'loginDEcmk2018', N'3f+b0+', 2, N'Носова ', N'Наина', N'Эдуардовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (9, N'loginDEfsp2018', N'&dtlI+', 1, N'Куликов ', N'Андрей', N'Святославович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (10, N'loginDExcd2018', N'SZXZNL', 1, N'Нестеров ', N'Агафон', N'Георгьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (11, N'loginDEvlf2018', N'O5mXc2', 3, N'Козлов ', N'Геласий', N'Христофорович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (12, N'loginDEanv2018', N'Xiq}M3', 2, N'Борисова ', N'Анжелика', N'Анатольевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (13, N'loginDEzde2018', N'tlO3x&', 3, N'Суханов ', N'Станислав', N'Фролович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (14, N'loginDEriv2018', N'GJ2mHL', 3, N'Тетерина ', N'Феврония', N'Эдуардовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (15, N'loginDEhcp2018', N'n2nfRl', 3, N'Муравьёва ', N'Александра', N'Ростиславовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (16, N'loginDEwjv2018', N'ZfseKA', 3, N'Новикова ', N'Лукия', N'Ярославовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (17, N'loginDEiry2018', N'5zu7+}', 3, N'Агафонова ', N'Лариса', N'Михаиловна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (18, N'loginDEgbr2018', N'}+Ex1*', 3, N'Сергеева ', N'Агата', N'Юрьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (19, N'loginDExxv2018', N'+daE|T', 3, N'Колобова ', N'Елена', N'Евгеньевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (20, N'loginDEbto2018', N'b1iYMI', 1, N'Ситников ', N'Николай', N'Филатович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (21, N'loginDEfbs2018', N'v90Rep', 3, N'Белов ', N'Роман', N'Иринеевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (22, N'loginDEple2018', N'WlW+l8', 2, N'Волкова ', N'Алла', N'Лукьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (23, N'loginDEhhx2018', N'hmCHeQ', 3, N'Кудрявцева ', N'Таисия', N'Игоревна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (24, N'loginDEayn2018', N'Ka2Fok', 3, N'Семёнова ', N'Октябрина', N'Христофоровна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (25, N'loginDEwld2018', N'y9HStF', 3, N'Смирнов ', N'Сергей', N'Яковович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (26, N'loginDEhuu2018', N'X31OEf', 1, N'Брагина ', N'Алина', N'Валерьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (27, N'loginDEmjb2018', N'5mm{ch', 3, N'Евсеев ', N'Игорь', N'Донатович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (28, N'loginDEdgp2018', N'1WfJjo', 3, N'Суворов ', N'Илья', N'Евсеевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (29, N'loginDEgyi2018', N'|7nYPc', 2, N'Котов ', N'Денис', N'Мартынович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (30, N'loginDEmvn2018', N'Mrr9e0', 1, N'Бобылёва ', N'Юлия', N'Егоровна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (31, N'loginDEfoj2018', N'nhGc+D', 2, N'Брагин ', N'Бронислав', N'Георгьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (32, N'loginDEuuo2018', N'42XmH1', 1, N'Александров ', N'Владимир', N'Дамирович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (33, N'loginDEhsj2018', N's+jrMW', 1, N'Фокин ', N'Ириней', N'Ростиславович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (34, N'loginDEvht2018', N'zMyS8Z', 1, N'Воронов ', N'Митрофан', N'Антонович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (35, N'loginDEeqo2018', N'l5CBqA', 1, N'Маслов ', N'Мстислав', N'Антонинович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (36, N'loginDExrf2018', N'mhpRIT', 1, N'Щербаков ', N'Георгий', N'Богданович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (37, N'loginDEfku2018', N'a1m+8c', 3, N'Кириллова ', N'Эмилия', N'Федосеевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (38, N'loginDExix2018', N'hzxtnn', 2, N'Васильев ', N'Серапион', N'Макарович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (39, N'loginDEqrf2018', N'mI8n58', 3, N'Галкина ', N'Олимпиада', N'Владленовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (40, N'loginDEhlk2018', N'g0jSed', 1, N'Яковлева ', N'Ксения', N'Онисимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (41, N'loginDEwoe2018', N'yOtw2F', 2, N'Калашникова ', N'Александра', N'Владимировна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (42, N'loginDExyu2018', N'7Fg}9p', 1, N'Медведьева ', N'Таисия', N'Тихоновна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (43, N'loginDEcor2018', N'2cIrC8', 1, N'Карпова ', N'Ольга', N'Лукьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (44, N'loginDEqon2018', N'YeFbh6', 3, N'Герасимов ', N'Мстислав', N'Дамирович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (45, N'loginDEyfd2018', N'8aKdb0', 1, N'Тимофеева ', N'Ксения', N'Валерьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (46, N'loginDEtto2018', N'qXYDuu', 3, N'Горбунов ', N'Вячеслав', N'Станиславович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (47, N'loginDEdal2018', N'cJWXL0', 3, N'Кошелева ', N'Кира', N'Владиславовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (48, N'loginDEbjs2018', N'Xap2ct', 3, N'Панфилова ', N'Марина', N'Борисовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (49, N'loginDEdof2018', N'kD|LRU', 3, N'Кудрявцев ', N'Матвей', N'Игоревич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (50, N'loginDEsnh2018', N'asdadw', 3, N'Зуев ', N'Эдуард', N'Пантелеймонович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (51, N'loginDEbct2018', N'Qg3gff', 1, N'Алексеев', N'Владислав', N'Аркадьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (52, N'loginDEvtg2018', N'ETMNzL', 2, N'Савельева', N'Евфросиния', N'Арсеньевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (53, N'loginDEuro2018', N'a1MIcO', 1, N'Никонов', N'Мэлс', N'Лукьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (54, N'loginDEpst2018', N'0CyGnX', 1, N'Горшкова', N'Агафья', N'Онисимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (55, N'loginDEpsu2018', N'Vx9cQ{', 3, N'Горбачёв', N'Пантелеймон', N'Германович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (56, N'loginDEzqs2018', N'qM9p7i', 3, N'Ершова', N'Иванна', N'Максимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (57, N'loginDEioe2018', N'yMPu&2', 3, N'Туров', N'Денис', N'Геласьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (58, N'loginDEcmk2018', N'3f+b0+', 2, N'Носова', N'Наина', N'Эдуардовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (59, N'loginDEfsp2018', N'&dtlI+', 1, N'Куликов', N'Андрей', N'Святославович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (60, N'loginDExcd2018', N'SZXZNL', 1, N'Нестеров', N'Агафон', N'Георгьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (61, N'loginDEvlf2018', N'O5mXc2', 3, N'Козлов', N'Геласий', N'Христофорович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (62, N'loginDEanv2018', N'Xiq}M3', 2, N'Борисова', N'Анжелика', N'Анатольевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (63, N'loginDEzde2018', N'tlO3x&', 3, N'Суханов', N'Станислав', N'Фролович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (64, N'loginDEriv2018', N'GJ2mHL', 3, N'Тетерина', N'Феврония', N'Эдуардовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (65, N'loginDEhcp2018', N'n2nfRl', 3, N'Муравьёва', N'Александра', N'Ростиславовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (66, N'loginDEwjv2018', N'ZfseKA', 3, N'Новикова', N'Лукия', N'Ярославовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (67, N'loginDEiry2018', N'5zu7+}', 3, N'Агафонова', N'Лариса', N'Михаиловна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (68, N'loginDEgbr2018', N'}+Ex1*', 3, N'Сергеева', N'Агата', N'Юрьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (69, N'loginDExxv2018', N'+daE|T', 3, N'Колобова', N'Елена', N'Евгеньевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (70, N'loginDEbto2018', N'b1iYMI', 1, N'Ситников', N'Николай', N'Филатович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (71, N'loginDEfbs2018', N'v90Rep', 3, N'Белов', N'Роман', N'Иринеевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (72, N'loginDEple2018', N'WlW+l8', 2, N'Волкова', N'Алла', N'Лукьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (73, N'loginDEhhx2018', N'hmCHeQ', 3, N'Кудрявцева', N'Таисия', N'Игоревна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (74, N'loginDEayn2018', N'Ka2Fok', 3, N'Семёнова', N'Октябрина', N'Христофоровна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (75, N'loginDEwld2018', N'y9HStF', 3, N'Смирнов', N'Сергей', N'Яковович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (76, N'loginDEhuu2018', N'X31OEf', 1, N'Брагина', N'Алина', N'Валерьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (77, N'loginDEmjb2018', N'5mm{ch', 3, N'Евсеев', N'Игорь', N'Донатович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (78, N'loginDEdgp2018', N'1WfJjo', 3, N'Суворов', N'Илья', N'Евсеевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (79, N'loginDEgyi2018', N'|7nYPc', 2, N'Котов', N'Денис', N'Мартынович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (80, N'loginDEmvn2018', N'Mrr9e0', 1, N'Бобылёва', N'Юлия', N'Егоровна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (81, N'loginDEfoj2018', N'nhGc+D', 2, N'Брагин', N'Бронислав', N'Георгьевич')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (82, N'loginDEuuo2018', N'42XmH1', 1, N'Александров', N'Владимир', N'Дамирович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (83, N'loginDEhsj2018', N's+jrMW', 1, N'Фокин', N'Ириней', N'Ростиславович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (84, N'loginDEvht2018', N'zMyS8Z', 1, N'Воронов', N'Митрофан', N'Антонович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (85, N'loginDEeqo2018', N'l5CBqA', 1, N'Маслов', N'Мстислав', N'Антонинович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (86, N'loginDExrf2018', N'mhpRIT', 1, N'Щербаков', N'Георгий', N'Богданович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (87, N'loginDEfku2018', N'a1m+8c', 3, N'Кириллова', N'Эмилия', N'Федосеевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (88, N'loginDExix2018', N'hzxtnn', 2, N'Васильев', N'Серапион', N'Макарович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (89, N'loginDEqrf2018', N'mI8n58', 3, N'Галкина', N'Олимпиада', N'Владленовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (90, N'loginDEhlk2018', N'g0jSed', 1, N'Яковлева', N'Ксения', N'Онисимовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (91, N'loginDEwoe2018', N'yOtw2F', 2, N'Калашникова', N'Александра', N'Владимировна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (92, N'loginDExyu2018', N'7Fg}9p', 1, N'Медведьева', N'Таисия', N'Тихоновна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (93, N'loginDEcor2018', N'2cIrC8', 1, N'Карпова', N'Ольга', N'Лукьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (94, N'loginDEqon2018', N'YeFbh6', 3, N'Герасимов', N'Мстислав', N'Дамирович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (95, N'loginDEyfd2018', N'8aKdb0', 1, N'Тимофеева', N'Ксения', N'Валерьевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (96, N'loginDEtto2018', N'qXYDuu', 3, N'Горбунов', N'Вячеслав', N'Станиславович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (97, N'loginDEdal2018', N'cJWXL0', 3, N'Кошелева', N'Кира', N'Владиславовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (98, N'loginDEbjs2018', N'Xap2ct', 3, N'Панфилова', N'Марина', N'Борисовна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (99, N'loginDEdof2018', N'kD|LRU', 3, N'Кудрявцев', N'Матвей', N'Игоревич')
GO
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (100, N'loginDEsnh2018', N'asdadw', 3, N'Зуев', N'Эдуард', N'Пантелеймонович')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (101, N'Login2323112', N'hdgsaq2', 1, N'Архипова', N'Оливия', N'Дмитриевна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (102, N'Login42342', N'hdgsasad', 1, N'Никонова', N'Татьяна', N'Захаровна')
INSERT [dbo].[User] ([UserID], [Login], [Password], [Role], [Surname], [Name], [Patronymic]) VALUES (103, N'Login7642', N'hdgjhhsad', 1, N'Рябова', N'Диана', N'Павлова')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PointOfIssue] FOREIGN KEY([PointIssue])
REFERENCES [dbo].[PointOfIssue] ([IssueID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PointOfIssue]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OrderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[addProduct]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addProduct]
	@ProductArticleNumber nvarchar(255),
	@ProductName nvarchar(255),
	@UnitMeasure nvarchar(255),
	@Cost float,
	@MaxDiscount float,
	@Manufacturer nvarchar(255),
	@Supplier nvarchar(255),
	@Category nvarchar (255),
	@CurrDiscount float,
	@QuantityStock float,
	@Description nvarchar(255),
	@ProductPhoto nvarchar (255)
	

	AS
BEGIN
INSERT INTO dbo.[Product] (ProductArticleNumber, ProductName, UnitMeasure, Cost, MaxDiscount, Manufacturer, Supplier, Category, CurrDiscount, QuantityStock, "Description", ProductPhoto)
Values   (@ProductArticleNumber, @ProductName, @UnitMeasure, @Cost, @MaxDiscount, @Manufacturer, @Supplier, @Category, @CurrDiscount, @QuantityStock, @Description, @ProductPhoto)
END


GO
/****** Object:  StoredProcedure [dbo].[checkpassword]    Script Date: 08.12.2023 23:06:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[checkpassword]

@Login nvarchar(255),
@Password nvarchar(255)
AS
BEGIN
SELECT *
FROM [User]
where [Login] = @Login and [Password] = @password  
END


GO
USE [master]
GO
ALTER DATABASE [Viskunov1] SET  READ_WRITE 
GO
