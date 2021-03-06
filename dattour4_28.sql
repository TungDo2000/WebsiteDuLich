create database [QL_TourDL]
USE [QL_TourDL]
GO
/****** Object:  Table [dbo].[ChauLuc]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChauLuc](
	[MaChauLuc] [int] NOT NULL,
	[TenChauLuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChauLuc] PRIMARY KEY CLUSTERED 
(
	[MaChauLuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHinhTour]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHinhTour](
	[MaTour] [int] NOT NULL,
	[Hinh1] [nvarchar](max) NULL,
	[Hinh2] [nvarchar](max) NULL,
	[Hinh3] [nvarchar](max) NULL,
	[Hinh4] [nvarchar](max) NULL,
	[Hinh5] [nvarchar](max) NULL,
	[Hinh6] [nvarchar](max) NULL,
 CONSTRAINT [PK_CTHinhTour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DATTOUR]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATTOUR](
	[MaTour] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaHDV] [int] NOT NULL,
	[NgayBD] [date] NOT NULL,
	[SoLuongNguoiLon] [int] NULL,
	[SoLuongTreEm] [int] NULL,
	[YeuCauThem] [nvarchar](max) NULL,
	[thanhTien] [float] NULL,
 CONSTRAINT [PK_DATTOUR] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC,
	[MaKH] ASC,
	[MaHDV] ASC,
	[NgayBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIEMDEN]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMDEN](
	[MaDD] [int] IDENTITY(1,1) NOT NULL,
	[TenDD] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HUONGDANVIEN]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUONGDANVIEN](
	[MaHDV] [int] IDENTITY(1,1) NOT NULL,
	[TenHDV] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [int] NULL,
	[CMND] [int] NULL,
	[QuocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK__HUONGDAN__3C90E8CE56C9FE25] PRIMARY KEY CLUSTERED 
(
	[MaHDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [char](11) NOT NULL,
	[MatKhau] [char](50) NULL,
	[TenKH] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [int] NULL,
	[QuocTich] [nvarchar](max) NULL,
	[SDT] [char](10) NULL,
	[Email] [varchar](max) NULL,
 CONSTRAINT [PK__KHACHHAN__2725CF1E4024C9CD] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHSAN]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHSAN](
	[MaKS] [int] IDENTITY(1,1) NOT NULL,
	[TenKS] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MIEN]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIEN](
	[MaMien] [int] IDENTITY(1,1) NOT NULL,
	[TenMien] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHUONGTIEN]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUONGTIEN](
	[MaPT] [int] IDENTITY(1,1) NOT NULL,
	[TenPT] [nvarchar](max) NULL,
	[ghichu] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK__PHUONGTI__2725E7F6ACA1CB68] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOUR]    Script Date: 4/28/2021 3:07:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOUR](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[TenTour] [nvarchar](max) NULL,
	[SoNgay] [int] NULL,
	[MaMien] [int] NULL,
	[MaChauLuc] [int] NULL,
	[MaDD] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[Gia] [money] NULL,
	[SoLuongKhach] [int] NULL,
	[MaKS] [int] NULL,
	[MaPT] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_TOUR] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (1, N'Châu Á')
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (2, N'Châu Âu')
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (3, N'Châu Phi')
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (4, N'Châu Mỹ')
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (5, N'Châu Úc')
INSERT [dbo].[ChauLuc] ([MaChauLuc], [TenChauLuc]) VALUES (6, N'Châu Đại Dương')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (1, N'TourTN1_1.PNG', N'TourTN1_2.PNG', N'TourTN1_3.PNG', N'TourTN1_4.PNG', N'TourTN1_5.PNG', N'TourTN1_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (2, N'TourTN2_1.PNG', N'TourTN2_2.PNG', N'TourTN2_3.PNG', N'TourTN2_4.PNG', N'TourTN2_5.PNG', N'TourTN2_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (3, N'TourTN3_1.PNG', N'TourTN3_2.PNG', N'TourTN3_3.PNG', N'TourTN3_4.PNG', N'TourTN3_5.PNG', N'TourTN3_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (4, N'TourTN4_1.PNG', N'TourTN4_2.PNG', N'TourTN4_3.PNG', N'TourTN4_4.PNG', N'TourTN4_5.PNG', N'TourTN4_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (5, N'TourTN5_1.PNG', N'TourTN5_2.PNG', N'TourTN5_3.PNG', N'TourTN5_4.PNG', N'TourTN5_5.PNG', N'TourTN5_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (6, N'TourTN6_1.PNG', N'TourTN6_1.PNG', N'TourTN6_3.PNG', N'TourTN6_4.PNG', N'TourTN6_5.PNG', N'TourTN6_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (7, N'TourTN7_1.PNG', N'TourTN7_2.PNG', N'TourTN7_3.PNG', N'TourTN7_4.PNG', N'TourTN7_5.PNG', N'TourTN7_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (8, N'TourTN8_1.PNG', N'TourTN8_2.PNG', N'TourTN8_3.PNG', N'TourTN8_4.PNG', N'TourTN8_5.PNG', N'TourTN8_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (9, N'TourTN9_1.PNG', N'TourTN9_2.PNG', N'TourTN9_3.PNG', N'TourTN9_4.PNG', N'TourTN9_5.PNG', N'TourTN9_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (11, N'TourTN11_1.PNG', N'TourTN11_2.PNG', N'TourTN11_3.PNG', N'TourTN11_4.PNG', N'TourTN11_5.PNG', N'TourTN11_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (12, N'TourTN12_1.PNG', N'TourTN12_2.PNG', N'TourTN12_3.PNG', N'TourTN12_4.PNG', N'TourTN12_5.PNG', N'TourTN12_6.PNG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (13, N'TourTN13_1.JPG', N'TourTN13_2.JPG', N'TourTN13_3.JPG', N'NUTourTN13_4.JPGLL', N'TourTN13_5.JPG', N'TourTN13_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (14, N'TourTN14_1.JPG', N'TourTN14_2.JPG', N'TourTN14_3.JPG', N'TourTN14_4.JPG', N'TourTN14_5.JPG', N'TourTN14_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (15, N'TourTN15_1.JPG', N'TourTN15_2.JPG', N'TourTN15_3.JPG', N'TourTN15_4.JPG', N'TourTN15_5.JPG', N'TourTN15_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (16, N'TourNN3_1.JPG', N'TourNN3_2.JPG', N'TourNN3_3.JPG', N'TourNN3_4.JPG', N'TourNN3_5.JPG', N'TourNN3_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (17, N'TourNN4_1.JPG', N'TourNN4_2.JPG', N'TourNN4_3.JPG', N'TourNN4_4.JPG', N'TourNN4_5.JPG', N'TourNN4_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (18, N'TourNN5_1.JPG', N'TourNN5_2.JPG', N'TourNN5_3.JPG', N'TourNN5_4.JPG', N'TourNN5_5.JPG', N'TourNN5_6.JPG')
INSERT [dbo].[CTHinhTour] ([MaTour], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6]) VALUES (19, N'TourNN6_1.JPG', N'TourNN6_2.JPG', N'TourNN6_3.JPG', N'TourNN6_4.JPG', N'TourNN6_5.JPG', N'TourNN6_6.JPG')
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (1, 2, 4, CAST(0x6A420B00 AS Date), 1, 2, NULL, 4706283)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (1, 7, 2, CAST(0xDC420B00 AS Date), 2, 3, NULL, 7867505)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (1, 13, 2, CAST(0x2E430B00 AS Date), 3, 4, NULL, 4251377)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (2, 13, 3, CAST(0x50430B00 AS Date), 4, 5, N'Yêu cầu trợ cấp thức ăn nước uống', 4832203)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (3, 6, 3, CAST(0xAE420B00 AS Date), 5, 6, NULL, 9478455)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (3, 8, 5, CAST(0x35420B00 AS Date), 6, 8, N'Yêu cầu trợ cấp thức ăn nước uống', 1933249)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (3, 10, 1, CAST(0xB2420B00 AS Date), 7, 1, N'Yêu cầu thuê khách sạn 4*', 1688832)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (3, 12, 4, CAST(0x29430B00 AS Date), 8, 2, N'Yêu cầu trợ cấp thức ăn nước uống', 4868993)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (4, 2, 2, CAST(0xE3420B00 AS Date), 1, 3, N'Yêu cầu thuê khách sạn 4*', 8599902)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (4, 4, 1, CAST(0x90420B00 AS Date), 2, 4, N'Yêu cầu trợ cấp thức ăn nước uống', 2035058)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (4, 8, 1, CAST(0x5E420B00 AS Date), 3, 0, N'Yêu cầu thuê xe 6 chỗ', 4098044)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (5, 5, 1, CAST(0x24420B00 AS Date), 4, 0, N'Yêu cầu thuê xe 6 chỗ', 8149071)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (5, 6, 2, CAST(0x6A430B00 AS Date), 5, 3, N'Yêu cầu thuê khách sạn 4*', 1381065)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (5, 12, 1, CAST(0x00420B00 AS Date), 6, 4, NULL, 5309410)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (6, 5, 4, CAST(0xCB420B00 AS Date), 7, 4, NULL, 9850512)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (7, 5, 3, CAST(0x6A430B00 AS Date), 8, 5, N'Yêu cầu thuê khách sạn 4*', 3246927)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (8, 7, 3, CAST(0xE5420B00 AS Date), 9, 6, NULL, 6276193)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (8, 13, 3, CAST(0x0E430B00 AS Date), 3, 8, N'Yêu cầu thuê xe 6 chỗ', 7098158)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (8, 14, 2, CAST(0xEF420B00 AS Date), 4, 0, N'Yêu cầu trợ cấp thức ăn nước uống', 8541540)
INSERT [dbo].[DATTOUR] ([MaTour], [MaKH], [MaHDV], [NgayBD], [SoLuongNguoiLon], [SoLuongTreEm], [YeuCauThem], [thanhTien]) VALUES (12, 4, 2, CAST(0x2C430B00 AS Date), 5, 0, N'Yêu cầu thuê khách sạn 4*', 4514912)
SET IDENTITY_INSERT [dbo].[DIEMDEN] ON 

INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (1, N'Vũng Tàu')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (2, N'SaPa')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (3, N'Nha Trang')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (4, N'Sân Bay Đà Nẵng')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (5, N'Đà Lạt')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (6, N'Bến Tre')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (7, N'Phú Quốc')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (8, N'Cần Thơ')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (9, N'Phú Quốc')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (10, N'Nha Trang')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (11, N'Côn Đảo')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (12, N'Ninh Thuận')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (13, N'SaPa')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (14, N'Phan Thiết')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (16, N'Quy Nhơn')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (17, N'Huế')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (18, N'Phú Yên')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (19, N'Sedney')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (20, N'Seoul ')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (21, N'Luxembourg ')
INSERT [dbo].[DIEMDEN] ([MaDD], [TenDD]) VALUES (22, N'Vancouver ')
SET IDENTITY_INSERT [dbo].[DIEMDEN] OFF
SET IDENTITY_INSERT [dbo].[HUONGDANVIEN] ON 

INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [NgaySinh], [DiaChi], [SDT], [CMND], [QuocTich]) VALUES (1, N'Trần Văn Quý', CAST(0x9D0F0B00 AS Date), N'Bình Định', 259317637, 740848782, N'Việt Nam')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [NgaySinh], [DiaChi], [SDT], [CMND], [QuocTich]) VALUES (2, N'Nguyễn Văn Tí', CAST(0xE5140B00 AS Date), N'Bình Tân - TP.HCM', 307932252, 558530396, N'Việt Nam')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [NgaySinh], [DiaChi], [SDT], [CMND], [QuocTich]) VALUES (3, N'Bùi Thị Bưởi', CAST(0x501F0B00 AS Date), N'Ninh Thuận', 360245797, 703114883, N'Việt Nam')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [NgaySinh], [DiaChi], [SDT], [CMND], [QuocTich]) VALUES (4, N'Trần Văn Tèo', CAST(0xFB1B0B00 AS Date), N'Gò Vấp - TP.HCM', 857479119, 291424249, N'Việt Nam')
INSERT [dbo].[HUONGDANVIEN] ([MaHDV], [TenHDV], [NgaySinh], [DiaChi], [SDT], [CMND], [QuocTich]) VALUES (5, N'Lê Thị Mít', CAST(0xEA150B00 AS Date), N'Tân Phú - TP.HCM', 897603244, 763779346, N'Việt Nam')
SET IDENTITY_INSERT [dbo].[HUONGDANVIEN] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (1, N'wsphdqzx   ', N'nyfhouaw                                          ', N'Lê Quang Trung', N'Nam', CAST(0x3B290B00 AS Date), 414923606, N'Việt Nam', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (2, N'dksynqxrd  ', N'lcppza                                            ', N'Ngô Văn Việt', N'Nam', CAST(0x582A0B00 AS Date), 798088077, N'Thái Lan', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (3, N'zukeudb    ', N'mzaxfyflim                                        ', N'Nguyễn Văn Thảo', N'Nam', CAST(0xDB190B00 AS Date), 621464882, N'Thái Lan', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (4, N'npuidjpdie ', N'sorfntwben                                        ', N'Võ Bội Tuyền', N'Nam', CAST(0xAD270B00 AS Date), 449648661, N'Việt Nam', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (5, N'fpjzzgaeg  ', N'aqgiccz                                           ', N'Nguyễn Công Tấn', N'Nam', CAST(0xFC200B00 AS Date), 718086496, N'Ấn Độ', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (6, N'bkxkvmjn   ', N'crhedhwjm                                         ', N'Võ Tấn Đức', N'Nam', CAST(0x662A0B00 AS Date), 379754490, N'Thái Lan', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (7, N'nyrcugut   ', N'mlpkeylfoi                                        ', N'Nguyễn Đức Thanh Vy', N'Nam', CAST(0x302B0B00 AS Date), 364013236, N'Campuchia', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (8, N'gyjandchwa ', N'yozbqcjfq                                         ', N'Đỗ Thanh Tùng', N'Nam', CAST(0x29260B00 AS Date), 633875201, N'Nga', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (9, N'hvrwjxasxz ', N'kokxtnjv                                          ', N'Trần Thị Ngọc Thảo', N'Nữ', CAST(0x2C180B00 AS Date), 272811815, N'Campuchia', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (10, N'jvlllrp    ', N'pckzcmiq                                          ', N'Nguyễn Văn Vũ', N'Nữ', CAST(0xC1280B00 AS Date), 705744416, N'Việt Nam', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (11, N'nybxmbqvd  ', N'kuafxvgce                                         ', N'Phan Minh Luân', N'Nữ', CAST(0x79270B00 AS Date), 955554562, N'Nga', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (12, N'qvpygu     ', N'doymnleo                                          ', N'Nguyễn Đình Thìn', N'Nam', CAST(0xAF280B00 AS Date), 412889290, N'Việt Nam', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (13, N'gikqprffnv ', N'ggdlnggz                                          ', N'Trần Quốc Toản', N'Nam', CAST(0xFF180B00 AS Date), 381648553, N'Campuchia', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (14, N'youbvttznh ', N'fgirqhs                                           ', N'Lê Quang Trung', N'Nam', CAST(0x52200B00 AS Date), 676066527, N'Việt Nam', N'0254867915', N'lequangtrung12@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenDN], [MatKhau], [TenKH], [GioiTinh], [NgaySinh], [CMND], [QuocTich], [SDT], [Email]) VALUES (15, N'dung       ', N'123                                               ', N'dung', NULL, NULL, NULL, NULL, NULL, N'dung@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHSAN] ON 

INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (1, N'KHÁCH SẠN INTERCONTINENTAL PHÚ QUỐC', N'221 Phạm Ngũ Lão - Quận 1 - Hồ Chí Minh', 762909927, N'KS1.PNG', N'Nằm gần bãi biển và cạnh nhà hàng Ombra, bể bơi Oasis được bao quanh bởi khoảng sân tắm nắng rộng rãi và tầm nhìn toàn cảnh biển bao la, hoàn toàn thích hợp để nằm thư giãn, ngắm mây trôi và quên hết những bận rộn bên ngoài.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (2, N'Đà Nẵng Golden Bay', N'28/12 Bùi Viện - Quận 1 - Hồ Chí Minh', 951385096, N'KS2.PNG', N'Tọa lạc tại ngã ba – nơi giao thoa của sông Hàn, biển Đông và bán đảo Sơn Trà, Danang Golden Bay Hotel là khách sạn dát vàng 24k duy nhất tại Đà Nẵng, điểm nghỉ dưỡng 5 sao sang chảnh, đẳng cấp và quý phái bậc nhất Việt Nam. Đúng như tên gọi, ấn tượng của du khách khi đặt chân đến khách sạn chính là khu tiền sảnh dát vàng tô vẻ cho sự tráng lệ của nơi đây ngay từ khoảnh khắc đầu tiên. Sở hữu hệ thống 949 phòng được dát vàng 24k và trang bị đầy đủ tiện nghi, các phòng nghỉ tại khách sạn Đà Nẵng này có kích thước khác nhau với hướng nhìn 360 độ ra biển Đông, núi Sơn Trà, sông Hàn và toàn cảnh thành phố. Đây cũng là một trong những khách sạn ngắm pháo hoa Đà Nẵng lý tưởng nhất trong dịp lễ hội sắp tới.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (3, N'Vinpearl Resort & Spa Nha Trang Bay', N'52B-62-64 Phạm Hồng Thái - Quận 1 - Hồ Chí Minh', 946669229, N'KS3.PNG', N'Nằm gần bãi biển và cạnh nhà hàng Ombra, bể bơi Oasis được bao quanh bởi khoảng sân tắm nắng rộng rãi và tầm nhìn toàn cảnh biển bao la, hoàn toàn thích hợp để nằm thư giãn, ngắm mây trôi và quên hết những bận rộn bên ngoài.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (4, N'Khách sạn Sài Gòn Vĩnh Long ', N'7/9 Nguyễn Trãi - Quận 1 - Hồ Chí Minh', 192281169, N'KS4.PNG', N'Tọa lạc tại thành phố Vĩnh Long, cách Bảo tàng Vĩnh Long 500 m, Khách sạn Sài Gòn Vĩnh Long cung cấp chỗ nghỉ với nhà hàng, bãi đậu xe riêng miễn phí, trung tâm thể dục và vườn. Khách sạn 4 sao này cung cấp dịch vụ phòng. Khách sạn có hồ bơi ngoài trời, lễ tân 24 giờ và Wi-Fi miễn phí trong toàn bộ khuôn viên.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (5, N'Khách sạn Rosamia Đà Nẵng', N'282 Võ Nguyên Giáp, biển Mỹ Khê, quận Ngũ Hành Sơn, TP. Đà Nẵng', 295908943, N'KS5.PNG', N'Tọa lạc trên bãi biển Mỹ Khê - một trong 6 bãi biển đẹp nhất hành tinh do Tạp chí Forbes bình chọn; sở hữu vị trí đắc địa với tầm nhìn hướng biển tuyệt đẹp và chỉ mất vài phút để đến với trung tâm thành phố, rất thuận tiện cho du khách tham quan các điểm du lịch nổi tiếng của Đà Nẵng và các di sản văn hóa thế giới như phố cổ Hội An, khu di tích Mỹ Sơn, cố đô Huế, Khách sạn Rosamia Đà Nẵng sẽ chính thức đi vào hoạt động từ ngày 5/12/2018.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (6, N'Suncosy Central Phu Quoc Resort', N'47/8 Tran Hung Dao, Duong Dong, Phu Quoc Island, Vietnam', 224114972, N'KS6.PNG', N'Được thiết kế cho cả các chuyến du lịch nghỉ ngơi và công tác, Lavita Hotel tọa lạc tại vị trí lí tưởng ở Dương Đông; một trong những khu vực phổ biến nhất của thành phố. Chỉ cách trung tâm thành phố khoảng 0 km và bạn có thể đến sân bay trong vòng 20 phút. Khách sạn hiện đại này nằm trong khu lân cận với các địa điểm tham quan nổi tiếng của thành phố như Trung tâm Lặn PADI Vietnam Explore, Vietnam Explorer, Chùa Sùng Hưng.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (7, N'Elios Hotel', N'43 Trương Định - Quận 3 - Quận 3 - Hồ Chí Minh', 651733710, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (8, N'Alagon Central Hotel & Spa', N'233 Phạm Ngũ Lão - Quận 1 - Hồ Chí Minh', 225665996, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (9, N'Harmony Saigon Hotel & Spa', N'14 – 16 Lê Lai - Quận 1 - Hồ Chí Minh', 455924806, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (10, N'Ruby Star 2 Hotel', N'122F-122F1 Bùi Thị Xuân - Quận 1 - Hồ Chí Minh', 223620796, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (11, N'Dragon Palace II Hotel', N'89 Cao Thắng - Quận 3 - Hồ Chí Minh', 259889854, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (12, N'Boss Palace Hotel', N'306-308 Nguyễn Thiện Thuật - Quận 3 - Hồ Chí Minh', 240802197, NULL, NULL)
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (13, N'Khách sạn FLC Luxury Quy Nhơn', N'2 Nguyễn Huệ -  Quy Nhơn', 86430653, N'KS13.JPG', N'Ấn tượng đầu tiên trong hành trình ra đảo chắc hẳn bạn sẽ bị thu hút bởi màu nước biển trong veo, xanh ngắt. Nằm giữa biển trời mênh mông, rộng lớn, Hòn Sẹo sừng sững như con thuyền vượt cạn. Bao trùm cả hòn đảo là một màu ngát xanh của cây cối um tùm, vẫn còn vẹn nguyên nét đẹp hoang sơ, kì thú. Một trong những bãi đá xinh đẹp nhất có lẽ là bãi Đá Đẻ - tập hợp vô vàn những đá với nhiều màu sắc khác nhau, quyến rũ, độc đáo, lạ thường.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (14, N'Mercure Sydney', N'Nước Úc', 98524622, N'KS14.JPG', N'Được tân trang lại vào năm 2020, Mercure Sydney cung cấp các phòng hiện đại, rộng rãi và tràn ngập ánh sáng với phòng tắm đã được tân trang lại, cổng USB cạnh giường, vòi sen và không gian làm việc chuyên dụng. Một số phòng có tầm nhìn ra quang cảnh thành phố hoặc ban công.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (15, N'Nine Tree Premier Hotel Myeongdong 2', N'Seoul', 6582465, N'KS15.JPG', N'Nằm ở vị trí thuận tiện cách Ga Tàu điện ngầm Euljiro 3-Ga (Tuyến 2 và 3) 250 m, Nine Tree Premier Hotel Myeongdong 2 có nhà hàng tự chọn trong khuôn viên, quầy bar và trung tâm thể dục. Khu Myeongdong nhộn nhịp cách đó 500 m.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (16, N'Sinner Paris', N'Paris', 6846262, N'KS16.JPG', N'Sinner Paris cung cấp chỗ ở 5 sao không điển hình nằm ở quận Marais thời trang và trung tâm của Paris. Được trang trí bằng kính màu và đèn lồng, khách sạn mang đến một bầu không khí thân mật. Du khách có thể tận hưởng hồ bơi lấy cảm hứng từ Hy Lạp và La Mã trong spa cũng như các liệu pháp khác.')
INSERT [dbo].[KHACHSAN] ([MaKS], [TenKS], [DiaChi], [SDT], [HinhAnh], [MoTa]) VALUES (17, N'Holiday Inn Toronto Downtown Centre', N'Canada', 6425246, N'KS17.JPG', N'Thành phố Toronto là địa điểm thu hút khách đến thăm đầu tiên trong hành trình du lịch Canada. Đến với thành phố hiện đại này có hàng ngàn nhà nghỉ, khách sạn, homestay, khu nghỉ dưỡng cao cấp,…đa dạng và phong phú phù hợp ngân sách để bạn lựa chọn. Cũng chính vì sự đa dạng đó, để chọn lựa được những khách sạn, nhà nghỉ thích hợp quả là một quyết định khó khăn. Đây chính là lý do Hotelservice247 đưa ra top 3 khách sạn ở Toronto vừa có dịch vụ tốt, lại sạch đẹp, giá rẻ giúp bạn tận hưởng chuyến du lịch lý tưởng, tiết kiệm nhất.')
SET IDENTITY_INSERT [dbo].[KHACHSAN] OFF
SET IDENTITY_INSERT [dbo].[MIEN] ON 

INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (1, N'Đông Bắc Bộ', N'DongBacBo.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (2, N'Tây Nguyên', N'TayNguyen.PNG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (3, N'Đồng bằng sông Cửu Long', N'DBSCL.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (4, N'Nam Trung Bộ', N'NamTrungBo.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (5, N'Đông Nam Bộ', N'DongNamBo.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (7, N'Đồng bằng sông Hồng', N'DBSH.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (8, N'Tây Bắc Bộ', N'TayBacBo.JPG')
INSERT [dbo].[MIEN] ([MaMien], [TenMien], [HinhAnh]) VALUES (9, N'Bắc Trung Bộ', N'BacTrungBo.JPG')
SET IDENTITY_INSERT [dbo].[MIEN] OFF
SET IDENTITY_INSERT [dbo].[PHUONGTIEN] ON 

INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (1, N'Máy Bay', N'VIP', N'maybaythuong.JPG', N'Hạng Thương gia

Trải nghiệm dịch vụ và công nghệ tân tiến khi bay hạng Thương Gia cùng Vietnam Airlines. Giờ đây hành khách có thể tận hưởng một chuyến bay đầy cảm hứng trên mọi khía cạnh.')
INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (2, N'Tàu Hỏa', N'VIP', N'tauhoavip.JPG', N'Thay vì loại khoang 4-6 giường như thường lệ, hành khách đi tàu hỏa sẽ có thêm trải nghiệm trên khoang tàu mới chỉ có 2 giường rộng rãi. Công ty CP Vận tải Đường sắt Hà Nội hy vọng với việc đưa các toa xe chất lượng cao vào vận dụng sẽ đem đến cho hành khách sự thoải mái, hài lòng và tiếp tục lựa chọn tàu hỏa là phương tiện đi lại.')
INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (3, N'Tàu Hỏa', N'Thường', N'tauhoathuong.JPG', N'Vé tàu hiện nay không chỉ cung cấp tại các ga tàu mà còn phân bổ đến các đại lý, cung cấp hình thức vé điện tử đa dạng để mọi hành khách đều có thể mua vé dễ dàng hơn ở bất lý nơi đâu mà không cần nhọc công di chuyển. ')
INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (4, N'Máy Bay', N'VIP', N'maybay1.JPG', N'Cùng Phú Quốc đón chào du khách, Vietjet khai thác loạt đường bay kết nối các điểm đến trong nước tới Đảo Ngọc xinh đẹp.')
INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (5, N'XeKhach', N'VIP', N'xekhachvip.JPG', N'Xe giường nằm cao cấp limousine hay còn gọi là xe cabin hay xe giường nằm cabin riêng, xe giường nằm VIP đã và đang đánh những dấu mốc thành công trong ngành vận tải hành khách Việt Nam. Trước đây, limousine được nhắc đến để chỉ một dòng xe hạng sang, thân dài có vách ngăn riêng biệt giữa tài xế và người ngồi phía sau với đầy đủ mọi tiện ích sang chảnh mà chỉ có giới thượng lưu mới có thể sở hữu và sử dụng.')
INSERT [dbo].[PHUONGTIEN] ([MaPT], [TenPT], [ghichu], [HinhAnh], [MoTa]) VALUES (6, N'Xe Khách', N'Thường', N'xekhachthuong.JPG', N'Để thuận lợi cho mọi người tìm xe khách tuyến Thường Xuân – Hà Nội, Thường Xuân Online có bài tổng hợp các chuyến xe và thông tin liên lạc các nhà xe để mọi người có thể dễ dàng tìm xe.')
SET IDENTITY_INSERT [dbo].[PHUONGTIEN] OFF
SET IDENTITY_INSERT [dbo].[TOUR] ON 

INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (1, N'Tour Miền Tây 3N2D', 3, 1, 1, 8, N'TourTN1.PNG', 2300000.0000, 30, 1, 1, N'Tour du lịch miền tây 2 ngày 1 đêm đưa quý khách khám Miền Tây Nam Bộ Việt Nam - Đồng bằng sông Cửu Long với những nét văn hóa độc đáo của miền tây sông nước, miệt vườn. Hành trình sẽ đưa quý khách về Mỹ Tho – Bến Tre vùng đất tứ linh Long, Lân, Quy, Phụng. Quý khách tham gia các hoạt động dân dã như:  Du thuyền trên sông nước ngắm cảnh miệt vườn, tham quan những vườn trái cây, thưởng thức trà mật ong, đi đò chèo, nghe đờn ca tài tử Nam Bộ, nghe giới thiệu về vùng đất tứ linh Long, Lân, Quy, phụng, và lịch sử hình thành các cù lao trên sông.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (2, N'Tour Limousine Tam Bình 3N3D', 3, 2, 1, 12, N'TourTN2.PNG', 5190000.0000, 40, 2, 2, N' bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Cam Ranh lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ - Đảo Bình Ba ,Biển Bình Tiên, đảo Bình Hưng, TP.Cam Ranh, tỉnh Khánh Hòa được ví như một Maldives thu nhỏ của Việt Nam.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (3, N'Tour Cao Cấp Phan Thiết 2N1D', 2, 2, 1, 14, N'TourTN3.PNG', 6990000.0000, 25, 3, 3, N'Tất cả hình ảnh tưởng chừng chỉ tồn tại ở những quốc gia  Âu Mỹ xa xôi được tái hiện tại RD Wine Castle.Hương vị vang hảo hạng của vùng Napa Valley nước Mỹ được giữ vẹn nguyên trong từng giọt rượu, dành để đón tiếp những vị khách sành điệu và đầy đam mê. Du khách có thể lắc đều ly rượu để vang ngấm với khí và tỏa hương thơm, vị giác hội tụ đủ vị ngọt, chua, mặn và béo của những dòng Chardonnay, Sauvignon, Cabernet Sauvignon. Hãy tưởng tượng, giữa một buổi tiệc, mọi người cùng  nâng cao ly vang trong không khí đầy tình hữu nghị giao lưu giữa những người bạn đến từ bốn phương ')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (4, N'Tour Côn Đảo 3N2D', 3, 1, 1, 1, N'TourTN4.PNG', 5690000.0000, 50, 4, 4, N'Ngắm cảnh bãi Đá Trắng, Mũi Cá Mập. Viếng bia tưởng niệm cuộc vượt ngục vũ trang lớn nhất Côn Đảo. Ngắm cảnh đỉnh Tình Yêu (hòn Bà) và Bãi Nhát – là bãi biển được cấu tạo từ đá cuội với bãi cát trắng tinh lộ ra khi thủy triều xuống.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (5, N'Tour Miền Trung 3N2D', 3, 1, 1, 16, N'TourTN5.PNG', 2650000.0000, 35, 5, 5, N'Tour du lịch Miền Trung 3 ngày 2 đêm khám phá Huế, Hội An và Đà Nẵng tham quan các di sản trên mảnh đất miền Trung đầy nắng gió. Tham gia Tour Miền Trung, quý khách sẽ cảm nhận sức hút mê hoặc của vùng đất địa linh nhân kiệt này và được chiêm ngưỡng những thắng cảnh nổi tiếng. Hòa mình chốn bồng lai tiên cảnh Bà Nà, tận hưởng vẻ đẹp phố cổ Hội An trầm lắng cổ kính ở Cố đô Huế thơ mộng như tranh vẽ bên bờ sông Hương thơ mộng.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (6, N'Tour Miền Bắc 4N3D', 4, 1, 1, 13, N'TourTN6.PNG', 3090000.0000, 60, 6, 6, N'Khu du lịch Tràng An, chùa Bái Đính,... đều thuộc quần thể danh thắng Tràng An là di sản văn hóa thế giới được UNESCO công nhận năm 2014. Tràng An gồm hệ thống dãy núi đá vôi với hàng triệu năm tuổi, qua thời gian dài phong hóa đã hình thành các thung lũng, hang động, hồ đầm, hệ sinh thái rừng ngập nước đặc sắc. Chùa Bái Đính là quần thể chùa được biết đến với nhiều kỷ lục châu Á và Việt Nam, như chùa có diện tích lớn nhất, có tượng phật bằng đồng dát vàng to nhất và có hành lang tượng La Hán dài nhất Đông Nam Á. Nơi đây cũng là nơi đầu tiên tổ chức Đại lễ nghinh cung Xá lợi Phật từ Ấn Độ về Việt Nam.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (7, N'Tour Đà Nẵng 4N3D', 4, 2, 1, 17, N'TourTN7.PNG', 2090000.0000, 70, 1, 2, N'Đến Đà Nẵng, du khách sẽ được hoà mình vào làn nước mát lạnh của biển trong những ngày hè oi bức, được tham gia vào các trò chơi thể thao trên biển,… Đến Đà Nẵng để từ đó xuất phát đến những điểm tham quan du lịch nổi tiếng: Phố cổ đèn lồng Hội An, Bà Nà 4 mùa Xuân Hạ Thu Đông, viếng chùa Linh Ứng, viếng Ngũ Hành Sơn, vọng về Thành phố từ Bán đảo Sơn Trà... ')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (8, N'Tour Limousine Ninh Chữ 2N2D', 2, 2, 1, 12, N'TourTN8.PNG', 1500000.0000, 65, 3, 4, N'Trùng Sơn Cổ Tự, Chùa tọa lạc tại khu di tích lịch sử Núi đá Chồng thị trấn Khánh Hải, huyện Ninh Hải được coi là địa linh của tỉnh Ninh Thuận. Cách trung tâm TP. Phan Rang – Ninh Thuận chưa đầy 5km về phía đông Bắc và cách biển Ninh Chữ chưa đầy 1km, nơi đây sở hữu một vẻ đẹp hữu tình mà không phải địa danh nào cũng có được khi tọa lạc trên vị trí đặc biệt độc đáo là đồi cao và dựa lưng vào sườn núi.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (9, N'Tour Limousine Phú Yên 3N3D', 3, 1, 1, 18, N'TourTN9.PNG', 2678000.0000, 50, 5, 6, N'Đến Ninh Chữ, sau đó đoàn dùng điểm tâm sáng và khởi hành tham quan HANG RÁI - là một trong những điểm nhấn khi du lịch Vĩnh Hy, Hang Rái mang lại cảm giác tuyệt hảo cho du khách khi được lạc vào xứ sở của câu chuyện cổ tích bởi vẻ đẹp gần như hoàn hảo. Từ những hòn đá nhiều hình thù xếp chồng lên nhau tạo ra vô số hang động lớn nhỏ đẹp mắt, bãi Hang Rái ẩn hiện trong làn nước xanh của biển thay đổi theo ánh mặt trời chính là cơ hội cho những ai yêu thích nghệ thuật được thỏa mãn niềm đam mê của mình.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (11, N'Tour Limousine Long Hải: 2N1D', 2, 2, 1, 1, N'TourTN11.PNG', 1798000.0000, 80, 2, 4, N'Tận hưởng bầu không khí mát mẻ của miền biển, tham gia nhiều hoạt động thú vị với Tour Long Hải - Bình Châu – La Gi – Phan Thiết Resort 4* 2N1Đ. Dọc đường đi, bạn sẽ có cơ hội ngắm nhìn cảnh sắc tuyệt đẹp của nhiều địa danh nổi tiếng tại Long Hải. Chuyến hành trình còn đưa bạn đến với Khu du lịch sinh thái Bình Châu, thỏa thích tắm nước khoáng nóng, ngâm chân, luộc trứng gà; dừng chân tại biển Hàm Thuận Nam Phan Thiết, chiêm ngưỡng cảnh đẹp của Mũi Kê Gà, tham quan Ngọn Hải Đăng bằng thuyền thúng hoặc cano. Ngoài ra, bạn con được thỏa thích tắm biển, chụp hình, thưởng thức hải sản tươi ngon, mua các loại đặc sản của Bình Thuận. Cùng iVIVU khám phá ngay hôm nay ! ')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (12, N'Tour Ninh Chữ 3N2D', 3, 1, 1, 12, N'TourTN12.PNG', 45780000.0000, 30, 6, 1, N'Dừng chân tham quan tại một cơ sở bán những đặc sản của Phan Rang, thưởng thức rượu mật nho và tỏi Phan Rang. Ghé tham quan làng gốm Bàu Trúc, một trong những làng nghề gốm nổi tiếng của người Chăm, tại đây quí khách sẽ được thưởng thức tài nghệ của những nghệ nhân chế tác gốm và có thể mua những sản phẩm gốm tại đây. Tiếp tục hành trình về đến Phan Thiết.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (13, N'Tour SaPa 3N3D', 3, 1, 1, 13, N'TourTN13.JPG', 68000000.0000, 40, 7, 1, N'Nằm phía Tây Bắc tổ quốc, Sa Pa ẩn chứa bao điều kỳ diệu của cảnh sắc thiên nhiên, con người. Thị trấn trong mây hấp dẫn du khách với quang cảnh núi non hùng vĩ cùng trải nghiệm độc đáo với cuộc sống của đồng bào dân tộc thiểu số.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (14, N'Tour Huế 3N2D', 3, 7, 1, 17, N'TourTN14.JPG', 50400000.0000, 50, 4, 2, N'Thành phố Huế không chỉ có phong cảnh hữu tình, đậm chất thơ, mà còn mang trong mình một bề dày văn hóa, lịch sử đậm nét, là địa phương duy nhất có tới 5 Di sản thế giới được công nhận bởi UNESCO. Thời gian 3 ngày 2 đêm tại Cố đô Huế là đủ để bạn tận mắt chiêm ngưỡng những cung điện, đền chùa cổ kính, trải nghiệm cuộc sống yên bình, chậm rãi, gặp gỡ những con người dịu dàng, đôn hậu,... Hãy bớt chút thời gian đến với xứ Huế mộng mơ thôi nào!')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (15, N'Tour Quy Nhơn 2N1D', 2, 4, 1, 16, N'TourTN15.JPG', 63000000.0000, 60, 13, 1, N'Eo Gió, Quy Nhơn đẹp như bản tình ca của gió, đá và nước. Một eo biển hút gió, sóng vỗ rì rào thay nhau vờn chân núi. Eo Gió kì vĩ bởi những rặng núi cao và có hình thù kì lạ vươn ra biển lớn, ôm trọn một vòng tạo thành một eo biển hút gió. Thời gian chơi đẹp nhất ở Eo gió là từ tháng 4 đến tháng 9, đây là khoảng thời gian không có bão và lòng vịnh kín gió.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (16, N'Du lịch Úc mùa Thu ', 6, 2, 6, 19, N'TourNN3.JPG', 750000000.0000, 35, 14, 1, N'Du Lịch Úc mùa Thu là cơ hội để chiêm ngưỡng khung cảnh mùa thu nhẹ nhàng bao phủ lên khắp mọi nẻo đường của nước Úc. Cảm nhận không khí yên bình và mát mẻ của cảnh sắc thiên nhiên và tham gia các hoạt động thú vị của mùa này. Hãy cùng Du lịch Việt trải nghiệm tour Úc mùa Thu 2020 với những hành trình khám phá.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (17, N'Du lịch Hàn Quốc - Seoul', 5, 3, 1, 20, N'TourNN4.JPG', 650000000.0000, 30, 15, 1, N'Du lịch Hàn Quốc- Du lịch Hàn Quốc mùa hoa Anh Đào tiết trời xuân mát mẻ, hoa nở rợp trời, du khách lại đổ về đất nước Hàn Quốc xinh đẹp. Lên một chuyến dã ngoại dưới tán hoa anh đào, thưởng thức ly trà ấm nóng, chụp ảnh check-in thì tuyệt của tuyệt.')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (18, N'Du lịch Châu Âu - Pháp', 7, 4, 2, 21, N'TourNN5.JPG', 800000000.0000, 40, 16, 1, N'Du lịch Châu Âu mùa Xuân liên tuyến Pháp - Luxembourg - Bỉ - Hà Lan - Đức để khám phá một Châu Âu đẹp rực rỡ khi mùa xuân đến. Sắc Xuân ở Châu Âu và những lễ hội hoa chính là điểm nhấn thu hút đông đảo du khách thập phương. Trong đó, lễ hội hoa Keukenhof ở Hà Lan là một trong những vườn hoa xuân đẹp nhất thế giới. Bạn có muốn biết chủ đề của lễ hội hoa Keukenhof năm nay là gì không ? Hãy cùngDu Lịch Việt khám phá điều này trong tour du lịch Pháp mùa xuân này nhé..')
INSERT [dbo].[TOUR] ([MaTour], [TenTour], [SoNgay], [MaMien], [MaChauLuc], [MaDD], [HinhAnh], [Gia], [SoLuongKhach], [MaKS], [MaPT], [MoTa]) VALUES (19, N'Du lịch Canada', 8, 1, 4, 22, N'TourNN6.JPG', 750000000.0000, 25, 17, 1, N'Du lịch Canada mùa Đông đến thăm đất nước có khí hậu ôn đới rộng lớn thứ hai thế giới nằm ở Bắc Mỹ. Nếu có một lần đặt chân lên mảnh đất Canada rộng lớn và kì vĩ này, bạn sẽ không khỏi choáng ngợp và bị hớp hồn bởi thiên nhiên quyến rũ. Cảnh sắc lộng lẫy của những hàng cây phong trong mùa thay lá đã trở thành nét đặc trưng, cuốn hút bao du khách. Bạn không thể nào thờ ơ trước một thành phố Vancouver, thành phố được mệnh danh là “Thành phố của thiên nhiên”, hội tụ của nhiều điểm du lịch với các danh lam thắng cảnh đặc sắc, các hoạt động văn hóa, vui chơi, giải trí được tổ chức quanh năm.')
SET IDENTITY_INSERT [dbo].[TOUR] OFF
ALTER TABLE [dbo].[CTHinhTour]  WITH CHECK ADD  CONSTRAINT [FK_CTHinhTour_TOUR] FOREIGN KEY([MaTour])
REFERENCES [dbo].[TOUR] ([MaTour])
GO
ALTER TABLE [dbo].[CTHinhTour] CHECK CONSTRAINT [FK_CTHinhTour_TOUR]
GO
ALTER TABLE [dbo].[DATTOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DATTOUR] CHECK CONSTRAINT [FK_TOUR_KHACHHANG]
GO
ALTER TABLE [dbo].[DATTOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_VOUCHER] FOREIGN KEY([MaHDV])
REFERENCES [dbo].[HUONGDANVIEN] ([MaHDV])
GO
ALTER TABLE [dbo].[DATTOUR] CHECK CONSTRAINT [FK_TOUR_VOUCHER]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_ChauLuc] FOREIGN KEY([MaChauLuc])
REFERENCES [dbo].[ChauLuc] ([MaChauLuc])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_ChauLuc]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_DIADIEM] FOREIGN KEY([MaDD])
REFERENCES [dbo].[DIEMDEN] ([MaDD])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_DIADIEM]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_KHACHSAN] FOREIGN KEY([MaKS])
REFERENCES [dbo].[KHACHSAN] ([MaKS])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_KHACHSAN]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_MIEN] FOREIGN KEY([MaMien])
REFERENCES [dbo].[MIEN] ([MaMien])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_MIEN]
GO
ALTER TABLE [dbo].[TOUR]  WITH CHECK ADD  CONSTRAINT [FK_TOUR_PHUONGTIEN] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PHUONGTIEN] ([MaPT])
GO
ALTER TABLE [dbo].[TOUR] CHECK CONSTRAINT [FK_TOUR_PHUONGTIEN]
GO
