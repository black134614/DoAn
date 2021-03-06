USE [master]
GO
/****** Object:  Database [QuyPTKHCN]    Script Date: 11/16/2020 10:30:45 AM ******/
CREATE DATABASE [QuyPTKHCN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuyPTKHCN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuyPTKHCN.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuyPTKHCN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuyPTKHCN_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuyPTKHCN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuyPTKHCN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuyPTKHCN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuyPTKHCN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuyPTKHCN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuyPTKHCN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuyPTKHCN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuyPTKHCN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuyPTKHCN] SET  MULTI_USER 
GO
ALTER DATABASE [QuyPTKHCN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuyPTKHCN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuyPTKHCN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuyPTKHCN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuyPTKHCN] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuyPTKHCN]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Link] [nvarchar](1000) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenDe]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenDe](
	[ChuyenDeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[LinkFile] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChuyenDeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnhHoatDong]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhHoatDong](
	[HinhAnhHoatDongID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Name_Ext] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
 CONSTRAINT [PK__HinhAnhH__91FE693FEA2F6F71] PRIMARY KEY CLUSTERED 
(
	[HinhAnhHoatDongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienKetHuuIch]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienKetHuuIch](
	[LienKetHuuIchID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LienKetHuuIchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[NameLink] [nvarchar](200) NOT NULL,
	[Show] [bit] NOT NULL,
	[Positon] [int] NULL,
	[NguoiDungID] [int] NOT NULL,
 CONSTRAINT [PK__Menu__C99ED2501137B91C] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[NguoiDungID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[TenDV] [nvarchar](200) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[LoginName] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
	[image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NguoiDungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TabThongTin]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabThongTin](
	[TabThongTinID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Content] [nvarchar](500) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TabThongTinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[ThongBaoID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Detail] [nvarchar](max) NULL,
	[PostDate] [datetime] NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ThongBaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinWebSite]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinWebSite](
	[ThongTinWebSiteID] [int] IDENTITY(1,1) NOT NULL,
	[tenWebSite] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Fax] [nvarchar](250) NULL,
	[Email] [nvarchar](500) NULL,
	[ThongTinThem] [nvarchar](max) NULL,
	[NguoiDungID] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThongTinWebSiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinBai]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinBai](
	[TinBaiID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[TitleLink] [nvarchar](500) NULL,
	[Images] [nvarchar](500) NULL,
	[Description] [nvarchar](2000) NULL,
	[Detail] [nvarchar](max) NULL,
	[Duyet] [bit] NULL,
	[Xoa] [bit] NULL,
	[NgayDang] [datetime] NULL,
	[NguoiDungID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[TinNoiBat] [bit] NULL,
 CONSTRAINT [PK__TinBai__7E794334D3F8371E] PRIMARY KEY CLUSTERED 
(
	[TinBaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VanBan]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanBan](
	[VanBanID] [int] IDENTITY(1,1) NOT NULL,
	[SoHieu] [nvarchar](50) NULL,
	[NgayBanHanh] [date] NULL,
	[NgayHieuLuc] [date] NULL,
	[MoTa] [nvarchar](500) NULL,
	[CoQuanBH] [nvarchar](500) NULL,
	[link] [nvarchar](500) NULL,
	[NguoiDungID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VanBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Video]    Script Date: 11/16/2020 10:30:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Source] [nvarchar](100) NULL,
	[Time] [nvarchar](255) NULL,
	[Show] [bit] NULL,
	[NguoiDungID] [int] NULL,
 CONSTRAINT [PK__Video__BAE5124A6AB3C005] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Name], [Link], [Show], [NguoiDungID]) VALUES (2, N'banner trang chủ', N'\Img\System\Banner.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[ChuyenDe] ON 

INSERT [dbo].[ChuyenDe] ([ChuyenDeID], [Name], [LinkFile], [Show], [NguoiDungID]) VALUES (1, N'Định hướng phát triển', N'<embed class="vh-100" src="FilesUpload/Du_bao_xu_the_phat_trien_khoa_hoc_cong_nghe_the_gi.pdf" width="100%" />', 1, 1)
INSERT [dbo].[ChuyenDe] ([ChuyenDeID], [Name], [LinkFile], [Show], [NguoiDungID]) VALUES (2, N'Đầu thầu - Mua sắm công', N'<embed class="vh-100" src="FilesUpload/Supplier_e-Bidding.pdf" width="100%" />', 1, 1)
INSERT [dbo].[ChuyenDe] ([ChuyenDeID], [Name], [LinkFile], [Show], [NguoiDungID]) VALUES (3, N'Biểu mẫu hồ sơ vay vốn', N'<embed class="vh-100" src="FilesUpload/Supplier_e-Bidding.pdf" width="100%" />', 1, 1)
SET IDENTITY_INSERT [dbo].[ChuyenDe] OFF
SET IDENTITY_INSERT [dbo].[HinhAnhHoatDong] ON 

INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (21, N'demo', N'/Img/System/5.jpg', N'789', 0, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (22, N'Ảnh Hoạt Động Của Cán Bộ Rất Thú vị', N'Img/System/1.jpg', N'Hình chụp lưu niệm lần n...?', 1, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (23, N'Ảnh Hoạt Động Của Cán Bộ Rất Thú vị', N'Img/System/2.jpg', N'Hình chụp lưu niệm lần n...?', 1, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (24, N'Ảnh Hoạt Động Của Cán Bộ Rất Thú vị', N'Img/System/3.jpg', N'Hình chụp lưu niệm lần n...?', 1, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (25, N'Ảnh Hoạt Động Của Cán Bộ Rất Thú vị', N'Img/System/4.jpg', N'Hình chụp lưu niệm lần n...?', 1, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (26, N'Ảnh Hoạt Động Của Cán Bộ Rất Thú vị', N'Img/System/5.jpg', N'Hình chụp lưu niệm lần n...?', 1, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (27, N'Ảnh Hoạt Động Cán bộ biển thủ tiền của dân để làm chuyện ruồi bu :V', N'Img/System/2.jpg', N'Hình chụp kỉ niệm ăn chơi tối ngày họp chả làm gì!', 0, 1)
INSERT [dbo].[HinhAnhHoatDong] ([HinhAnhHoatDongID], [Name], [Name_Ext], [Description], [Show], [NguoiDungID]) VALUES (28, NULL, N'\Img\System\3.jpg', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[HinhAnhHoatDong] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuID], [Name], [NameLink], [Show], [Positon], [NguoiDungID]) VALUES (3, N'Chuyển Kinh Phí', N'', 1, 3, 1)
INSERT [dbo].[Menu] ([MenuID], [Name], [NameLink], [Show], [Positon], [NguoiDungID]) VALUES (7, N'Dự Án Cho Vay', N' ', 1, 4, 1)
INSERT [dbo].[Menu] ([MenuID], [Name], [NameLink], [Show], [Positon], [NguoiDungID]) VALUES (11, N'Tin Tức Gái Đẹp', N'', 1, 2, 1)
INSERT [dbo].[Menu] ([MenuID], [Name], [NameLink], [Show], [Positon], [NguoiDungID]) VALUES (14, N'Hồ Sơ Vay Vốn', N'', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([NguoiDungID], [Name], [TenDV], [SDT], [Email], [LoginName], [Password], [TrangThai], [image]) VALUES (1, N'Huỳnh Đực', N'Đức', N'012345678', N'DucDepTRai9x@gmail.com', N'admin', N'1', 1, N'images/NguoiDung/1.jpg')
INSERT [dbo].[NguoiDung] ([NguoiDungID], [Name], [TenDV], [SDT], [Email], [LoginName], [Password], [TrangThai], [image]) VALUES (3, N'Minh Luân', N'Luân Pro', N'0354624774', N'luanvo1ad@gmail.com', N'black', N'123', 1, N'images/NguoiDung/2.jpg')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[TabThongTin] ON 

INSERT [dbo].[TabThongTin] ([TabThongTinID], [Name], [Content], [Show], [NguoiDungID]) VALUES (1, N'Hotline', N'<h5 class="card-title">Đường Dây Nóng</h5>
                        <p class="card-text block-line">
                            <span>Tư vấn vay vốn</span>
                            <a href="callto:02743834063" class="pl-3">0274 3834 063</a>
                            <span>Địa chỉ email</span>
                            <a href="mailto:qptkhcn@binhduong.gov.vn" class="pl-3">qptkhcn@binhduong.gov.vn</a></p>', 1, 1)
SET IDENTITY_INSERT [dbo].[TabThongTin] OFF
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([ThongBaoID], [Name], [Detail], [PostDate], [Show], [NguoiDungID], [Description], [Content]) VALUES (1, N'Thông báo', N'Về việc đăng ký nhu cầu vay vốn của Quỹ ', CAST(N'2020-10-27 00:00:00.000' AS DateTime), 1, 1, N'Về việc đăng ký nhu cầu vay vốn của Quỹ trong năm 2020: Tổ chức, cá nhân, doanh nghiệp có nhu cầu vay vốn của Quỹ để thực hiện đầu tư đổi mới công nghệ nhằm tạo ra các sản phẩm có chất lượng và sức cạnh tranh cao. Đề nghị đăng ký hồ sơ vay vốn theo quy định của Quỹ. Hồ sơ vay vốn bao gồm: - Giấy đề nghị vay vốn (mẫu); - Thuyết minh dự án (theo mẫu của Quỹ); - Nộp hồ sơ cho Quỹ chậm nhất đến ngày 31/11/2019

', N'<p>1. &#272;&#7889;i t&#432;&#7907;ng &aacute;p d&#7909;ng: Ng&#432;&#7901;i lao &#273;&#7897;ng &#273;i l&agrave;m vi&#7879;c t&#7841;i H&agrave;n Qu&#7889;c theo Ch&#432;&#417;ng tr&igrave;nh EPS th&#7921;c hi&#7879;n k&yacute; qu&#7929;, vay v&#7889;n &#273;&#7875; k&yacute; qu&#7929; t&#7841;i NHCSXH (sau &#273;&acirc;y g&#7885;i chung l&agrave; kh&aacute;ch h&agrave;ng); n&#417;i nh&#7853;n k&yacute; qu&#7929; v&agrave; cho vay &#273;&#7875; k&yacute; qu&#7929; t&#7841;i NHCSXH tr&ecirc;n &#273;&#7883;a b&agrave;n n&#417;i kh&aacute;ch h&agrave;ng &#273;&#259;ng k&yacute; th&#432;&#7901;ng tr&uacute;; c&aacute;c t&#7893; ch&#7913;c, c&aacute; nh&acirc;n kh&aacute;c c&oacute; li&ecirc;n quan.</p>

<p> 2. &#272;i&#7873;u ki&#7879;n cho vay: C&oacute; n&#259;ng l&#7921;c h&agrave;nh vi d&acirc;n s&#7921; &#273;&#7847;y &#273;&#7911;; &#273;&#259;ng k&yacute; th&#432;&#7901;ng tr&uacute; t&#7841;i &#273;&#7883;a ph&#432;&#417;ng; &#273;&atilde; k&yacute; H&#7907;p &#273;&#7891;ng &#273;&#432;a ng&#432;&#7901;i lao &#273;&#7897;ng &#273;i l&agrave;m vi&#7879;c t&#7841;i H&agrave;n Qu&#7889;c theo Ch&#432;&#417;ng tr&igrave;nh EPS v&#7899;i Trung t&acirc;m Lao &#273;&#7897;ng ngo&agrave;i n&#432;&#7899;c; C&aacute;c &#273;&#7889;i t&#432;&#7907;ng sau c&#7847;n c&oacute; th&ecirc;m &#273;i&#7873;u ki&#7879;n: C&oacute; Quy&#7871;t &#273;&#7883;nh thu h&#7891;i d&#7845;t trong v&ograve;ng 5 n&#259;m k&#7875; t&#7915; ng&agrave;y c&oacute; Quy&#7871;t &#273;&#7883;nh thu h&#7891;i &#273;&#7845;t c&#7911;a c&#7845;p c&oacute; th&#7849;m quy&#7873;n (kh&aacute;ch h&agrave;ng thu&#7897;c &#273;&#7889;i t&#432;&#7907;ng ng&#432;&#7901;i lao &#273;&#7897;ng b&#7883; thu h&#7891;i &#273;&#7845;t); c&oacute; h&#7897; kh&#7849;u th&#432;&#7901;ng tr&uacute; t&#7915; &#273;&#7911; 12 th&aacute;ng tr&#7903; l&ecirc;n t&#7841;i c&aacute;c huy&#7879;n ngh&egrave;o (kh&aacute;ch h&agrave;ng thu&#7897;c &#273;&#7889;i t&#432;&#7907;ng ng&#432;&#7901;i lao &#273;&#7897;ng t&#7841;i c&aacute;c huy&#7879;n ngh&egrave;o).</p>

<p> 3. M&#7913;c cho vay t&#7889;i &#273;a l&agrave; 100 tri&#7879;u &#273;&#7891;ng/kh&aacute;ch h&agrave;ng. Kh&aacute;ch h&agrave;ng kh&ocirc;ng ph&#7843;i th&#7921;c hi&#7879;n b&#7843;o &#273;&#7843;m ti&#7873;n vay.L&atilde;i su&#7845;t cho vay, &aacute;p d&#7909;ng theo m&#7913;c l&atilde;i su&#7845;t cho vay c&#7911;a NHCSXH &#273;&#7889;i v&#7899;i ng&#432;&#7901;i lao &#273;&#7897;ng &#273;i l&agrave;m vi&#7879;c &#7903; n&#432;&#7899;c ngo&agrave;i theo h&#7907;p &#273;&#7891;ng ph&ugrave; h&#7907;p v&#7899;i t&#7915;ng &#273;&#7889;i t&#432;&#7907;ng. Th&#7901;i h&#7841;n cho vay l&agrave; 5 n&#259;m 6 th&aacute;ng.NHCSXH th&#7921;c hi&#7879;n ph&#432;&#417;ng th&#7913;c cho vay tr&#7921;c ti&#7871;p &#273;&#7871;n kh&aacute;ch h&agrave;ng t&#7841;i tr&#7909; s&#7903; NHCSXH n&#417;i cho vay.</p>

<p> 4. &#272;&#7889;i t&#432;&#7907;ng vay v&#7889;n &#273;&#7875; k&yacute; qu&#7929;: Ng&#432;&#7901;i lao &#273;&#7897;ng thu&#7897;c di&#7879;n h&#7897; ngh&egrave;o, h&#7897; c&#7853;n ngh&egrave;o; Ng&#432;&#7901;i lao &#273;&#7897;ng l&agrave; ng&#432;&#7901;i d&acirc;n t&#7897;c thi&#7875;u s&#7889;; Ng&#432;&#7901;i lao &#273;&#7897;ng l&agrave; th&acirc;n nh&acirc;n c&#7911;a ng&#432;&#7901;i c&oacute; c&ocirc;ng v&#7899;i c&aacute;ch m&#7841;ng; Ng&#432;&#7901;i lao &#273;&#7897;ng b&#7883; thu h&#7891;i &#273;&#7845;t; Ng&#432;&#7901;i lao &#273;&#7897;ng t&#7841;i c&aacute;c huy&#7879;n ngh&egrave;o c&oacute; nhu c&#7847;u &#273;i l&agrave;m vi&#7879;c &#7903; n&#432;&#7899;c ngo&agrave;i theo h&#7907;p &#273;&#7891;ng.</p>

<p> 5. L&atilde;i su&#7845;t v&agrave; c&aacute;ch th&#7913;c tr&#7843; l&atilde;i ti&#7873;n g&#7917;i k&yacute; qu&#7929;</p>

<p> a) &#272;&#7889;i v&#7899;i kh&aacute;ch h&agrave;ng vay v&#7889;n t&#7841;i NHCSXH &#273;&#7875; k&yacute; qu&#7929;: Trong th&#7901;i h&#7841;n k&yacute; qu&#7929;, l&atilde;i su&#7845;t ti&#7873;n g&#7917;i k&yacute; qu&#7929; b&#7857;ng l&atilde;i su&#7845;t ti&#7873;n vay &#273;&#7875; k&yacute; qu&#7929;. NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; th&#7921;c hi&#7879;n tr&#7843; l&atilde;i ti&#7873;n g&#7917;i k&yacute; qu&#7929; theo quy &#273;&#7883;nh v&agrave; &#273;&#7883;nh k&#7923; h&#7857;ng th&aacute;ng ch&#7911; &#273;&#7897;ng tr&iacute;ch ti&#7873;n k&yacute; qu&#7929; &#273;&#7875; thu l&atilde;i ti&#7873;n vay. Khi h&#7871;t th&#7901;i h&#7841;n k&yacute; qu&#7929; ho&#7863;c c&oacute; Th&ocirc;ng b&aacute;o ho&agrave;n tr&#7843; ti&#7873;n k&yacute; qu&#7929; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng &#273;&#7871;n l&agrave;m th&#7911; t&#7909;c, NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; th&#7921;c hi&#7879;n thu n&#7907; vay v&agrave; t&#7845;t to&aacute;n t&agrave;i kho&#7843;n ti&#7873;n g&#7917;i k&yacute; qu&#7929;. S&#7889; ti&#7873;n c&ograve;n l&#7841;i th&#7921;c hi&#7879;n theo quy &#273;&#7883;nh.</p>

<p> b) &#272;&#7889;i v&#7899;i kh&aacute;ch h&agrave;ng kh&ocirc;ng vay v&#7889;n t&#7841;i NHCSXH &#273;&#7875; k&yacute; qu&#7929;: Trong th&#7901;i h&#7841;n 35 ng&agrave;y k&#7875; t&#7915; ng&agrave;y k&yacute; H&#7907;p &#273;&#7891;ng &#273;i l&agrave;m vi&#7879;c t&#7841;i H&agrave;n Qu&#7889;c theo Ch&#432;&#417;ng tr&igrave;nh EPS v&#7899;i Trung t&acirc;m Lao &#273;&#7897;ng ngo&agrave;i n&#432;&#7899;c thu&#7897;c B&#7897; Lao &#273;&#7897;ng-Th&#432;&#417;ng binh v&agrave; x&atilde; h&#7897;i. Kh&aacute;ch h&agrave;ng th&#7921;c hi&#7879;n k&yacute; qu&#7929; t&#7841;i NHCSXH tr&ecirc;n &#273;&#7883;a b&agrave;n n&#417;i kh&aacute;ch h&agrave;ng &#273;&#259;ng k&yacute; th&#432;&#7901;ng tr&uacute;</p>

<p> Th&#7901;i h&#7841;n l&agrave; 5 n&#259;m 6 th&aacute;ng: Trong th&#7901;i h&#7841;n 5 n&#259;m, ti&#7873;n g&#7917;i k&yacute; qu&#7929; &#273;&#432;&#7907;c &aacute;p d&#7909;ng theo lo&#7841;i ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 12 th&aacute;ng. &#272;&#7883;nh k&#7923; 12 th&aacute;ng, NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; th&#7921;c hi&#7879;n tr&#7843; l&atilde;i, nh&#7853;p g&#7889;c v&agrave; chuy&#7875;n sang k&#7923; g&#7917;i 12 th&aacute;ng ti&#7871;p theo. L&atilde;i su&#7845;t &aacute;p d&#7909;ng b&#7857;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 12 th&aacute;ng tr&#7843; l&atilde;i cu&#7889;i k&#7923;, do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m nh&#7853;n ti&#7873;n k&yacute; qu&#7929; ho&#7863;c t&#7841;i th&#7901;i &#273;i&#7875;m chuy&#7875;n sang k&#7923; g&#7917;i 12 th&aacute;ng ti&#7871;p theo. Th&#7901;i gian g&#7917;i d&#432;&#7899;i 12 th&aacute;ng, ti&#7873;n g&#7917;i k&yacute; qu&#7929; &#273;&#432;&#7907;c &aacute;p d&#7909;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i kh&ocirc;ng k&#7923; h&#7841;n do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m r&uacute;t ti&#7873;n.</p>

<p> Trong th&#7901;i gian 6 th&aacute;ng c&ograve;n l&#7841;i, ti&#7873;n g&#7917;i k&yacute; qu&#7929; &#273;&#432;&#7907;c chuy&#7875;n sang &aacute;p d&#7909;ng theo lo&#7841;i ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 6 th&aacute;ng. L&atilde;i su&#7845;t &aacute;p d&#7909;ng b&#7857;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 6 th&aacute;ng tr&#7843; l&atilde;i cu&#7889;i k&#7923;, do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m chuy&#7875;n sang k&#7923; h&#7841;n 6 th&aacute;ng. Th&#7901;i gian g&#7917;i d&#432;&#7899;i 6 th&aacute;ng, ti&#7873;n g&#7917;i k&yacute; qu&#7929; &#273;&#432;&#7907;c &aacute;p d&#7909;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i kh&ocirc;ng k&#7923; h&#7841;n do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m r&uacute;t ti&#7873;n.</p>

<p> H&#7871;t th&#7901;i h&#7841;n k&yacute; qu&#7929;, NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; tr&#7843; l&atilde;i, nh&#7853;p g&#7889;c v&agrave; chuy&#7875;n sang &aacute;p d&#7909;ng theo lo&#7841;i ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 6 th&aacute;ng. &#272;&#7883;nh k&#7923; 6 th&aacute;ng, NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; th&#7921;c hi&#7879;n tr&#7843; l&atilde;i, nh&#7853;p g&#7889;c v&agrave; chuy&#7875;n sang k&#7923; g&#7917;i 6 th&aacute;ng ti&#7871;p theo. L&atilde;i su&#7845;t &aacute;p d&#7909;ng b&#7857;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i c&oacute; k&#7923; h&#7841;n 6 th&aacute;ng tr&#7843; l&atilde;i cu&#7889;i k&#7923; do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m chuy&#7875;n sang lo&#7841;i ti&#7873;n g&#7917;i k&#7923; h&#7841;n 6 th&aacute;ng. Th&#7901;i gian g&#7917;i d&#432;&#7899;i 6 th&aacute;ng, ti&#7873;n g&#7917;i k&yacute; qu&#7929; &#273;&#432;&#7907;c &aacute;p d&#7909;ng l&atilde;i su&#7845;t ti&#7873;n g&#7917;i kh&ocirc;ng k&#7923; h&#7841;n do NHCSXH n&#417;i nh&#7853;n k&yacute; qu&#7929; c&ocirc;ng b&#7889; t&#7841;i th&#7901;i &#273;i&#7875;m r&uacute;t ti&#7873;n.</p>')
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
SET IDENTITY_INSERT [dbo].[ThongTinWebSite] ON 

INSERT [dbo].[ThongTinWebSite] ([ThongTinWebSiteID], [tenWebSite], [DiaChi], [SoDienThoai], [Fax], [Email], [ThongTinThem], [NguoiDungID], [TrangThai]) VALUES (1, N'QUỸ PHÁT TRIỂN KHOA HỌC CÔNG NGHỆ TỈNH BÌNH DƯƠNG', N' Số 26, Huỳnh Văn Nghệ, P.Phú Lợi, TP.Thủ Dầu Một, tỉnh Bình Dương', N'02743834063', N'02743856168', N'qptkhcn@binhduong.gov.vn', N'Chịu trách nhiệm: Ông Nguyễn Minh Châu - Giám đốc Quỹ phát triển khoa học công nghệ Bình Dương', 1, 1)
INSERT [dbo].[ThongTinWebSite] ([ThongTinWebSiteID], [tenWebSite], [DiaChi], [SoDienThoai], [Fax], [Email], [ThongTinThem], [NguoiDungID], [TrangThai]) VALUES (2, N'QUỸ PHÁT TRIỂN KHOA HỌC CÔNG NGHỆ TỈNH BÌNH DƯƠNG TỐN TIỀN , HÚT MÁU', N'Việt Nam', N'066113', N'066113', N'qptkhcn@binhduong.gov.vn', N'Nhóm trách nhiệm hữu hạn 2 thành viên cân hết thế giới...', 1, 0)
INSERT [dbo].[ThongTinWebSite] ([ThongTinWebSiteID], [tenWebSite], [DiaChi], [SoDienThoai], [Fax], [Email], [ThongTinThem], [NguoiDungID], [TrangThai]) VALUES (3, N'QUỸ PHÁT TRIỂN KHOA HỌC CÔNG NGHỆ TỈNH BÌNH DƯƠNG TỐN TIỀN , HÚT MÁU', N' Số 26, Huỳnh Văn Nghệ, P.Phú Lợi, TP.Thủ Dầu Một, tỉnh Bình Dương', N'02743834063', N'02743834063', N'qptkhcn@binhduong.gov.vn', N'Chịu trách nhiệm: Ông Nguyễn Minh Châu - Giám đốc Quỹ phát triển khoa học công nghệ Bình Dương', 1, 1)
SET IDENTITY_INSERT [dbo].[ThongTinWebSite] OFF
SET IDENTITY_INSERT [dbo].[TinBai] ON 

INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (42, N'"Thiên hậu" JAV Yoshizawa Akiho bất ngờ giải nghệ, đăng đàn kén chồng', N'', N'\Img\TinBai\ba-dien-vien-phim-nguoi-lon-nhat-ban-tung-teaser-cho-mv-dau-tay-af078b8f.jpg', N'"Thiên hậu" JAV Yoshizawa Akiho mới đây đã khiến người hâm mộ phim người lớn Nhật Bản bàng hoàng vì tuyên bố giải nghệ.
Tin buồn đã tiếp tục ập đến với các thanh niên yêu mến JAV, "Thiên hậu" - "Thánh nữ" AV Yoshizawa Akiho đã quyết định từ bỏ sự nghiệp phim người lớn của cô sau bao năm cống hiến miệt mài.', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Mới đ&acirc;y, trang&nbsp;<em>Nifty News</em>&nbsp;của Nhật Bản đ&atilde; đưa tin&nbsp;<strong><em>Yoshizawa Akiho</em></strong>&nbsp;- &ldquo;Thi&ecirc;n hậu&rdquo; l&agrave;m mưa l&agrave;m gi&oacute; trong l&agrave;ng phim người lớn Nhật Bản sẽ giải nghệ, r&uacute;t lui hẳn khỏi giới JAV v&agrave;o th&aacute;ng 3/2019.&nbsp;<em><strong>Akiho&nbsp;</strong></em>đ&atilde; quyết định chấm dứt sự nghiệp rực rỡ suốt 15 năm với 300 t&aacute;c phẩm n&oacute;ng bỏng của m&igrave;nh.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/thien-hau-jav-yoshizawa-akiho-bat-ngo-tuyen-bo-giai-nghe-c7158419.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/thien-hau-jav-yoshizawa-akiho-bat-ngo-tuyen-bo-giai-nghe-c7158419.jpg" alt="" /></a></p>
<p>C&ocirc; cho hay m&igrave;nh chỉ c&ograve;n 6 th&aacute;ng nữa để cống hiến cho sự nghiệp AV, n&ecirc;n c&ocirc; tr&acirc;n trọng mọi khoảnh khắc gặp gỡ người h&acirc;m mộ.&nbsp;</p>
<p>Tuy&ecirc;n bố giải nghệ của&nbsp;<em><strong>Akiho&nbsp;</strong></em>được c&ocirc; đăng tải tr&ecirc;n blog v&agrave;o ng&agrave;y 1/10, thu h&uacute;t nhiều b&igrave;nh luận của c&aacute;c fan trung th&agrave;nh, đ&atilde; c&oacute; rất nhiều người v&agrave;o b&igrave;nh luận tiếc nuối:</p>
<blockquote>
<p><em><strong>- D&ugrave; t&ocirc;i chấp nhận sự thật n&agrave;y nhưng vẫn cảm thấy c&ocirc; đơn bởi v&igrave; đ&acirc;y l&agrave; nữ diễn vi&ecirc;n AV tuyệt vời đầu ti&ecirc;n m&agrave; theo d&otilde;i.</strong></em></p>
<p><em><strong>- T&ocirc;i kh&aacute; ngạc nhi&ecirc;n trước th&ocirc;ng b&aacute;o bất ngờ n&agrave;y, dẫu vậy cảm ơn em v&igrave; đ&atilde; l&agrave;m việc chăm chỉ.</strong></em></p>
<p><em><strong>- T&ocirc;i biết chuyện n&agrave;y một ng&agrave;y n&agrave;o đ&oacute; cũng sẽ đến v&agrave; giờ n&oacute; đến rồi. T&ocirc;i sẽ tr&acirc;n trọng thời gian nửa năm c&ograve;n lại. Love Akiho!</strong></em></p>
<p><em><strong>- &Ocirc;i nữ diễn vi&ecirc;n y&ecirc;u th&iacute;ch từ năm cấp 2 của t&ocirc;i tới giờ, t&ocirc;i sẽ vẫn m&atilde;i ủng hộ c&ocirc;.</strong></em></p>
</blockquote>
<p>&gt;&gt; C&oacute; thể bạn quan t&acirc;m:&nbsp;<em><a href="http://bit.ly/2Oxqla3" rel="nofollow">Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm​</a></em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/thien-hau-jav-yoshizawa-akiho-bat-ngo-tuyen-bo-giai-nghe-21bdc77d.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/thien-hau-jav-yoshizawa-akiho-bat-ngo-tuyen-bo-giai-nghe-21bdc77d.jpg" alt="" /></a></p>
<p>Thời điểm n&agrave;y, khi&nbsp;đưa ra quyết định giải nghệ,&nbsp;<em><strong>Akiho&nbsp;</strong></em>tr&ograve;n 34 tuổi. Đến giờ&nbsp;&ldquo;nữ thần gợi cảm&rdquo; xứ Mặt trời mọc vẫn độc th&acirc;n, thế n&ecirc;n c&ocirc; lu&ocirc;n mong mỏi c&oacute; được một người đ&agrave;n &ocirc;ng y&ecirc;u thương m&igrave;nh. Sau khi giải nghệ, t&igrave;m kiếm t&igrave;nh y&ecirc;u sẽ l&agrave; một trong những mục ti&ecirc;u quan trọng của cuộc đời c&ocirc;.</p>
<p>Ng&ocirc;i sao 18+ cho hay, điều kiện k&eacute;n chồng của m&igrave;nh cũng kh&aacute; đơn giản, chỉ cần đối phương trước c&oacute; thể lực tốt, sau đẹp trai l&agrave; được.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/1538386305742640_0f9b0085c406a5ed23a582a544e2a5701538363020width640height526-f4f0a3e9.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/1538386305742640_0f9b0085c406a5ed23a582a544e2a5701538363020width640height526-f4f0a3e9.jpg" alt="" /></a></p>
<p><em><strong>Yoshizawa Akiho</strong></em>&nbsp;sinh năm 1984 tại Tokyo, c&ograve;n được biết đến với c&aacute;i t&ecirc;n&nbsp;<em><strong>Acky</strong></em>.</p>
<p>Ban đầu, c&ocirc; khởi nghiệp với vai tr&ograve; l&agrave;&nbsp;<em>Gravure Idol</em>&nbsp;(những người mẫu đồ tắm/đồ l&oacute;t&nbsp;chuy&ecirc;n xuất hiện tr&ecirc;n tạp ch&iacute; đ&agrave;n &ocirc;ng, DVD). Đến năm 2003, khi&nbsp;<em><strong>Akiho&nbsp;</strong></em>mới chỉ 19 tuổi, c&ocirc; chuyển nghề l&agrave;m diễn vi&ecirc;n phim người lớn. Song song với c&ocirc;ng việc t&aacute;o bạo n&agrave;y, người đẹp c&ograve;n d&agrave;nh thời gian viết l&aacute;ch.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/akihoyoshizawa05-c16ef390.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/akihoyoshizawa05-c16ef390.jpg" alt="" /></a></p>
<p>Kh&ocirc;ng chỉ vậy,&nbsp;<em><strong>Akiho&nbsp;</strong></em>từng g&oacute;p mặt v&agrave;o phim truyền h&igrave;nh&nbsp;<em>Jōō</em>&nbsp;chuyển thể từ manga của t&aacute;c giả&nbsp;<em>Ryō Kurashina</em>. C&ocirc; v&agrave; ng&ocirc;i sao phim người lớn<em><strong>&nbsp;Aoi Sora</strong></em>&nbsp;cũng l&agrave; th&agrave;nh vi&ecirc;n trong&nbsp;<em>Ebisu Muscats</em>&nbsp;- nh&oacute;m nhạc tập hợp nhiều thần tượng thần tượng AV, thường đi biểu diễn ở Nhật Bản v&agrave; c&aacute;c nước Đ&ocirc;ng Nam &Aacute;. Năm 2007 c&ocirc; gi&agrave;nh giải&nbsp;<em>Moodyz&nbsp;</em>cho hạng mục gương mặt nữ xuất sắc nhất.</p>
<p>&gt;&gt; C&oacute; thể bạn quan t&acirc;m:&nbsp;<br /><em><a href="http://bit.ly/2Oz47o3" rel="nofollow">Diễn vi&ecirc;n JAV mắc bệnh ung thư v&agrave; những lời cay nghiệt từ dư luận</a></em><br /><a href="http://bit.ly/2OBSa0K" rel="nofollow"><em>3 diễn vi&ecirc;n JAV sẽ c&ugrave;ng debut trong một nh&oacute;m nhạc tại H&agrave;n Quốc</em></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/a00f736f30aeecebedd64b9be105a26f-296a74e3.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/a00f736f30aeecebedd64b9be105a26f-296a74e3.jpg" alt="" /></a></p>
<p>Ngo&agrave;i Nhật Bản,&nbsp;<em><strong>Akiho&nbsp;</strong></em>đặc biệt nổi tiếng ở thị trường Đ&agrave;i Loan, Hong Kong v&agrave; Trung Quốc. Thời điểm c&ocirc; mở t&agrave;i khoản mạng x&atilde; hội Trung Quốc, chỉ trong v&ograve;ng 5 tiếng đồng hồ đ&atilde; thu h&uacute;t 50 ng&agrave;n người theo d&otilde;i, hiện tại con số n&agrave;y l&ecirc;n đến gần 1.3 triệu người.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/b903f964bc9457f93ad831aaf10d68cb-f2d4dc1e.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/b903f964bc9457f93ad831aaf10d68cb-f2d4dc1e.jpg" alt="" /></a></p>
<p>Giới truyền th&ocirc;ng Hongkong đ&aacute;nh gi&aacute; rằng, việc Akiho c&oacute; thể trụ được đến tận 15 năm trong giới JAV thực sự l&agrave; một kỳ t&iacute;ch; những người đẹp c&ugrave;ng thời với c&ocirc; như&nbsp;<em><strong>Aoi Sora</strong></em>,&nbsp;<em><strong>Rio&nbsp;</strong></em>đều đ&atilde; sớm r&uacute;t lui.</p>
<p>&gt;&gt; Xem th&ecirc;m:<a href="http://bit.ly/2ODuXM1" rel="nofollow">&nbsp;<em>&Ocirc;ng ho&agrave;ng phim "người lớn" kết h&ocirc;n với nh&agrave; văn sau 4 năm hẹn h&ograve;</em></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201810/i15599851195-ac01f79d.jpg"><img style="width: 730px; height: auto;" title="" src="https://static2.yan.vn/YanNews/2167221/201810/i15599851195-ac01f79d.jpg" alt="" /></a></p>
<p>Đ&acirc;y quả l&agrave; một c&acirc;u chuyện buồn đối với c&aacute;c thanh ni&ecirc;n t&ocirc;n thờ&nbsp;JAV. Nhưng &ldquo;tre gi&agrave; măng mọc&rdquo;, sẽ sớm c&oacute; những &ldquo;măng mới&rdquo; mơn mởn thay thế vị tr&iacute; của&nbsp;<em><strong>Yoshizawa Akiho</strong></em>, trở th&agrave;nh &ldquo;Thi&ecirc;n hậu&rdquo; JAV hớp hồn kh&aacute;n giả.&nbsp;</p>
</body>
</html>', 1, 0, CAST(N'2020-11-05 00:02:07.617' AS DateTime), 1, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (43, N'Cái kết "đắng lòng" khi Irene (Red Velvet) bất ngờ "diễn sâu" đầy quyến rũ trước ống kính', N'', N'\Img\TinBai\original_8c98352f-465b-4d2c-8259-01ceef6811e6.png', N'Khoảnh khắc được cho là để đời của chị cả nhà Red Velvet ngay lập tức trở thành chủ đề bàn tán xôn xao, khi được Dispatch đăng tải lên MXH.
Sự cố đầy hài hước trước ống kính này đã khiến các fan được một trận cười đầy sảng khoái, khi Irene muốn "học đòi" sexy để chiều fan.', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Vừa qua,&nbsp;<a href="http://www.yan.vn/red-velvet.htm?utm_campaign=InternallinkYAN&amp;utm_source=155715&amp;utm_medium=noniadesktop" target="_blank" rel="noopener">Red Velvet</a>&nbsp;đ&atilde; c&oacute; một buổi fanmetting&nbsp;quy m&ocirc; nhỏ th&ocirc;ng qua sự kiện được tổ chức&nbsp;Mnet M! Countdown. Để quảng b&aacute; cho album mới nhất của m&igrave;nh mang t&ecirc;n&nbsp;<em>The Perfect Red Velvet</em>, mỗi th&agrave;nh vi&ecirc;n đ&atilde; quyết định&nbsp;giới thiệu album theo c&aacute;ch l&ocirc;i cuốn v&agrave; độc đ&aacute;o nhất của bản th&acirc;n. V&agrave; đến lượt tr&igrave;nh b&agrave;y của&nbsp;Irene, chị cả nh&agrave; Red Velvet đ&atilde; kh&ocirc;ng may gặp phải sự cố đầy đ&aacute;ng y&ecirc;u, khi lựa chọn tạo d&aacute;ng với &aacute;nh nh&igrave;n v&agrave; thần th&aacute;i n&oacute;ng bỏng.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201802/20180204-050311-du8qcymv4aabty9.jpg"><img style="width: 730px; height: auto;" title="Red Velvet đ&atilde; ch&iacute;nh thức trở lại ca kh&uacute;c Bad Boy đầy m&ecirc; hoặc, thể hiện phần &quot;Velvet&quot; quyến rũ trong phong c&aacute;ch đặc biệt của nh&oacute;m." src="https://static2.yan.vn/YanNews/2167221/201802/20180204-050311-du8qcymv4aabty9.jpg" alt="Red Velvet đ&atilde; ch&iacute;nh thức trở lại ca kh&uacute;c Bad Boy đầy m&ecirc; hoặc, thể hiện phần &quot;Velvet&quot; quyến rũ trong phong c&aacute;ch đặc biệt của nh&oacute;m." /></a><em><br />Red Velvet đ&atilde; ch&iacute;nh thức trở lại ca kh&uacute;c Bad Boy đầy m&ecirc; hoặc, thể hiện phần "Velvet" quyến rũ trong phong c&aacute;ch đặc biệt của nh&oacute;m.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201802/20180204-050417-img_20180201_184602.jpg"><img style="width: 730px; height: auto;" title="V&agrave; kh&ocirc;ng nằm ngo&agrave;i ngoại lệ, Irene lu&ocirc;n l&agrave; mỹ nh&acirc;n được quan t&acirc;m nhất nh&igrave; trong mỗi lần t&aacute;i xuất của nh&oacute;m." src="https://static2.yan.vn/YanNews/2167221/201802/20180204-050417-img_20180201_184602.jpg" alt="V&agrave; kh&ocirc;ng nằm ngo&agrave;i ngoại lệ, Irene lu&ocirc;n l&agrave; mỹ nh&acirc;n được quan t&acirc;m nhất nh&igrave; trong mỗi lần t&aacute;i xuất của nh&oacute;m." /></a><em><br />V&agrave; kh&ocirc;ng nằm ngo&agrave;i ngoại lệ, Irene lu&ocirc;n l&agrave; mỹ nh&acirc;n được quan t&acirc;m nhất nh&igrave; trong mỗi lần t&aacute;i xuất của nh&oacute;m.</em></p>
<p>Trong khi quảng b&aacute; album&nbsp;mới của Red Velvet,&nbsp;nữ thần tượng đ&atilde; cầm album v&agrave; đưa n&oacute; l&ecirc;n trước m&aacute;y quay. Kh&ocirc;ng may, chiếc album ngay sau đ&oacute; đ&atilde; tuột khỏi tay&nbsp;<a href="http://www.yan.vn/irene.htm?utm_campaign=InternallinkYAN&amp;utm_source=155715&amp;utm_medium=noniadesktop" target="_blank" rel="noopener">Irene</a>&nbsp;rồi rơi xuống đất. V&agrave; ngay l&uacute;c đ&oacute;, Irene đ&atilde; kh&ocirc;ng giấu nổi sự bất ngờ cũng như&nbsp;cảm gi&aacute;c giật m&igrave;nh v&agrave; hoảng hốt.&nbsp;Tuy nhi&ecirc;n, nữ thần tượng nhanh ch&oacute;ng lấy lại t&aacute;c phong chuy&ecirc;n nghiệp, ho&agrave;n tất phần giới thiệu của m&igrave;nh, sau đ&oacute; mới bật cười kh&uacute;c kh&iacute;ch trước khi tiếp tục chương tr&igrave;nh của m&igrave;nh.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201802/20180204-051138-ezgifcomvideotogif-1_600x338.gif"><img style="width: 730px; height: auto;" title="Quả nhi&ecirc;n, d&ugrave; gặp sự cố thế n&agrave;o đi chăng nữa th&igrave; c&ocirc; n&agrave;ng vẫn lu&ocirc;n giữ vững thần th&aacute;i đặc biệt của m&igrave;nh." src="https://static2.yan.vn/YanNews/2167221/201802/20180204-051138-ezgifcomvideotogif-1_600x338.gif" alt="Quả nhi&ecirc;n, d&ugrave; gặp sự cố thế n&agrave;o đi chăng nữa th&igrave; c&ocirc; n&agrave;ng vẫn lu&ocirc;n giữ vững thần th&aacute;i đặc biệt của m&igrave;nh." /></a><br /><em>Quả nhi&ecirc;n, d&ugrave; gặp sự cố thế n&agrave;o đi chăng nữa th&igrave; c&ocirc; n&agrave;ng vẫn lu&ocirc;n giữ vững thần th&aacute;i đặc biệt của m&igrave;nh.</em></p>
<p><img style="width: auto; height: 60px;" src="https://www.yan.vn/images/fb.jpg" /><img style="width: auto; height: 60px;" src="https://www.yan.vn/images/link.jpg" /><a href="https://static2.yan.vn/YanNews/2167221/201802/20180204-050958-ezgifcomvideotogif_600x338.gif"><img style="width: 730px; height: auto;" title="B&agrave;i viết về sự cố h&agrave;i hước&nbsp;của nữ thần tượng được Dispatch đăng tải v&agrave; nhanh ch&oacute;ng thu h&uacute;t sự quan t&acirc;m của đ&ocirc;ng đảo người h&acirc;m mộ." src="https://static2.yan.vn/YanNews/2167221/201802/20180204-050958-ezgifcomvideotogif_600x338.gif" alt="B&agrave;i viết về sự cố h&agrave;i hước&nbsp;của nữ thần tượng được Dispatch đăng tải v&agrave; nhanh ch&oacute;ng thu h&uacute;t sự quan t&acirc;m của đ&ocirc;ng đảo người h&acirc;m mộ." /></a><br /><em>B&agrave;i viết về sự cố h&agrave;i hước&nbsp;của nữ thần tượng được Dispatch đăng tải v&agrave; nhanh ch&oacute;ng thu h&uacute;t sự quan t&acirc;m của đ&ocirc;ng đảo người h&acirc;m mộ.</em></p>
</body>
</html>', 1, 0, CAST(N'2020-11-05 00:05:54.777' AS DateTime), 1, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (44, N'Làm mẫu quảng cáo, Irene lại bị Knet "trách móc" là khiến mặt hàng này "bán không chạy"', N'', N'\Img\TinBai\original_e215717b-3de0-46ef-a590-447255cacdef.jpg', N'Quá xinh đẹp và thu hút trong những bức ảnh quảng cáo nhiều ý kiến cho rằng vì mải nhìn Irene nên chẳng chú tâm đến sảm phẩm.
Chỉ với vài tấm ảnh quảng cáo sản phẩm Irene cũng đủ gây sốt vì đẹp xuất sắc. Quả nhiên là nữ thần Irene đến ảnh quảng cáo cũng xinh không góc chết thế này.', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><strong>Irene&nbsp;</strong>sở hữu vẻ ngo&agrave;i nổi trội v&agrave; được đ&aacute;nh gi&aacute; l&agrave; c&oacute; gương mặt ho&agrave;n hảo, tỉ lệ v&agrave;ng c&ugrave;ng kh&iacute; chất đặc biệt.&nbsp;<strong>Irene&nbsp;</strong>thường được mọi người ca ngợi l&agrave; "<a href="http://www.yan.vn/top-3-nu-than-the-he-moi-cua-cac-cong-ty-giai-tri-hang-dau-han-quoc-149434.html?utm_campaign=InternallinkYAN&amp;utm_source=154689&amp;utm_medium=noniadesktop">nữ thần thế hệ mới</a>" v&agrave; l&agrave; gương mặt quen thuộc tr&ecirc;n c&aacute;c bảng xếp hạng về nhan sắc. Nhờ nhan sắc xinh đẹp nổi trội&nbsp;<strong>Irene&nbsp;</strong>được nhiều nh&atilde;n hiệu thời trang, mỹ phẩm săn đ&oacute;n.&nbsp;</p>
<p>Vừa qua,&nbsp;<strong>Irene&nbsp;</strong>trở th&agrave;nh gương mặt đại diện mới cho thương hiệu t&uacute;i x&aacute;ch nổi tiếng tuy nhi&ecirc;n nhiều &yacute; kiến đ&ugrave;a&nbsp;rằng nh&atilde;n h&agrave;ng n&agrave;y đ&atilde; thất bại khi mời&nbsp;<strong>Irene&nbsp;</strong>l&agrave;m người mẫu. D&ugrave; c&aacute;c mẫu t&uacute;i x&aacute;ch được thiết kế rất đẹp mắt, sang chảnh nhưng khi được đặt cạnh&nbsp;<strong>Irene&nbsp;</strong>th&igrave; ch&uacute;ng lại bị d&igrave;m kh&ocirc;ng thương tiếc v&agrave; chắc hẳn nhiều người sẽ chỉ mải nh&igrave;n<strong>&nbsp;Irene</strong>&nbsp;thay&nbsp;v&igrave; ch&uacute; t&acirc;m đến sản phẩm.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103246-26815132_2067954366771816_159284684185915236_n.jpg"><img style="width: 500px; height: 750px;" title="L&agrave;m mẫu quảng c&aacute;o, Irene lại bị Knet" src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103246-26815132_2067954366771816_159284684185915236_n.jpg" alt="L&agrave;m mẫu quảng c&aacute;o, Irene lại bị Knet" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103520-26904304_2067952693438650_2315551612056527317_n.jpg"><img style="width: 500px; height: 788px;" title="Irene đẹp xuất sắc trong bộ ảnh chụp quảng c&aacute;o sản phẩm mới. Từ khi để m&aacute;i thưa vừa đủ d&agrave;i c&ocirc; n&agrave;ng li&ecirc;n tục nhận được nhiều lời khen ngợi v&igrave; khẳng định được đẳng cấp nữ thần." src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103520-26904304_2067952693438650_2315551612056527317_n.jpg" alt="Irene đẹp xuất sắc trong bộ ảnh chụp quảng c&aacute;o sản phẩm mới. Từ khi để m&aacute;i thưa vừa đủ d&agrave;i c&ocirc; n&agrave;ng li&ecirc;n tục nhận được nhiều lời khen ngợi v&igrave; khẳng định được đẳng cấp nữ thần." /></a><br /><em><strong><a href="http://www.yan.vn/irene.htm?utm_campaign=InternallinkYAN&amp;utm_source=154689&amp;utm_medium=noniadesktop">Irene</a>&nbsp;</strong>đẹp xuất sắc trong bộ ảnh chụp quảng c&aacute;o sản phẩm mới. Từ khi để m&aacute;i thưa vừa đủ d&agrave;i c&ocirc; n&agrave;ng li&ecirc;n tục nhận được nhiều lời khen ngợi v&igrave; khẳng định được đẳng cấp nữ thần.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103247-26992588_2067954716771781_8651894264042948545_n.jpg"><img style="width: 500px; height: 750px;" title="Gương mặt h&agrave;n hảo đẹp kh&ocirc;ng chết khiến thu h&uacute;t mọi &aacute;nh nh&igrave;n khiến cho sản phẩm bị phớt lờ kh&ocirc;ng thương tiếc." src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103247-26992588_2067954716771781_8651894264042948545_n.jpg" alt="Gương mặt h&agrave;n hảo đẹp kh&ocirc;ng chết khiến thu h&uacute;t mọi &aacute;nh nh&igrave;n khiến cho sản phẩm bị phớt lờ kh&ocirc;ng thương tiếc." /></a><br /><em>Gương mặt h&agrave;n hảo đẹp kh&ocirc;ng chết khiến thu h&uacute;t mọi &aacute;nh nh&igrave;n khiến cho sản phẩm bị phớt lờ kh&ocirc;ng thương tiếc.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103340-26805185_2067955380105048_308165222007738824_n.jpg"><img style="width: 500px; height: 750px;" title="Thần th&aacute;i lạnh l&ugrave;ng lại c&ograve;n khoe bờ vai trần nuột n&agrave; Irene mang sức h&uacute;t mạnh mẽ, h&igrave;nh ảnh tuyệt vời kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được." src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103340-26805185_2067955380105048_308165222007738824_n.jpg" alt="Thần th&aacute;i lạnh l&ugrave;ng lại c&ograve;n khoe bờ vai trần nuột n&agrave; Irene mang sức h&uacute;t mạnh mẽ, h&igrave;nh ảnh tuyệt vời kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được." /></a><br /><em>Thần th&aacute;i lạnh l&ugrave;ng lại c&ograve;n khoe bờ vai trần nuột n&agrave;&nbsp;<strong>Irene</strong>&nbsp;mang sức h&uacute;t mạnh mẽ, h&igrave;nh ảnh tuyệt vời kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103248-26907536_2069504639950122_1298302402485019452_n-1.png"><img style="width: 500px; height: 681px;" title="Sản phẩm đẹp nhưng người vẫn xinh đẹp hơn rất nhiều." src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103248-26907536_2069504639950122_1298302402485019452_n-1.png" alt="Sản phẩm đẹp nhưng người vẫn xinh đẹp hơn rất nhiều." /></a><br /><em>Sản phẩm đẹp nhưng người vẫn xinh đẹp hơn rất nhiều.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201801/20180125-103244-19554746_2069504636616789_7585752543214675580_n.png"><img style="width: 500px; height: 678px;" title="D&ugrave; c&aacute;c mẫu sản phẩm đều được thiết kế rất đẹp nhưng người mẫu lại qu&aacute; nổi bật khiến ch&uacute;ng bị lu mờ đ&aacute;ng kể. C&oacute; người mẫu đẹp kh&ocirc;ng g&oacute;c chết như Irene đ&ocirc;i khi cũng khổ cho c&aacute;c thương hiệu nhỉ?" src="https://static2.yan.vn/YanNews/2167221/201801/20180125-103244-19554746_2069504636616789_7585752543214675580_n.png" alt="D&ugrave; c&aacute;c mẫu sản phẩm đều được thiết kế rất đẹp nhưng người mẫu lại qu&aacute; nổi bật khiến ch&uacute;ng bị lu mờ đ&aacute;ng kể. C&oacute; người mẫu đẹp kh&ocirc;ng g&oacute;c chết như Irene đ&ocirc;i khi cũng khổ cho c&aacute;c thương hiệu nhỉ?" /></a><br /><em>D&ugrave; c&aacute;c mẫu sản phẩm đều được thiết kế rất đẹp nhưng người mẫu lại qu&aacute; nổi bật khiến ch&uacute;ng bị lu mờ đ&aacute;ng kể. C&oacute; người mẫu đẹp kh&ocirc;ng g&oacute;c chết như&nbsp;<strong>Irene</strong>&nbsp;đ&ocirc;i khi cũng khổ cho c&aacute;c thương hiệu nhỉ?</em></p>
<p>Chỉ l&agrave; chụp ảnh quảng c&aacute;o như bao người nhưng<strong>&nbsp;Irene&nbsp;</strong>lại thu h&uacute;t nhiều sự ch&uacute; &yacute; v&igrave;&nbsp;<a href="http://www.yan.vn/tiec-nuoi-nhan-sac-ngay-hom-qua-cua-loat-than-tuong-kpop-106615.html?utm_campaign=InternallinkYAN&amp;utm_source=154689&amp;utm_medium=noniadesktop">nhan sắc đỉnh cao</a>&nbsp;của m&igrave;nh. Bạn c&oacute; bị m&ecirc; hoặc bởi nhan sắc v&agrave; thần th&aacute;i cuốn h&uacute;t của c&ocirc; người mẫu xinh đẹp n&agrave;y kh&ocirc;ng?</p>
<p>(Ảnh: Internet)</p>
</body>
</html>', 1, 0, CAST(N'2020-11-05 00:07:20.023' AS DateTime), 1, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (45, N'Ngọt ngào thế này, Jennie (BLACKPINK) và Irene (Red Velvet) được netizen mạnh tay "đẩy thuyền"', N'', N'\Img\TinBai\original_6ebf59b9-2fc0-46d7-910f-72d27e801e81.jpg', N'Jennie (BLACKPINK) và Irene (Red Velvet) bên nhau không rời và dành nhiều cử chỉ thân mật với nhau trên sân khấu SBS Gayo Daejun.
Mặc dù là hai đối đủ của nhau trên đấu trường âm nhạc nhưng những thành viên của BLACKPINK và Red Velvet lại vô cùng thân thiết với nhau', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Mới đ&acirc;y, những h&igrave;nh ảnh Jennie (<a href="http://www.yan.vn/black-pink.htm?utm_campaign=InternallinkYAN&amp;utm_source=151039&amp;utm_medium=noniadesktop">BLACKPINK</a>) v&agrave; Irene (<a href="http://www.yan.vn/red-velvet.htm?utm_campaign=InternallinkYAN&amp;utm_source=151039&amp;utm_medium=noniadesktop">Red Velvet)</a>&nbsp;tr&ecirc;n s&acirc;n khấu&nbsp;SBS Gayo Daejun 2017 đ&atilde; nhận được kh&ocirc;ng &iacute;t sự quan t&acirc;m của người h&acirc;m mộ. Theo đ&oacute;, cả hai đ&atilde; kh&ocirc;ng ngần ngại d&agrave;nh cho nhau những cử chỉ th&acirc;n mật, vui vẻ tr&ograve; chuyện v&agrave; b&aacute;m lấy nhau kh&ocirc;ng rời kh&ocirc;ng suốt sự kiện khiến người h&acirc;m mộ kh&ocirc;ng khỏi ghen tị.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201712/20171226-093235-25659806_417013455418062_2357601837714558689_n.jpg"><img style="width: 600px; height: 400px;" title="Kh&ocirc;ng chỉ nắm tay nhau..." src="https://static2.yan.vn/YanNews/2167221/201712/20171226-093235-25659806_417013455418062_2357601837714558689_n.jpg" alt="Kh&ocirc;ng chỉ nắm tay nhau..." /></a><br /><em>Kh&ocirc;ng chỉ nắm tay nhau...</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201712/20171226-093309-25660021_417013765418031_5480581670052318645_n.jpg"><img style="width: 600px; height: 400px;" title="... cả hai c&ograve;n cho&agrave;ng vai nhau v&ocirc; c&ugrave;ng th&acirc;n thiết." src="https://static2.yan.vn/YanNews/2167221/201712/20171226-093309-25660021_417013765418031_5480581670052318645_n.jpg" alt="... cả hai c&ograve;n cho&agrave;ng vai nhau v&ocirc; c&ugrave;ng th&acirc;n thiết." /></a><br /><em>... cả hai c&ograve;n cho&agrave;ng vai nhau v&ocirc; c&ugrave;ng th&acirc;n thiết.</em></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201712/20171226-100011-26055773_417013538751387_2984615479567337215_n.jpg"><img style="width: 600px; height: 909px;" title="Ngọt ng&agrave;o thế n&agrave;y, Jennie (BLACKPINK) v&agrave; Irene (Red Velvet) được netizen mạnh tay" src="https://static2.yan.vn/YanNews/2167221/201712/20171226-100011-26055773_417013538751387_2984615479567337215_n.jpg" alt="Ngọt ng&agrave;o thế n&agrave;y, Jennie (BLACKPINK) v&agrave; Irene (Red Velvet) được netizen mạnh tay" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201712/20171226-093346-25660187_417013438751397_2162155673353514812_n.jpg"><img style="width: 600px; height: 400px;" title="Jennie&nbsp;(BLACKPINK) v&agrave; Irene (Red Velvet) b&ecirc;n nhau&nbsp;kh&ocirc;ng rời." src="https://static2.yan.vn/YanNews/2167221/201712/20171226-093346-25660187_417013438751397_2162155673353514812_n.jpg" alt="Jennie&nbsp;(BLACKPINK) v&agrave; Irene (Red Velvet) b&ecirc;n nhau&nbsp;kh&ocirc;ng rời." /></a><em>Jennie&nbsp;(BLACKPINK) v&agrave; Irene (Red Velvet) b&ecirc;n nhau&nbsp;kh&ocirc;ng rời.</em></p>
<p>Được biết, mặc d&ugrave; ở hai c&ocirc;ng ty&nbsp;kh&aacute;c nhau nhưng c&aacute;c th&agrave;nh vi&ecirc;n&nbsp;BLACKPINK v&agrave; Red Velvet lại c&oacute; mối quan hệ v&ocirc; c&ugrave;ng th&acirc;n thiết. Kh&ocirc;ng chỉ thường xuy&ecirc;n&nbsp;đi ăn chung&nbsp;với nhau, c&aacute;c th&agrave;nh vi&ecirc;n c&ograve;n sẵn s&agrave;ng chia sẻ những c&acirc;u chuyện về cuộc sống của ch&iacute;nh m&igrave;nh.</p>
<p>C&oacute; thể thấy t&igrave;nh bạn của&nbsp;Black Velvet&nbsp;(c&aacute;ch m&agrave; c&aacute;c fan gọi t&igrave;nh bạn giữa Red Velvet v&agrave; Black Pink) kh&ocirc;ng chỉ đơn giản một mối quan hệ&nbsp;x&atilde; giao trong showbiz như nhiều fan vẫn h&igrave;nh dung. Tr&aacute;i lại, 9 c&ocirc; g&aacute;i c&ograve;n c&oacute; thể trở th&agrave;nh những người bạn, những chị em tốt của nhau.</p>
<p><img style="width: auto; height: 60px;" src="https://www.yan.vn/images/fb.jpg" /><img style="width: auto; height: 60px;" src="https://www.yan.vn/images/link.jpg" /><a href="https://static2.yan.vn/YanNews/2167221/201712/20171226-095038-57a94b22a81bb722178b4569redvelvetblackpink.jpg"><img style="width: 600px; height: 400px;" title="BLACKPINK v&agrave; Red Velvet." src="https://static2.yan.vn/YanNews/2167221/201712/20171226-095038-57a94b22a81bb722178b4569redvelvetblackpink.jpg" alt="BLACKPINK v&agrave; Red Velvet." /></a><br /><em>BLACKPINK v&agrave; Red Velvet</em>.</p>
</body>
</html>', 1, 0, CAST(N'2020-11-05 00:08:41.833' AS DateTime), 1, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (47, N'Thánh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm', N'', N'\Img\TinBai\nhungdieuitaibietvenudienvienjavxinhdepnhatmoithoidai6-5275a2bb.jpg', N'Erika Momotani - cô gái được xưng tụng là "Thánh nữ JAV" - khiến hàng triệu nam thanh niên ôm tiếc nuối khóc thầm vì từ giã sự nghiệp "giải trí" quá sớm.
Nếu là “fan ruột” của những bộ phim JAV thì chắc hẳn không ai là không biết đến cái tên Erika Momotani – người vượt qua tên tuổi Maria Ozawa để được mệnh danh là nữ diễn viên phim người lớn xinh đẹp nhất mọi thời đại. Dù đã “nghỉ hưu” được 4 năm nhưng nhan sắc của cô vẫn để lại ấn tượng khó phai trong lòng người hâm mộ.', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/erikamomotari-5b20ad2e.png"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/erikamomotari-5b20ad2e.png" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p>Sinh năm 1994, nhưng&nbsp;<a href="http://www.yan.vn/erika-momotani.htm?utm_campaign=InternallinkYAN&amp;utm_source=174516&amp;utm_medium=noniadesktop"><em><strong>Erika Momotani</strong></em></a>&nbsp;đ&atilde; kh&aacute; th&agrave;nh c&ocirc;ng trong sự nghiệp diễn vi&ecirc;n phim n&oacute;ng. Th&acirc;n h&igrave;nh chuẩn c&ugrave;ng gương mặt xinh đẹp đ&atilde; gi&uacute;p&nbsp;<em><strong>Erika</strong></em>&nbsp;rất nhiều trong qu&aacute; tr&igrave;nh diễn xuất.</p>
<p>Người đẹp sở hữu th&acirc;n h&igrave;nh &ldquo;bốc lửa&rdquo; c&ugrave;ng c&aacute;c chỉ số ho&agrave;n hảo như chiều cao 1m65 v&agrave; số đo 3 v&ograve;ng cực hấp dẫn 85-55-83.&nbsp;<em><strong>Erika</strong></em>&nbsp;nổi tiếng kh&ocirc;ng chỉ v&igrave; gương mặt cực kỳ dễ thương v&agrave; xinh xắn, lu&ocirc;n thu h&uacute;t mọi &aacute;nh nh&igrave;n khi xuất hiện, m&agrave; c&ograve;n bởi c&ocirc; mang đến cho người xem những biểu cảm kh&ocirc;ng thể n&agrave;o tuyệt vời hơn.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/4a2bc43d00f3db0613138c5f5e637a95-98df37fe.png"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/4a2bc43d00f3db0613138c5f5e637a95-98df37fe.png" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/nhungdieuitaibietvenudienvienjavxinhdepnhatmoithoidai9-298a2b31.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/nhungdieuitaibietvenudienvienjavxinhdepnhatmoithoidai9-298a2b31.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/nhungdieuitaibietvenudienvienjavxinhdepnhatmoithoidai6-5275a2bb.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/nhungdieuitaibietvenudienvienjavxinhdepnhatmoithoidai6-5275a2bb.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/f532f839de7ebe86273e0ce1f7b2f0f8sexyasiangirlsasianbeauty-3cb2c89e.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/f532f839de7ebe86273e0ce1f7b2f0f8sexyasiangirlsasianbeauty-3cb2c89e.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/646f510d9d2a3b4c3f57682213487d73-fc1642f5.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/646f510d9d2a3b4c3f57682213487d73-fc1642f5.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><em><strong>Erika</strong></em>&nbsp;ch&iacute;nh thức ra mắt v&agrave;o th&aacute;ng 2 năm 2014 v&agrave; nhanh ch&oacute;ng vươn l&ecirc;n trở th&agrave;nh ng&ocirc;i sao h&agrave;ng đầu trong ng&agrave;nh&nbsp;<em>JAV</em>. Tuy nhi&ecirc;n đến th&aacute;ng 8 năm 2014, c&ocirc; tuy&ecirc;n bố &ldquo;nghỉ hưu&rdquo; sau nửa năm tham gia diễn xuất. D&ugrave; số lượng t&aacute;c phẩm kh&ocirc;ng nhiều (khoảng 11 bộ phim), nhưng người đẹp vẫn tạo được ấn tượng kh&oacute; phai trong l&ograve;ng c&ocirc;ng ch&uacute;ng.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/4710218ee5db5067125dacc8a9fe2c37-f2a7dd0e.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/4710218ee5db5067125dacc8a9fe2c37-f2a7dd0e.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><em><strong>Erika Momotani</strong></em>&nbsp;xếp hạng thứ 6 trong danh s&aacute;ch &ldquo;th&aacute;nh nữ&rdquo; trẻ đẹp nhất của &ldquo;l&agrave;ng giải tr&iacute;&rdquo;&nbsp;<em>JAV</em>&nbsp;do&nbsp;<em>Ugirls</em>&nbsp;đ&aacute;nh gi&aacute;. C&ocirc; cũng từng được nhiều người đặt niềm tin trong tương lai sẽ vượt qua cả những ng&ocirc;i sao nổi tiếng trước kia như:&nbsp;<em><strong>Maria Ozawa</strong></em>,&nbsp;<strong><em>Jun Aizawa</em></strong>&nbsp;hay&nbsp;<em><strong>Tsubasa Anami</strong></em>&hellip;</p>
<p>&gt;&gt; C&oacute; thể bạn quan t&acirc;m:<br /><em>-&nbsp;<a href="http://bit.ly/2MfuL07" target="_blank" rel="nofollow noopener">Những điều &iacute;t ai biết về những diễn vi&ecirc;n đ&oacute;ng phim người lớn</a><br />-&nbsp;<a href="http://bit.ly/2wUxuGy" target="_blank" rel="nofollow noopener">Quy chuẩn chọn nữ diễn vi&ecirc;n phim người lớn của Hongkong v&agrave; Nhật Bản</a><br />-&nbsp;<a href="http://bit.ly/2O0hdXR" target="_blank" rel="nofollow noopener">Nh&oacute;m nhạc nữ gồm 3 diễn vi&ecirc;n JAV tung ảnh bikini</a></em></p>
<p>V&agrave;o năm 2014, c&ocirc; n&agrave;ng thu h&uacute;t sự ch&uacute; &yacute; của truyền th&ocirc;ng khi c&ocirc;ng khai tr&ecirc;n trang&nbsp;<em>Weibo</em>&nbsp;c&aacute; nh&acirc;n rằng đ&atilde; kết h&ocirc;n v&agrave; sống c&ugrave;ng chồng tại New York. Nhưng tin đồn n&agrave;y rất nhanh ch&oacute;ng đ&atilde; bị c&ocirc;ng ty quản l&yacute; của&nbsp;<em><strong>Erikia&nbsp;</strong></em>dập tắt v&agrave; đ&iacute;nh ch&iacute;nh rằng nick Weibo đưa th&ocirc;ng tin sai lệch kia kh&ocirc;ng phải của c&ocirc; n&agrave;ng.</p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/84bc727dd05b9739031d6441669e3826-4c1513f4.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/84bc727dd05b9739031d6441669e3826-4c1513f4.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p><a href="https://static2.yan.vn/YanNews/2167221/201808/3cb4c6f3bdd62482e7b44f5c3a43b110-5fcc64d8.jpg"><img style="width: 730px; height: auto;" title="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" src="https://static2.yan.vn/YanNews/2167221/201808/3cb4c6f3bdd62482e7b44f5c3a43b110-5fcc64d8.jpg" alt="Th&aacute;nh nữ JAV đẹp nhất mọi thời đại giải nghệ chỉ sau nửa năm" /></a></p>
<p>Khi c&ograve;n hoạt động trong lĩnh vực n&agrave;y,&nbsp;<em><strong>Erika Momotani</strong></em>&nbsp;đ&atilde; từng bị một t&ecirc;n hacker &ldquo;lấy cắp&rdquo; một số lượng lớn&nbsp;<a href="http://www.yan.vn/3-cuu-dien-vien-khieu-dam-nhat-mo-hop-bao-160085.html?utm_campaign=InternallinkYAN&amp;utm_source=174516&amp;utm_medium=noniadesktop">phim&nbsp;<em>JAV</em></a>&nbsp;vẫn c&ograve;n chưa được ra mắt kh&aacute;n giả. Hắn ta đ&atilde; lan truyền những bộ phim của c&ocirc; l&ecirc;n mạng x&atilde; hội v&agrave; được chia sẻ với tốc độ ch&oacute;ng mặt. Điều n&agrave;y đ&atilde; l&agrave;m ảnh hướng đến c&ocirc;ng việc của c&ocirc; v&agrave; c&ocirc;ng ty quản l&yacute; trong một thời gian kh&aacute; d&agrave;i. Rất may l&agrave; c&ocirc;ng ty của&nbsp;<em><strong>Erika</strong></em>&nbsp;đ&atilde; t&igrave;m ra được t&ecirc;n hacker v&agrave; ngăn chắn hắn kh&ocirc;ng l&agrave;m tiết lộ những bộ phim c&ograve;n lại.</p>
<p><em><strong>Erika Momotani</strong></em>&nbsp;giải nghệ&nbsp;khiến cư d&acirc;n mạng kh&ocirc;ng khỏi xu&yacute;t xoa v&agrave; nuối tiếc về nhan sắc của n&agrave;ng &ldquo;th&aacute;nh nữ&rdquo;. Th&ocirc;i th&igrave; đ&atilde; từ bỏ sự nghiệp phim người lớn th&igrave; mong&nbsp;<em><strong>Erika</strong></em>&nbsp;sẽ c&oacute; một cuộc sống vui vẻ hạnh ph&uacute;c.</p>
</body>
</html>', 1, 1, CAST(N'2020-11-05 03:14:57.230' AS DateTime), 1, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (48, N'"Bà trùm hoa hậu" Phạm Kim Dung: Đỗ Mỹ Linh không phải hoa hậu nghèo nhất Việt Nam', N'', N'\Img\TinBai\photo1604918713725-1604918714297995198938.jpg', N'"Sau khi Đỗ Mỹ Linh đăng quang, tôi là người ký tất cả các hợp đồng thương mại của cô ấy nên tôi biết hết cô ấy có bao nhiêu tiền", chị Phạm Kim Dung nói.', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div id="relationnews">
<aside>
<ul style="list-style-type: none;" data-slottype="relatednews">
<li style="list-style-type: none;"><a title="&quot;B&agrave; tr&ugrave;m hoa hậu&quot; Phạm Kim Dung: Chiến lược &quot;ph&aacute; r&agrave;o&quot; cho Đỗ Mỹ Linh v&agrave; cuộc sống với đạo diễn Ho&agrave;ng Nhật Nam" href="https://soha.vn/ba-trum-hoa-hau-pham-kim-dung-chien-luoc-pha-rao-cho-do-my-linh-va-cuoc-song-voi-dao-dien-hoang-nhat-nam-20200310171223531.htm" data-popup-url="/ba-trum-hoa-hau-pham-kim-dung-chien-luoc-pha-rao-cho-do-my-linh-va-cuoc-song-voi-dao-dien-hoang-nhat-nam-20200310171223531rf20201109175208318.htm">"B&agrave; tr&ugrave;m hoa hậu" Phạm Kim Dung: Chiến lược "ph&aacute; r&agrave;o" cho Đỗ Mỹ Linh v&agrave; cuộc sống với đạo diễn Ho&agrave;ng Nhật Nam &nbsp;</a></li>
<li style="list-style-type: none;"><a title="&quot;B&agrave; tr&ugrave;m&quot; hoa hậu Phạm Kim Dung n&oacute;i g&igrave; về con người Lương Th&ugrave;y Linh v&agrave; chiếc v&aacute;y sexy của Mai Phương Thu&yacute;?" href="https://soha.vn/truong-ban-to-chuc-noi-gi-ve-nhung-on-ao-sau-dem-chung-ket-cua-luong-thuy-linh-mai-phuong-thuy-le-quyen-20190806144808852.htm" data-popup-url="/truong-ban-to-chuc-noi-gi-ve-nhung-on-ao-sau-dem-chung-ket-cua-luong-thuy-linh-mai-phuong-thuy-le-quyen-20190806144808852rf20201109175208318.htm">"B&agrave; tr&ugrave;m" hoa hậu Phạm Kim Dung n&oacute;i g&igrave; về con người Lương Th&ugrave;y Linh v&agrave; chiếc v&aacute;y sexy của Mai Phương Thu&yacute;? &nbsp;</a></li>
</ul>
</aside>
</div>
<div id="ContentFirstShort"></div>
<div id="ContentFirstFull" data-field="body">
<p>Mới đ&acirc;y, chương tr&igrave;nh "<a title="lời tự sự" href="https://soha.vn/loi-tu-su.html" target="_blank" rel="noopener">Lời tự sự</a>" l&ecirc;n s&oacute;ng với kh&aacute;ch mời l&agrave; "b&agrave; tr&ugrave;m hoa hậu"&nbsp;<a title="phạm kim dung" href="https://soha.vn/pham-kim-dung.html" target="_blank" rel="noopener">Phạm Kim Dung</a>&nbsp;- Tổng gi&aacute;m đốc c&ocirc;ng ty Sen V&agrave;ng - đơn vị tổ chức nhiều cuộc thi nhan sắc v&agrave; quản l&yacute; c&aacute;c hoa hậu Việt Nam.</p>
<p>L&agrave; người c&oacute; kinh nghiệm quản l&yacute; nhiều hoa hậu, Phạm Kim Dung t&acirc;m sự:&nbsp;<em>"Thực sự c&ocirc;ng việc quản l&yacute; hoa hậu chưa bao giờ c&oacute; l&atilde;i, n&oacute; lu&ocirc;n lu&ocirc;n lỗ v&igrave; tỷ lệ ph&acirc;n chia doanh thu chỉ đủ để "nu&ocirc;i qu&acirc;n" th&ocirc;i.</em></p>
<p><em>C&ograve;n những chi ph&iacute; về PR, quan hệ kh&aacute;ch h&agrave;ng, h&igrave;nh ảnh của hoa hậu l&agrave; c&ocirc;ng ty chi hết. C&aacute;i l&atilde;i nhiều nhất l&agrave; sự trưởng th&agrave;nh của c&aacute;c bạn, sự mang ơn của c&aacute;c bạn đối với c&ocirc;ng ty, danh tiếng của c&ocirc;ng ty cũng được đảm bảo tốt".</em></p>
<div>
<div><img id="img_250209579439919104" title="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 1." src="https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2020/11/9/anh-chup-man-hinh-2020-11-09-luc-173804-1604918605639699915706.png" alt="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 1." width="" height="" data-original="https://sohanews.sohacdn.com/160588918557773824/2020/11/9/anh-chup-man-hinh-2020-11-09-luc-173804-1604918605639699915706.png" /></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">"B&agrave; tr&ugrave;m hoa hậu" Phạm Kim Dung.</p>
</div>
</div>
<p>Khi được hỏi về việc hoa hậu b&aacute;n d&acirc;m h&agrave;ng ngh&igrave;n đ&ocirc; la, chị Phạm Kim Dung khẳng định, những người đẹp do c&ocirc;ng ty chị quản l&yacute; được kiểm so&aacute;t kỹ c&agrave;ng v&agrave; c&oacute; đủ khả năng để tr&aacute;nh xa những việc khiến danh hiệu bị hoen ố:</p>
<p><em>"Khi đọc những th&ocirc;ng tin đ&oacute;, t&ocirc;i cảm thấy kh&aacute; buồn v&igrave; t&ocirc;i hiểu một c&ocirc; g&aacute;i đang c&oacute; sẵn nhan sắc, đang c&oacute; sẵn bệ ph&oacute;ng th&igrave; việc c&oacute; thu nhập tốt kh&ocirc;ng hề kh&oacute;, chỉ cần m&igrave;nh nỗ lực, nghi&ecirc;m t&uacute;c một ch&uacute;t th&igrave; cơ hội sẽ đến với m&igrave;nh.</em></p>
<p><em>Nhưng những c&ocirc; g&aacute;i đ&oacute; kh&aacute; vội v&agrave;ng v&agrave; muốn thay đổi cuộc sống nhanh n&ecirc;n lựa chọn một c&aacute;ch đi hơi sai lầm. Tuy nhi&ecirc;n, kh&ocirc;ng c&oacute; cầu th&igrave; kh&ocirc;ng c&oacute; cung n&ecirc;n c&aacute;ch những đối tượng tiếp cận để đẩy đưa những bạn trẻ đến với con đường n&agrave;y rất đ&aacute;ng tr&aacute;ch.</em></p>
<p><em>V&igrave; phải c&oacute; người khơi gợi nhu cầu, t&igrave;m đến c&aacute;c c&ocirc; đ&oacute; th&igrave; c&aacute;c c&ocirc; mới biết như vậy. N&ecirc;n nếu phạt v&agrave; l&ecirc;n &aacute;n th&igrave; n&ecirc;n l&ecirc;n &aacute;n cả hai b&ecirc;n chứ kh&ocirc;ng chỉ c&aacute;c c&ocirc; đ&oacute;"</em>, Phạm Kim Dung chia sẻ.</p>
<div>
<div><img id="img_250209871749357568" title="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 2." src="https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2020/11/9/ba-trum-hoa-hau-pham-kim-dung-khoe-nhan-sac-ngot-ngao-cung-do-my-linh-tai-su-kien-674-5027167-16049186799131599309279.jpg" alt="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 2." width="" height="" data-original="https://sohanews.sohacdn.com/160588918557773824/2020/11/9/ba-trum-hoa-hau-pham-kim-dung-khoe-nhan-sac-ngot-ngao-cung-do-my-linh-tai-su-kien-674-5027167-16049186799131599309279.jpg" /></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Phạm Kim Dung b&ecirc;n Đỗ Mỹ Linh.</p>
</div>
</div>
<p>Ngo&agrave;i ra, Phạm Kim Dung cũng chia sẻ về trường hợp của Đỗ Mỹ Linh, d&ugrave; thường bị gọi l&agrave; hoa hậu "ngh&egrave;o", giản dị nhưng thực tế Đỗ Mỹ Linh kh&ocirc;ng ngh&egrave;o n&ecirc;n sẽ kh&ocirc;ng thể rơi v&agrave;o những scandal t&igrave;nh-tiền.</p>
<div id="admzone500281"></div>
<p><em>"Sau khi Đỗ Mỹ Linh đăng quang, t&ocirc;i l&agrave; người k&yacute; tất cả c&aacute;c hợp đồng thương mại của c&ocirc; ấy n&ecirc;n t&ocirc;i biết hết c&ocirc; ấy c&oacute; bao nhi&ecirc;u tiền. Trong t&agrave;i khoản của Linh l&uacute;c n&agrave;o cũng c&oacute; số tiền lớn nhưng suốt 2 năm Linh đăng quang mới c&oacute; một v&agrave;i c&aacute;i t&uacute;i hiệu cho bằng chị bằng em th&ocirc;i.</em></p>
<p><em>Trước đ&oacute; cả một năm trời, Linh x&aacute;ch t&uacute;i hiệu rất b&igrave;nh thường, t&ocirc;i l&agrave; người tặng Linh c&aacute;i t&uacute;i đ&oacute;, cỡ khoảng 5-6 triệu. C&ocirc; ấy x&aacute;ch t&uacute;i đ&oacute; rất l&acirc;u, kh&ocirc;ng thấy vấn đề g&igrave; cả. B&aacute;o ch&iacute; cũng gọi Mỹ Linh l&agrave; "Hoa hậu ngh&egrave;o nhất Việt Nam" nhưng thật ra c&ocirc; ấy kh&ocirc;ng ngh&egrave;o. T&ocirc;i nghĩ gi&aacute; trị của con người kh&ocirc;ng nằm ở chiếc t&uacute;i, kh&ocirc;ng nằm ở đ&ocirc;i gi&agrave;y m&agrave; nằm ở lối sống.</em></p>
<p><em>T&ocirc;i thấy c&aacute;c bạn hoa hậu, &aacute; hậu t&ocirc;i đang quản l&yacute; kh&ocirc;ng quan t&acirc;m lắm đến đồ hiệu v&agrave; vật chất b&ecirc;n ngo&agrave;i n&ecirc;n sẽ kh&ocirc;ng rơi v&agrave;o những chuyện như thế"</em>.</p>
<div>
<div><img id="img_250209873701707776" title="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 3." src="https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2020/11/9/ba-trum-hoa-hau8-16049186804211046501334.jpg" alt="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 3." width="" height="" data-original="https://sohanews.sohacdn.com/160588918557773824/2020/11/9/ba-trum-hoa-hau8-16049186804211046501334.jpg" /></div>
</div>
<div>
<div><img id="img_250209873087336448" title="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 4." src="https://sohanews.sohacdn.com/160588918557773824/2020/11/9/hoa-hau-viet-nam-2020-4-16049186806351143274830.jpg" alt="B&agrave; tr&ugrave;m hoa hậu Phạm Kim Dung: Đỗ Mỹ Linh kh&ocirc;ng phải hoa hậu ngh&egrave;o nhất Việt Nam - Ảnh 4." width="" height="" data-original="https://sohanews.sohacdn.com/160588918557773824/2020/11/9/hoa-hau-viet-nam-2020-4-16049186806351143274830.jpg" /></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Phạm Kim Dung quản l&yacute; nhiều người đẹp trong c&aacute;c cuộc thi nhan sắc lớn.</p>
</div>
</div>
<p>Ngo&agrave;i ra, "b&agrave; tr&ugrave;m hoa hậu" khẳng định, c&aacute;c người đẹp thuộc c&ocirc;ng ty chị phải tu&acirc;n thủ y&ecirc;u cầu bắt buộc l&agrave; kh&ocirc;ng được tiếp x&uacute;c với những cuộc hẹn b&ecirc;n ngo&agrave;i, đi dự event phải c&oacute; giấy ph&eacute;p, những event ri&ecirc;ng tư người quản l&yacute; sẽ từ chối thẳng d&ugrave; c&oacute; gi&aacute; bao nhi&ecirc;u.</p>
<p><em>"C&aacute;c bạn đều tu&acirc;n thủ đ&uacute;ng những nguy&ecirc;n tắc đ&oacute;. T&ocirc;i nghĩ một phần l&agrave; do danh hiệu hoa hậu, &aacute; hậu của Hoa hậu Việt Nam, Miss World Việt Nam qu&aacute; lớn, đủ để c&aacute;c bạn phải tr&acirc;n trọng v&agrave; hiểu l&agrave; m&igrave;nh sẽ kiếm được nhiều thứ hơn một c&aacute;ch ch&iacute;nh đ&aacute;ng từ danh hiệu n&agrave;y chứ kh&ocirc;ng phải bằng những c&aacute;ch vật chất, mong manh như thế"</em>, Phạm Kim Dung n&oacute;i.</p>
<div><a title="Điều &iacute;t biết về qu&atilde;ng thời gian l&agrave;m người mẫu của vợ t&acirc;n Tổng thống Mỹ Joe Biden" href="https://soha.vn/dieu-it-biet-ve-quang-thoi-gian-lam-nguoi-mau-cua-vo-tan-tong-thong-my-joe-biden-20201108102743115.htm" data-popup-url="/dieu-it-biet-ve-quang-thoi-gian-lam-nguoi-mau-cua-vo-tan-tong-thong-my-joe-biden-20201108102743115.htm" data-cke-saved-href="https://soha.vn/dieu-it-biet-ve-quang-thoi-gian-lam-nguoi-mau-cua-vo-tan-tong-thong-my-joe-biden-20201108102743115.htm">Điều &iacute;t biết về qu&atilde;ng thời gian l&agrave;m người mẫu của vợ t&acirc;n Tổng thống Mỹ Joe Biden</a></div>
</div>
</body>
</html>', 1, 0, CAST(N'2020-11-10 17:00:04.527' AS DateTime), 1, 14, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (50, N'Thêm gái Việt được khen trên báo Trung, lần này là Chù Disturbia - hot girl Sài Gòn nổi tiếng 10 năm trước', N'', N'\Img\TinBai\12312.jpg', N'Báo Trung đã dành rất nhiều mỹ từ cho cô gái này, thậm chí còn ví von "Việt Nam quả là nơi mỹ nữ nhiều như mây trên trời".', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Chuyện những c&ocirc; n&agrave;ng Việt Nam xuất hiện tr&ecirc;n b&aacute;o ch&iacute; nước ngo&agrave;i kh&ocirc;ng c&ograve;n l&agrave; điều xa lạ. Thỉnh thoảng người ta cũng buộc phải thắc mắc kh&ocirc;ng biết con g&aacute;i Việt c&oacute; g&igrave; m&agrave; đặc biệt đến thế. Thế nhưng tới khi được ngắm nhan sắc, vẻ dễ thương của c&aacute;c "b&oacute;ng hồng" ấy, người ta lại phải gật g&ugrave;: Ừ, xinh thế n&agrave;y kh&ocirc;ng h&acirc;m mộ th&igrave; cũng lạ.</p>
<p>C&aacute;i t&ecirc;n tiếp theo được g&oacute;p mặt trong danh s&aacute;ch g&aacute;i xinh Việt được cộng đồng mạng quốc tế tung h&ocirc; l&agrave; một c&ocirc; n&agrave;ng đến từ TP.HCM. Xuất hiện tr&ecirc;n một trang tin của Trung Quốc, c&ocirc; n&agrave;ng n&agrave;y được mi&ecirc;u tả như sau:&nbsp;<em>"Hot girl đến từ Việt Nam sở hữu kh&iacute; chất v&agrave; nhan sắc v&ocirc; c&ugrave;ng xinh đẹp, body n&oacute;ng bỏng của c&ocirc; cũng cực k&igrave; thu h&uacute;t. Việt Nam quả l&agrave; nơi mỹ nữ nhiều như m&acirc;y tr&ecirc;n trời"</em>.&nbsp;B&agrave;i viết cũng đ&iacute;nh k&egrave;m h&agrave;ng loạt những bức ảnh quyến rũ của c&ocirc; n&agrave;ng.</p>
<div>
<div>
<div id="nativezone_517354_2012481" data-height="undefined" data-width="undefined" data-admssprqid="ded605e8-13fd-47e1-9718-36c695eecfd8-5fb1ea94" data-ssp="sspbid_2012481"><iframe id="native_ad_ifr_517354_2012481" frameborder="no" scrolling="no" data-bid="566664" data-mce-fragment="1"></iframe></div>
<a title="B&agrave;i viết về Ch&ugrave; tr&ecirc;n trang tin tiếng Trung" href="https://kenh14cdn.com/2020/6/29/screenshot1-15934437417421112367571.png" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_66c60c00-ba1b-11ea-95f2-739809619427" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 1." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/screenshot1-15934437417421112367571.png" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 1." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/screenshot1-15934437417421112367571.png" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">B&agrave;i viết về Ch&ugrave; tr&ecirc;n trang tin tiếng Trung</p>
</div>
</div>
<p>Ngay lập tức, một cuộc truy l&ugrave;ng danh t&iacute;nh của girl xinh kể tr&ecirc;n đ&atilde; được ph&aacute;t động. V&agrave; rất nhanh ch&oacute;ng, ch&acirc;n dung c&ocirc; n&agrave;ng lộ diện. Tới l&uacute;c n&agrave;y người ta mới ph&aacute;t hiện h&oacute;a ra đ&acirc;y kh&ocirc;ng phải gương mặt n&agrave;o qu&aacute; xa lạ m&agrave; cũng thuộc diện... người quen.</p>
<p>Được biết, n&agrave;ng hot girl ch&iacute;nh l&agrave; Nguyễn Thị V&acirc;n Anh, hay c&ograve;n được biết đến nickname Ch&ugrave; Disturbia (@lylychuu).&nbsp;<a title="Ch&ugrave; V&acirc;n Anh l&agrave; diễn vi&ecirc;n ch&iacute;nh trong Try của Fu Production" href="https://kenh14.vn/gan-10-nam-truoc-co-ban-xinh-dep-nay-tung-la-crush-cua-hang-ngan-chang-trai-sai-gon-20180826115516728.chn" target="_blank" rel="noopener" data-cke-saved-href="https://kenh14.vn/gan-10-nam-truoc-co-ban-xinh-dep-nay-tung-la-crush-cua-hang-ngan-chang-trai-sai-gon-20180826115516728.chn">"Ch&ugrave;" V&acirc;n Anh l&agrave; diễn vi&ecirc;n ch&iacute;nh trong "Try" của Fu Production</a>&nbsp;- web-series đầu ti&ecirc;n về học đường tại Việt Nam. D&ugrave; ra đời từ năm 2010, khi m&agrave; MXH chưa ph&aacute;t triển mạnh mẽ nhưng bộ phim n&agrave;y vẫn sở hữu lượt xem l&ecirc;n đến cả triệu. Một trong những c&aacute;i t&ecirc;n l&agrave;m n&ecirc;n sự th&agrave;nh c&ocirc;ng cho t&aacute;c phẩm ch&iacute;nh l&agrave; Ch&ugrave;. Thời điểm đ&oacute; ở S&agrave;i G&ograve;n, c&ocirc; n&agrave;ng được xem l&agrave; "crush của mọi nh&agrave;", kh&ocirc;ng ai l&agrave; kh&ocirc;ng biết đến.</p>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" data-title=""><img style="height: 429px; width: 286px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" data-title=""><img style="height: 429px; width: 286px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">"Ch&ugrave;" V&acirc;n Anh của 10 năm trước</p>
</div>
</div>
<div id="admzone474524">
<div id="zone-474524">
<div id="share-jvrit1l1">
<div id="placement-566957">
<div id="banner-474524-567026">
<div id="slot-1-474524-567026">
<div id="ssppagebid_2102">
<div id="iplayzone_474461_3192" data-height="320" data-width="640" data-admssprqid="8f16dcf1-c1b3-4dfd-9f94-84a120582790-5fb1ea8f" data-ssp="sspbid_3192"></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" data-title=""><img style="height: 508px; width: 285.75px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" data-title=""><img style="height: 508px; width: 285.75px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">V&agrave; b&agrave; chủ "Ch&ugrave;" xinh đẹp của hiện tại</p>
</div>
</div>
<p>Quay lại với việc l&ecirc;n b&aacute;o Trung, Ch&ugrave; cho biết c&ocirc; n&agrave;ng kh&aacute; bất ngờ. 10 năm kể từ ng&agrave;y nổi tiếng, cuộc sống của Ch&ugrave; cũng c&oacute; kh&aacute; nhiều thay đổi khi giờ đ&acirc;y c&ocirc; n&agrave;ng đ&atilde; sở hữu c&ocirc;ng việc kinh doanh ri&ecirc;ng v&agrave; kh&aacute; bận rộn với n&oacute;. B&ecirc;n cạnh đ&oacute;, do y&ecirc;u th&iacute;ch diễn xuất n&ecirc;n từ "Try" đến nay, cứ thỉnh thoảng Ch&ugrave; lại nhận một phim series ph&ugrave; hợp để diễn để đỡ nhớ cơm đo&agrave;n, nhớ nghề. Đ&acirc;y cũng được coi như l&agrave; m&oacute;n qu&agrave; Ch&ugrave; muốn d&agrave;nh cho những người theo d&otilde;i m&igrave;nh. C&ograve;n lại, c&ocirc; chủ yếu tập trung cho c&ocirc;ng việc kinh doanh.</p>
<div>
<div><a title="Ch&ugrave; vẫn đi diễn b&ecirc;n cạnh việc kinh doanh" href="https://kenh14cdn.com/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_cbc462f0-ba1b-11ea-b730-09c1f42d0196" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 4." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 4." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Ch&ugrave; vẫn đi diễn b&ecirc;n cạnh việc kinh doanh</p>
</div>
</div>
<div>
<div><a title="Nhan sắc c&ocirc; n&agrave;ng c&agrave;ng ng&agrave;y c&agrave;ng mặn m&agrave;" href="https://kenh14cdn.com/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_23d147b0-ba1c-11ea-a48b-9db4b764ae00" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 5." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 5." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Nhan sắc c&ocirc; n&agrave;ng c&agrave;ng ng&agrave;y c&agrave;ng mặn m&agrave;</p>
</div>
</div>
<p>Khi được hỏi về chuyện t&igrave;nh cảm, Ch&ugrave; xin ph&eacute;p được giữ b&iacute; mật. Tuy nhi&ecirc;n, c&ocirc; n&agrave;ng cũng tiết lộ một ch&uacute;t th&ocirc;ng tin về h&igrave;nh mẫu l&yacute; tưởng của m&igrave;nh:&nbsp;<em>"M&igrave;nh chỉ cần một người y&ecirc;u thương m&igrave;nh v&agrave; c&oacute; ch&iacute; tiến thủ trong cuộc sống th&ocirc;i. &Agrave; m&agrave; m&igrave;nh th&iacute;ch con trai &iacute;t n&oacute;i một ch&uacute;t nữa, tại m&igrave;nh n&oacute;i hơi nhiều rồi (cười)"</em>, Ch&ugrave; chia sẻ.</p>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" data-title=""><img style="height: 368px; width: 276px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" data-title=""><img style="height: 368px; width: 295.167px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
</div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" data-title=""><img style="height: 357px; width: 285.812px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" data-title=""><img style="height: 357px; width: 285.812px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Loạt ảnh bikini sexy cực k&igrave; của Ch&ugrave; khiến cư d&acirc;n mạng kh&ocirc;ng rời được mắt</p>
</div>
</div>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" data-title=""><img style="height: 419px; width: 235.831px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" data-title=""><img style="height: 419px; width: 335.448px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
</div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" data-title=""><img style="height: 317px; width: 317.294px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" data-title=""><img style="height: 317px; width: 253.6px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Một v&agrave;i h&igrave;nh ảnh kh&aacute;c của c&ocirc; n&agrave;ng</p>
</div>
</div>
</body>
</html>', 1, 1, CAST(N'2020-11-16 09:58:43.533' AS DateTime), 3, 11, 1)
INSERT [dbo].[TinBai] ([TinBaiID], [Title], [TitleLink], [Images], [Description], [Detail], [Duyet], [Xoa], [NgayDang], [NguoiDungID], [MenuID], [TinNoiBat]) VALUES (51, N'Thêm gái Việt được khen trên báo Trung, lần này là Chù Disturbia - hot girl Sài Gòn nổi tiếng 10 năm trước', N'', N'\Img\TinBai\5915ef615bc103af-1593440312298448999409-crop-15934410362651838975344.jpg', N'Báo Trung đã dành rất nhiều mỹ từ cho cô gái này, thậm chí còn ví von "Việt Nam quả là nơi mỹ nữ nhiều như mây trên trời".', N'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Chuyện những c&ocirc; n&agrave;ng Việt Nam xuất hiện tr&ecirc;n b&aacute;o ch&iacute; nước ngo&agrave;i kh&ocirc;ng c&ograve;n l&agrave; điều xa lạ. Thỉnh thoảng người ta cũng buộc phải thắc mắc kh&ocirc;ng biết con g&aacute;i Việt c&oacute; g&igrave; m&agrave; đặc biệt đến thế. Thế nhưng tới khi được ngắm nhan sắc, vẻ dễ thương của c&aacute;c "b&oacute;ng hồng" ấy, người ta lại phải gật g&ugrave;: Ừ, xinh thế n&agrave;y kh&ocirc;ng h&acirc;m mộ th&igrave; cũng lạ.</p>
<p>C&aacute;i t&ecirc;n tiếp theo được g&oacute;p mặt trong danh s&aacute;ch g&aacute;i xinh Việt được cộng đồng mạng quốc tế tung h&ocirc; l&agrave; một c&ocirc; n&agrave;ng đến từ TP.HCM. Xuất hiện tr&ecirc;n một trang tin của Trung Quốc, c&ocirc; n&agrave;ng n&agrave;y được mi&ecirc;u tả như sau:&nbsp;<em>"Hot girl đến từ Việt Nam sở hữu kh&iacute; chất v&agrave; nhan sắc v&ocirc; c&ugrave;ng xinh đẹp, body n&oacute;ng bỏng của c&ocirc; cũng cực k&igrave; thu h&uacute;t. Việt Nam quả l&agrave; nơi mỹ nữ nhiều như m&acirc;y tr&ecirc;n trời"</em>.&nbsp;B&agrave;i viết cũng đ&iacute;nh k&egrave;m h&agrave;ng loạt những bức ảnh quyến rũ của c&ocirc; n&agrave;ng.</p>
<div>
<div>
<div id="nativezone_517354_2012481" data-height="undefined" data-width="undefined" data-admssprqid="c1ed8374-0690-4937-a4f9-d167e8210622-5fb1edef" data-ssp="sspbid_2012481"><iframe id="native_ad_ifr_517354_2012481" frameborder="no" scrolling="no" data-bid="566664" data-mce-fragment="1"></iframe></div>
<a title="B&agrave;i viết về Ch&ugrave; tr&ecirc;n trang tin tiếng Trung" href="https://kenh14cdn.com/2020/6/29/screenshot1-15934437417421112367571.png" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_66c60c00-ba1b-11ea-95f2-739809619427" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 1." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/screenshot1-15934437417421112367571.png" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 1." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/screenshot1-15934437417421112367571.png" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">B&agrave;i viết về Ch&ugrave; tr&ecirc;n trang tin tiếng Trung</p>
</div>
</div>
<p>Ngay lập tức, một cuộc truy l&ugrave;ng danh t&iacute;nh của girl xinh kể tr&ecirc;n đ&atilde; được ph&aacute;t động. V&agrave; rất nhanh ch&oacute;ng, ch&acirc;n dung c&ocirc; n&agrave;ng lộ diện. Tới l&uacute;c n&agrave;y người ta mới ph&aacute;t hiện h&oacute;a ra đ&acirc;y kh&ocirc;ng phải gương mặt n&agrave;o qu&aacute; xa lạ m&agrave; cũng thuộc diện... người quen.</p>
<p>Được biết, n&agrave;ng hot girl ch&iacute;nh l&agrave; Nguyễn Thị V&acirc;n Anh, hay c&ograve;n được biết đến nickname Ch&ugrave; Disturbia (@lylychuu).&nbsp;<a title="Ch&ugrave; V&acirc;n Anh l&agrave; diễn vi&ecirc;n ch&iacute;nh trong Try của Fu Production" href="https://kenh14.vn/gan-10-nam-truoc-co-ban-xinh-dep-nay-tung-la-crush-cua-hang-ngan-chang-trai-sai-gon-20180826115516728.chn" target="_blank" rel="noopener" data-cke-saved-href="https://kenh14.vn/gan-10-nam-truoc-co-ban-xinh-dep-nay-tung-la-crush-cua-hang-ngan-chang-trai-sai-gon-20180826115516728.chn">"Ch&ugrave;" V&acirc;n Anh l&agrave; diễn vi&ecirc;n ch&iacute;nh trong "Try" của Fu Production</a>&nbsp;- web-series đầu ti&ecirc;n về học đường tại Việt Nam. D&ugrave; ra đời từ năm 2010, khi m&agrave; MXH chưa ph&aacute;t triển mạnh mẽ nhưng bộ phim n&agrave;y vẫn sở hữu lượt xem l&ecirc;n đến cả triệu. Một trong những c&aacute;i t&ecirc;n l&agrave;m n&ecirc;n sự th&agrave;nh c&ocirc;ng cho t&aacute;c phẩm ch&iacute;nh l&agrave; Ch&ugrave;. Thời điểm đ&oacute; ở S&agrave;i G&ograve;n, c&ocirc; n&agrave;ng được xem l&agrave; "crush của mọi nh&agrave;", kh&ocirc;ng ai l&agrave; kh&ocirc;ng biết đến.</p>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" data-title=""><img style="height: 429px; width: 286px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/1064915367084701832793208372323342107578983n-15934485650801104521764.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" data-title=""><img style="height: 429px; width: 286px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/img1812-1535258954372469605022-1593443817025303782453.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 2." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">"Ch&ugrave;" V&acirc;n Anh của 10 năm trước</p>
</div>
</div>
<div id="admzone474524">
<div id="zone-474524">
<div id="share-jvrit1l1">
<div id="placement-566957">
<div id="banner-474524-567026">
<div id="slot-1-474524-567026">
<div id="ssppagebid_2102">
<div id="iplayzone_474461_3192" data-height="320" data-width="640" data-admssprqid="4754d914-e0fc-42c5-80ca-0495be4dd54d-5fb1edec" data-ssp="sspbid_3192"></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" data-title=""><img style="height: 508px; width: 285.75px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/104169738102137335652929324518079689400909671o-15934438660591720971530.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" data-title=""><img style="height: 508px; width: 285.75px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/102816559102137335660929527642698503443503363o-15934438660611677653626.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 3." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">V&agrave; b&agrave; chủ "Ch&ugrave;" xinh đẹp của hiện tại</p>
</div>
</div>
<p>Quay lại với việc l&ecirc;n b&aacute;o Trung, Ch&ugrave; cho biết c&ocirc; n&agrave;ng kh&aacute; bất ngờ. 10 năm kể từ ng&agrave;y nổi tiếng, cuộc sống của Ch&ugrave; cũng c&oacute; kh&aacute; nhiều thay đổi khi giờ đ&acirc;y c&ocirc; n&agrave;ng đ&atilde; sở hữu c&ocirc;ng việc kinh doanh ri&ecirc;ng v&agrave; kh&aacute; bận rộn với n&oacute;. B&ecirc;n cạnh đ&oacute;, do y&ecirc;u th&iacute;ch diễn xuất n&ecirc;n từ "Try" đến nay, cứ thỉnh thoảng Ch&ugrave; lại nhận một phim series ph&ugrave; hợp để diễn để đỡ nhớ cơm đo&agrave;n, nhớ nghề. Đ&acirc;y cũng được coi như l&agrave; m&oacute;n qu&agrave; Ch&ugrave; muốn d&agrave;nh cho những người theo d&otilde;i m&igrave;nh. C&ograve;n lại, c&ocirc; chủ yếu tập trung cho c&ocirc;ng việc kinh doanh.</p>
<div>
<div><a title="Ch&ugrave; vẫn đi diễn b&ecirc;n cạnh việc kinh doanh" href="https://kenh14cdn.com/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_cbc462f0-ba1b-11ea-b730-09c1f42d0196" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 4." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 4." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/73184782102138155980236994015826769977067645o-15934439112871008499497.jpg" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Ch&ugrave; vẫn đi diễn b&ecirc;n cạnh việc kinh doanh</p>
</div>
</div>
<div>
<div><a title="Nhan sắc c&ocirc; n&agrave;ng c&agrave;ng ng&agrave;y c&agrave;ng mặn m&agrave;" href="https://kenh14cdn.com/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" target="_blank" rel="noopener" data-fancybox-group="img-lightbox"><img id="img_23d147b0-ba1c-11ea-a48b-9db4b764ae00" style="width: 580px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 5." src="https://kenh14cdn.com/thumb_w/620/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 5." width="" height="" data-original="https://kenh14cdn.com/2020/6/29/99254234102135656791758844271830302881480704o-15934440591651109985039.jpg" /></a></div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Nhan sắc c&ocirc; n&agrave;ng c&agrave;ng ng&agrave;y c&agrave;ng mặn m&agrave;</p>
</div>
</div>
<p>Khi được hỏi về chuyện t&igrave;nh cảm, Ch&ugrave; xin ph&eacute;p được giữ b&iacute; mật. Tuy nhi&ecirc;n, c&ocirc; n&agrave;ng cũng tiết lộ một ch&uacute;t th&ocirc;ng tin về h&igrave;nh mẫu l&yacute; tưởng của m&igrave;nh:&nbsp;<em>"M&igrave;nh chỉ cần một người y&ecirc;u thương m&igrave;nh v&agrave; c&oacute; ch&iacute; tiến thủ trong cuộc sống th&ocirc;i. &Agrave; m&agrave; m&igrave;nh th&iacute;ch con trai &iacute;t n&oacute;i một ch&uacute;t nữa, tại m&igrave;nh n&oacute;i hơi nhiều rồi (cười)"</em>, Ch&ugrave; chia sẻ.</p>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" data-title=""><img style="height: 368px; width: 276px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/100928285102136583902936045073306182823706624o-15934441079821405300793.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" data-title=""><img style="height: 368px; width: 295.167px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/103683236102137598825908483662180378295125070o-1593444107984142671564.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
</div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" data-title=""><img style="height: 357px; width: 285.812px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/5815ef615c01ad99-15934441079861603175897.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" data-title=""><img style="height: 357px; width: 285.812px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/7115ef615bb4d722-15934441079881249523030.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 6." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Loạt ảnh bikini sexy cực k&igrave; của Ch&ugrave; khiến cư d&acirc;n mạng kh&ocirc;ng rời được mắt</p>
</div>
</div>
<div>
<div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" data-title=""><img style="height: 419px; width: 235.831px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/105286692102137844756456592900856342130803612o-1593444208979999916978.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" data-title=""><img style="height: 419px; width: 335.448px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/843577663091529300446024500668026587517112n-1593444208984508647958.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
</div>
<div>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" data-title=""><img style="height: 317px; width: 317.294px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/8783865148425496560285957353348450022226n-15934442089821272171173.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
<figure><a title="" href="https://kenh14cdn.com/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" rel="lightbox" data-thumbnail="https://kenh14cdn.com/thumb_w/660/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" data-title=""><img style="height: 317px; width: 253.6px;" title="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." src="https://kenh14cdn.com/thumb_w/660/2020/6/29/827603564830775025836043366288642191615167n-1593444208986155536683.jpg" alt="Th&ecirc;m g&aacute;i Việt được khen tr&ecirc;n b&aacute;o Trung, lần n&agrave;y l&agrave; Ch&ugrave; Disturbia - hot girl S&agrave;i G&ograve;n nổi tiếng 10 năm trước - Ảnh 7." /></a></figure>
</div>
</div>
<div>
<p data-placeholder="[nhập ch&uacute; th&iacute;ch]">Một v&agrave;i h&igrave;nh ảnh kh&aacute;c của c&ocirc; n&agrave;ng</p>
</div>
</div>
</body>
</html>', 1, 0, CAST(N'2020-11-16 10:12:27.100' AS DateTime), 1, 11, 1)
SET IDENTITY_INSERT [dbo].[TinBai] OFF
SET IDENTITY_INSERT [dbo].[VanBan] ON 

INSERT [dbo].[VanBan] ([VanBanID], [SoHieu], [NgayBanHanh], [NgayHieuLuc], [MoTa], [CoQuanBH], [link], [NguoiDungID]) VALUES (1, N'Số 1447/QĐ-UBND', CAST(N'2007-07-03' AS Date), CAST(N'2007-07-03' AS Date), N'Quyết định số 1447/QĐ-UBND ngày 30/03/2007 của Chủ tịch Ủy ban nhân dân tỉnh Bình Bương về việc thành lập Quỹ phát triển Khoa học và Công nghệ tỉnh Bình Dương;', N'ủy ban nhân dân tỉnh Dình Dương', N'\FilesUpload\Dieu_Kien_Vay_Von.pdf', 1)
INSERT [dbo].[VanBan] ([VanBanID], [SoHieu], [NgayBanHanh], [NgayHieuLuc], [MoTa], [CoQuanBH], [link], [NguoiDungID]) VALUES (2, N'1435/QĐ-UBND', CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), N'Quyết định về việc phê duyệt Điều lệ tổ chức và hoạt động của Quỹ phát triển Khoa học và Công nghệ tỉnh Bình Dương', N'ủy ban nhân dân tỉnh Dình Dương', N'http://quykhcnbd.khcnbinhduong.gov.vn/Media/ResourceAdmin/files/%C4%91i%E1%BB%81u%20l%E1%BB%87%20qu%E1%BB%B9%201435%20b%E1%BA%A3n%20ch%C3%ADnh(1).pdf', 1)
INSERT [dbo].[VanBan] ([VanBanID], [SoHieu], [NgayBanHanh], [NgayHieuLuc], [MoTa], [CoQuanBH], [link], [NguoiDungID]) VALUES (7, N'07/2015/QĐ-TTg', CAST(N'2015-03-02' AS Date), CAST(N'2015-03-02' AS Date), N'Chính phủ', N'Chính phủ c', N'\FilesUpload\Quyet dinh 1447.pdf', 1)
INSERT [dbo].[VanBan] ([VanBanID], [SoHieu], [NgayBanHanh], [NgayHieuLuc], [MoTa], [CoQuanBH], [link], [NguoiDungID]) VALUES (8, N'07/2015/QĐ-TTg', CAST(N'2015-02-03' AS Date), CAST(N'2312-12-31' AS Date), N'dfdsfsfsdfsd', N'nsa', N'\FilesUpload\Supplier_e-Bidding.pdf', 1)
SET IDENTITY_INSERT [dbo].[VanBan] OFF
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([VideoID], [Name], [Source], [Time], [Show], [NguoiDungID]) VALUES (1, N'3 điều này sẽ thay đổi cuộc đời của bạn mãi mãi?', N'8tMpBf8NlwA', N'../Img/Video/videoThumb1.jpg', 1, 1)
INSERT [dbo].[Video] ([VideoID], [Name], [Source], [Time], [Show], [NguoiDungID]) VALUES (2, N'Bạn có thể tăng hiệu quả công việc gấp đôi ngay cả khi làm việc 8h WHY NOT?', N'e50tn9s30HM', N'../Img/Video/videoThumb2.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Video] OFF
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_Banner_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_Banner_NguoiDung]
GO
ALTER TABLE [dbo].[ChuyenDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDe_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[ChuyenDe] CHECK CONSTRAINT [FK_ChuyenDe_NguoiDung]
GO
ALTER TABLE [dbo].[HinhAnhHoatDong]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhHoatDong_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[HinhAnhHoatDong] CHECK CONSTRAINT [FK_HinhAnhHoatDong_NguoiDung]
GO
ALTER TABLE [dbo].[LienKetHuuIch]  WITH CHECK ADD  CONSTRAINT [FK_LienKetHuuIch_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[LienKetHuuIch] CHECK CONSTRAINT [FK_LienKetHuuIch_NguoiDung]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_NguoiDung]
GO
ALTER TABLE [dbo].[TabThongTin]  WITH CHECK ADD  CONSTRAINT [FK_TabThongTin_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[TabThongTin] CHECK CONSTRAINT [FK_TabThongTin_NguoiDung]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_NguoiDung]
GO
ALTER TABLE [dbo].[ThongTinWebSite]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinWebSite_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[ThongTinWebSite] CHECK CONSTRAINT [FK_ThongTinWebSite_NguoiDung]
GO
ALTER TABLE [dbo].[TinBai]  WITH CHECK ADD  CONSTRAINT [FK_TinBai_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[TinBai] CHECK CONSTRAINT [FK_TinBai_Menu]
GO
ALTER TABLE [dbo].[TinBai]  WITH CHECK ADD  CONSTRAINT [FK_TinBai_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[TinBai] CHECK CONSTRAINT [FK_TinBai_NguoiDung]
GO
ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK_VanBan_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK_VanBan_NguoiDung]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_NguoiDung]
GO
USE [master]
GO
ALTER DATABASE [QuyPTKHCN] SET  READ_WRITE 
GO
