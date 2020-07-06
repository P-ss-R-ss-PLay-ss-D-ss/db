-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 06, 2020 lúc 06:09 AM
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
-- Cơ sở dữ liệu: `qldean`
--
CREATE DATABASE IF NOT EXISTS `qldean` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `qldean`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dean`
--

DROP TABLE IF EXISTS `dean`;
CREATE TABLE IF NOT EXISTS `dean` (
  `mada` varchar(10) NOT NULL,
  `tenda` varchar(20) DEFAULT NULL,
  `diadiem_da` varchar(30) DEFAULT NULL,
  `phong` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mada`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dean`
--

INSERT INTO `dean` (`mada`, `tenda`, `diadiem_da`, `phong`) VALUES
('1', 'SAN PHAM X', 'LAM DONG', '4'),
('2', 'SAN PHAM Y', 'TP.HCM', '2'),
('3', 'DAO TAO', 'TP.HCM', '2'),
('4', 'SAN PHAM Z', 'DA NANG', '2'),
('5', 'QUI TRINH SAN XUAT', 'TP.HCM', '4'),
('6', 'TIEP THI', 'TP.HCM', '4'),
('12', 'MUA MAY TINH', 'LAM DONG', '4'),
('20', 'TIN HOC HOA', 'DA NANG', '2'),
('30', 'QUANG CAO', 'DA NANG', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem_phong`
--

DROP TABLE IF EXISTS `diadiem_phong`;
CREATE TABLE IF NOT EXISTS `diadiem_phong` (
  `maphg` varchar(20) NOT NULL,
  `diadiem` varchar(20) NOT NULL,
  PRIMARY KEY (`maphg`,`diadiem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diadiem_phong`
--

INSERT INTO `diadiem_phong` (`maphg`, `diadiem`) VALUES
('1', 'TP.HCM'),
('2', 'DA NANG'),
('2', 'LAM DONG'),
('3', 'TP.HCM'),
('4', 'LAM DONG'),
('4', 'TP.HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `manv` varchar(10) NOT NULL,
  `tennv` varchar(50) NOT NULL,
  `honv` varchar(20) NOT NULL,
  `ngsinh` date DEFAULT NULL,
  `dchi` varchar(50) DEFAULT NULL,
  `qquan` varchar(50) DEFAULT NULL,
  `phai` enum('m','f') DEFAULT 'f',
  `luong` int(11) DEFAULT NULL,
  `manql` varchar(20) DEFAULT NULL,
  `maphg` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `tennv`, `honv`, `ngsinh`, `dchi`, `qquan`, `phai`, `luong`, `manql`, `maphg`) VALUES
('NV0001', 'TRONG', 'DINH VAN', '1987-01-15', '47 NGUYEN HUE,Q1,TP.HCM', 'DA NANG', 'm', 2500000, 'QL0002', '2'),
('NV0002', 'THUY', 'NGUYEN THI THANH', '1985-04-26', '145 DONG KHOI,Q1,TP.HCM', 'LAM DONG', 'f', 2700000, 'QL0002', '2'),
('NV0003', 'THUY', 'NGUYEN NGOC', '1988-12-05', '45 HAI BA TRUNG,Q3,TP.HCM', 'DA NANG', 'f', 2700000, 'QL0002', '2'),
('NV0004', 'TUNG', 'TRAN THANH', '1990-06-15', '36 NGUYEN THI MINH KHAI,Q BINH THANH,TP.HCM', 'TP.HCM', 'm', 3150000, 'QL0002', '2'),
('NV0005', 'QUANG', 'TRAN HONG', '1986-09-03', '21 DONG KHOI ,Q1,TP.HCM', 'DA NANG', 'm', 2900000, 'QL0003', '4'),
('NV0006', 'DIEP', 'TRAN NGOC', '1984-06-05', '67 TRAN HUNG DAO ,Q5,TP.HCM', 'TP.HCM', 'f', 2700000, 'QL0002', '4'),
('QL0001', 'TUNG', 'NGUYEN THANH', '1985-01-12', '125 TRAN HUNG DAO ,Q1,TP.HCM', 'TP.HCM', 'm', 5000000, NULL, '1'),
('QL0002', 'THUY', 'LY KIM', '1984-07-22', '324 NGUYEN THI MINH KHAI ,Q BINH THANH,TP.HCM', 'TP.HCM', 'f', 4000000, 'QL0001', '2'),
('QL0003', 'NGAN', 'TRAN THANH', '1986-09-05', '34 KY DONG,Q3,TP.HCM', 'LAM DONG', 'f', 4000000, 'QL0001', '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

DROP TABLE IF EXISTS `phancong`;
CREATE TABLE IF NOT EXISTS `phancong` (
  `manv` varchar(20) NOT NULL,
  `soda` varchar(20) NOT NULL,
  `THOIGIAN` double NOT NULL,
  PRIMARY KEY (`manv`,`soda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phancong`
--

INSERT INTO `phancong` (`manv`, `soda`, `THOIGIAN`) VALUES
('NV0001', '1', 4),
('NV0001', '2', 12.5),
('NV0001', '3', 29),
('NV0001', '4', 12),
('NV0001', '5', 4),
('NV0001', '6', 12),
('NV0001', '20', 3),
('NV0001', '30', 15),
('NV0002', '2', 13),
('NV0002', '30', 4),
('NV0003', '3', 21),
('NV0003', '20', 19),
('NV0003', '30', 13),
('NV0004', '3', 20),
('NV0004', '4', 24),
('NV0004', '30', 12),
('NV0005', '1', 25),
('NV0005', '6', 12),
('NV0006', '12', 5),
('NV0002', '1', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

DROP TABLE IF EXISTS `phongban`;
CREATE TABLE IF NOT EXISTS `phongban` (
  `maphg` varchar(20) NOT NULL,
  `tenphg` varchar(20) DEFAULT NULL,
  `trphg` varchar(20) DEFAULT NULL,
  `ngnhanchuc` date DEFAULT NULL,
  PRIMARY KEY (`maphg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`maphg`, `tenphg`, `trphg`, `ngnhanchuc`) VALUES
('1', 'QUAN LY', 'QL0001', '2010-01-01'),
('2', 'NGUYEN CUU', 'QL0002', '2010-02-02'),
('3', 'DIEU HANH', NULL, NULL),
('4', 'KINH DOANH', 'QL0003', '2010-01-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thannhan`
--

DROP TABLE IF EXISTS `thannhan`;
CREATE TABLE IF NOT EXISTS `thannhan` (
  `manvien` varchar(30) NOT NULL,
  `hotn` varchar(20) NOT NULL,
  `tentn` varchar(20) NOT NULL,
  `PHAI` enum('NAM','NU') NOT NULL DEFAULT 'NAM',
  `ngaysinh` date DEFAULT NULL,
  `quanhe` varchar(20) NOT NULL,
  PRIMARY KEY (`manvien`,`tentn`,`hotn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thannhan`
--

INSERT INTO `thannhan` (`manvien`, `hotn`, `tentn`, `PHAI`, `ngaysinh`, `quanhe`) VALUES
('NV0001', 'DINH VAN', 'TIEN', 'NAM', '2007-05-05', 'CON'),
('NV0001', 'DINH HOANG', 'THUY', 'NU', '2009-02-06', 'CON'),
('NV0002', 'TRAN VAN', 'MINH', 'NAM', '2005-04-09', 'CON'),
('NV0001', 'TRAN THUY', 'VY', 'NU', '1987-09-06', 'VO'),
('NV0002', 'LE NGOC', 'CHAU', 'NAM', '1983-12-04', 'CHONG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
