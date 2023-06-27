USE [DuLichDB]
GO
/****** Object:  Table [dbo].[AlbumAnh]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/21/2023 4:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [int] NOT NULL,
	[MaTaiKhoan] [varchar](500) NOT NULL,
	[LuotThich] [int] NULL,
	[LuotTraLoi] [int] NULL,
	[LuotChiaSe] [int] NULL,
	[NoiDung] [nvarchar](2048) NULL,
	[idReply] [int] NULL,
	[Cap] [int] NULL,
	[NgayDang] [datetime] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CamNangDuLich]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[ChucNang]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[DatTour]    Script Date: 6/21/2023 4:55:43 PM ******/
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
	[KhachSan] [nvarchar](500) NULL,
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
/****** Object:  Table [dbo].[DatTourDetail]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[DichVu]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[Gia]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[KieuTour]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[KhachSan]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[PhuongTien]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[Slider]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[Tour_DichVu]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[Tour_KieuTour]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  Table [dbo].[TourDuLich]    Script Date: 6/21/2023 4:55:43 PM ******/
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
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_BinhLuan] FOREIGN KEY([idReply])
REFERENCES [dbo].[BinhLuan] ([MaBinhLuan])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_BinhLuan]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_TaiKhoan]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_TourDuLich] FOREIGN KEY([MaTour])
REFERENCES [dbo].[TourDuLich] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_TourDuLich]
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
/****** Object:  StoredProcedure [dbo].[spTimKiemKhachSan]    Script Date: 6/21/2023 4:55:43 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spTimkiemTour]    Script Date: 6/21/2023 4:55:43 PM ******/
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
