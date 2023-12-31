USE [SachOnline]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/17/2023 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
	[AuthorEmail] [nvarchar](50) NULL,
	[AuthorAddress] [nvarchar](150) NULL,
	[Tieusu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Images] [varchar](200) NULL,
	[CategoryID] [int] NOT NULL,
	[Description] [ntext] NULL,
	[Published] [datetime] NULL,
	[ViewCount] [int] NULL,
	[NhaXuatBanID] [int] NOT NULL,
 CONSTRAINT [PK__Book__3DE0C227FA6DEE7F] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDATHANG]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDATHANG](
	[MaDonHang] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](9, 2) NULL,
 CONSTRAINT [PK_CHITIETDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [int] NULL,
	[Ngaydat] [smalldatetime] NULL,
	[Ngaygiao] [smalldatetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[DiachiKH] [nvarchar](max) NULL,
	[DienThoaiKH] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[NhaXuatBanID] [int] IDENTITY(1,1) NOT NULL,
	[NhaXuatBanName] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaXuatBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIETSACH]    Script Date: 10/17/2023 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIETSACH](
	[AuthorID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Vaitro] [nvarchar](50) NULL,
	[Vitri] [nvarchar](50) NULL,
 CONSTRAINT [PK_VIETSACH] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC,
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (2, N'Phạm Công Anh', N'vinh@gmailc.om', N'197 Trần Hưng Đạo', NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (3, N'Nguyễn Thế Giang', N'giangnt@gmail.com', N'179 Chánh hưng - F.4 - Q.8 Tp.HCM', NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (4, N'Lê Việt Nhân', N'nhanvl@gmail.com', N'45 Lý Thái Tổ-F2.Q.3 Tp.HCM', NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (5, N'Hồng Phúc', N'hong@gmail.com', N'46 Lý Thái Tổ-F2.Q.3 Tp.HCM', NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (6, N'Ks.Phạm Quang Huy', N'huyq@gmail.com', N'47 Lý Thái Tổ-F2.Q.3 Tp.HCM', NULL)
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [AuthorEmail], [AuthorAddress], [Tieusu]) VALUES (9, N'Quách Tuấn Ngọc', N'ngocqt@gmail.com', N'48 Lý Thái Tổ-F2.Q.3 Tp.HCM', NULL)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (1, N'Tin học cơ bản', 2, CAST(26000 AS Decimal(18, 0)), N'tinhoccoban.png', 2, N'Nội dung của cuốn: Tin Học Cơ Bản Windows XP gồm có 7 chương:
Chương 1: Một số vấn đề cơ bản. 
Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong My Computer và Windows Explorer. 
Chương 3: Các thao tác trong windows XP. 
Chương 4: Các thiết lập trong Windows XP. 
Chương 5: Bảo trì máy tính. 
Chương 6: Các phím tắt 
Chương 7: Hỏi và đáp các thắc mắc.
Xin trân trọng giới thiệu cuốn sách cùng bạn', CAST(N'2023-09-25T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (2, N'Tự học nhanh', 2, CAST(12000 AS Decimal(18, 0)), N'tuhocnhanh.png', 3, N'Cuốn sách này gồm 3 phần sau:
Phần 1: Xử lý văn bản trong Microsoft Office Word 2007. 
Phần 2: Xử lý bảng tính trong Microsoft Office Excel 2007. 
Phần 3: Quản lý cơ sở dữ liệu trong Microsoft Office Access 2007.
Xin trân trọng giới thiệu cùng các bạn.', CAST(N'2023-09-24T00:00:00.000' AS DateTime), 25, 1)
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (3, N'Lấp lánh', 3, CAST(11500 AS Decimal(18, 0)), N'3.png', 3, N'Cuốn sách "Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0" này giới thiệu các nội dung sau:
Chương 1: Căn bản về cơ sở dữ liệu.
Chương 2: Các bộ kết nối và tương tác dữ liệu.
Chương 3: Bộ chứa dữ liệu DataSet.
Chương 4: Bộ điều hợp dữ liệu DataAdapter.
Chương 5: Sử dụng các điều khiển ràng buộc dữ liệu.
Chương 6: Tạo báo cáo với Crystal Report.
Chương 7: ADO.NET và XML.
Xin trân trọng giới thiệu cùng các bạn.', CAST(N'2023-09-23T00:00:00.000' AS DateTime), 23, 2)
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (4, N'Tự học tin học', 4, CAST(20000 AS Decimal(18, 0)), N'tuhoctinhoc.png', 4, N'"Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu" sẽ cung cấp kỹ thuật và hướng dẫn bạn:
Tự học xây dựng ứng dụng Web quản lý CSDL toàn diện với ADO.NET 2.0 và ASP.NET. 
Khai thác các đối tượng và nguồn dữ liệu dành cho WebForm. 
Sử dụng các điều khiển dữ liệu đặc thù dành riêng cho ASP.NET và Web. 
Làm quen với những khái niệm xử lý dữ liệu hoàn toàn mới. 
Ràng buộc dữ liệu với các thành phần giao diện Web Forms. 
Thiết kế ứng dụng Web "Quản lý CD Shop" trực quan và thực tế. 
Cung cấp một kiến thức hoàn chỉnh về Web cho các bạn yêu thích ngôn ngữ Visual Basic và .NET Framework.
Sách có kèm theo CD-ROM bài tập.
Xin trân trọng giới thiệu cùng các bạn.', CAST(N'2023-09-22T00:00:00.000' AS DateTime), 0, 3)
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (5, N'Tin học văn phòng', 2, CAST(21000 AS Decimal(18, 0)), N'tinhocvanphong.png', 3, N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu.', CAST(N'2023-09-21T00:00:00.000' AS DateTime), 16, 4)
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [Price], [Images], [CategoryID], [Description], [Published], [ViewCount], [NhaXuatBanID]) VALUES (6, N'Khám phá Window', 4, CAST(21000 AS Decimal(18, 0)), N'khampha.png', 2, N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn.', CAST(N'2023-09-20T00:00:00.000' AS DateTime), 65, 1)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Ngoại ngữ ')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Công nghệ thông tin')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Văn học')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Khoa học kỹ thuật')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Nông nghiệp')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Triết học-Chính trị')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Luật')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'Lịch sử, địa lý')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'Kinh tế')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Sách giáo khoa')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (11, N'Nghệ thuật sống')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[CHITIETDATHANG] ([MaDonHang], [BookID], [Soluong], [Dongia]) VALUES (1, 1, 1, CAST(26000.00 AS Decimal(9, 2)))
INSERT [dbo].[CHITIETDATHANG] ([MaDonHang], [BookID], [Soluong], [Dongia]) VALUES (1, 3, 2, CAST(11500.00 AS Decimal(9, 2)))
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1, 0, 1, CAST(N'2023-10-17T14:37:00' AS SmallDateTime), CAST(N'2023-10-19T00:00:00' AS SmallDateTime), 1002)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (3, N'Thái Gia Hân', N'Giahan', N'123', N'Thaigiahan2120@gmail.com', N'xã Tân Thạnh Tây, Củ Chi, TPHCM', N'0968124579', CAST(N'2003-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (1002, N'Nguyễn Thị Kim Quyên', N'kimquyen', N'123', N'2124802010@student.tdmu.edu.vn', N'xã Tân Thạnh Đông, Củ Chi, TPHCM', N'0965326000', CAST(N'2003-12-27T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (1003, N'Rose', N'Ro', N'123', N'Rose@gmail.com', N'TPHCM', N'0123456', CAST(N'1997-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (1004, N'meo', N'meo', N'123', N'asdf', N'afa', N'1234', CAST(N'2023-09-25T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (1005, N'kimquyen', N'quin', N'123', N'asdf', N'TPHCM', N'0123456', CAST(N'2023-09-25T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienThoaiKH], [Ngaysinh]) VALUES (1006, N'Quyen', N'quinn', N'123', N'quinn', N'tphcm', N'0968124156', CAST(N'2023-10-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (1, N'Nhà xuất bản Trẻ')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (2, N'NXB Thống kê')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (3, N'Kim Đồng')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (4, N'Đại học Quốc Gia')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (5, N'Văn hóa nghệ thuật')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (6, N'Văn hóa')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (7, N'Lao động - xã hội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [NhaXuatBanName]) VALUES (8, N'Khoa học & Ký Thuật')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF__Book__Published__3B75D760]  DEFAULT (getdate()) FOR [Published]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF__Book__ViewCount__3C69FB99]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_book_author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_book_author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_book_category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_book_category]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_Nhaxuatbanid] FOREIGN KEY([NhaXuatBanID])
REFERENCES [dbo].[NhaXuatBan] ([NhaXuatBanID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_Nhaxuatbanid]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATHANG_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CHITIETDATHANG_Book]
GO
ALTER TABLE [dbo].[CHITIETDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDATHANG] CHECK CONSTRAINT [FK_CHITIETDATHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD  CONSTRAINT [FK_VIETSACH_Author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[VIETSACH] CHECK CONSTRAINT [FK_VIETSACH_Author]
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD  CONSTRAINT [FK_VIETSACH_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[VIETSACH] CHECK CONSTRAINT [FK_VIETSACH_Book]
GO
