USE [FoodStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Status] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[CartDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[ShoppingCartID] [int] NOT NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[CartDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[PayStatus] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [int] NULL,
	[Decription] [nvarchar](max) NULL,
	[Image] [nchar](50) NULL,
	[Weight] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Discount] [int] NOT NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionDetail]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionDetail](
	[PromotionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate*]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate*](
	[RateID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[NumberStar] [int] NULL,
	[Date] [date] NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_Rate*] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCard]    Script Date: 11/17/2022 7:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCard](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCard] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [UserName], [DisplayName], [Password], [Email], [PhoneNumber], [Status], [Address]) VALUES (1, N'Vu', N'Vũ bú win', N'123', N'Vu@khongbiet.com', N'654321    ', 1, NULL)
INSERT [dbo].[Account] ([AccountID], [UserName], [DisplayName], [Password], [Email], [PhoneNumber], [Status], [Address]) VALUES (2, N'Hưng', N'HưngPro', N'123', N'Hung@Cungz.com', N'0337039050', 1, NULL)
INSERT [dbo].[Account] ([AccountID], [UserName], [DisplayName], [Password], [Email], [PhoneNumber], [Status], [Address]) VALUES (3, N'VU', N'VU', N'123', N'vudfhsj@gmail.com', N'48357785  ', 0, NULL)
INSERT [dbo].[Account] ([AccountID], [UserName], [DisplayName], [Password], [Email], [PhoneNumber], [Status], [Address]) VALUES (5, N'Hưng Ngô', N'Hưng Ngô', N'123', N'hungnnvh@gmail.com', N'0337039050', 0, N'Bình Dương - Thủ Dầu Một')
INSERT [dbo].[Account] ([AccountID], [UserName], [DisplayName], [Password], [Email], [PhoneNumber], [Status], [Address]) VALUES (6, N'Nguyễn Văn A', N'Nguyễn Văn A', N'123', N'nva@gmail.com', N'0337039050', 0, N'Bình Dương')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([AdminID], [UserName], [PassWord], [DisplayName], [Status]) VALUES (1, N'VuOK', N'1234', N'Vũ P', 1)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([CartDetailID], [ProductID], [Quantity], [Price], [ShoppingCartID]) VALUES (15, 3, 1, 38000, 5)
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Rau')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Củ')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Quả')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'Tươi Sống')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (5, N'Lương Thực')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (6, N'Gia Vị')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (7, N'Sản Phẩm Khác')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (1, CAST(N'2022-10-30' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (4, CAST(N'2022-11-05' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (7, CAST(N'2022-11-06' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (8, CAST(N'2022-11-06' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (9, CAST(N'2022-11-06' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (10, CAST(N'2022-11-14' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (11, CAST(N'2022-11-14' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (12, CAST(N'2022-11-14' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (13, CAST(N'2022-11-14' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (14, CAST(N'2022-11-14' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (15, CAST(N'2022-11-15' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [Date], [AccountID]) VALUES (16, CAST(N'2022-11-15' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (1, 1, 1, 2, N'Ngô Văn Hưng', N'Bình Dương', N'0337039050', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (2, 1, 3, 2, N'', N'', N'          ', N'', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (3, 1, 4, 1, N'', N'', N'          ', N'', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (4, 1, 2, 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (5, 7, 3, 1, N'Hưng Ngô', N'Phú Yên', N'0848384   ', N'hung@123', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (6, 7, 2, 1, N'Hưng Ngô', N'', N'0848384   ', N'hung@123', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (7, 7, 7, 1, N'Hưng Ngô', N'', N'          ', N'hung@123', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (8, 10, 2, 1, N'Hưng Ngô', N'Bình Dương - Thủ Dầu Một', N'0848384   ', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (9, 10, 6, 2, N'Hưng Ngô', N'Bình Dương hgh', N'0848384   ', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (10, 10, 4, 1, N'Hưng Ngô', N'Bình Dương hgh', N'0848384   ', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (11, 15, 3, 1, N'Hưng Ngô', N'Bình Dương hgh', N'0848384   ', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (12, 15, 6, 1, N'Hưng Ngô', N'Bình Dương - Thủ Dầu Một', N'0848384   ', N'hungnnvh@gmail.com', 0)
INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [CustomerName], [Address], [PhoneNumber], [Email], [PayStatus]) VALUES (13, 15, 7, 1, N'Hưng Ngô', N'Bình Dương - Thủ Dầu Một', N'0848384   ', N'hungnnvh@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (1, N'Bông cải xanh', 1, 40000, N'Bông cải xanh được chia làm ba loại chính gồm súp lơ xanh, bông cải mầm, súp lơ tím. Đây là nguồn thực phẩm chứa nhiều chất dinh dưỡng như vitamin, khoáng chất, chất xơ và chất chống oxy hóa. Sau đây là 14 lợi ích mà bông cải xanh mang lại.', N'bongcai.jfif                                      ', N'250g      ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (2, N'Cải Bó Xôi Hữu Cơ', 1, 42000, N'Cải bó xôi ( rau bina) cung cấp rất nhiều dưỡng chất có lợi cho sức khỏe, đặc biệt là vitamin A, vitamin K và chất xơ. Loại rau này cũng vô cùng tiện lợi, có thể ăn như một món ăn nhẹ hoặc kết hợp với vô số món ăn khác.', N'caixoi.jfif                                       ', N'250g      ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (3, N'Cải Ngồng Hữu Cơ', 1, 38000, N'Cải ngồng là loại thực phẩm có giá trị dinh dưỡng cao và rất có lợi cho sức khỏe', N'caingong.jfif                                     ', N'250g      ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (4, N'Bắp Nếp Hữu Cơ', 3, 50000, N'Bắp nếp là một loại ngũ cốc dễ ăn, dễ trồng được mệnh danh là Ngọc Mễ (Hạt ngọc quý) đối với người Việt xưa. Khi mà xã hội ngày càng phát triển, nhiều loại hạt và ngũ cốc được khoa học chứng minh về mức độ dinh dưỡng cùng khả năng phòng chống bệnh tật, bắp nếp cũng là một trong những loại trái cây như thế. Tuy nhiên, đa phần người Việt ngày nay đều chưa hiểu hết được giá trị loại ngũ cốc này, chỉ xem đó như một chất tinh bột cần kiêng khem mà không biết bắp nếp là một loại ngũ cốc có rất nhiều công dụng như: 
- Hỗ trợ đường tiêu hóa 
- Giàu vitamin và khoáng chất 
- Ngăn ngừa thiếu máu 
- Kiểm soát đường huyết …. 
Bên cạnh những món ăn quen thuộc như xôi bắp, bắp nếp xào tôm khô, bắp hầm…, sữa bắp nếp cũng là món được nhiều chị em ưa chuộng nhờ vào hương vị ngọt bùi tự nhiên và phương pháp chế biến và bảo quản tương đối đơn giản.', N'bapnep.jfif                                       ', N'1kg       ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (5, N'Bí Đỏ Hạt Đậu Hữu Cơ', 3, 60000, N'Xuất xứ: Việt Nam Thành phần: Bí đỏ nguyên trái Hướng dẫn sử dụng: Dùng để nấu canh, soup, hấp, xào,... Hướng dẫn bảo quản: Bảo quản nơi khô ráo, thoáng mát Bí Hạt Đậu Hữu Cơ Danny Green có hình dáng giống hạt đậu, ít hạt, thịt màu vàng cam, vỏ mỏng mịn đặc biệt dẻo ngọt và đặc ruột chứa nhiều vitamin và khoáng chất thiết yếu cho cơ thể con người. Bí Hạt Đậu Hữu Cơ được canh tác theo tiêu chuẩn organic và trồng ở Tây Ninh. Bí hạt đậu ăn vị ngọt dẻo thơm, hấp hoặc nướng, ăn được cả vỏ lúc làm chín. Rất thích hợp cho trẻ em. Bí Hạt Đậu Hữu Cơ  là sản phẩm được canh tác trong nhà màng tại Farm Tây Ninh - đạt chứng nhận hữu cơ Nhật Bản JAS Trên mỗi trái bí có tem truy xuất nguồn gốc. Là nguyên liệu thơm ngon của các món ăn như soup bí đỏ, canh, bí đỏ xào hay nước ép và sữa bí đỏ. Ngoài ra loại quả này còn có thể được chế biến thành món ăn dặm bổ dưỡng cho trẻ nhỏ.', N'bido.jfif                                         ', N'1kg       ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (6, N'Cà Rốt Baby Hữu Cơ', 2, 57000, N'Cà rốt là loại cây có củ, củ to ở phần đầu và nhọn ở phần đuôi, củ cà rốt thường có màu cam hoặc đỏ, phẩn ăn được thường gọi là củ nhưng thực chất đó là phần rễ của cà rốt. 
CÔNG DỤNG • Cà rốt chứa rất nhiều vitamin A, B, C đặc biệt là hàm lượng vitamin A cao rất tốt cho mắt, giúp tăng cường thị lực, bồ bổi thị lực, các vitamin này còn giúp chuyển hóa và tái tạo da, tăng sức đề kháng, phòng và trị các bệnh, giúp bổ tỳ tiêu thực, nhuận tràng, bổ can minh mục, thanh nhiệt giải độc. Thường dùng để dưỡng da, trị chứng da khô, trứng cá đầu đen, mụn nhọt... • Cà rốt có thể chữa được các bệnh như: cảm mạo, bệnh sởi, thủy đậu, tiêu chảy. Tinh dầu trong cà rốt có tác dụng diệt khuẩn, caroten trong cà rốt có thể chuyển hóa thành vitamin A giúp sáng mắt, phòng tránh được bệnh quáng gà, khô giác mắt, ngoài ra, caroten còn giúp phòng chống bệnh ung thư. Chưa hết, trong cà rốt có chứa insulin có tác dụng làm giảm 1/3 lượng đường trong máu,giúp hạ huyết áp là thực phẩm lý tưởng cho người bị tiểu đường và người bị cao huyết áp. Ngoài ra trong hạt cà rốt có chứa chất B bisabolen giúp hạn chế sinh đẻ. ', N'carot.jfif                                        ', N'200g      ')
INSERT [dbo].[Product] ([ProductID], [Name], [CategoryID], [Price], [Decription], [Image], [Weight]) VALUES (7, N'Cà Tím Hữu Cơ', 2, 37000, N'Cà tím là một loài cây thuộc họ cà, màu tím huế, ruột trắng, không xơ, ăn ngon. Cà tím giúp giảm nguy cơ mắc các bệnh tim mạch nhờ tác dụng giống như nhóm statins, giúp phòng ngừa bệnh cao huyết áp cũng như bệnh tiểu đường ở một số người có nguy cơ cao. Cà tím còn giúp ngăn chặn sự hình thành của các gốc tự do nhờ nguồn axit folic và kali rất dồi dào, giúp ngăn ngừa ung thư và chống lão hoá các tế bào trong cơ thể. Món ngon với cà tím: cà tím cuộn thịt chiên xù, cà tím kẹp thịt rán giòn, cà tím chiên giòn, cà tím sốt cà chua, cà tím xào hành, cà tím nhồi thịt nướng, thịt ba chỉ cháy cạnh ăn kèm cà tím, canh cà tím nấu sườn non, cà tím xào tôm, cà tím kho thịt, canh cà tím đậu hũ…', N'catim.jfif                                        ', N'300g      ')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([PromotionID], [Description], [Discount], [DateStart], [DateEnd]) VALUES (1, N'Giáng sinh', 20, CAST(N'2022-11-09' AS Date), CAST(N'2022-11-21' AS Date))
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
INSERT [dbo].[PromotionDetail] ([PromotionID], [ProductID]) VALUES (1, 1)
INSERT [dbo].[PromotionDetail] ([PromotionID], [ProductID]) VALUES (1, 2)
INSERT [dbo].[PromotionDetail] ([PromotionID], [ProductID]) VALUES (1, 3)
INSERT [dbo].[PromotionDetail] ([PromotionID], [ProductID]) VALUES (1, 5)
GO
SET IDENTITY_INSERT [dbo].[Rate*] ON 

INSERT [dbo].[Rate*] ([RateID], [AccountID], [Comment], [NumberStar], [Date], [ProductID]) VALUES (2, 5, N'Giao hàng nhanh chóng', 5, CAST(N'2022-11-03' AS Date), 2)
INSERT [dbo].[Rate*] ([RateID], [AccountID], [Comment], [NumberStar], [Date], [ProductID]) VALUES (3, 5, N'Chất lượng tốt', 5, CAST(N'2022-11-06' AS Date), 2)
INSERT [dbo].[Rate*] ([RateID], [AccountID], [Comment], [NumberStar], [Date], [ProductID]) VALUES (4, 5, N'Giao hàng nhanh', 4, CAST(N'2022-11-06' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Rate*] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCard] ON 

INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (1, 3)
INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (2, 1)
INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (3, 2)
INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (4, 3)
INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (5, 5)
INSERT [dbo].[ShoppingCard] ([CartID], [AccountID]) VALUES (6, 6)
SET IDENTITY_INSERT [dbo].[ShoppingCard] OFF
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_ShoppingCard] FOREIGN KEY([ShoppingCartID])
REFERENCES [dbo].[ShoppingCard] ([CartID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_ShoppingCard]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Product]
GO
ALTER TABLE [dbo].[PromotionDetail]  WITH CHECK ADD  CONSTRAINT [FK_PromotionDetail_Promotion] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([PromotionID])
GO
ALTER TABLE [dbo].[PromotionDetail] CHECK CONSTRAINT [FK_PromotionDetail_Promotion]
GO
ALTER TABLE [dbo].[Rate*]  WITH CHECK ADD  CONSTRAINT [FK_Rate*_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Rate*] CHECK CONSTRAINT [FK_Rate*_Account]
GO
ALTER TABLE [dbo].[Rate*]  WITH CHECK ADD  CONSTRAINT [FK_Rate*_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Rate*] CHECK CONSTRAINT [FK_Rate*_Product]
GO
ALTER TABLE [dbo].[ShoppingCard]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCard_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[ShoppingCard] CHECK CONSTRAINT [FK_ShoppingCard_Account]
GO
