USE [CSDMS]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Bill_id] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Time] [time](7) NULL,
	[Total Cost] [int] NULL,
	[Description] [nchar](20) NULL,
	[Emp_id] [int] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[Bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Cst_id] [int] NOT NULL,
	[Cst_name] [nchar](10) NULL,
	[Cst_surname] [nchar](10) NULL,
	[Address] [nchar](50) NULL,
	[E-mail] [nchar](20) NULL,
	[Phone Number] [int] NULL,
	[Membership_id] [int] NULL,
	[Bill_id] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Cst_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Emp_id] [int] NOT NULL,
	[Emp_name] [nchar](10) NULL,
	[Ssn] [int] NULL,
	[Address] [nchar](50) NULL,
	[Phone number] [nchar](10) NULL,
	[Store_id] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Item_id] [int] NOT NULL,
	[Item_name] [nchar](10) NULL,
	[Gender] [nchar](10) NULL,
	[Item_size] [real] NULL,
	[Color] [nchar](10) NULL,
	[Brands] [nchar](10) NULL,
	[Categories] [nchar](10) NULL,
	[Price] [float] NULL,
	[Cst_id] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[Mang_id] [int] NOT NULL,
	[Mang_name] [nchar](10) NULL,
	[E-mail] [ntext] NULL,
	[Phone number] [int] NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[Mang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[Ship_id] [int] NOT NULL,
	[Name] [nchar](10) NULL,
	[Origin] [nchar](10) NULL,
	[Supp_id] [int] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[Ship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Stock_id] [int] NOT NULL,
	[Stock Name] [nchar](20) NULL,
	[Stock Type] [nchar](10) NULL,
	[Quantity] [nchar](10) NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Stock_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_id] [int] NOT NULL,
	[Payment Options] [nchar](10) NULL,
	[Hours] [real] NULL,
	[Mang_id] [int] NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 21.05.2020 14:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Supp_id] [int] NOT NULL,
	[Address] [nchar](20) NULL,
	[City] [nchar](20) NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Supp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bills] ([Bill_id], [Date], [Time], [Total Cost], [Description], [Emp_id]) VALUES (12345, CAST(N'2020-05-14T00:00:00.000' AS DateTime), CAST(N'17:38:00' AS Time), 50, N'T-shirt             ', 6)
INSERT [dbo].[Bills] ([Bill_id], [Date], [Time], [Total Cost], [Description], [Emp_id]) VALUES (25689, CAST(N'2019-09-01T00:00:00.000' AS DateTime), CAST(N'10:00:00' AS Time), 500, N'Watch,Sunglasses    ', 10)
INSERT [dbo].[Bills] ([Bill_id], [Date], [Time], [Total Cost], [Description], [Emp_id]) VALUES (35620, CAST(N'2019-12-21T00:00:00.000' AS DateTime), CAST(N'11:50:00' AS Time), 200, N'Suitcase            ', 7)
INSERT [dbo].[Bills] ([Bill_id], [Date], [Time], [Total Cost], [Description], [Emp_id]) VALUES (67890, CAST(N'2020-02-01T00:00:00.000' AS DateTime), CAST(N'19:40:00' AS Time), 175, N'Shoes               ', 8)
INSERT [dbo].[Bills] ([Bill_id], [Date], [Time], [Total Cost], [Description], [Emp_id]) VALUES (74185, CAST(N'2020-03-24T00:00:00.000' AS DateTime), CAST(N'13:20:00' AS Time), 200, N'Skirt,Shirt         ', 9)
GO
INSERT [dbo].[Customer] ([Cst_id], [Cst_name], [Cst_surname], [Address], [E-mail], [Phone Number], [Membership_id], [Bill_id]) VALUES (11, N'Fatma     ', N'Nur       ', N'Yeşilyurt Mahallesi                               ', N'fatmanur@gmail.com  ', 5624, 2300, 35620)
INSERT [dbo].[Customer] ([Cst_id], [Cst_name], [Cst_surname], [Address], [E-mail], [Phone Number], [Membership_id], [Bill_id]) VALUES (12, N'Merve     ', N'Işık      ', N'Türkmenbaşı Bulvar                                ', N'merveısık@gmail.com ', 1587, 5000, 12345)
INSERT [dbo].[Customer] ([Cst_id], [Cst_name], [Cst_surname], [Address], [E-mail], [Phone Number], [Membership_id], [Bill_id]) VALUES (13, N'Gamze     ', N'Köymen    ', N'İller Bankası Kavşağı                             ', N'gamze01@gmail.com   ', 8952, 3245, 74185)
INSERT [dbo].[Customer] ([Cst_id], [Cst_name], [Cst_surname], [Address], [E-mail], [Phone Number], [Membership_id], [Bill_id]) VALUES (14, N'Derya     ', N'Yılmaz    ', N'Turgut Özal Bulvarı                               ', N'derya510@gmail.com  ', 4152, 512, 67890)
INSERT [dbo].[Customer] ([Cst_id], [Cst_name], [Cst_surname], [Address], [E-mail], [Phone Number], [Membership_id], [Bill_id]) VALUES (15, N'Sevgi     ', N'Gümüş     ', N'Kenan Evren Bulvarı                               ', N'gümüşsevgi@gmail.com', 127, 8967, 25689)
GO
INSERT [dbo].[Employees] ([Emp_id], [Emp_name], [Ssn], [Address], [Phone number], [Store_id]) VALUES (6, N'Beyza     ', 35287, N'Toros Mahallesi                                   ', N'5551      ', 23)
INSERT [dbo].[Employees] ([Emp_id], [Emp_name], [Ssn], [Address], [Phone number], [Store_id]) VALUES (7, N'Burcu     ', 55435, N'Mahfesığmaz Mahallesi                             ', N'6662      ', 41)
INSERT [dbo].[Employees] ([Emp_id], [Emp_name], [Ssn], [Address], [Phone number], [Store_id]) VALUES (8, N'Berna     ', 32548, N'Mavi Bulvar                                       ', N'7773      ', 25)
INSERT [dbo].[Employees] ([Emp_id], [Emp_name], [Ssn], [Address], [Phone number], [Store_id]) VALUES (9, N'Gizem     ', 87254, N'Huzurevleri Mahallesi                             ', N'8881      ', 97)
INSERT [dbo].[Employees] ([Emp_id], [Emp_name], [Ssn], [Address], [Phone number], [Store_id]) VALUES (10, N'Feyza     ', 68540, N'Toros Mahallesi                                   ', N'9990      ', 63)
GO
INSERT [dbo].[Items] ([Item_id], [Item_name], [Gender], [Item_size], [Color], [Brands], [Categories], [Price], [Cst_id]) VALUES (56, N'Skirt     ', N'Women     ', 36.38, N'Black     ', N'Zara      ', N'Bottoms   ', 110, 13)
INSERT [dbo].[Items] ([Item_id], [Item_name], [Gender], [Item_size], [Color], [Brands], [Categories], [Price], [Cst_id]) VALUES (63, N'Shoes     ', N'Women     ', 37, N'Blue      ', N'Adidas    ', N'Shoes     ', 175, 14)
INSERT [dbo].[Items] ([Item_id], [Item_name], [Gender], [Item_size], [Color], [Brands], [Categories], [Price], [Cst_id]) VALUES (78, N'Suitcase  ', N'Women     ', 0, N'Black     ', N'Watsons   ', N'Bags      ', 350, 11)
INSERT [dbo].[Items] ([Item_id], [Item_name], [Gender], [Item_size], [Color], [Brands], [Categories], [Price], [Cst_id]) VALUES (84, N'Watch     ', N'Women     ', 0, N'Golden    ', N'Guess     ', N'Accessory ', 350, 15)
INSERT [dbo].[Items] ([Item_id], [Item_name], [Gender], [Item_size], [Color], [Brands], [Categories], [Price], [Cst_id]) VALUES (91, N'T-shirt   ', N'Women     ', 38, N'Purple    ', N'Addax     ', N'Tops      ', 75, 12)
GO
INSERT [dbo].[Manager] ([Mang_id], [Mang_name], [E-mail], [Phone number]) VALUES (1, N'Ayşe      ', N'ayşe@gmail.com', 2220)
INSERT [dbo].[Manager] ([Mang_id], [Mang_name], [E-mail], [Phone number]) VALUES (2, N'Murat     ', N'murat@gmail.com', 3255)
INSERT [dbo].[Manager] ([Mang_id], [Mang_name], [E-mail], [Phone number]) VALUES (3, N'Berfin    ', N'berfin@gmail.com', 2635)
INSERT [dbo].[Manager] ([Mang_id], [Mang_name], [E-mail], [Phone number]) VALUES (4, N'Diren     ', N'diren@gmail.com', 6982)
INSERT [dbo].[Manager] ([Mang_id], [Mang_name], [E-mail], [Phone number]) VALUES (5, N'Osman     ', N'osman@gmail.com', 1985)
GO
INSERT [dbo].[Shipment] ([Ship_id], [Name], [Origin], [Supp_id]) VALUES (21, N'Mersin    ', N'İzmir     ', 18)
INSERT [dbo].[Shipment] ([Ship_id], [Name], [Origin], [Supp_id]) VALUES (22, N'Mersin    ', N'İstanbul  ', 16)
INSERT [dbo].[Shipment] ([Ship_id], [Name], [Origin], [Supp_id]) VALUES (23, N'Mersin    ', N'Ankara    ', 17)
INSERT [dbo].[Shipment] ([Ship_id], [Name], [Origin], [Supp_id]) VALUES (24, N'Mersin    ', N'Adana     ', 19)
INSERT [dbo].[Shipment] ([Ship_id], [Name], [Origin], [Supp_id]) VALUES (25, N'Mersin    ', N'Adıyaman  ', 20)
GO
INSERT [dbo].[Stock] ([Stock_id], [Stock Name], [Stock Type], [Quantity]) VALUES (26, N'Skirt               ', N'Bottoms   ', N'50        ')
INSERT [dbo].[Stock] ([Stock_id], [Stock Name], [Stock Type], [Quantity]) VALUES (27, N'Shoes               ', N'Shoes     ', N'60        ')
INSERT [dbo].[Stock] ([Stock_id], [Stock Name], [Stock Type], [Quantity]) VALUES (28, N'Suitcase            ', N'Bags      ', N'30        ')
INSERT [dbo].[Stock] ([Stock_id], [Stock Name], [Stock Type], [Quantity]) VALUES (29, N'Watch               ', N'Accessory ', N'40        ')
INSERT [dbo].[Stock] ([Stock_id], [Stock Name], [Stock Type], [Quantity]) VALUES (30, N'T-shirt             ', N'Tops      ', N'100       ')
GO
INSERT [dbo].[Store] ([Store_id], [Payment Options], [Hours], [Mang_id]) VALUES (23, N'Cash-Card ', 9, 3)
INSERT [dbo].[Store] ([Store_id], [Payment Options], [Hours], [Mang_id]) VALUES (25, N'Card      ', 8, 2)
INSERT [dbo].[Store] ([Store_id], [Payment Options], [Hours], [Mang_id]) VALUES (41, N'Cash      ', 7, 4)
INSERT [dbo].[Store] ([Store_id], [Payment Options], [Hours], [Mang_id]) VALUES (63, N'Cash-Card ', 9, 5)
INSERT [dbo].[Store] ([Store_id], [Payment Options], [Hours], [Mang_id]) VALUES (97, N'Card      ', 6, 1)
GO
INSERT [dbo].[Suppliers] ([Supp_id], [Address], [City], [Name]) VALUES (16, N'Büyükçekmece        ', N'İstanbul            ', N'Zara                ')
INSERT [dbo].[Suppliers] ([Supp_id], [Address], [City], [Name]) VALUES (17, N'Çankaya             ', N'Ankara              ', N'Adidas              ')
INSERT [dbo].[Suppliers] ([Supp_id], [Address], [City], [Name]) VALUES (18, N'Bornova             ', N'İzmir               ', N'Guess               ')
INSERT [dbo].[Suppliers] ([Supp_id], [Address], [City], [Name]) VALUES (19, N'Çukurova            ', N'Adana               ', N'Watsons             ')
INSERT [dbo].[Suppliers] ([Supp_id], [Address], [City], [Name]) VALUES (20, N'Gölbaşı             ', N'Adıyaman            ', N'Addax               ')
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Employees] FOREIGN KEY([Emp_id])
REFERENCES [dbo].[Employees] ([Emp_id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Employees]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Bills] FOREIGN KEY([Bill_id])
REFERENCES [dbo].[Bills] ([Bill_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Bills]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Store] FOREIGN KEY([Store_id])
REFERENCES [dbo].[Store] ([Store_id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Store]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Customer] FOREIGN KEY([Cst_id])
REFERENCES [dbo].[Customer] ([Cst_id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Customer]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Suppliers] FOREIGN KEY([Supp_id])
REFERENCES [dbo].[Suppliers] ([Supp_id])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Suppliers]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Manager] FOREIGN KEY([Mang_id])
REFERENCES [dbo].[Manager] ([Mang_id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Manager]
GO
