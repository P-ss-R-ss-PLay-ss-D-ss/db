-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 11, 2020 lúc 04:31 PM
-- Phiên bản máy phục vụ: 8.0.18
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--
CREATE DATABASE IF NOT EXISTS `quanlybanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quanlybanhang`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chamcong`
--

DROP TABLE IF EXISTS `chamcong`;
CREATE TABLE IF NOT EXISTS `chamcong` (
  `thang` tinyint(3) UNSIGNED NOT NULL,
  `nam` smallint(5) UNSIGNED NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaycong` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thang`,`nam`,`manv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chamcong`
--

INSERT INTO `chamcong` (`thang`, `nam`, `manv`, `ngaycong`) VALUES
(1, 1991, 1, 20),
(2, 1991, 2, 30),
(3, 1991, 3, 30),
(4, 1992, 4, 30),
(5, 1992, 5, 40),
(1, 1992, 6, 30),
(12, 1991, 7, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietddh`
--

DROP TABLE IF EXISTS `chitietddh`;
CREATE TABLE IF NOT EXISTS `chitietddh` (
  `maddh` char(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mamh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maddh`,`mamh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietddh`
--

INSERT INTO `chitietddh` (`maddh`, `mamh`, `soluong`, `giamgia`) VALUES
('1', 1, 2, 10),
('1', 2, 2, 1),
('2', 3, 3, 1),
('3', 4, 4, 1),
('4', 5, 6, 20),
('5', 6, 7, 1),
('6', 7, 8, 1),
('7', 8, 9, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE IF NOT EXISTS `dondathang` (
  `maddh` char(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `makh` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaydh` date NOT NULL,
  `ngaygiao` date DEFAULT NULL,
  PRIMARY KEY (`maddh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`maddh`, `makh`, `manv`, `ngaydh`, `ngaygiao`) VALUES
('1', 'CODACO', 1, '1997-02-02', '1997-02-03'),
('2', 'COTEC', 2, '1997-01-03', '1997-01-04'),
('3', 'DHP', 3, '1997-02-15', '1997-02-18'),
('4', 'GIAY32', 4, '1997-03-01', '1997-04-01'),
('5', 'RUBIMEX', 5, '1998-03-01', '1998-05-02'),
('6', 'SAMACO', 6, '1998-05-02', '1998-05-06'),
('7', 'SAMECO', 7, '1998-05-02', '1998-05-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvi`
--

DROP TABLE IF EXISTS `donvi`;
CREATE TABLE IF NOT EXISTS `donvi` (
  `madv` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tendv` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`madv`),
  UNIQUE KEY `tendv` (`tendv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvi`
--

INSERT INTO `donvi` (`madv`, `tendv`) VALUES
('GD', 'Ban Giám Đốc'),
('KT', 'Kế Toán'),
('NV', 'Ngiệp Vụ'),
('TC', 'Tổ Chức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenkh` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `diachi` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dienthoai` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `matp` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `tenkh` (`tenkh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `tenkh`, `diachi`, `dienthoai`, `matp`) VALUES
('CODACO', 'Co Khí Dân Dụng', '388 Hoà Hảo P5', '1757828', 'TP'),
('COTEC', 'Công Nghệ Mới', '319 Nguyễn Trải P7', '7657657', 'CT'),
('DHP', 'Ðại Hung Phát', '343 Nhật Tảo P16', '6546565', 'NT'),
('GIAY32', 'Giày 32', '105A Ngô Quyền P11', '6565468', 'CT'),
('RUBIMEX', 'Công Nghiệp Cao Su', '220 Lê Van Sỉ ', '2987912', 'NT'),
('SAMACO', 'SXKD Dịch Vụ Tổng Hợp', '56 Nguyễn Biểu P2', '1987987', 'CT'),
('SAMECO', 'Co Khí Sài Gòn', '156 Lê Ðại Hành P7', '2397997', 'HN'),
('TRACODI', 'Ðâu Tu Phát Tri?n GTVT', 'Hàm Nghi Q1', '0976766', 'HP'),
('VITICO', 'Hoá Nh?a Vinh Ti?n', '35 Tô Hiển Thành P14', '3987980', 'TP'),
('VTP', 'Vạn Hung Phát', '119 Bạch Vân P17', '3765768', 'HN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `mamh` int(11) NOT NULL AUTO_INCREMENT,
  `tenmh` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donvitinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dongia` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hinhsp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `mancc` int(11) NOT NULL,
  PRIMARY KEY (`mamh`),
  UNIQUE KEY `tenmh` (`tenmh`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`mamh`, `tenmh`, `donvitinh`, `dongia`, `hinhsp`, `mancc`) VALUES
(1, 'rượu', 'chai', 230, NULL, 7),
(2, 'tiêu', 'hộp', 40, NULL, 7),
(3, 'bánh kem', 'cái', 10, NULL, 3),
(4, 'bơ', 'kg', 38, NULL, 6),
(5, 'bánh mì', 'cái', 8, NULL, 3),
(6, 'nem', 'kg', 24, NULL, 1),
(7, 'táo', 'kg', 5, NULL, 4),
(8, 'cá hộp', 'thùng', 63, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `mancc` int(11) NOT NULL AUTO_INCREMENT,
  `tenncc` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dien` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mancc`),
  UNIQUE KEY `tenncc` (`tenncc`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `dien`) VALUES
(1, 'CTY đồ hộp tân bình', 'tp.hcm', '123456'),
(2, 'cty rượu bình tân', 'tp.hcm', '342342'),
(3, 'cty đức phát', 'tp.hcm', '453456'),
(4, 'cty rau quả việt nam', 'hà nội', '876567'),
(5, 'cty thuỷ sản tiền giang', 'tiền giang', '876876'),
(6, 'cty vinamilk', 'tp.hcm', '646478'),
(7, 'cty nông sản lâm đồng', 'đà lạt', '565467');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `manv` int(11) NOT NULL AUTO_INCREMENT,
  `holot` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tennv` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phai` enum('F','M') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `luongcb` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ngaynviec` date NOT NULL,
  `diachinv` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dienthoainv` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `hinhnv` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`manv`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `holot`, `tennv`, `phai`, `luongcb`, `ngaynviec`, `diachinv`, `dienthoainv`, `hinhnv`) VALUES
(1, 'Phan Hồng Bảo', 'Ngọc', 'F', 200, '1991-07-02', 'Đồng Nai', '0933018608', NULL),
(2, 'Lưu Thị Kiều', 'Oanh', 'F', 300, '1991-05-06', 'Q1', '084545329', NULL),
(3, 'Nguyễn Lê Trọng', 'Tiền', 'M', 500, '1992-03-07', 'TP.HCM', '077484293', NULL),
(4, 'Huỳnh Dương Mỹ ', 'Uyên', 'F', 400, '1993-09-08', 'TP.HCM', '097460659', NULL),
(5, 'Vũ Minh ', 'Chuẩn', 'F', 500, '1991-01-01', 'Vĩnh Long', '090736669', NULL),
(6, 'Võ Thị Ngọc', 'Tuyền', 'F', 400, '1992-06-09', 'TP.HCM', '0123456789', NULL),
(7, 'Nguyễn Thị Ánh', 'Trinh', 'F', 350, '1992-05-06', 'Q2', '0456789123', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtp`
--

DROP TABLE IF EXISTS `tinhtp`;
CREATE TABLE IF NOT EXISTS `tinhtp` (
  `matp` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tentp` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`matp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtp`
--

INSERT INTO `tinhtp` (`matp`, `tentp`) VALUES
('CT', 'Cần Thơ'),
('HN', 'Hà Nội'),
('HP', 'Hải Phòng'),
('HU', 'Huế'),
('ND', 'Nam Định'),
('NT', 'Nha Trang'),
('TP', 'TP.Hồ Chí Minh'),
('VI', 'Vinh');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
