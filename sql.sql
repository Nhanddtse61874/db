USE [WebDbCapstone]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorProduct]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ColorProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](225) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageStorage]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageStorage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Alt] [nvarchar](255) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImageStorage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[AddressShipping] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CurrentPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalLine] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[CurrentPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Star] [float] NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Rank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Star] [float] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeProduct]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SizeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagProduct]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TagProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/20/2020 1:38:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[PassWord] [nvarchar](255) NOT NULL,
	[RankId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Point] [float] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (1, N'Men', NULL)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (2, N'Women', NULL)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (3, N'Sneaker', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (4, N'Bag', 2)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (5, N'Shirt', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (6, N'Cap', 2)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (7, N'Sneaker', 2)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (8, N'Bag', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (9, N'Cap', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (10, N'Shirt', 2)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (11, N'Trouser', 1)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (12, N'Trouser', 2)
INSERT [dbo].[Category] ([Id], [Name], [ParentId]) VALUES (13, N'test', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Name]) VALUES (1, N'Pink')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (2, N'Red')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (3, N'Blue')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (4, N'Black')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (5, N'White')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (6, N'Orange')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (7, N'Purple')
INSERT [dbo].[Color] ([Id], [Name]) VALUES (8, N'Yellow')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[ColorProduct] ON 

INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (1, 4, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (2, 5, 2)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (3, 7, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (4, 9, 2)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (5, 10, 3)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (6, 11, 4)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (7, 12, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (8, 13, 2)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (9, 14, 5)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (10, 15, 6)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (11, 17, 4)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (12, 18, 3)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (13, 19, 7)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (14, 20, 2)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (15, 20, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (16, 21, 6)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (17, 22, 7)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (18, 23, 8)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (19, 24, 7)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (20, 25, 4)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (21, 26, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (22, 27, 2)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (23, 29, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (24, 30, 3)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (25, 32, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (26, 33, 6)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (27, 34, 5)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (28, 35, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (29, 36, 7)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (30, 38, 1)
INSERT [dbo].[ColorProduct] ([Id], [ProductId], [ColorId]) VALUES (31, 40, 2)
SET IDENTITY_INSERT [dbo].[ColorProduct] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Name], [Address], [Phone], [Description]) VALUES (1, N'xxx', N'xxxxxx', 123456789, N'xxxxxxx')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[ImageStorage] ON 

INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (1, N'KnnProject\KnnProject\Images\SUPERSTAR.PNG', N'SUPERSTAR', 4)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (6, N'KnnProject\KnnProject\Images\YEEZYBOOT350V2.PNG', N'YEZZYBOOT', 5)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (10, N'KnnProject\KnnProject\Images\YEEZYBOOT350V2.PNG', N'YEZZYBOOT', 7)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (11, N'KnnProject\KnnProject\Images\NMDR1V2.PNG', N'NMD R1 V2', 8)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (12, N'KnnProject\KnnProject\Images\ADILETTE.PNG', N'ADILETTE', 9)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (13, N'KnnProject\KnnProject\Images\ADILETTE.PNG', N'ADILETTE', 10)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (16, N'KnnProject\KnnProject\Images\CONTINENTAL.PNG', N'CONTINENTAL', 11)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (17, N'KnnProject\KnnProject\Images\ZXTORSION.PNG', N'ZX TORSION', 12)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (18, N'KnnProject\KnnProject\Images\FALCON.PNG', N'FALCON', 13)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (19, N'KnnProject\KnnProject\Images\NITEJOGGER.PNG', N'NITE JOGGER', 14)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (20, N'KnnProject\KnnProject\Images\HYPERSLEEK.PNG', N'HYPERSLEEK', 15)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (22, N'KnnProject\KnnProject\Images\BOLDBRND.PNG', N'BOLD BRND', 17)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (23, N'KnnProject\KnnProject\Images\POLOSS.PNG', N'POLO SS', 18)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (24, N'KnnProject\KnnProject\Images\ADIPURE.PNG', N'ADIPURE', 19)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (25, N'KnnProject\KnnProject\Images\POLOM.PNG', N'POLO M', 20)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (26, N'KnnProject\KnnProject\Images\HCMCITYLINES.PNG', N'HCM CITY LINES', 21)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (27, N'KnnProject\KnnProject\Images\ULTIMATE.PNG', N'ULTIMATE', 22)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (28, N'KnnProject\KnnProject\Images\ASKQ1BRA.PNG', N'ASK Q1 BRA', 23)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (29, N'KnnProject\KnnProject\Images\BELIEVETHISHACK.PNG', N'BELIEVE THIS HACK', 24)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (30, N'KnnProject\KnnProject\Images\ALPHASKIN.PNG', N'ALPHASKIN', 25)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (32, N'KnnProject\KnnProject\Images\SHORTALPHASKIN.PNG', N'SHORT ALPHASKIN', 26)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (34, N'KnnProject\KnnProject\Images\OWNRUN.PNG', N'OWN RUN', 27)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (36, N'KnnProject\KnnProject\Images\SHORTOWNRUN.PNG', N'SHORT OUT RUn', 29)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (37, N'KnnProject\KnnProject\Images\STRDRESS.PNG', N'STR DRESS', 30)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (39, N'KnnProject\KnnProject\Images\BELLISTA.PNG', N'BELLISTA', 32)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (40, N'KnnProject\KnnProject\Images\TEEDRESS.PNG', N'TEE DRESS', 33)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (42, N'KnnProject\KnnProject\Images\ADICROSS.PNG', N'ADICROSS', 34)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (43, N'KnnProject\KnnProject\Images\ADICROSS.PNG', N'ADICROSS', 35)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (44, N'KnnProject\KnnProject\Images\ADICOLOR.PNG', N'ADICOLOR', 36)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (45, N'KnnProject\KnnProject\Images\ADICOLOR.PNG', N'ADICOLOR', 38)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (46, N'KnnProject\KnnProject\Images\POWER5.PNG', N'POWER 5 ', 39)
INSERT [dbo].[ImageStorage] ([Id], [ImageUrl], [Alt], [ProductId]) VALUES (47, N'KnnProject\KnnProject\Images\POWER6.PNG', N'POWER6', 40)
SET IDENTITY_INSERT [dbo].[ImageStorage] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (1, 1, 500, N'HCM', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (2, 1, 1000, N'HCM', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (4, 1, 200, N'HCM', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (5, 2, 1200, N'HN', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (6, 2, 1000, N'HN', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (7, 1, 2500, N'HCM', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (8, 2, 2000, N'HN', CAST(N'2020-05-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (10, 3, 5000, N'HP', CAST(N'2020-05-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (11, 3, 5000, N'Hp', CAST(N'2020-05-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (15, 3, 45465, N'HP', CAST(N'2020-05-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (16, 4, 44444, N'LA', CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Order] ([Id], [UserId], [TotalPrice], [AddressShipping], [Date], [Status]) VALUES (17, 4, 123123, N'LA', CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (1, 1, 5, 450, 1, 450)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (2, 1, 21, 50, 1, 50)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (3, 1, 4, 110, 1, 110)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (4, 1, 5, 480, 2, 960)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (5, 1, 7, 480, 1, 480)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (6, 2, 8, 290, 1, 290)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (7, 2, 9, 35, 3, 105)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (8, 2, 10, 35, 2, 70)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (9, 2, 14, 220, 2, 440)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (10, 2, 15, 260, 1, 260)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (11, 4, 25, 90, 1, 90)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (12, 4, 34, 100, 1, 100)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (13, 4, 40, 100, 1, 100)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (14, 4, 20, 80, 1, 80)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (15, 4, 23, 50, 2, 100)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (16, 5, 5, 450, 2, 900)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (17, 5, 23, 50, 1, 50)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (18, 5, 14, 220, 2, 440)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (19, 5, 10, 35, 1, 35)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (23, 5, 7, 480, 1, 480)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (24, 6, 8, 290, 1, 290)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (26, 6, 21, 50, 1, 50)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (27, 6, 15, 260, 1, 260)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (28, 6, 4, 110, 2, 220)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (30, 7, 39, 100, 2, 200)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (31, 7, 36, 100, 1, 100)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (32, 8, 32, 75, 1, 75)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (33, 8, 29, 70, 1, 70)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (34, 10, 5, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (35, 10, 32, 123, 1, 444)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (36, 10, 23, 123, 1, 45646)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (37, 10, 15, 123, 1, 12313)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (38, 10, 40, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (39, 15, 7, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (40, 15, 14, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (41, 15, 24, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (44, 16, 4, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (45, 16, 5, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (46, 16, 8, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (47, 16, 9, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (48, 16, 10, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (49, 17, 21, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (50, 17, 22, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (51, 17, 25, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (52, 17, 40, 123, 1, 123)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [CurrentPrice], [Quantity], [TotalLine]) VALUES (53, 17, 38, 123, 1, 123)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (4, N'SUPERSTAR', 110, 100, 100, N'GIAY01', N'Oringin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (5, N'YEEZYBOOT 350 V2', 480, 450, 100, N'GIAY02', N'Origin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (7, N'YEEZYBOOT 350 V2', 480, 450, 100, N'GIAY03', N'Origin', 7, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (8, N'NMD R1 V2', 290, 250, 100, N'GIAY04', N'Origin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (9, N'ADILETTE', 35, 32, 100, N'DEP01', N'Origin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (10, N'ADILETTE ', 30, 29, 100, N'DEP02', N'Origin', 7, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (11, N'CONTINENTAL', 210, 200, 100, N'GIAY05', N'Origin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (12, N'ZX TORSION', 100, 85, 100, N'GIAY06', N'Origin', 1, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (13, N'FALCON', 80, 75, 100, N'GIAY07', N'Origin', 7, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (14, N'NITE JOGGER', 220, 210, 100, N'GIAY08', N'Origin', 7, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (15, N'HYPERSLEEK', 260, 250, 100, N'GIAY09', N'Origin', 7, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (17, N'BOLD BRND', 50, 45, 100, N'AO1', N'Sport', 5, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (18, N'POLO SS', 70, 60, 100, N'AO02', N'Sport', 5, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (19, N'ADIPURE', 110, 105, 100, N'AO03', N'Sport', 5, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (20, N'POLO M', 80, 75, 100, N'AO04', N'Sport', 5, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (21, N'HCM CITY LINES', 50, 45, 100, N'Ao05', N'Sport', 5, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (22, N'ULTIMATE', 50, 45, 100, N'AO06', N'Sport', 10, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (23, N' ASK Q1 BRA', 50, 45, 100, N'AO07', N'Sport', 10, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (24, N'BELIEVE THIS HACK', 50, 45, 100, N'AO08', N'Sport', 10, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (25, N'ALPHASKIN', 90, 80, 100, N'QUAN01', N'Sport', 11, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (26, N'SHORT ALPHASKIN', 70, 65, 100, N'QUAN02', N'Sport', 11, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (27, N'OWN RUN', 90, 80, 100, N'QUAN03', N'Sport', 11, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (29, N'SHORT OWN RUN', 70, 65, 100, N'QUAN4', N'Sport', 11, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (30, N'STR DRESS', 45, 40, 100, N'QUAN05', N'Sport', 12, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (32, N'BELLISTA', 75, 35, 100, N'QUAN06', N'Sport', 12, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (33, N'TEE DRESS', 45, 35, 100, N'QUAN07', N'Sport', 12, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (34, N'ADICROSS', 100, 90, 100, N'BALO01', N'Balo', 8, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (35, N'ADICROSS', 100, 90, 100, N'BALO02', N'Balo', 4, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (36, N'ADICOLOR', 100, 95, 100, N'BALO03', N'Balo', 8, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (38, N'ADICOLOR', 100, 95, 100, N'BALO04', N'Balo', 4, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (39, N'POWER 5', 100, 85, 100, N'BALO05', N'Balo', 8, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CurrentPrice], [Quantity], [Code], [Description], [CategoryId], [Status], [CreatedDate], [Star]) VALUES (40, N'POWER6', 100, 85, 100, N'BALO06', N'Balo', 4, 1, CAST(N'2020-05-11T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Rank] ON 

INSERT [dbo].[Rank] ([Id], [Name], [Point]) VALUES (1, N'Gold', 4000)
INSERT [dbo].[Rank] ([Id], [Name], [Point]) VALUES (2, N'Platium', 10000)
INSERT [dbo].[Rank] ([Id], [Name], [Point]) VALUES (3, N'Dimond', 20000)
SET IDENTITY_INSERT [dbo].[Rank] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [ProductId], [Star], [UserName], [Comment]) VALUES (1, 4, 5, N'xxx', N'abc')
INSERT [dbo].[Reviews] ([Id], [ProductId], [Star], [UserName], [Comment]) VALUES (2, 5, 5, N'xxx', N'abc')
INSERT [dbo].[Reviews] ([Id], [ProductId], [Star], [UserName], [Comment]) VALUES (3, 7, 5, N'xxx', N'abc')
INSERT [dbo].[Reviews] ([Id], [ProductId], [Star], [UserName], [Comment]) VALUES (4, 9, 5, N'xxx', N'abc')
INSERT [dbo].[Reviews] ([Id], [ProductId], [Star], [UserName], [Comment]) VALUES (5, 10, 4, N'xxxx', N'abc')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Description]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Description]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Name]) VALUES (1, N'S')
INSERT [dbo].[Size] ([Id], [Name]) VALUES (2, N'M')
INSERT [dbo].[Size] ([Id], [Name]) VALUES (3, N'L')
INSERT [dbo].[Size] ([Id], [Name]) VALUES (4, N'XL')
INSERT [dbo].[Size] ([Id], [Name]) VALUES (5, N'XXL')
INSERT [dbo].[Size] ([Id], [Name]) VALUES (6, N'XXXL')
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[SizeProduct] ON 

INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (1, 4, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (2, 4, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (3, 4, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (4, 5, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (5, 7, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (6, 8, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (7, 8, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (8, 9, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (9, 9, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (10, 10, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (11, 10, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (12, 11, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (13, 11, 4)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (14, 12, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (15, 13, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (16, 14, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (17, 15, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (18, 15, 4)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (20, 17, 4)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (21, 18, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (22, 18, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (23, 19, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (24, 19, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (25, 20, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (26, 20, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (27, 21, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (28, 21, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (29, 22, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (30, 22, 4)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (31, 23, 5)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (32, 24, 6)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (33, 25, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (34, 25, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (35, 25, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (36, 26, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (37, 26, 4)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (38, 27, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (39, 29, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (42, 30, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (43, 32, 2)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (44, 33, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (45, 34, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (46, 35, 3)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (47, 36, 5)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (49, 38, 1)
INSERT [dbo].[SizeProduct] ([Id], [ProductId], [SizeId]) VALUES (51, 40, 1)
SET IDENTITY_INSERT [dbo].[SizeProduct] OFF
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([Id], [Name]) VALUES (1, N'Christmas')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (2, N'New Year')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (3, N'1 Year')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (4, N'Mix 1')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (5, N'Collection2')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (6, N'Valentine')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (7, N'Collection Black')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (8, N'Collection White')
INSERT [dbo].[Tag] ([Id], [Name]) VALUES (9, N'Collection Yellow')
SET IDENTITY_INSERT [dbo].[Tag] OFF
SET IDENTITY_INSERT [dbo].[TagProduct] ON 

INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (2, 4, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (3, 5, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (4, 7, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (5, 8, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (6, 9, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (7, 10, 1)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (8, 11, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (9, 12, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (10, 13, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (11, 14, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (12, 15, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (13, 17, 2)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (14, 18, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (15, 19, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (16, 20, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (17, 20, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (18, 21, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (19, 22, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (20, 23, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (21, 24, 3)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (22, 25, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (23, 26, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (24, 27, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (25, 29, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (26, 30, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (27, 32, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (28, 33, 4)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (29, 34, 5)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (30, 35, 5)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (31, 36, 5)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (32, 38, 5)
INSERT [dbo].[TagProduct] ([Id], [ProductId], [TagId]) VALUES (34, 40, 5)
SET IDENTITY_INSERT [dbo].[TagProduct] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [PassWord], [RankId], [RoleId], [Name], [Phone], [Address], [Gender], [Point]) VALUES (1, N'User1', N'123', 2, 2, N'Nhan', 779789623, N'xxxxx', 1, 11000)
INSERT [dbo].[User] ([Id], [UserName], [PassWord], [RankId], [RoleId], [Name], [Phone], [Address], [Gender], [Point]) VALUES (2, N'User2', N'123', 2, 2, N'Minh', 779456456, N'xxxxx', 1, 12000)
INSERT [dbo].[User] ([Id], [UserName], [PassWord], [RankId], [RoleId], [Name], [Phone], [Address], [Gender], [Point]) VALUES (3, N'user3', N'123', 2, 2, N'Nguyen', 12313123, N'xxxxx', 1, 12000)
INSERT [dbo].[User] ([Id], [UserName], [PassWord], [RankId], [RoleId], [Name], [Phone], [Address], [Gender], [Point]) VALUES (4, N'user4', N'123', 2, 2, N'Tri', 456456456, N'xxxx', 1, 11212)
INSERT [dbo].[User] ([Id], [UserName], [PassWord], [RankId], [RoleId], [Name], [Phone], [Address], [Gender], [Point]) VALUES (5, N'usertest', N'123', 1, 2, N'UserTEst', 789789, N'abc', 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Category_dbo.Category_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_dbo.Category_dbo.Category_ParentId]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ColorProduct_dbo.Color_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_dbo.ColorProduct_dbo.Color_ColorId]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ColorProduct_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_dbo.ColorProduct_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[ImageStorage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImageStorage_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageStorage] CHECK CONSTRAINT [FK_dbo.ImageStorage_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.User_UserId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reviews_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_dbo.Reviews_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SizeProduct_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_dbo.SizeProduct_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SizeProduct_dbo.Size_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Size] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_dbo.SizeProduct_dbo.Size_SizeId]
GO
ALTER TABLE [dbo].[TagProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TagProduct_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagProduct] CHECK CONSTRAINT [FK_dbo.TagProduct_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[TagProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TagProduct_dbo.Tag_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagProduct] CHECK CONSTRAINT [FK_dbo.TagProduct_dbo.Tag_TagId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.Rank_RankId] FOREIGN KEY([RankId])
REFERENCES [dbo].[Rank] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.Rank_RankId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.Role_RoleId]
GO
