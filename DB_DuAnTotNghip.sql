/*
 * Copyright (c) 2023. Nyaruko.
 */


--CREATE DATABASE DuAnXuongLv2_Nhom5_NguyenVV4
--GO

--USE [DuAnXuongLv2_Nhom5_NguyenVV4]
--GO
/****** Object:  Table [dbo].[anh]    Script Date: 6/24/2023 12:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anh](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [duong_dan] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    [id_chi_tiet_san_pham] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[chat_lieu]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[chat_lieu](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[chi_tiet_san_pham]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[chi_tiet_san_pham](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [gia_ban] [numeric](38, 2) NULL,
    [gia_nhap] [numeric](38, 2) NULL,
    [gia_sau_khi_giam] [numeric](38, 2) NULL,
    [ma] [varchar](255) NULL,
    [mo_ta] [nvarchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [so_luong] [int] NULL,
    [trang_thai] [int] NULL,
    [id_chat_lieu] [int] NULL,
    [id_form_dang] [int] NULL,
    [id_kich_co] [int] NULL,
    [id_loai_san_pham] [int] NULL,
    [id_mau_sac] [int] NULL,
    [id_nsx] [int] NULL,
    [id_san_pham] [int] NULL,
    [id_thiet_ke] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[chuc_vu](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[dia_chi]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[dia_chi](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [dia_chi_cu_the] [nvarchar](255) NULL,
    [phuong_xa] [nvarchar](255) NULL,
    [quan_huyen] [nvarchar](255) NULL,
    [tinh_thanh] [nvarchar](255) NULL,
    [trang_thai_mac_dinh] [int] NULL,
    [id_tai_khoan] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[form_dang]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[form_dang](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[giam_gia]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[giam_gia](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [muc_giam_tien_mat] [numeric](38, 2) NULL,
    [muc_phan_tram_giam] [real] NULL,
    [ngay_bat_dau] [date] NULL,
    [ngay_ket_thuc] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[giam_gia_chi_tiet]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[giam_gia_chi_tiet](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [trang_thai] [int] NULL,
    [id_chi_tiet_san_pham] [int] NULL,
    [id_giam_gia] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[gio_hang](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_tao] [date] NULL,
    [ngay_thanh_toan] [date] NULL,
    [trang_thai] [int] NULL,
    [id_nhan_vien] [int] NULL,
    [id_tai_khoan] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[gio_hang_chi_tiet]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[gio_hang_chi_tiet](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [don_gia] [numeric](38, 2) NULL,
    [don_gia_khi_giam] [numeric](38, 2) NULL,
    [so_luong] [int] NULL,
    [id_chi_tiet_san_pham] [int] NULL,
    [id_gio_hang] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[hinh_thuc_thanh_toan]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[hinh_thuc_thanh_toan](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [kieu_thanh_toan] [nvarchar](255) NULL,
    [ma] [varchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[hoa_don](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [dia_chi] [nvarchar](255) NULL,
    [ghi_chu] [nvarchar](255) NULL,
    [ma] [varchar](255) NULL,
    [ngay_dat_hang] [date] NULL,
    [ngay_giao_hang] [date] NULL,
    [ngay_tao] [date] NULL,
    [ngay_thanh_toan] [date] NULL,
    [so_dien_thoai] [varchar](255) NULL,
    [ten_nguoi_nhan] [nvarchar](255) NULL,
    [tong_tien] [numeric](38, 2) NULL,
    [trang_thai] [int] NULL,
    [id_hinh_thuc_thanh_toan] [int] NULL,
    [id_nhan_vien] [int] NULL,
    [id_tai_khoan] [int] NULL,
    [id_voucher] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [don_gia] [numeric](38, 2) NULL,
    [gia_ban] [numeric](38, 2) NULL,
    [so_luong] [int] NULL,
    [thanh_tien] [numeric](38, 2) NULL,
    [trang_thai] [int] NULL,
    [id_chi_tiet_san_pham] [int] NULL,
    [id_hoa_don] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[kich_co]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[kich_co](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[loai_san_pham]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[loai_san_pham](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[mau_sac](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[nhan_vien](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [dia_chi] [nvarchar](255) NULL,
    [email] [varchar](255) NULL,
    [gioi_tinh] [bit] NULL,
    [ma] [varchar](255) NULL,
    [mat_khau] [varchar](255) NULL,
    [ngay_sinh] [date] NULL,
    [so_dien_thoai] [varchar](255) NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    [id_chuc_vu] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[nsx]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[nsx](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[san_pham](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[tai_khoan](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [email] [varchar](255) NULL,
    [gioi_tinh] [bit] NULL,
    [ma] [varchar](255) NULL,
    [mat_khau] [varchar](255) NULL,
    [ngay_sinh] [date] NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [so_dien_thoai] [varchar](255) NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[thiet_ke]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[thiet_ke](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [ma] [varchar](255) NULL,
    [ngay_sua] [date] NULL,
    [ngay_tao] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[voucher]    Script Date: 6/24/2023 12:40:37 PM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[voucher](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [don_toi_thieu] [numeric](38, 2) NULL,
    [giam_toi_da] [numeric](38, 2) NULL,
    [ma] [varchar](255) NULL,
    [muc_giam_tien_mat] [numeric](38, 2) NULL,
    [muc_phan_tram_giam] [real] NULL,
    [ngay_bat_dau] [date] NULL,
    [ngay_ket_thuc] [date] NULL,
    [ten] [nvarchar](255) NULL,
    [trang_thai] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[anh]  WITH CHECK ADD  CONSTRAINT [FKsu5v9en2vs8uy0q1iut5vulng] FOREIGN KEY([id_chi_tiet_san_pham])
    REFERENCES [dbo].[chi_tiet_san_pham] ([id])
    GO
ALTER TABLE [dbo].[anh] CHECK CONSTRAINT [FKsu5v9en2vs8uy0q1iut5vulng]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK1tw4oar4sf7pj9nl6jupb525v] FOREIGN KEY([id_chat_lieu])
    REFERENCES [dbo].[chat_lieu] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK1tw4oar4sf7pj9nl6jupb525v]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK4o61mjdkqgrnwj30xb0d9pmbk] FOREIGN KEY([id_kich_co])
    REFERENCES [dbo].[kich_co] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK4o61mjdkqgrnwj30xb0d9pmbk]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK652qgnq8c563f5xkhmnbd0yy3] FOREIGN KEY([id_nsx])
    REFERENCES [dbo].[nsx] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK652qgnq8c563f5xkhmnbd0yy3]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FK8577hvp72cgrnxfnm87kpvnco] FOREIGN KEY([id_form_dang])
    REFERENCES [dbo].[form_dang] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FK8577hvp72cgrnxfnm87kpvnco]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FKajhf4a56p84886p73w3rmbjxt] FOREIGN KEY([id_thiet_ke])
    REFERENCES [dbo].[thiet_ke] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FKajhf4a56p84886p73w3rmbjxt]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FKfl4ea53u4ch5275ye5aghpi7k] FOREIGN KEY([id_loai_san_pham])
    REFERENCES [dbo].[loai_san_pham] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FKfl4ea53u4ch5275ye5aghpi7k]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FKhrc41nqmp3jsh42ikergp7qsd] FOREIGN KEY([id_mau_sac])
    REFERENCES [dbo].[mau_sac] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FKhrc41nqmp3jsh42ikergp7qsd]
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham]  WITH CHECK ADD  CONSTRAINT [FKhry1oewlwwhwhuqhr1tinw6l6] FOREIGN KEY([id_san_pham])
    REFERENCES [dbo].[san_pham] ([id])
    GO
ALTER TABLE [dbo].[chi_tiet_san_pham] CHECK CONSTRAINT [FKhry1oewlwwhwhuqhr1tinw6l6]
    GO
ALTER TABLE [dbo].[dia_chi]  WITH CHECK ADD  CONSTRAINT [FKqfk68o1d9e2yglss7761hyn57] FOREIGN KEY([id_tai_khoan])
    REFERENCES [dbo].[tai_khoan] ([id])
    GO
ALTER TABLE [dbo].[dia_chi] CHECK CONSTRAINT [FKqfk68o1d9e2yglss7761hyn57]
    GO
ALTER TABLE [dbo].[giam_gia_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK9f9pugfgj99gkf9d2ltoofgoi] FOREIGN KEY([id_giam_gia])
    REFERENCES [dbo].[giam_gia] ([id])
    GO
ALTER TABLE [dbo].[giam_gia_chi_tiet] CHECK CONSTRAINT [FK9f9pugfgj99gkf9d2ltoofgoi]
    GO
ALTER TABLE [dbo].[giam_gia_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKyqr3n69me7pgsr48ko0uoskb] FOREIGN KEY([id_chi_tiet_san_pham])
    REFERENCES [dbo].[chi_tiet_san_pham] ([id])
    GO
ALTER TABLE [dbo].[giam_gia_chi_tiet] CHECK CONSTRAINT [FKyqr3n69me7pgsr48ko0uoskb]
    GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FKsobuc1np1gbcvp92j2eqxpe9w] FOREIGN KEY([id_nhan_vien])
    REFERENCES [dbo].[nhan_vien] ([id])
    GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FKsobuc1np1gbcvp92j2eqxpe9w]
    GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FKtmf739ptiolk6tt01rwe480xx] FOREIGN KEY([id_tai_khoan])
    REFERENCES [dbo].[tai_khoan] ([id])
    GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FKtmf739ptiolk6tt01rwe480xx]
    GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKhkle2qtnnet5fq60x6tdhekql] FOREIGN KEY([id_gio_hang])
    REFERENCES [dbo].[gio_hang] ([id])
    GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FKhkle2qtnnet5fq60x6tdhekql]
    GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKlcvoteetgysdpfavfevmyh3en] FOREIGN KEY([id_chi_tiet_san_pham])
    REFERENCES [dbo].[chi_tiet_san_pham] ([id])
    GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FKlcvoteetgysdpfavfevmyh3en]
    GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK5411asjntgpikbtpqscwtexm1] FOREIGN KEY([id_hinh_thuc_thanh_toan])
    REFERENCES [dbo].[hinh_thuc_thanh_toan] ([id])
    GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK5411asjntgpikbtpqscwtexm1]
    GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKasvlpgnidxg95c2b7cqhwemv0] FOREIGN KEY([id_tai_khoan])
    REFERENCES [dbo].[tai_khoan] ([id])
    GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKasvlpgnidxg95c2b7cqhwemv0]
    GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKh16rkjfqmrcl3oo1w321yi1uf] FOREIGN KEY([id_voucher])
    REFERENCES [dbo].[voucher] ([id])
    GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKh16rkjfqmrcl3oo1w321yi1uf]
    GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FKkuxkrkgq8yftm4d8d7o0w6nbv] FOREIGN KEY([id_nhan_vien])
    REFERENCES [dbo].[nhan_vien] ([id])
    GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FKkuxkrkgq8yftm4d8d7o0w6nbv]
    GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK4672qsis193xo4polycwrcwb8] FOREIGN KEY([id_chi_tiet_san_pham])
    REFERENCES [dbo].[chi_tiet_san_pham] ([id])
    GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK4672qsis193xo4polycwrcwb8]
    GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK5adopt864mjisuy5xmgmy8iun] FOREIGN KEY([id_hoa_don])
    REFERENCES [dbo].[hoa_don] ([id])
    GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK5adopt864mjisuy5xmgmy8iun]
    GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FKq3q5deyy0hcpayefnyksv9r6w] FOREIGN KEY([id_chuc_vu])
    REFERENCES [dbo].[chuc_vu] ([id])
    GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FKq3q5deyy0hcpayefnyksv9r6w]
    GO
