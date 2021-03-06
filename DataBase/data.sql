USE [master]
GO
/****** Object:  Database [Student]    Script Date: 12/23/2014 19:45:22 ******/
CREATE DATABASE [Student] ON  PRIMARY 
( NAME = N'Student', FILENAME = N'E:\Student.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Student_log', FILENAME = N'E:\Student_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Student] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Student] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Student] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Student] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Student] SET ARITHABORT OFF
GO
ALTER DATABASE [Student] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Student] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Student] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Student] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Student] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Student] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Student] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Student] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Student] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Student] SET  DISABLE_BROKER
GO
ALTER DATABASE [Student] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Student] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Student] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Student] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Student] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Student] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Student] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Student] SET  READ_WRITE
GO
ALTER DATABASE [Student] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Student] SET  MULTI_USER
GO
ALTER DATABASE [Student] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Student] SET DB_CHAINING OFF
GO
USE [Student]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[fldTenDangNhap] [nvarchar](50) NOT NULL,
	[fldMatKhau] [nvarchar](20) NOT NULL,
	[fldHoTen] [nvarchar](50) NULL,
	[fldEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblDangNhap] PRIMARY KEY CLUSTERED 
(
	[fldTenDangNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDangNhap] ([fldTenDangNhap], [fldMatKhau], [fldHoTen], [fldEmail]) VALUES (N'admin', N'123456', N'duong', N'duong@gmail.com')
INSERT [dbo].[tblDangNhap] ([fldTenDangNhap], [fldMatKhau], [fldHoTen], [fldEmail]) VALUES (N'duong', N'duong', N'duong', N'duong')
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblKhoa] PRIMARY KEY CLUSTERED 
(
	[fldMaKhoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'0973654090')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'KT', N'Kế Toán', N'0973654091')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'QTKD', N'Quản Trị Kinh Doanh', N'0145674367')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng', N'0167853906')
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenMH] [nvarchar](20) NOT NULL,
	[fldSoTrinh] [int] NULL,
	[fldHinhThucThi] [nvarchar](20) NULL,
	[fldHocKy] [int] NULL,
	[fldPhongHoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[fldMaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH001', N'JavaBasic', 2, N'Thi Thực Hành', 3, N'B305')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH002', N'.NET', 3, N'Thi Thực Hành', 5, N'B307')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH003', N'Tiếng Anh', 1, N'Thi Viết', 1, N'B305')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH006', N'LTTT', 4, N'Thi Thực Hành', 3, N'B209')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH007', N'Thương mại điện tử', 4, N'Thực Hành', 3, N'B309')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'UML', N'công cụ UML', 5, N'Thi Vấn Đáp', 4, N'302')
/****** Object:  Table [dbo].[tblLop]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldTenLop] [nvarchar](50) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldKhoaHoc] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[fldMaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN1', N'Công Nghệ 1', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN2', N'Công nghệ 2', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN3', N'Công Nghệ 3', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN4', N'Công nghệ 4', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN5', N'Công nghệ 5', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN6', N'Công nghệ 6', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN7', N'Công Nghệ 7', N'CNTT', N'2010 - 2012')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'D7CNTT15', N'công nghệ thông tin 15', N'CNTT', N'2012-2014')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'KT1', N'Kế toán tổng hợp', N'KT', N'2009 - 2013')
/****** Object:  Table [dbo].[tblGiangVien]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiangVien](
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldHoTenGV] [nvarchar](70) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldNgaySinh] [datetime] NULL,
	[fldGioiTinh] [bit] NULL,
	[fldEmail] [nvarchar](50) NULL,
	[fldDiaChi] [nvarchar](70) NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblGiangVien] PRIMARY KEY CLUSTERED 
(
	[fldMaGV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV001', N'Đỗ Thị Tâm', N'MH001', CAST(0x00006F4900000000 AS DateTime), 0, N'tamdothigmail.com', N'Hà Nôi', N'0981234324')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV002', N'Nguyễn Văn Hùng', N'MH002', CAST(0x00007CF500000000 AS DateTime), 1, N'bnv@gmail.com', N'Hà Nội', N'0973654090')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV003', N'Nguyễn Văn C', N'MH002', CAST(0x000075D600000000 AS DateTime), 1, N'cnv@gmail.com', N'Hà Nội', N'0973678543')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV004', N'Đỗ Thị Tâm', N'MH002', CAST(0x0000705D00000000 AS DateTime), 0, N'dtv@gmail.com', N'Hà nôi', N'0973654321')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV006', N'Nguyễn Thị Tâm', N'MH002', CAST(0x0000751300000000 AS DateTime), 0, N'tnt@gmail.com', N'Hà Nam', N'098325123')
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldHoTen] [nvarchar](70) NOT NULL,
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldHeDaoTao] [nvarchar](50) NOT NULL,
	[fldNgaySinh] [datetime] NULL,
	[fldDiaChi] [nvarchar](100) NULL,
	[fldGioiTinh] [bit] NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'CN01', N'Nguyễn Đình Minh', N'CN1', N'liên thông', CAST(0x0000801500000000 AS DateTime), N'hà nôi', 1, N'97997979797')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'CN02', N'Đậu Văn Thái', N'CN2', N'chính qui', CAST(0x00007F3900000000 AS DateTime), N'hà nôi', 1, N'8768687')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'DL01', N'Nguyễn Hoàng Dương', N'D7CNTT15', N'chính qui', CAST(0x00007F3F00000000 AS DateTime), N'hà nôi', 1, N'01653293254')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'DL02', N'Hồ Văn Tuấn', N'D7CNTT15', N'chính qui', CAST(0x000084ED00000000 AS DateTime), N'10 hà nôi', 1, N'987654748')
/****** Object:  Table [dbo].[tblDiem]    Script Date: 12/23/2014 19:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldLanThi] [tinyint] NOT NULL,
	[fldHeSo] [tinyint] NULL,
	[fldDiem] [float] NULL,
	[fldTrangThai] [bit] NULL,
 CONSTRAINT [PK_tblDiem] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC,
	[fldMaMH] ASC,
	[fldLanThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'CN01', N'UML', 1, 1, 4, 0)
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'CN01', N'UML', 2, 1, 6, 1)
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'DL01', N'MH001', 1, 1, 8, 1)
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'DL01', N'UML', 1, 1, 9, 1)
/****** Object:  ForeignKey [FK_tblLop_tblKhoa]    Script Date: 12/23/2014 19:45:24 ******/
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD  CONSTRAINT [FK_tblLop_tblKhoa] FOREIGN KEY([fldMaKhoa])
REFERENCES [dbo].[tblKhoa] ([fldMaKhoa])
GO
ALTER TABLE [dbo].[tblLop] CHECK CONSTRAINT [FK_tblLop_tblKhoa]
GO
/****** Object:  ForeignKey [FK_tblGiangVien_tblMonHoc]    Script Date: 12/23/2014 19:45:24 ******/
ALTER TABLE [dbo].[tblGiangVien]  WITH CHECK ADD  CONSTRAINT [FK_tblGiangVien_tblMonHoc] FOREIGN KEY([fldMaMH])
REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
GO
ALTER TABLE [dbo].[tblGiangVien] CHECK CONSTRAINT [FK_tblGiangVien_tblMonHoc]
GO
/****** Object:  ForeignKey [FK_tblSinhVien_tblLop]    Script Date: 12/23/2014 19:45:24 ******/
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_tblSinhVien_tblLop] FOREIGN KEY([fldMaLop])
REFERENCES [dbo].[tblLop] ([fldMaLop])
GO
ALTER TABLE [dbo].[tblSinhVien] CHECK CONSTRAINT [FK_tblSinhVien_tblLop]
GO
/****** Object:  ForeignKey [FK_tblDiem_tblMonHoc]    Script Date: 12/23/2014 19:45:24 ******/
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblMonHoc] FOREIGN KEY([fldMaMH])
REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblMonHoc]
GO
/****** Object:  ForeignKey [FK_tblDiem_tblSinhVien]    Script Date: 12/23/2014 19:45:24 ******/
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien] FOREIGN KEY([fldMaSV])
REFERENCES [dbo].[tblSinhVien] ([fldMaSV])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien]
GO
