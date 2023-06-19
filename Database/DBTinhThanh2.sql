USE [DuLichDB]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 3/10/2023 2:30:57 PM ******/
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
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT INTO TinhThanh(Ten, idCapCha) VALUES ( N'Trong Nước', 0)
, ( N'Nước Ngoài', 0)
, ( N'Miền Bắc', 1)
, ( N'Miền Trung', 1)
, ( N'Miền Nam', 1)
, ( N'Châu Á', 2)
, ( N'Châu Âu', 2)
, ( N'Châu Mỹ', 2)
, ( N'Châu Phi', 2)
, ( N'An Giang', 5)
, ( N'Bà Rịa – Vũng Tàu', 5)
, ( N'Bắc Giang', 3)
, ( N'Bắc Kạn', 3)
, ( N'Bạc Liêu', 5)
, ( N'Bắc Ninh', 3)
, ( N'Bến Tre', 5)
, ( N'Bình Định', 4)
, ( N'Bình Dương', 5)
, ( N'Bình Phước', 5)
, (79, N'Bình Thuận', 4)
, (80, N'Cà Mau', 5)
, (81, N'Cao Bằng', 3)
, (82, N'Cần Thơ', 5)
, (83, N'Đà Nẵng', 4)
, (84, N'Đắk Lắk', 4)
, (85, N'Đắk Nông', 4)
, (86, N'Điện Biên', 3)
, (87, N'Đồng Nai', 5)
, (88, N'Đồng Tháp', 5)
, (89, N'Gia Lai', 4)
, (90, N'Hà Giang', 3)
, (91, N'Hà Nam', 3)
, (92, N'Hà Nội', 3)
, (93, N'Hà Tĩnh', 4)
, (94, N'Hải Dương', 3)
, (95, N'Hải Phòng', 3)
, (96, N'Hậu Giang', 5)
, (97, N'Hòa Bình', 3)
, (98, N'Hưng Yên', 3)
, (99, N'Hồ Chí Minh', 5)
, (100, N'Khánh Hòa', 4)
, (101, N'Kiên Giang', 5)
, (102, N'Kon Tum', 4)
, (103, N'Lai Châu', 3)
, (104, N'Lâm Đồng', 4)
, (105, N'Lạng Sơn', 3)
, (106, N'Lào Cai', 3)
, (107, N'Long An', 5)
, (108, N'Nam Định', 3)
, (109, N'Nghệ An', 4)
, (110, N'Ninh Bình', 3)
, (111, N'Ninh Thuận', 4)
, (112, N'Phú Thọ', 3)
, (113, N'Phú Yên', 4)
, (114, N'Quảng Bình', 4)
, (115, N'Quảng Nam', 4)
, (116, N'Quảng Ngãi', 4)
, (117, N'Quảng Ninh', 3)
, (118, N'Quảng Trị', 4)
, (119, N'Sóc Trăng', 5)
, (120, N'Sơn La', 3)
, (121, N'Tây Ninh', 5)
, (122, N'Thái Bình', 3)
, (123, N'Thái Nguyên', 3)
, (124, N'Thanh Hóa', 4)
, (125, N'Thừa Thiên Huế', 4)
, (126, N'Tiền Giang', 5)
, (127, N'Trà Vinh', 5)
, (128, N'Tuyên Quang', 3)
, (129, N'Vĩnh Long', 5)
, (130, N'Vĩnh Phúc', 3)
, (131, N'Yên Bái', 3)
, (132, N'Trung Quốc', 6)
, (133, N'Hàn Quốc', 6)
, (134, N'Dubai', 6)
, (135, N'Ấn Độ', 6)
, (136, N' Hồng Kông', 6)
, (137, N'Thái Lan', 6)
, (138, N'Bhutan', 6)
, (139, N'Brunei', 6)
, (140, N'Indonesia', 6)
, (141, N'Campuchia', 6)
, (142, N'Lào', 6)
, (143, N'Đài Loan', 6)
, (144, N'Singapore', 6)
, (145, N'Malaysia', 6)
, (146, N'Philippines', 6)
, (147, N'Nhật Bản', 6)
, (148, N'Mông Cổ', 6)
, (149, N'Madilves', 6)
, (150, N'Anh', 7)
, (151, N'Pháp', 7)
, (152, N'Nga', 7)
, (153, N'Đức', 7)
, (154, N'Áo', 7)
, (155, N'Bỉ', 7)
, (156, N'Czech', 7)
, (157, N'Hà Lan', 7)
, (158, N'Hungary', 7)
GO
, (159, N'Thụy Sỹ', 7)
, (160, N'Hy Lạp', 7)
, (161, N'Ý', 7)
, (162, N'Thụy Điển', 7)
, (163, N'Thổ Nhĩ Kỳ', 7)
, (164, N'Scotland', 7)
, (165, N'Phần Lan', 7)
, (166, N'Monaco', 7)
, (167, N'Mỹ', 8)
, (168, N'Canada', 8)
, (169, N'Nam mỹ', 8)
, (170, N'Brazil', 8)
, (171, N'Cuba', 8)
, (172, N'Maroc', 9)
, ( N'Nam Phi', 9)
, (N'Ai Cập', 9)

