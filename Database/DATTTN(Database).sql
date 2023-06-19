USE [master]
GO
/****** Object:  Database [DuLichDB]    Script Date: 5/22/2023 3:16:06 PM ******/
CREATE DATABASE [DuLichDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuLichDB', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuLichDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuLichDB_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DuLichDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DuLichDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuLichDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuLichDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuLichDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuLichDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuLichDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuLichDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuLichDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DuLichDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuLichDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuLichDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuLichDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuLichDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuLichDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuLichDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuLichDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuLichDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DuLichDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuLichDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuLichDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuLichDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuLichDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuLichDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuLichDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuLichDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuLichDB] SET  MULTI_USER 
GO
ALTER DATABASE [DuLichDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuLichDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuLichDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuLichDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuLichDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuLichDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DuLichDB] SET QUERY_STORE = OFF
GO
USE [DuLichDB]
GO
/****** Object:  Table [dbo].[AlbumAnh]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumAnh](
	[ID_Album] [int] IDENTITY(1,1) NOT NULL,
	[TenAlbum] [nvarchar](500) NULL,
	[NguoiDang] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_AlbumAnh] PRIMARY KEY CLUSTERED 
(
	[ID_Album] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CamNangDuLich]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CamNangDuLich](
	[ID_CamNang] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NULL,
	[TomTat] [nvarchar](500) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayViet] [date] NULL,
	[HienTrangChu] [bit] NULL,
 CONSTRAINT [PK_CamNangDuLich] PRIMARY KEY CLUSTERED 
(
	[ID_CamNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[MaChucNang] [varchar](200) NOT NULL,
	[NhomChucNang] [nvarchar](500) NULL,
	[TenChucNang] [nvarchar](500) NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [varchar](500) NULL,
	[Ten] [nvarchar](500) NULL,
	[Email] [nchar](100) NULL,
	[SoDienThoai] [int] NULL,
	[NgayKhoiHanh] [nchar](100) NULL,
	[NgayTroVe] [nchar](100) NULL,
	[DiaChiDon] [nvarchar](500) NULL,
	[DiaChiTha] [nvarchar](500) NULL,
	[TourTuyChinh] [nvarchar](500) NULL,
	[LoaiXe] [nvarchar](500) NULL,
	[SoLuongHanhKhach] [int] NULL,
	[SoLuongNguoiLon] [int] NULL,
	[SoLuongTreEm] [int] NULL,
	[TinNhan] [nvarchar](500) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DatTour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatTourDetail]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTourDetail](
	[idTour] [int] NOT NULL,
	[idDatTour] [int] NOT NULL,
	[Gia] [float] NULL,
	[TinhTrang] [nvarchar](500) NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_DatTourDetail] PRIMARY KEY CLUSTERED 
(
	[idTour] ASC,
	[idDatTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [varchar](200) NOT NULL,
	[PhanLoai] [nvarchar](500) NULL,
	[TenDichVu] [nvarchar](500) NULL,
	[NoiDung] [nvarchar](500) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia](
	[ID_Gia] [int] IDENTITY(1,1) NOT NULL,
	[MucGia] [nvarchar](200) NULL,
 CONSTRAINT [PK__Gia__2ECEC6C31F3D9CE8] PRIMARY KEY CLUSTERED 
(
	[ID_Gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[ID_HinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[idAlbum] [int] NOT NULL,
	[Url] [nvarchar](500) NULL,
	[TieuDe] [nvarchar](50) NULL,
	[ThuTu] [int] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[ID_HinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KieuTour]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KieuTour](
	[ID_KieuTour] [int] IDENTITY(1,1) NOT NULL,
	[TenKieuTour] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_KieuTour] PRIMARY KEY CLUSTERED 
(
	[ID_KieuTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[ID_KhachSan] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachSan] [nvarchar](500) NULL,
	[BaiViet] [nvarchar](500) NULL,
	[GiaPhong] [float] NULL,
	[ViTri] [nvarchar](500) NULL,
	[IdTinh] [int] NULL,
	[IdMucGia] [int] NULL,
	[HinhAnh] [nvarchar](500) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[ID_KhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[ID_LichTrinh] [int] IDENTITY(1,1) NOT NULL,
	[LichTrinh] [nvarchar](max) NULL,
	[DiemNhan] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LichTrinh] PRIMARY KEY CLUSTERED 
(
	[ID_LichTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[ID_LoaiTour] [int] IDENTITY(1,1) NOT NULL,
	[idCapCha] [int] NULL,
	[LoaiTour] [nvarchar](200) NULL,
 CONSTRAINT [PK__LoaiTour__EB328A12FA2DCBAA] PRIMARY KEY CLUSTERED 
(
	[ID_LoaiTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[TenDangNhap] [varchar](500) NOT NULL,
	[MaChucNang] [varchar](200) NOT NULL,
	[GhiChu] [nvarchar](10) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC,
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongTien]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhuongTien] [nvarchar](500) NULL,
	[Ten] [nvarchar](500) NULL,
	[Loại] [nvarchar](500) NULL,
	[Gia] [int] NULL,
	[DonVi] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhuongTien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[ID_Slider] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[idTour] [int] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[ID_Slider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](500) NOT NULL,
	[MatKhau] [varchar](500) NULL,
	[TenHienThi] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[SoDienThoai] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[HinhAnh] [nvarchar](500) NULL,
 CONSTRAINT [PK_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ID_TinTuc] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[TieuDe] [nvarchar](500) NULL,
	[DiaDiem] [nvarchar](500) NULL,
	[LuotBinhLuan] [int] NULL,
	[BaiViet] [nvarchar](max) NULL,
	[Link] [nvarchar](500) NULL,
	[created_at] [date] NULL,
	[created_by] [nvarchar](500) NULL,
	[PhanLoai] [nvarchar](500) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID_TinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[ID_Tinh] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[idCapCha] [int] NULL,
 CONSTRAINT [PK__TinhThan__D34E76D1AB4C7D05] PRIMARY KEY CLUSTERED 
(
	[ID_Tinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour_DichVu]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_DichVu](
	[IdTour] [int] NOT NULL,
	[MaDichVu] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Tour_DichVu] PRIMARY KEY CLUSTERED 
(
	[IdTour] ASC,
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour_KieuTour]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_KieuTour](
	[idTour] [int] NOT NULL,
	[idKieuTour] [int] NOT NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_Tour_KieuTour] PRIMARY KEY CLUSTERED 
(
	[idTour] ASC,
	[idKieuTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDuLich]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDuLich](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[SoNgayDiTour] [float] NULL,
	[LichDinhKy] [nvarchar](100) NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[SoNguoiToiDa] [int] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GioKhoiHanh] [nvarchar](50) NULL,
	[DiChuyen] [nvarchar](500) NULL,
	[DiemXuatPhat] [nvarchar](100) NULL,
	[GiaTour] [float] NULL,
	[LuotXem] [int] NULL,
	[DanhGia] [float] NULL,
	[BaiViet] [nvarchar](max) NULL,
	[IdTinh] [int] NULL,
	[IdLoaiTour] [int] NULL,
	[IdMucGia] [int] NULL,
	[IdAlbum] [int] NULL,
	[IdLichTrinh] [int] NULL,
 CONSTRAINT [PK_TourDuLich] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AlbumAnh] ON 

INSERT [dbo].[AlbumAnh] ([ID_Album], [TenAlbum], [NguoiDang], [ThoiGian], [MoTa]) VALUES (1, N'Mùa đông ko lạnh', N'admin', CAST(N'2023-06-03T00:00:00.000' AS DateTime), N'Album ko anh ko hình')
INSERT [dbo].[AlbumAnh] ([ID_Album], [TenAlbum], [NguoiDang], [ThoiGian], [MoTa]) VALUES (2, N'Tour Mù Căng Chải', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AlbumAnh] OFF
GO
INSERT [dbo].[ChucNang] ([MaChucNang], [NhomChucNang], [TenChucNang]) VALUES (N'DichVu_ThemMoi', N'Dich vụ', N'Thêm mới dịch vụ')
INSERT [dbo].[ChucNang] ([MaChucNang], [NhomChucNang], [TenChucNang]) VALUES (N'DichVu_XemDanhSach', N'Dịch vụ', N'Xem danh sách dịch vụ')
INSERT [dbo].[ChucNang] ([MaChucNang], [NhomChucNang], [TenChucNang]) VALUES (N'TaiKhoan_ChiTiet', N'Tài khoản', N'Xem thông tin chi tiết tài khoản')
INSERT [dbo].[ChucNang] ([MaChucNang], [NhomChucNang], [TenChucNang]) VALUES (N'TaiKhoan_DanhSach', N'Tài khoản', N'Xem danh sách tài khoản')
GO
SET IDENTITY_INSERT [dbo].[DatTour] ON 

INSERT [dbo].[DatTour] ([ID], [taiKhoan], [Ten], [Email], [SoDienThoai], [NgayKhoiHanh], [NgayTroVe], [DiaChiDon], [DiaChiTha], [TourTuyChinh], [LoaiXe], [SoLuongHanhKhach], [SoLuongNguoiLon], [SoLuongTreEm], [TinNhan], [TrangThai]) VALUES (1, N'VHN', N'Vũ Nam', N'khachhang@gmail.com                                                                                 ', 355216478, N'7/4/2023                                                                                            ', N'7/4/2023                                                                                            ', N'HCM', N'DN', N'ew', N'Car (3 PAX) € 60 per day', 12, NULL, NULL, N'ewe', 1)
INSERT [dbo].[DatTour] ([ID], [taiKhoan], [Ten], [Email], [SoDienThoai], [NgayKhoiHanh], [NgayTroVe], [DiaChiDon], [DiaChiTha], [TourTuyChinh], [LoaiXe], [SoLuongHanhKhach], [SoLuongNguoiLon], [SoLuongTreEm], [TinNhan], [TrangThai]) VALUES (2, N'VHN', N'Vũ Nam', N'khachhang@gmail.com                                                                                 ', 355842867, N'20/4/2023                                                                                           ', N'17/5/2023                                                                                           ', N'HCM', N'DN', N'ffdf', N'Car (3 PAX) € 60 per day', 10, NULL, NULL, N're', 1)
INSERT [dbo].[DatTour] ([ID], [taiKhoan], [Ten], [Email], [SoDienThoai], [NgayKhoiHanh], [NgayTroVe], [DiaChiDon], [DiaChiTha], [TourTuyChinh], [LoaiXe], [SoLuongHanhKhach], [SoLuongNguoiLon], [SoLuongTreEm], [TinNhan], [TrangThai]) VALUES (3, N'VHN', N'Vũ Nam', N'khachhang@gmail.com                                                                                 ', 324578165, N'7/4/2023                                                                                            ', N'7/4/2023                                                                                            ', N'LN', N'HCM', N'ds', N'Car (3 PAX) € 60 per day', 7, NULL, NULL, N'sd', 0)
INSERT [dbo].[DatTour] ([ID], [taiKhoan], [Ten], [Email], [SoDienThoai], [NgayKhoiHanh], [NgayTroVe], [DiaChiDon], [DiaChiTha], [TourTuyChinh], [LoaiXe], [SoLuongHanhKhach], [SoLuongNguoiLon], [SoLuongTreEm], [TinNhan], [TrangThai]) VALUES (4, N'VHN', N'Vũ Hoài Nam', N'khachhang18032002@gmail.com                                                                         ', 338211580, N'19/5/2023                                                                                           ', N'19/5/2023                                                                                           ', N'21 Tăng Nhơn phú, Phước Long B, TP. Thủ Đức, TP. HCM', N'HILTON ĐÀ NẴNG', N'', N'Small Coach(8 Pax) ', 16, 13, 3, N'', 0)
SET IDENTITY_INSERT [dbo].[DatTour] OFF
GO
INSERT [dbo].[DatTourDetail] ([idTour], [idDatTour], [Gia], [TinhTrang], [GhiChu]) VALUES (1, 1, 10000000, NULL, NULL)
INSERT [dbo].[DatTourDetail] ([idTour], [idDatTour], [Gia], [TinhTrang], [GhiChu]) VALUES (1, 2, 10000000, NULL, NULL)
INSERT [dbo].[DatTourDetail] ([idTour], [idDatTour], [Gia], [TinhTrang], [GhiChu]) VALUES (1, 4, 1000000, NULL, NULL)
INSERT [dbo].[DatTourDetail] ([idTour], [idDatTour], [Gia], [TinhTrang], [GhiChu]) VALUES (6, 3, 12000000, NULL, NULL)
GO
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A1', N'A', N'Xe ô tô đưa đón theo chương trình 16 – 30 – 35 – 45 chỗ phù hợp với số lượng khách.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A10', N'A', N'Phục vụ các bữa chính với mức(150.000đ/suất/bữa)', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A2', N'A', N'Ngủ đêm tại homestay Mù Căng Chải', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A3', N'A', N'Ăn sáng theo tiêu chuẩn 30.000vnd/ khách', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A4', N'A', N'Ăn chính tiêu chuẩn 120.000vnd/ khách', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A5', N'A', N'Vé tham quan 1 lần tại các điểm theo chương trình.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A6', N'A', N'Hướng dẫn tiếng việt kinh nghiệm, nhiệt tình.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A7', N'A', N'Bảo hiểm du lịch, mức đền bù 20.000.000đ/ 1 trường hợp.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A8', N'A', N'Nước uống theo chương trình 01 chai 500ml/ngày/khách.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'A9', N'A', N'Khách sạn tiêu chuẩn 3 sao, 2 người lớn một phòng, trường hợp khách kẻ', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'B1', N'B', N'Chi phí đồ uống, chi phí cá nhân không nằm trong chương trình', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'B2', N'B', N'Đồ uống trong chương trình.', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'B3', N'B', N'Chi phí phòng đơn (nếu có)', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'B4', N'B', N'Thuế VAT 10%', NULL)
INSERT [dbo].[DichVu] ([MaDichVu], [PhanLoai], [TenDichVu], [NoiDung]) VALUES (N'B5', N'B', N'Tiền TIP cho hướng dẫn viên và lái xe (nếu có)', NULL)
GO
SET IDENTITY_INSERT [dbo].[Gia] ON 

INSERT [dbo].[Gia] ([ID_Gia], [MucGia]) VALUES (1, N'1-2 Triệu')
INSERT [dbo].[Gia] ([ID_Gia], [MucGia]) VALUES (2, N'2-4 Triệu')
INSERT [dbo].[Gia] ([ID_Gia], [MucGia]) VALUES (3, N'4-6 Triệu')
INSERT [dbo].[Gia] ([ID_Gia], [MucGia]) VALUES (4, N'6-8 Triệu')
INSERT [dbo].[Gia] ([ID_Gia], [MucGia]) VALUES (5, N'8-10 Triệu')
SET IDENTITY_INSERT [dbo].[Gia] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (1, 1, N'/Data/HinhAnh/blog_1.jpg', N'a', 1)
INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (2, 1, N'/Data/HinhAnh/blog_2.jpg', NULL, 2)
INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (3, 1, N'/Data/HinhAnh/blog_3.jpg', N'v', 3)
INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (4, 2, N'/Data/HinhAnh/Mu-Cang-Chai-3.jpg', N'Tour Mù Căng Chải', 1)
INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (5, 2, N'/Data/HinhAnh/Mu-Cang-Chai-4.jpg', N'Tour Mù Căng Chải', 2)
INSERT [dbo].[HinhAnh] ([ID_HinhAnh], [idAlbum], [Url], [TieuDe], [ThuTu]) VALUES (6, 2, N'/Data/HinhAnh/Mu-Cang-Chai-5.jpg', N'Tour Mù Căng Chải', 3)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[KieuTour] ON 

INSERT [dbo].[KieuTour] ([ID_KieuTour], [TenKieuTour]) VALUES (1, N'Du lịch hè')
INSERT [dbo].[KieuTour] ([ID_KieuTour], [TenKieuTour]) VALUES (2, N'Du lịch tết')
INSERT [dbo].[KieuTour] ([ID_KieuTour], [TenKieuTour]) VALUES (3, N'Nghĩ Dưỡng')
INSERT [dbo].[KieuTour] ([ID_KieuTour], [TenKieuTour]) VALUES (4, N'Trải Ngiệm')
SET IDENTITY_INSERT [dbo].[KieuTour] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([ID_KhachSan], [TenKhachSan], [BaiViet], [GiaPhong], [ViTri], [IdTinh], [IdMucGia], [HinhAnh]) VALUES (5, N'GREEN PLAZA HOTEL', NULL, 2650000, N'HẢI CHÂU, ĐÀ NẴNG', NULL, 83, N'/Data/imgHotel/hotel_1.jpg')
INSERT [dbo].[KhachSan] ([ID_KhachSan], [TenKhachSan], [BaiViet], [GiaPhong], [ViTri], [IdTinh], [IdMucGia], [HinhAnh]) VALUES (6, N'HILTON ĐÀ NẴNG', NULL, 3560000, N'HẢI CHÂU, ĐÀ NẴNG', NULL, 83, N'/Data/imgHotel/hotel_2.jpg')
INSERT [dbo].[KhachSan] ([ID_KhachSan], [TenKhachSan], [BaiViet], [GiaPhong], [ViTri], [IdTinh], [IdMucGia], [HinhAnh]) VALUES (7, N'HANOI HOTEL', NULL, 1900000, N'HÀ NỘI', NULL, 92, N'/Data/imgHotel/hotel_3.jpg')
INSERT [dbo].[KhachSan] ([ID_KhachSan], [TenKhachSan], [BaiViet], [GiaPhong], [ViTri], [IdTinh], [IdMucGia], [HinhAnh]) VALUES (8, N'SOFITEL SÀI GÒN', NULL, 4100000, N'QUẬN 1, HCM', NULL, 99, N'/Data/imgHotel/hotel_4.jpg')
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
GO
SET IDENTITY_INSERT [dbo].[LichTrinh] ON 

INSERT [dbo].[LichTrinh] ([ID_LichTrinh], [LichTrinh], [DiemNhan], [GhiChu]) VALUES (8, N'<p>NG&Agrave;Y 1 |&nbsp;H&Agrave; NỘI &ndash; T&Uacute; LỆ &ndash; M&Ugrave; CANG CHẢI (ăn trưa, tối)</p>

<p><strong>06h00</strong>: Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n Qu&yacute; tại Nh&agrave; h&aacute;t lớn H&agrave; Nội bắt đầu cho h&agrave;nh h&agrave;nh tr&igrave;nh t&igrave;m kiếm những những bức h&igrave;nh tuyệt đẹp của những thửa ruộng bậc thang&nbsp;<strong>M&ugrave; Cang Chải</strong>. Tr&ecirc;n đường đi, Qu&yacute; kh&aacute;ch dừng ch&acirc;n nghỉ ngơi chụp h&igrave;nh với những&nbsp;<strong>đồi tr&egrave; Thanh Sơn</strong>&nbsp;xanh mướt. Tiếp tục h&agrave;nh tr&igrave;nh, Qu&yacute; kh&aacute;ch dừng ch&acirc;n chụp h&igrave;nh với&nbsp;<strong>c&aacute;nh đồng Mường L&ograve;</strong>&nbsp;v&agrave;o m&ugrave;a l&uacute;a ch&iacute;n.</p>

<p><strong>11h00</strong>: Đến thị x&atilde; Nghĩa Lộ ăn trưa. Sau bữa trưa, Đo&agrave;n tiếp tục l&ecirc;n xe đi T&uacute; Lệ.</p>

<p><strong>13h30</strong>: Dừng ch&acirc;n tại T&uacute; Lệ &ndash; mảnh đất nổi tiếng với gạo nếp mềm dẻo, thơm ngon v&agrave; người con g&aacute;i Th&aacute;i mang vẻ đẹp quyến rũ đ&atilde; lấy đi kh&ocirc;ng biết bao nhi&ecirc;u t&acirc;m hồn của c&aacute;c ch&agrave;ng trai. Hướng dẫn vi&ecirc;n đưa Qu&yacute; kh&aacute;ch thăm quan v&agrave; mua đồ, đặc biệt l&agrave; m&oacute;n&nbsp;<strong>cốm xanh T&uacute; Lệ</strong>&nbsp;mềm dẻo thơm ngon tại khu vực chợ T&uacute; Lệ. Chụp h&igrave;nh với&nbsp;<strong>biểu tượng của huyện M&ugrave; Cang Chải</strong>.</p>

<p><strong>14h30</strong>: Tiếp tục&nbsp;<strong>chinh phục đ&egrave;o Khau Phạ</strong>&nbsp;&ndash; một trong tứ đại đ&egrave;o của miền Bắc.</p>

<p><strong>15h00</strong>: Dừng ch&acirc;n tr&ecirc;n đỉnh đ&egrave;o Khau Phạ với độ cao khoảng 2100m. Đ&egrave;o Khau Phạ theo tiếng của người d&acirc;n địa phương c&oacute; nghĩa l&agrave; Sừng Trời nơi giao h&ograve;a giữa trời v&agrave; đất. Đứng tr&ecirc;n đỉnh đ&egrave;o ngắm to&agrave;n bộ khu vực&nbsp;<strong>thung lũng Khau Phạ</strong>, xa xa l&agrave; c&aacute;c bản L&igrave;m Th&aacute;i, L&igrave;m M&ocirc;ng. Tại đ&acirc;y, Qu&yacute; kh&aacute;ch c&ograve;n c&oacute; cơ hội ngắm nh&igrave;n c&aacute;c vận động vi&ecirc;n chuy&ecirc;n nghiệp nhảy d&ugrave; với t&ecirc;n gọi &ldquo;<strong>bay tr&ecirc;n m&ugrave;a v&agrave;ng</strong>&rdquo; v&agrave;o dịp 20/9 đến 22/9/2019</p>

<p><strong>17h00</strong>: Khi nắng đ&atilde; kh&ocirc;ng c&ograve;n ch&oacute;i chang ch&iacute;nh l&agrave; l&uacute;c Qu&yacute; kh&aacute;ch c&ugrave;ng nhau thu&ecirc; những chiếc xe &ocirc;m do ch&iacute;nh những người Hm&ocirc;ng bản địa nơi đ&acirc;y điều khiển. Vượt qua những con đường dốc, nhỏ v&agrave; gồ ghề, Qu&yacute; kh&aacute;ch đến với&nbsp;<strong>ruộng bậc thang M&acirc;m X&ocirc;i</strong>&nbsp;tuyệt đẹp, sau đ&oacute; l&agrave;&nbsp;<strong>ruộng bậc thang h&igrave;nh mũi giầy</strong>&nbsp;(chi ph&iacute; thu&ecirc; xe &ocirc;m đi l&ecirc;n chụp h&igrave;nh tự t&uacute;c).</p>

<p><strong>18h00</strong>: Xe đưa Qu&yacute; kh&aacute;ch di chuyển về homestay d&ugrave;ng bữa v&agrave; nghỉ ngơi.</p>

<p><strong>19h00</strong>: Sau bữa tối Qu&yacute; kh&aacute;ch tự do vui chơi. Nghỉ đ&ecirc;m tại homestay.</p>

<p>NG&Agrave;Y 2 |&nbsp;M&Ugrave; CANG CHẢI &ndash; NGỌC CHIẾN &ndash; TẮM KHO&Aacute;NG N&Oacute;NG &ndash; H&Agrave; NỘI (ăn s&aacute;ng, trưa )</p>

<p><strong>06h00</strong>: Qu&yacute; kh&aacute;ch trả ph&ograve;ng kh&aacute;ch sạn, ăn s&aacute;ng tại nh&agrave; h&agrave;ng.</p>

<p><strong>07h00</strong>: L&ecirc;n xe đi Ngọc Chiến. Tr&ecirc;n đường ngắm cảnh Mường Kim với những rặng th&ocirc;ng phủ k&iacute;n hai b&ecirc;n con đường nhỏ quanh co.</p>

<p><strong>08h30</strong>: Qu&yacute; kh&aacute;ch thăm bản Ngọc Chiến&nbsp;<strong>thăm bản Ngọc Chiến&nbsp;</strong>với những nếp nh&agrave; được lợp bằng gỗ pơmu r&ecirc;u phong cổ k&iacute;nh.</p>

<p><strong>09h00</strong>: Tới Bản Lướt, Qu&yacute; kh&aacute;ch&nbsp;<strong>tự do tắm kho&aacute;ng n&oacute;ng</strong>&nbsp;tự nhi&ecirc;n tự chảy l&ecirc;n từ l&ograve;ng đất. ( chi ph&iacute; tự t&uacute;c)</p>

<p><strong>10h00</strong>: Qu&yacute; kh&aacute;ch trở lại xe để về H&agrave; Nội.</p>

<p><strong>12h30</strong>: Ăn trưa tại Nh&agrave; h&agrave;ng. Sau bữa trưa, Qu&yacute; kh&aacute;ch tiếp tục l&ecirc;n xe về H&agrave; Nội. Tr&ecirc;n đường về dừng gh&eacute; T&uacute; Lệ mua cốm xanh về l&agrave;m qu&agrave;. Chụp h&igrave;nh với những&nbsp;<strong>nương ch&egrave; xanh b&aacute;t ng&aacute;t</strong>&nbsp;tại Thanh Sơn, Ph&uacute; Thọ.</p>

<p><strong>18h30</strong>: Về đến H&agrave; Nội. Kết th&uacute;c chương tr&igrave;nh du lịch. Hẹn gặp lại Qu&yacute; kh&aacute;ch!</p>

<p><strong>LƯU &Yacute;:&nbsp;</strong>Thứ tự c&aacute;c điểm tham quan trong chương tr&igrave;nh c&oacute; thể thay đổi cho ph&ugrave; hợp với thời gian h&agrave;nh tr&igrave;nh. Tuy nhi&ecirc;n vẫn đảm bảo c&aacute;c chương tr&igrave;nh tuyến điểm cho qu&yacute; kh&aacute;ch.</p>
', N'<div class="block-detail-tour-content">
                                    <p>
                                        <strong>
                                            <em>
                                                Điểm nổi bật:<br />
                                            </em>
                                        </strong><em>
                                            – Khám phá một trong những nơi có ruông bậc thang đẹp nhất Việt Nam<br />
                                            – Khám phá nét đẹp văn hóa của đồng bào dân tộc Thái<br />
                                            – Chinh phục đèo Khau Phạ, một trong tứ đại đỉnh đèo của miền Bắc<br />
                                            – Khám phá bản Ngọc Chiến và Bản Lướt còn hoang sơ giữa đại ngàn<br />
                                            – Khám phá những nét ẩm thực địa phương độc đáo
                                        </em>
                                    </p>
                                </div>', N' <div class="block-detail-tour-content">
                                    <p><strong>GHI CHÚ</strong></p>
                                    <ul>
                                        <li>Trẻ em từ 10 tuổi trở lên: Tính 100% giá tour.</li>
                                        <li>Trẻ em từ 05 – 09 tuổi: Tính 75% giá tour ( ngủ cùng giường với bố mẹ)</li>
                                        <li>Trẻ em dưới 04 tuổi: Miễn phí giá tour. Mỗi gia đình chỉ được kèm 01 trẻ em dưới 05 tuổi,nếu phát sinh trẻ em thứ 02 trở lên tính phí 50% giá tour. (ngủ ghép giường với bố mẹ).</li>
                                    </ul>
                                    <ul>
                                        <li>Giá tính cho trẻ em ngủ chung giường với bố mẹ, nếu Quý khách có yêu cầu ngủ riêng cho trẻ em vui lòng thanh toán 100% giá tour.</li>
                                        <li>Giá áp dụng cho khách hàng từ 10 tuổi đến 69 tuổi, từ 70 tuổi trở lên yêu cầu phải có giấy chứng nhận đầy đủ sức khỏe để đi du và phải có người thân khỏe mạnh dưới 60 tuổi đi cùng.</li>
                                        <li>Giá áp dụng cho khách Việt Nam, khách quốc tịch nước ngoài vui lòng liên hệ bộ phận kinh doanh để biết thêm chi tiết.</li>
                                        <li>Giá có thể thay đổi khi hàng không tăng phụ thu nhiên liệu và phí visa thay đổi</li>
                                        <li>Bảo hiểm du lịch không bảo hiểm cho các tổn thất phát sinh từ bệnh tật hay tổn thương có sẵn, bệnh hay khuyết tật bẩm sinh, nhiễm HIV, AIDS và các bệnh liên quan đến AIDS, bệnh mãn tính cho dù phát hiện trước hay trong thời gian bảo hiểm ….</li>
                                        <li>Chương trình và giờ bay có thể thay đổi tuỳ theo ngày khởi hành cụ thể.</li>
                                        <li>Chương trình có thể thay đổi, tuy nhiên vẫn đảm bảo đầy đủ các điểm thăm quan trong chương trình.</li>
                                    </ul>
                                    <p><strong>CHÍNH SÁCH </strong><strong>PHỤ THU CHO GIAI ĐOẠN LỄ TẾT</strong></p>
                                    <p>Phụ thu 20% cho giai đoạn lễ tết: 1/1, 30/4, 1/5, 2/9,  31/12, tết âm lịch,..</p>
                                    <p><strong>CHÍNH SÁCH THANH TOÁN TOUR</strong> <strong><em>(sau khi đã xác nhận):</em></strong></p>
                                    <p>Qúy khách đặt cọc 50% giá tour sau khi đã xác nhận đặt tour, 50% còn lại sẽ thanh toán trước 15 ngày tour khởi hành.</p>
                                    <p>&nbsp;</p>
                                    <p><strong>CHÍNH SÁCH THAY ĐỔI TOUR</strong> <strong><em>(sau khi đã xác nhận):</em></strong></p>
                                    <p><em>Sau khi đăng kí tour không được hủy, nếu hủy không hoàn lại tiền cọc.</em></p>
                                    <p>&nbsp;</p>
                                    <ul>
                                        <li>Nếu bên A hủy bỏ chuyến đi trước thời điểm khởi hành trên 7 ngày thì bên A phải bồi thường thiệt hại 50% tổng giá trị hợp đồng cho bên B.</li>
                                        <li>Nếu bên A hủy bỏ chuyến đi trước thời điểm khởi hành dưới 7 ngày thì bên A phải bồi thường thiệt hại 80% tổng giá trị hợp đồng cho bên B.</li>
                                        <li>Nếu bên A báo hoãn hủy trong vòng 48 tiếng sẽ chịu phạt 90% tổng giá trị hợp đồng.</li>
                                    </ul>
                                    <ul>
                                        <li>Nếu bên A tự bỏ chương trình không báo trước cho bên B. Bên A sẽ không được hoàn bất cứ dịch vụ nào</li>
                                        <li>Đối với vé máy bay bên B sẽ tính theo quy định của hãng hàng không.</li>
                                    </ul>
                                    <p><em>**Trong những trường hợp khách quan như : khủng bố, thiên tai…hoặc do có sự cố, có sự thay đổi lịch trình của các phương tiện vận chuyển công cộng như : máy bay, tàu hỏa…thì Công ty sẽ giữ quyền thay đổi lộ trình bất cứ lúc nào vì sự thuận tiện, an toàn cho khách hàng và sẽ không chịu trách nhiệm bồi thường những thiệt hại phát sinh**.</em></p>
                                    <p>&nbsp;</p>
                                </div>')
INSERT [dbo].[LichTrinh] ([ID_LichTrinh], [LichTrinh], [DiemNhan], [GhiChu]) VALUES (9, N'<p>NG&Agrave;Y 1 |&nbsp;H&Agrave; NỘI &ndash; T&Uacute; LỆ &ndash; M&Ugrave; CANG CHẢI (ăn trưa, tối)</p>

<p><strong>06h00</strong>: Xe v&agrave; Hướng dẫn vi&ecirc;n đ&oacute;n Qu&yacute; tại Nh&agrave; h&aacute;t lớn H&agrave; Nội bắt đầu cho h&agrave;nh h&agrave;nh tr&igrave;nh t&igrave;m kiếm những những bức h&igrave;nh tuyệt đẹp của những thửa ruộng bậc thang&nbsp;<strong>M&ugrave; Cang Chải</strong>. Tr&ecirc;n đường đi, Qu&yacute; kh&aacute;ch dừng ch&acirc;n nghỉ ngơi chụp h&igrave;nh với những&nbsp;<strong>đồi tr&egrave; Thanh Sơn</strong>&nbsp;xanh mướt. Tiếp tục h&agrave;nh tr&igrave;nh, Qu&yacute; kh&aacute;ch dừng ch&acirc;n chụp h&igrave;nh với&nbsp;<strong>c&aacute;nh đồng Mường L&ograve;</strong>&nbsp;v&agrave;o m&ugrave;a l&uacute;a ch&iacute;n.</p>

<p><strong>11h00</strong>: Đến thị x&atilde; Nghĩa Lộ ăn trưa. Sau bữa trưa, Đo&agrave;n tiếp tục l&ecirc;n xe đi T&uacute; Lệ.</p>

<p><strong>13h30</strong>: Dừng ch&acirc;n tại T&uacute; Lệ &ndash; mảnh đất nổi tiếng với gạo nếp mềm dẻo, thơm ngon v&agrave; người con g&aacute;i Th&aacute;i mang vẻ đẹp quyến rũ đ&atilde; lấy đi kh&ocirc;ng biết bao nhi&ecirc;u t&acirc;m hồn của c&aacute;c ch&agrave;ng trai. Hướng dẫn vi&ecirc;n đưa Qu&yacute; kh&aacute;ch thăm quan v&agrave; mua đồ, đặc biệt l&agrave; m&oacute;n&nbsp;<strong>cốm xanh T&uacute; Lệ</strong>&nbsp;mềm dẻo thơm ngon tại khu vực chợ T&uacute; Lệ. Chụp h&igrave;nh với&nbsp;<strong>biểu tượng của huyện M&ugrave; Cang Chải</strong>.</p>

<p><strong>14h30</strong>: Tiếp tục&nbsp;<strong>chinh phục đ&egrave;o Khau Phạ</strong>&nbsp;&ndash; một trong tứ đại đ&egrave;o của miền Bắc.</p>

<p><strong>15h00</strong>: Dừng ch&acirc;n tr&ecirc;n đỉnh đ&egrave;o Khau Phạ với độ cao khoảng 2100m. Đ&egrave;o Khau Phạ theo tiếng của người d&acirc;n địa phương c&oacute; nghĩa l&agrave; Sừng Trời nơi giao h&ograve;a giữa trời v&agrave; đất. Đứng tr&ecirc;n đỉnh đ&egrave;o ngắm to&agrave;n bộ khu vực&nbsp;<strong>thung lũng Khau Phạ</strong>, xa xa l&agrave; c&aacute;c bản L&igrave;m Th&aacute;i, L&igrave;m M&ocirc;ng. Tại đ&acirc;y, Qu&yacute; kh&aacute;ch c&ograve;n c&oacute; cơ hội ngắm nh&igrave;n c&aacute;c vận động vi&ecirc;n chuy&ecirc;n nghiệp nhảy d&ugrave; với t&ecirc;n gọi &ldquo;<strong>bay tr&ecirc;n m&ugrave;a v&agrave;ng</strong>&rdquo; v&agrave;o dịp 20/9 đến 22/9/2019</p>

<p><strong>17h00</strong>: Khi nắng đ&atilde; kh&ocirc;ng c&ograve;n ch&oacute;i chang ch&iacute;nh l&agrave; l&uacute;c Qu&yacute; kh&aacute;ch c&ugrave;ng nhau thu&ecirc; những chiếc xe &ocirc;m do ch&iacute;nh những người Hm&ocirc;ng bản địa nơi đ&acirc;y điều khiển. Vượt qua những con đường dốc, nhỏ v&agrave; gồ ghề, Qu&yacute; kh&aacute;ch đến với&nbsp;<strong>ruộng bậc thang M&acirc;m X&ocirc;i</strong>&nbsp;tuyệt đẹp, sau đ&oacute; l&agrave;&nbsp;<strong>ruộng bậc thang h&igrave;nh mũi giầy</strong>&nbsp;(chi ph&iacute; thu&ecirc; xe &ocirc;m đi l&ecirc;n chụp h&igrave;nh tự t&uacute;c).</p>

<p><strong>18h00</strong>: Xe đưa Qu&yacute; kh&aacute;ch di chuyển về homestay d&ugrave;ng bữa v&agrave; nghỉ ngơi.</p>

<p><strong>19h00</strong>: Sau bữa tối Qu&yacute; kh&aacute;ch tự do vui chơi. Nghỉ đ&ecirc;m tại homestay.</p>

<p>NG&Agrave;Y 2 |&nbsp;M&Ugrave; CANG CHẢI &ndash; NGỌC CHIẾN &ndash; TẮM KHO&Aacute;NG N&Oacute;NG &ndash; H&Agrave; NỘI (ăn s&aacute;ng, trưa )</p>

<p><strong>06h00</strong>: Qu&yacute; kh&aacute;ch trả ph&ograve;ng kh&aacute;ch sạn, ăn s&aacute;ng tại nh&agrave; h&agrave;ng.</p>

<p><strong>07h00</strong>: L&ecirc;n xe đi Ngọc Chiến. Tr&ecirc;n đường ngắm cảnh Mường Kim với những rặng th&ocirc;ng phủ k&iacute;n hai b&ecirc;n con đường nhỏ quanh co.</p>

<p><strong>08h30</strong>: Qu&yacute; kh&aacute;ch thăm bản Ngọc Chiến&nbsp;<strong>thăm bản Ngọc Chiến&nbsp;</strong>với những nếp nh&agrave; được lợp bằng gỗ pơmu r&ecirc;u phong cổ k&iacute;nh.</p>

<p><strong>09h00</strong>: Tới Bản Lướt, Qu&yacute; kh&aacute;ch&nbsp;<strong>tự do tắm kho&aacute;ng n&oacute;ng</strong>&nbsp;tự nhi&ecirc;n tự chảy l&ecirc;n từ l&ograve;ng đất. ( chi ph&iacute; tự t&uacute;c)</p>

<p><strong>10h00</strong>: Qu&yacute; kh&aacute;ch trở lại xe để về H&agrave; Nội.</p>

<p><strong>12h30</strong>: Ăn trưa tại Nh&agrave; h&agrave;ng. Sau bữa trưa, Qu&yacute; kh&aacute;ch tiếp tục l&ecirc;n xe về H&agrave; Nội. Tr&ecirc;n đường về dừng gh&eacute; T&uacute; Lệ mua cốm xanh về l&agrave;m qu&agrave;. Chụp h&igrave;nh với những&nbsp;<strong>nương ch&egrave; xanh b&aacute;t ng&aacute;t</strong>&nbsp;tại Thanh Sơn, Ph&uacute; Thọ.</p>

<p><strong>18h30</strong>: Về đến H&agrave; Nội. Kết th&uacute;c chương tr&igrave;nh du lịch. Hẹn gặp lại Qu&yacute; kh&aacute;ch!</p>

<p><strong>LƯU &Yacute;:&nbsp;</strong>Thứ tự c&aacute;c điểm tham quan trong chương tr&igrave;nh c&oacute; thể thay đổi cho ph&ugrave; hợp với thời gian h&agrave;nh tr&igrave;nh. Tuy nhi&ecirc;n vẫn đảm bảo c&aacute;c chương tr&igrave;nh tuyến điểm cho qu&yacute; kh&aacute;ch.</p>
', N'<div class="block-detail-tour-content">
                                    <p>
                                        <strong>
                                            <em>
                                                Điểm nổi bật:<br />
                                            </em>
                                        </strong><em>
                                            – Khám phá một trong những nơi có ruông bậc thang đẹp nhất Việt Nam<br />
                                            – Khám phá nét đẹp văn hóa của đồng bào dân tộc Thái<br />
                                            – Chinh phục đèo Khau Phạ, một trong tứ đại đỉnh đèo của miền Bắc<br />
                                            – Khám phá bản Ngọc Chiến và Bản Lướt còn hoang sơ giữa đại ngàn<br />
                                            – Khám phá những nét ẩm thực địa phương độc đáo
                                        </em>
                                    </p>
                                </div>', N'<div class="block-detail-tour-content">
								<p><strong>GHI CHÚ</strong></p>
<ul>
<li>Trẻ em từ 10 tuổi trở lên: Tính 100% giá tour.</li>
<li>Trẻ em từ 05 – 09 tuổi: Tính 75% giá tour ( ngủ cùng giường với bố mẹ)</li>
<li>Trẻ em dưới 04 tuổi: Miễn phí giá tour. Mỗi gia đình chỉ được kèm 01 trẻ em dưới 05 tuổi,nếu phát sinh&nbsp;trẻ em&nbsp;thứ 02 trở lên tính phí 50% giá tour. (ngủ ghép giường với bố mẹ).</li>
</ul>
<ul>
<li>Giá tính cho trẻ em ngủ chung giường với bố mẹ, nếu Quý khách có yêu cầu ngủ riêng cho trẻ em vui lòng thanh toán 100% giá tour.</li>
<li>Giá áp dụng cho khách hàng từ 10 tuổi đến 69 tuổi, từ 70 tuổi trở lên yêu cầu phải có giấy chứng nhận đầy đủ sức khỏe để đi du và phải có người thân khỏe mạnh dưới 60 tuổi đi cùng.</li>
<li>Giá áp dụng cho khách Việt Nam, khách quốc tịch nước ngoài vui lòng liên hệ bộ phận kinh doanh để biết thêm chi tiết.</li>
<li>Giá có thể thay đổi khi hàng không tăng phụ thu nhiên liệu và phí visa thay đổi</li>
<li>Bảo hiểm du lịch không bảo hiểm cho các tổn thất phát sinh từ bệnh tật hay tổn thương có sẵn, bệnh hay khuyết tật bẩm sinh, nhiễm HIV, AIDS và các bệnh liên quan đến AIDS, bệnh mãn tính cho dù phát hiện trước hay trong thời gian bảo hiểm ….</li>
<li>Chương trình và giờ bay có thể thay đổi tuỳ theo ngày khởi hành cụ thể.</li>
<li>Chương trình có thể thay đổi, tuy nhiên vẫn đảm bảo đầy đủ các điểm thăm quan trong chương trình.</li>
</ul>
<p><strong>CHÍNH SÁCH </strong><strong>PHỤ THU CHO GIAI ĐOẠN LỄ TẾT</strong></p>
<p>Phụ thu 20% cho giai đoạn lễ tết: 1/1, 30/4, 1/5, 2/9,&nbsp; 31/12, tết âm lịch,..</p>
<p><strong>CHÍNH SÁCH THANH TOÁN TOUR</strong> <strong><em>(sau khi đã xác nhận):</em></strong></p>
<p>Qúy khách đặt cọc 50% giá tour sau khi đã xác nhận đặt tour, 50% còn lại sẽ thanh toán trước 15 ngày tour khởi hành.</p>
<p>&nbsp;</p>
<p><strong>CHÍNH SÁCH THAY ĐỔI TOUR</strong> <strong><em>(sau khi đã xác nhận):</em></strong></p>
<p><em>Sau khi đăng kí tour không được hủy, nếu hủy không hoàn lại tiền cọc.</em></p>
<p>&nbsp;</p>
<ul>
<li>Nếu bên A hủy bỏ chuyến đi trước thời điểm khởi hành trên 7 ngày thì bên A phải bồi thường thiệt hại 50% tổng giá trị hợp đồng cho bên B.</li>
<li>Nếu bên A hủy bỏ chuyến đi trước thời điểm khởi hành dưới 7 ngày thì bên A phải bồi thường thiệt hại 80% tổng giá trị hợp đồng cho bên B.</li>
<li>Nếu bên A báo hoãn hủy trong vòng 48 tiếng sẽ chịu phạt 90% tổng giá trị hợp đồng.</li>
</ul>
<ul>
<li>Nếu bên A tự bỏ chương trình không báo trước cho bên B. Bên A sẽ không được hoàn bất cứ dịch vụ nào</li>
<li>Đối với vé máy bay bên B sẽ tính theo quy định của hãng hàng không.</li>
</ul>
<p><em>**Trong những trường hợp khách quan như : khủng bố, thiên tai…hoặc do có sự cố, có sự thay đổi lịch trình của các phương tiện vận chuyển công cộng như : máy bay, tàu hỏa…thì Công ty sẽ giữ quyền thay đổi lộ trình bất cứ lúc nào vì sự thuận tiện, an toàn cho khách hàng và sẽ không chịu trách nhiệm bồi thường những thiệt hại phát sinh**.</em></p>
<p>&nbsp;</p>
</div>')
SET IDENTITY_INSERT [dbo].[LichTrinh] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTour] ON 

INSERT [dbo].[LoaiTour] ([ID_LoaiTour], [idCapCha], [LoaiTour]) VALUES (1, NULL, N'Du lịch hè')
INSERT [dbo].[LoaiTour] ([ID_LoaiTour], [idCapCha], [LoaiTour]) VALUES (2, NULL, N'Du lịch tết')
INSERT [dbo].[LoaiTour] ([ID_LoaiTour], [idCapCha], [LoaiTour]) VALUES (6, 1, N'Nghĩ dưỡng')
INSERT [dbo].[LoaiTour] ([ID_LoaiTour], [idCapCha], [LoaiTour]) VALUES (7, 2, N'Trải ngiệm')
INSERT [dbo].[LoaiTour] ([ID_LoaiTour], [idCapCha], [LoaiTour]) VALUES (8, 2, N'Đó đây')
SET IDENTITY_INSERT [dbo].[LoaiTour] OFF
GO
INSERT [dbo].[PhanQuyen] ([TenDangNhap], [MaChucNang], [GhiChu]) VALUES (N'VHN', N'DichVu_ThemMoi', NULL)
INSERT [dbo].[PhanQuyen] ([TenDangNhap], [MaChucNang], [GhiChu]) VALUES (N'VHN', N'DichVu_XemDanhSach', NULL)
INSERT [dbo].[PhanQuyen] ([TenDangNhap], [MaChucNang], [GhiChu]) VALUES (N'VHN', N'TaiKhoan_ChiTiet', NULL)
INSERT [dbo].[PhanQuyen] ([TenDangNhap], [MaChucNang], [GhiChu]) VALUES (N'VHN', N'TaiKhoan_DanhSach', NULL)
GO
SET IDENTITY_INSERT [dbo].[PhuongTien] ON 

INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (1, NULL, N'Mặc định', N'Ngẫu nhiên', 0, N'Ngày')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (2, N'Car', N'Xe tốc hành', N'16 chổ', 100000, N'Ngày')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (3, N'Train', N'Xe lửa', N'1 vé', 700000, N'Người')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (4, N'Car', N'Car (3 PAX) ', N'3 chổ', 99000, N'Ngày')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (5, N'Coach', N'Small Coach(4 Pax)', N'4 chổ', 400000, N'Ngày')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (6, N'Coach', N'Small Coach(8 Pax) ', N'8 chổ', 750000, N'Ngày')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (7, N'Coach', N'Coach(16 Pax)', N'16 chổ', 100000, N'Giờ')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (8, N'Coach', N'Coach(30 Pax)', N'30 chổ', 150000, N'Giờ')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (9, N'Coach', N'Large Coach(35 Pax)', N'35 chổ', 300000, N'Giờ')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (10, N'Coach', N'Large Coach(45 Pax)', N'45 chổ', 500000, N'Giờ')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (11, N'Boat', N'Thuyền', N'Du Thuyền', 100000, N'Chuyến')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (12, N'Plane', N'Máy bay', N'Máy bay du lịch', 500000, N'Vé')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (13, N'CoachBoat', N'Small Coach(4-8 Pax)+Thuyền', N'4 chổ+Du Thuyền', 900000, N'Ngày+Chuyến')
INSERT [dbo].[PhuongTien] ([ID], [PhuongTien], [Ten], [Loại], [Gia], [DonVi]) VALUES (14, N'CoachPlane', N'Small Coach(4-8 Pax)+Máy bay', N'4 chổ+Máy bay du lịch', 500000, N'Ngày+Vé')
SET IDENTITY_INSERT [dbo].[PhuongTien] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([ID_Slider], [TieuDe], [Url], [idTour]) VALUES (1, N'Bana Hill', N'/Data/imgSlider/bana-slide.jpg', 9)
INSERT [dbo].[Slider] ([ID_Slider], [TieuDe], [Url], [idTour]) VALUES (2, N'Hội An', N'/Data/imgSlider/hoian-slide.jpg', 10)
INSERT [dbo].[Slider] ([ID_Slider], [TieuDe], [Url], [idTour]) VALUES (3, N'Phú Quốc', N'/Data/imgSlider/phuquoc_slide.jpg', 11)
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'HHH', N'1234', N'KH Nam', N'nnnam2002@gmail.com', N'0355455874', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'KhachHang', N'E10ADC3949BA59ABBE56E057F20F883E', N'Khách Hàng', N'khachhang@gmail.com', N'0345679125', 0, N'/Data/Avatar/ngam mom.ico')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'Moi', N'81DC9BDB52D04DC20036DBD8313ED055', N'Mới', N'aasjdkf@gmail.com', N'0355455874', 0, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'qưer', N'25F9E794323B453885F5181F1B624D0B', N'qưer', N'nnnam2002@gmail.com', N'0355455874', 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'VHN', N'E10ADC3949BA59ABBE56E057F20F883E', N'Vũ Hoài Nam', N'khachhang18032002@gmail.com', N'0338211580', 1, N'/Data/Avatar/Screenshot 2023-03-20 121935.png')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'VOP', N'81DC9BDB52D04DC20036DBD8313ED055', N'Nam AA', N'nnnam2002@gmail.com', N'0355455874', 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'Vsd', N'E10ADC3949BA59ABBE56E057F20F883E', N'SD', N'dfgh@gmail.com', N'0325689457', 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'VU', N'E10ADC3949BA59ABBE56E057F20F883E', N'Mới', N'khachhang@gmail.com', N'0355455874', 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'VUHOAINAM', N'E10ADC3949BA59ABBE56E057F20F883E', N'Nam Admin', N'vuhoainam@gmail.com', N'0355455874', 1, N'/Data/Avatar/Logo (2).png')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'VUNAM', N'81DC9BDB52D04DC20036DBD8313ED055', N'Nam Vu', N'khachhang18032002@gmail.com', N'0355455874', 1, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [TenHienThi], [Email], [SoDienThoai], [Active], [HinhAnh]) VALUES (N'ZZZ', N'25F9E794323B453885F5181F1B624D0B', N'ZAdmin', N'nnnam2002@gmail.com', N'0355455874', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (1, N'blog_1.jpg', N'VỀ MIỀN TRUNG THƯƠNG NHỚ', N'Miền Trung', 99, N' Tôi sẽ kể cho bạn nghe về chuyến đi đầy thơ mộng, bình dị của
                            mình ở
                            miền Trung yêu dấu. Nơi ấy đầy nắng, đầy gió, những cảnh đẹp ngút ngàn và nhiều di sản văn
                            hóa độc đáo. Nơi ấy có những nụ cười ấm áp, món ăn tuyệt vời và có cả những trái tim “lạc
                            lối” không muốn quay về…', N'#', CAST(N'2023-04-24' AS Date), N'by TieuDaoViet', N'post')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (2, N'blog_2.jpg', N'MỘT HÀNH TRÌNH - BA ĐIỂM ĐẾN DI SẢN PHƯƠNG BẮC', N'Miền Bắc', 54, N'Chỉ một hành trình, du khách có thể khám phá đến ba di sản nổi
                            tiếng của Việt Nam: vịnh Hạ Long, Tràng An và thành nhà Hồ… Đặc biệt, dịch vụ nghỉ dưỡng cao
                            cấp, sự kết hợp của Vietravel cùng hãng hàng không Bambo Airways đã mang đến cho bạn mức giá
                            tốt nhất trong mùa hè này.', N'#', CAST(N'2023-04-21' AS Date), N'by TieuDaoViet', N'post')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (3, N'blog_3.jpg', N'TOUR LỄ 30/4 VÀ 1/5: VÌ SAO DU LỊCH TRỌN GÓI VẪN CHIẾM
                            ƯU THẾ?', N'Miền Bắc', 36, N' Với 5 ngày nghỉ liên tiếp, lễ 30/4 &1/5 năm nay hứa hẹn sẽ là “kỳ
                            nghỉ vàng” cho nhiều gia đình và dân công sở. Theo khảo sát, tour du lịch trọn gói đến từ
                            các hãng lữ hành tên tuổi vẫn chiếm ưu thế áp đảo trên thị trường với rất nhiều ưu điểm nổi
                            trội như: mức giá ổn định, nhiều điểm đến mới lạ và ưu đãi giảm giá hấp dẫn…', N'#', CAST(N'2023-05-08' AS Date), N'by TieuDaoViet', N'post')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (4, N'latest_1.jpg', N'Bãi biển đẹp ở Đà Nẵng', NULL, NULL, NULL, N'#', CAST(N'2023-04-01' AS Date), N'by TieuDaoViet', N'page')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (5, N'latest_2.jpg', N'Cẩm nang du lịch Quảng Nam', NULL, NULL, NULL, N'#', CAST(N'2023-04-30' AS Date), N'by TieuDaoViet', N'page')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (6, N'latest_3.jpg', N'Các tour biển đảo Việt Nam', NULL, NULL, NULL, N'#', CAST(N'2023-05-01' AS Date), N'by TieuDaoViet', N'page')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (11, NULL, N'Gói tour Đà Nẵng san trọng 1', NULL, NULL, N'Tour du lịch Đà Nẵng 4 ngày 3 đêm đưa du khách đến với một thành
                        phố thuộc vùng Nam Trung Bộ, Việt Nam. Đây là trung tâm kinh tế, văn hoá, giáo dục, khoa
                        học và công nghệ lớn của khu vực miền Trung - Tây Nguyên. Đà Nẵng hiện là một trong 13
                        đô thị loại 1 đồng thời là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam. Nguồn
                        gốc từ "Đà Nẵng" là biến dạng của từ Chăm cổ "DAKNAN", nghĩa là vùng nước rộng lớn hay
                        "sông lớn", "cửa sông cái". Năm 1835, với chỉ dụ của vua Minh Mạng, Cửa Hàn (tên gọi Đà
                        Nẵng khi đó) trở thành thương cảng lớn nhất Miền Trung.', N'#', NULL, NULL, N'CTA')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (12, NULL, N'Gói tour Đà Nẵng san trọng 2', NULL, NULL, N'Tour du lịch Đà Nẵng 8 ngày 7 đêm đưa du khách đến với một thành
                        phố thuộc vùng Nam Trung Bộ, Việt Nam. Đây là trung tâm kinh tế, văn hoá, giáo dục, khoa
                        học và công nghệ lớn của khu vực miền Trung - Tây Nguyên. Đà Nẵng hiện là một trong 13
                        đô thị loại 1 đồng thời là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam. Nguồn
                        gốc từ "Đà Nẵng" là biến dạng của từ Chăm cổ "DAKNAN", nghĩa là vùng nước rộng lớn hay
                        "sông lớn", "cửa sông cái". Năm 1835, với chỉ dụ của vua Minh Mạng, Cửa Hàn (tên gọi Đà
                        Nẵng khi đó) trở thành thương cảng lớn nhất Miền Trung.', N'#', NULL, NULL, N'CTA')
INSERT [dbo].[TinTuc] ([ID_TinTuc], [HinhAnh], [TieuDe], [DiaDiem], [LuotBinhLuan], [BaiViet], [Link], [created_at], [created_by], [PhanLoai]) VALUES (13, NULL, N'Gói tour Đà Nẵng san trọng 3', NULL, NULL, N'Tour du lịch Đà Nẵng 10 ngày 10 đêm đưa du khách đến với một thành
                        phố thuộc vùng Nam Trung Bộ, Việt Nam. Đây là trung tâm kinh tế, văn hoá, giáo dục, khoa
                        học và công nghệ lớn của khu vực miền Trung - Tây Nguyên. Đà Nẵng hiện là một trong 13
                        đô thị loại 1 đồng thời là một trong 5 thành phố trực thuộc Trung ương ở Việt Nam. Nguồn
                        gốc từ "Đà Nẵng" là biến dạng của từ Chăm cổ "DAKNAN", nghĩa là vùng nước rộng lớn hay
                        "sông lớn", "cửa sông cái". Năm 1835, với chỉ dụ của vua Minh Mạng, Cửa Hàn (tên gọi Đà
                        Nẵng khi đó) trở thành thương cảng lớn nhất Miền Trung.', N'#', NULL, NULL, N'CTA')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (1, N'Trong Nước', 0)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (2, N'Nước Ngoài', 0)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (3, N'Miền Bắc', 1)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (4, N'Miền Trung', 1)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (5, N'Miền Nam', 1)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (6, N'Châu Á', 2)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (7, N'Châu Âu', 2)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (8, N'Châu Mỹ', 2)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (9, N'Châu Phi', 2)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (69, N'An Giang', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (70, N'Bà Rịa – Vũng Tàu', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (71, N'Bắc Giang', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (72, N'Bắc Kạn', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (73, N'Bạc Liêu', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (74, N'Bắc Ninh', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (75, N'Bến Tre', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (76, N'Bình Định', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (77, N'Bình Dương', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (78, N'Bình Phước', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (79, N'Bình Thuận', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (80, N'Cà Mau', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (81, N'Cao Bằng', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (82, N'Cần Thơ', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (83, N'Đà Nẵng', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (84, N'Đắk Lắk', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (85, N'Đắk Nông', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (86, N'Điện Biên', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (87, N'Đồng Nai', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (88, N'Đồng Tháp', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (89, N'Gia Lai', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (90, N'Hà Giang', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (91, N'Hà Nam', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (92, N'Hà Nội', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (93, N'Hà Tĩnh', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (94, N'Hải Dương', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (95, N'Hải Phòng', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (96, N'Hậu Giang', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (97, N'Hòa Bình', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (98, N'Hưng Yên', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (99, N'TP. Hồ Chí Minh', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (100, N'Khánh Hòa', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (101, N'Kiên Giang', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (102, N'Kon Tum', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (103, N'Lai Châu', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (104, N'Lâm Đồng', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (105, N'Lạng Sơn', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (106, N'Lào Cai', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (107, N'Long An', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (108, N'Nam Định', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (109, N'Nghệ An', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (110, N'Ninh Bình', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (111, N'Ninh Thuận', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (112, N'Phú Thọ', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (113, N'Phú Yên', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (114, N'Quảng Bình', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (115, N'Quảng Nam', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (116, N'Quảng Ngãi', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (117, N'Quảng Ninh', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (118, N'Quảng Trị', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (119, N'Sóc Trăng', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (120, N'Sơn La', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (121, N'Tây Ninh', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (122, N'Thái Bình', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (123, N'Thái Nguyên', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (124, N'Thanh Hóa', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (125, N'Thừa Thiên Huế', 4)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (126, N'Tiền Giang', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (127, N'Trà Vinh', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (128, N'Tuyên Quang', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (129, N'Vĩnh Long', 5)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (130, N'Vĩnh Phúc', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (131, N'Yên Bái', 3)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (132, N'Trung Quốc', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (133, N'Hàn Quốc', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (134, N'Dubai', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (135, N'Ấn Độ', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (136, N'Hồng Kông', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (137, N'Thái Lan', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (138, N'Bhutan', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (139, N'Brunei', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (140, N'Indonesia', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (141, N'Campuchia', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (142, N'Lào', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (143, N'Đài Loan', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (144, N'Singapore', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (145, N'Malaysia', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (146, N'Philippines', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (147, N'Nhật Bản', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (148, N'Mông Cổ', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (149, N'Madilves', 6)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (150, N'Anh', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (151, N'Pháp', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (152, N'Nga', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (153, N'Đức', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (154, N'Áo', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (155, N'Bỉ', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (156, N'Czech', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (157, N'Hà Lan', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (158, N'Hungary', 7)
GO
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (159, N'Thụy Sỹ', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (160, N'Hy Lạp', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (161, N'Ý', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (162, N'Thụy Điển', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (163, N'Thổ Nhĩ Kỳ', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (164, N'Scotland', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (165, N'Phần Lan', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (166, N'Monaco', 7)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (167, N'Mỹ', 8)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (168, N'Canada', 8)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (169, N'Nam mỹ', 8)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (170, N'Brazil', 8)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (171, N'Cuba', 8)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (172, N'Maroc', 9)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (173, N'Nam Phi', 9)
INSERT [dbo].[TinhThanh] ([ID_Tinh], [Ten], [idCapCha]) VALUES (174, N'Ai Cập', 9)
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
GO
INSERT [dbo].[Tour_KieuTour] ([idTour], [idKieuTour], [GhiChu]) VALUES (1, 1, N'Du lịch hè')
INSERT [dbo].[Tour_KieuTour] ([idTour], [idKieuTour], [GhiChu]) VALUES (3, 1, N'Du lịch hè')
INSERT [dbo].[Tour_KieuTour] ([idTour], [idKieuTour], [GhiChu]) VALUES (7, 4, NULL)
INSERT [dbo].[Tour_KieuTour] ([idTour], [idKieuTour], [GhiChu]) VALUES (8, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[TourDuLich] ON 

INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (1, N'Du lịch Đà Nẵng', N'/Data/imgTour/danang.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 4, N'Thứ 7 hàng tuần', N'Đà Nẵng', 16, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Coach', N'TP Hồ Chí Minh', 1000000, 102, 1, N'Chào mừng', 83, 1, 1, 1, 8)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (2, N'Tour Thăm Vịnh Hạ Long', N'/Data/imgTour/vinhhalong.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 7, N'Chủ Nhật hàng tuần', N'Quảng Ninh', 10, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Coach', N'TP Hồ Chí Minh', 5000000, 120, 7, N'Quảng Ninh chào mừng', 117, 1, 3, 1, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (3, N'Tour Long An', N'/Data/imgTour/longan.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 3, N'thứ 2 thứ 6 hàng tuần', N'Long An', 20, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Coach', N'TP Hồ Chí Minh', 2000000, 153, 6, N'Tour đi Long An', 107, 1, 1, 1, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (5, N'Tour Đầm Sen', N'/Data/imgTour/damsen.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 1, N'thứ 2 hàng tuần', N'TP Hồ Chí Minh', 40, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Coach', N'TP Hồ Chí Minh', 7000000, 135, 6, N'Chào mừng', 99, 1, 4, 1, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (6, N'Tour Suối Tiên', N'/Data/imgTour/phuquoc.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 4, N'thứ 2 hàng tuần', N'TP Hồ Chí Minh', 50, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Coach', N'TP Hồ Chí Minh', 1000000, 258, 7, N'<h2 style="font-style:italic"><span style="color:#3498db"><strong>Tour du lịch Đầm Sen m&ugrave;a h&egrave;</strong></span></h2>
', 99, 1, 1, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (7, N'Tour Nhật Bản', N'/Data/imgTour/phuquoc.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 7, N'Tất cả các ngày trong tuần', N'Nhật Bản', 70, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Plane', N'TP Hồ Chí Minh', 9500000, 1036, 5, N'Chào mừng đến vs sứ sở hoa anh đào', 147, 7, 5, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (8, N'Tour Thái Lan', N'/Data/imgTour/phuquoc.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 20, N'Tất cả các ngày trong tuần', N'Thái Lan', 40, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'5 giờ sáng', N'Plane', N'TP Hồ Chí Minh', 8500000, 21, 8, N'<p>Tuor đi Th&aacute;i Lan&nbsp;</p>
', 137, 8, 5, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (9, N'Bana Hill', N'/Data/imgTour/bana.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 3, N'Thứ 7 hàng tuần', N'Đà Nẵng', 10, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'7 giờ sáng', N'Plane/Coach', N'TP Hồ Chí Minh', 10000000, 867, 5, NULL, 83, 1, 5, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (10, N'Hội An', N'/Data/imgTour/hoian.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ', 6, N'Thứ 7 hàng tuần', N'Quảng Nam', 30, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'7 giờ sáng', N'Plane/Coach', N'TP Hồ Chí Minh', 5000000, 256, 8, NULL, 115, 1, 3, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (11, N'Phú Quốc', N'/Data/imgTour/phuquoc.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', 8, N'Thứ 7 hàng tuần', N'Kiên Giang', 10, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'7 giờ sáng', N'CoachBoat', N'TP Hồ Chí Minh', 7000000, 356, 7, NULL, 101, 1, 4, 2, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (12, N'Tour Tây Bắc', N'/Data/imgTour/tourtaybac.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 8, N'Thứ 7 hàng tuần', N'Sơn La', 20, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-07' AS Date), N'7 giờ sáng', N'CoachPlane', N'TP Hồ Chí Minh', 7000000, 100, 8, N'Tour du lịch hè Mai Châu - Mộc Châu sẽ đưa bạn đến thăm thung lũng
                        Mai Châu yên bình trong sớm mai, những cánh đồng lúa xanh thắm lòng người hay những ngôi
                        nhà sàn nhỏ san sát nhau.', 120, 1, 4, 1, 9)
INSERT [dbo].[TourDuLich] ([ID], [TieuDe], [HinhAnh], [SoNgayDiTour], [LichDinhKy], [DiaDiem], [SoNguoiToiDa], [NgayBatDau], [NgayKetThuc], [GioKhoiHanh], [DiChuyen], [DiemXuatPhat], [GiaTour], [LuotXem], [DanhGia], [BaiViet], [IdTinh], [IdLoaiTour], [IdMucGia], [IdAlbum], [IdLichTrinh]) VALUES (13, N'Tour Miền Trung', N'/Data/imgTour/tourmientrung.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 4, N'thứ 2 hàng tuần', N'Quy Nhơn', 50, NULL, NULL, NULL, N'Coach', N'Hà Nội', 7000000, 200, 9, N'Tour Du lịch Quy Nhơn 4 ngày từ Hà Nội - Du lịch Quy Nhơn cùng Du
                    Lịch Việt sẽ đưa bạn đến với Quy Nhơn – một thành phố biển xinh đẹp, không ồn ào, cũng
                    không đẹp lộng lẫy bằng Nha Trang.', NULL, 1, 4, 1, 9)
SET IDENTITY_INSERT [dbo].[TourDuLich] OFF
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD  CONSTRAINT [FK_DatTour_TaiKhoan] FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatTour] CHECK CONSTRAINT [FK_DatTour_TaiKhoan]
GO
ALTER TABLE [dbo].[DatTourDetail]  WITH CHECK ADD  CONSTRAINT [FK_DatTourDetail_DatTour] FOREIGN KEY([idDatTour])
REFERENCES [dbo].[DatTour] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatTourDetail] CHECK CONSTRAINT [FK_DatTourDetail_DatTour]
GO
ALTER TABLE [dbo].[DatTourDetail]  WITH CHECK ADD  CONSTRAINT [FK_DatTourDetail_TourDuLich] FOREIGN KEY([idTour])
REFERENCES [dbo].[TourDuLich] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DatTourDetail] CHECK CONSTRAINT [FK_DatTourDetail_TourDuLich]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_AlbumAnh] FOREIGN KEY([idAlbum])
REFERENCES [dbo].[AlbumAnh] ([ID_Album])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_AlbumAnh]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_TinhThanh] FOREIGN KEY([IdTinh])
REFERENCES [dbo].[TinhThanh] ([ID_Tinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_TinhThanh]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ChucNang] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[ChucNang] ([MaChucNang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_ChucNang]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TaiKhoan]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_Slider_TourDuLich] FOREIGN KEY([idTour])
REFERENCES [dbo].[TourDuLich] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_Slider_TourDuLich]
GO
ALTER TABLE [dbo].[Tour_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_Tour_DichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tour_DichVu] CHECK CONSTRAINT [FK_Tour_DichVu_DichVu]
GO
ALTER TABLE [dbo].[Tour_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_Tour_DichVu_TourDuLich] FOREIGN KEY([IdTour])
REFERENCES [dbo].[TourDuLich] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tour_DichVu] CHECK CONSTRAINT [FK_Tour_DichVu_TourDuLich]
GO
ALTER TABLE [dbo].[Tour_KieuTour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_KieuTour_KieuTour] FOREIGN KEY([idKieuTour])
REFERENCES [dbo].[KieuTour] ([ID_KieuTour])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tour_KieuTour] CHECK CONSTRAINT [FK_Tour_KieuTour_KieuTour]
GO
ALTER TABLE [dbo].[Tour_KieuTour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_KieuTour_TourDuLich] FOREIGN KEY([idTour])
REFERENCES [dbo].[TourDuLich] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tour_KieuTour] CHECK CONSTRAINT [FK_Tour_KieuTour_TourDuLich]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [fk_id_gia] FOREIGN KEY([IdMucGia])
REFERENCES [dbo].[Gia] ([ID_Gia])
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [fk_id_gia]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [fk_id_loai_tour] FOREIGN KEY([IdLoaiTour])
REFERENCES [dbo].[LoaiTour] ([ID_LoaiTour])
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [fk_id_loai_tour]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [fk_id_tinh] FOREIGN KEY([IdTinh])
REFERENCES [dbo].[TinhThanh] ([ID_Tinh])
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [fk_id_tinh]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [FK_TourDuLich_AlbumAnh] FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[AlbumAnh] ([ID_Album])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [FK_TourDuLich_AlbumAnh]
GO
ALTER TABLE [dbo].[TourDuLich]  WITH CHECK ADD  CONSTRAINT [FK_TourDuLich_LichTrinh] FOREIGN KEY([IdLichTrinh])
REFERENCES [dbo].[LichTrinh] ([ID_LichTrinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TourDuLich] CHECK CONSTRAINT [FK_TourDuLich_LichTrinh]
GO
/****** Object:  StoredProcedure [dbo].[spTimKiemKhachSan]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--create or alter
CREATE proc [dbo].[spTimKiemKhachSan] @idTinh int, @idMucGia int 
-- spTimkiemTour null, null
as begin
select KS.ID_KhachSan, KS.TenKhachSan,
TinhThanh.Ten as TenTinhThanh, KS.GiaPhong, KS.ViTri,
KS.HinhAnh

from KhachSan KS
left join TinhThanh on TinhThanh.ID_Tinh = KS.idTinh 
left join Gia on Gia.ID_Gia = KS.IdMucGia

where (KS.idTinh = @idTinh or @idTinh is null)
and (KS.IdMucGia = @idMucGia or @idMucGia is null)
end
GO
/****** Object:  StoredProcedure [dbo].[spTimkiemTour]    Script Date: 5/22/2023 3:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spTimkiemTour] @idTinh int, @idLoaiTour int, @idMucGia int 
-- spTimkiemTour null,null,null
as begin
select Tour.ID, Tour.TieuDe, Tour.LichDinhky, Tour.SoNgayDiTour,
TinhThanh.Ten as TenTinhThanh, Tour.GiaTour, Tour.DiaDiem, Tour.BaiViet,
Tour.SoNguoiToiDa, 
Tour.HinhAnh,Tour.IdAlbum

from TourDulich Tour
left join TinhThanh on TinhThanh.ID_Tinh = Tour.idTinh 
left join LoaiTour on LoaiTour.ID_LoaiTour = Tour.idLoaiTour 
left join Gia on Gia.ID_Gia = Tour.IdMucGia

where (Tour.idTinh = @idTinh or @idTinh is null)
and (Tour.idLoaiTour = @idLoaiTour or @idLoaiTour is null) 
and (Tour.IdMucGia = @idMucGia or @idMucGia is null)
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'=1.Hoạt động, 0.Khóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiKhoan', @level2type=N'COLUMN',@level2name=N'Active'
GO
USE [master]
GO
ALTER DATABASE [DuLichDB] SET  READ_WRITE 
GO
