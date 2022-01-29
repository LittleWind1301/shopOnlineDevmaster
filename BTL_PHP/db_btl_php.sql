-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2021 lúc 06:23 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_btl_php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Metatitle` varchar(255) NOT NULL,
  `Display_order` int(11) NOT NULL,
  `Created_date` datetime NOT NULL,
  `Created_by` varchar(255) NOT NULL,
  `Modified_date` datetime NOT NULL,
  `Modified_by` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`ID`, `Name`, `Metatitle`, `Display_order`, `Created_date`, `Created_by`, `Modified_date`, `Modified_by`, `Status`) VALUES
(13, 'Điện thoại', '', 0, '2021-10-21 09:32:59', '', '0000-00-00 00:00:00', '', 1),
(14, 'Tablet', '', 0, '2021-10-21 09:33:11', '', '0000-00-00 00:00:00', '', 1),
(15, 'Pin, sạc dự phòng', '', 0, '2021-10-21 09:33:14', 'test', '0000-00-00 00:00:00', '', 1),
(17, 'Ốp lưng', '', 0, '2021-10-21 09:34:00', 'test', '2021-10-21 05:17:51', 'test', 0),
(25, 'Tai nghe, loa', '', 0, '2026-10-21 09:17:30', 'Vũ Phong', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `s_id` varchar(255) NOT NULL DEFAULT '0',
  `fullname` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) DEFAULT 0,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `s_id`, `fullname`, `phone_number`, `email`, `subject_name`, `product_id`, `note`, `created_date`, `status`, `modified_date`) VALUES
(1, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'test', 0, '1', '2003-11-21 03:19:42', 1, '2003-11-21 05:19:42'),
(2, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'test', 0, '2', '2003-11-21 03:20:01', 1, '2003-11-21 05:19:36'),
(3, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'test', 0, '123', '2003-11-21 03:20:48', 1, '0000-00-00 00:00:00'),
(4, '0', 'Nguyễn Văn A', '1234567890', 'a@gmail.com', 'test', 0, '123', '2003-11-21 03:21:06', 1, '2005-11-21 01:17:56'),
(5, '0', 'Nguyễn Văn A', '1234567890', 'a@gmail.com', 'test', 0, '123', '2003-11-21 03:21:06', 1, '2009-11-21 11:08:37'),
(6, '0', 'Nguyễn Văn A', '1234567890', 'a@gmail.com', 'test', 0, '123', '2003-11-21 03:21:06', 0, '2003-11-21 05:09:19'),
(7, '0', 'Nguyễn Văn A', '1234567890', 'a@gmail.com', 'test', 0, '123', '2003-11-21 03:21:06', 1, '2005-11-21 01:17:44'),
(8, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'mới tạo', 0, 'đây là nội dung', '2009-11-21 11:13:04', 0, '0000-00-00 00:00:00'),
(9, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'mới tạo', 0, '1234', '2021-11-09 04:16:33', 0, '0000-00-00 00:00:00'),
(17, '0', 'Anh An', '0327477079', 'trongphong131@gmail.com', 'Tốt', 63, 'Cực kì hài lòng về thái độ của nhân viên siêu thị,nhất là nhân viên tư vấn,hỗ trợ khách tốt và rất nhiệt tình đánh giá', '2021-11-09 06:02:03', 0, '0000-00-00 00:00:00'),
(18, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'rất tối', 37, 'đây là đánh giá', '2021-11-13 02:09:56', 0, '0000-00-00 00:00:00'),
(19, '0', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'rất tối', 37, 'đây là đánh giá', '2021-11-13 02:10:05', 1, '2021-11-13 02:10:46'),
(20, 'e6gubu1860r28npekqf11lj2eq', 'Vũ Phong', '0327477079', 'trongphong131@gmail.com', 'test1', 37, '123', '2021-11-14 05:13:45', 0, '0000-00-00 00:00:00'),
(22, 'e6gubu1860r28npekqf11lj2eq', 'Hà Trần', '1234567890', 'ha@gmail.com', 'Không tốt', 154, 'sản phẩm kém chất lượng', '2021-11-24 05:39:26', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `status1` varchar(50) NOT NULL,
  `total_money` double NOT NULL,
  `sid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `created_date`, `status`, `status1`, `total_money`, `sid`) VALUES
(1, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-01-25 17:47:28', 1, '', 18990000, ''),
(2, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-02-25 17:47:28', 1, '', 17990000, ''),
(3, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-03-25 17:47:28', 1, '', 16990000, ''),
(4, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-04-25 17:47:28', 1, '', 22990000, ''),
(5, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-05-25 17:47:28', 1, '', 12990000, ''),
(6, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-06-25 17:47:28', 1, '', 15990000, ''),
(7, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-07-25 17:47:28', 1, '', 12990000, ''),
(8, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-08-25 17:47:28', 1, '', 7990000, ''),
(9, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-09-25 17:47:28', 1, '', 24990000, ''),
(10, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-10-25 17:47:28', 1, '', 12990000, ''),
(11, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-11-25 17:47:28', 1, '', 32990000, ''),
(12, 2, 'Nguyễn Văn An', 'an@gmail.com', '1234567890', 'Nam Định', 'Không có ghi chú', '2021-12-25 17:47:28', 1, '', 28990000, ''),
(13, 1, 'Vũ Phong', 'trongphong131@gmail.com', '0327477079', 'Hải Phòng', '123', '2002-11-21 08:28:10', 0, '', 12990000, ''),
(18, 1, 'Vũ Phong', 'trongphong131@gmail.com', '0327477079', 'Hải Phòng', 'moi', '2002-11-21 09:24:18', 1, '', 64960000, ''),
(19, 1, 'Vũ Phong', 'trongphong131@gmail.com', '0327477079', 'số 3 Cầu Giấy- Láng Thượng - Đống Đa - Hà Nội', 'ád', '2009-11-21 11:11:07', 2, '', 67440000, ''),
(20, 1, 'Đại Nam', 'trongphong131@gmail.com', '0327477079', 'số 3 Cầu Giấy- Láng Thượng - Đống Đa - Hà Nội', '', '2021-11-11 10:38:39', 1, '', 13990000, ''),
(21, 42, 'Vũ Phong', 'trongphong@gmail.com', '0327477079', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', '', '2021-11-13 01:53:24', 2, '', 2140000, ''),
(22, 42, 'Vũ Phong', 'trongphong@gmail.com', '0327477079', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'ko co', '2021-11-15 02:57:11', 1, '', 22480000, ''),
(23, 42, 'Vũ Phong', 'trongphong@gmail.com', '0327477079', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'hãy chọn hàng mới', '2021-11-15 04:13:04', 0, '', 1314000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `num` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `sid` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `price`, `num`, `total_price`, `sid`, `status`) VALUES
(50, 13, 17, 12990000, 1, 12990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(51, 14, 63, 9490000, 1, 9490000, 'e6gubu1860r28npekqf11lj2eq', 1),
(52, 14, 37, 32990000, 1, 32990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(53, 15, 63, 9490000, 1, 9490000, 'e6gubu1860r28npekqf11lj2eq', 1),
(54, 16, 63, 9490000, 1, 9490000, 'e6gubu1860r28npekqf11lj2eq', 1),
(55, 17, 62, 9490000, 1, 9490000, 'e6gubu1860r28npekqf11lj2eq', 1),
(56, 18, 17, 12990000, 1, 12990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(57, 18, 37, 32990000, 1, 32990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(58, 18, 48, 9490000, 2, 18980000, 'e6gubu1860r28npekqf11lj2eq', 1),
(62, 19, 63, 9490000, 3, 28470000, 'e6gubu1860r28npekqf11lj2eq', 1),
(63, 19, 17, 12990000, 3, 38970000, 'e6gubu1860r28npekqf11lj2eq', 1),
(66, 20, 64, 13990000, 1, 13990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(67, 21, 141, 2140000, 1, 2140000, 'e6gubu1860r28npekqf11lj2eq', 1),
(71, 22, 48, 9490000, 1, 9490000, 'e6gubu1860r28npekqf11lj2eq', 1),
(72, 22, 18, 12990000, 1, 12990000, 'e6gubu1860r28npekqf11lj2eq', 1),
(73, 23, 108, 474000, 1, 474000, 'e6gubu1860r28npekqf11lj2eq', 1),
(74, 23, 109, 280000, 3, 840000, 'e6gubu1860r28npekqf11lj2eq', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_producer`
--

CREATE TABLE `tbl_producer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_producer`
--

INSERT INTO `tbl_producer` (`id`, `name`, `deleted`) VALUES
(1, 'Apple', 0),
(2, 'Samsung', 0),
(3, 'Oppo', 0),
(4, 'Vivo', 0),
(5, 'Xiaomi', 0),
(6, 'Realme', 0),
(7, 'vertu', 1),
(8, 'vertu123', 1),
(9, 'Anker', 0),
(10, 'Aukey', 0),
(11, 'Energizer', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `producer_id` int(11) NOT NULL,
  `product_detail_id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `created_date` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_name`, `description`, `image`, `price`, `quantity`, `category_id`, `producer_id`, `product_detail_id`, `detail`, `created_date`, `created_by`, `modified_date`, `modified_by`, `status`, `meta_title`) VALUES
(17, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 0, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 1, ''),
(18, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 19, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(19, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(20, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(21, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(22, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(23, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(24, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 0, ''),
(25, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 12990000, 20, 13, 2, 1, '', '2021-10-30', '', '2021-10-30 10:30:26', '', 1, ''),
(26, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '0000-00-00', '', '2021-10-30 10:45:41', '', 0, ''),
(27, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(28, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(29, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(30, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 1, ''),
(31, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '0000-00-00', '', '2021-10-30 10:45:41', '', 1, ''),
(32, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(33, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(34, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(35, 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 25990000, 20, 13, 2, 2, '', '2021-10-30', '', '2021-10-30 10:45:41', '', 0, ''),
(37, 'Điện thoại iPhone 12 Pro Max 128GB', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', 'e0dd82dbe5.jpg', 32990000, 0, 13, 1, 3, '', '2022-10-21', '', '0000-00-00 00:00:00', '', 1, ''),
(38, 'Điện thoại iPhone 12 Pro Max 128GB', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', 'e0dd82dbe5.jpg', 32990000, 20, 13, 1, 3, '', '2022-10-21', '', '0000-00-00 00:00:00', 'phong', 0, ''),
(39, 'Điện thoại iPhone 12 Pro Max 128GB', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', 'e0dd82dbe5.jpg', 32990000, 20, 13, 1, 3, '', '2022-10-21', '', '0000-00-00 00:00:00', 'phong', 0, ''),
(40, 'Điện thoại iPhone 12 Pro Max 128GB', 'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', 'e0dd82dbe5.jpg', 32990000, 20, 13, 1, 3, '', '2022-10-21', '', '0000-00-00 00:00:00', 'phong', 1, ''),
(41, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 1, ''),
(42, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 0, ''),
(43, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 0, ''),
(44, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 1, ''),
(45, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 0, ''),
(46, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 0, ''),
(48, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 19, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(49, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(50, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(51, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(52, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(53, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 1, ''),
(54, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(55, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(56, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(57, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 1, ''),
(58, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(59, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(60, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(61, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(62, 'Điện thoại OPPO Reno6 Z 5G', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '', '2021-10-30', '', '2021-10-30 11:10:34', '', 0, ''),
(63, 'Điện thoại OPPO Reno6 Z 5G', '&lt;h3 style=&quot;margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none;&quot;&gt;xin chao&lt;/h3&gt;', 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 9490000, 20, 13, 3, 4, '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none;\"><a href=\"https://www.thegioididong.com/dtdd/oppo-reno6-z-5g\" target=\"_blank\" title=\"Tham khảo điện thoại OPPO Reno6 Z 5G kinh doanh chính hãng tại Thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">Reno6 Z 5G</a>&nbsp;đến từ nhà&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\" title=\"Tham khảo điện thoại OPPO đang bán tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">OPPO</a>&nbsp;với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại đang bán tại thegioididong.com\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">điện thoại</a>&nbsp;được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.</h3>                    ', '2021-10-30', '', '2005-11-21 06:22:23', '', 0, ''),
(64, 'Samsung Galaxy Tab S7 FE 4G', 'Samsung chính thức trình làng mẫu máy tính bảng có tên Galaxy Tab S7 FE, máy trang bị cấu hình mạnh mẽ, màn hình giải trí siêu lớn và điểm ấn tượng nhất là viên pin siêu khủng được tích hợp bên trong, giúp tăng hiệu suất làm việc nhưng vẫn có tính di động cực cao.', '86b66710e3.jpg', 13990000, 49, 14, 2, 1, '', '2021-11-11', '', '0000-00-00 00:00:00', '', 0, ''),
(65, 'Samsung Galaxy Tab S7 FE 4G', 'Samsung chính thức trình làng mẫu máy tính bảng có tên Galaxy Tab S7 FE, máy trang bị cấu hình mạnh mẽ, màn hình giải trí siêu lớn và điểm ấn tượng nhất là viên pin siêu khủng được tích hợp bên trong, giúp tăng hiệu suất làm việc nhưng vẫn có tính di động cực cao.', 'ea36be3f81.jpg', 13990000, 50, 14, 2, 1, '', '2021-11-11', '', '2021-11-12 11:29:33', '', 1, ''),
(68, 'Pin sạc dự phòng Polymer 20000mAh Type C PD 20W PowerCore Essential Anker A1287', 'Nạp pin liền mạch, an toàn với công nghệ sạc nhanh Power Delivery 20 W. Power Delivery được tích hợp trên cổng Type-C có khả năng tinh chỉnh dòng sạc phù hợp với từng thiết bị, giúp bổ sung năng lượng nhanh chóng, khi sạc cho iPhone 12 đầy 50% chỉ trong 30 phút.', 'a34ddd108d.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(69, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore A1263', 'Sạc dự phòng Anker PowerCore A1263 có thiết kế đơn giản, kích thước nhỏ gọn (92 x 60 x 22 mm) giúp người dùng dễ dàng cầm nắm khối lượng nhẹ 180g', '40d0ec1087.jpg', 750000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(70, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore Select A1223', 'Thiết kế pin sạc dự phòng Anker nhỏ gọn, cầm vừa tay.Kích cỡ chỉ lớn hơn thẻ ATM của bạn một chút nên tạo cảm thấy rất thoải mái khi cầm nắm, di chuyển.', 'de5f49536c.jpg', 570000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(71, 'Pin sạc dự phòng Polymer 10.000 mAh Type C Anker PowerCore Lite A1232', 'Thiết kế gọn nhẹ, siêu mỏng, dễ dàng mang theo để sử dụng ở những nơi không có nguồn điện', 'b612f1a938.jpg', 760000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(72, 'Pin sạc dự phòng Polymer 20.000 mAh Type C PD Anker PowerCore Essential A1281 Fabric', 'Pin sạc dự phòng PowerCore Essential 20000mAh PD với kích thước mỏng gọn, trọng lượng nhẹ, dễ dàng mang theo. Vỏ ngoài bọc vải Fabric sang trọng, tinh tế, bền bỉ, thêm sức hút cho sản phẩm trong mọi không gian dùng.', '88c87908f7.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(73, 'Pin sạc dự phòng Polymer 20000mAh Type C PD 20W PowerCore Essential Anker A1287', 'Nạp pin liền mạch, an toàn với công nghệ sạc nhanh Power Delivery 20 W. Power Delivery được tích hợp trên cổng Type-C có khả năng tinh chỉnh dòng sạc phù hợp với từng thiết bị, giúp bổ sung năng lượng nhanh chóng, khi sạc cho iPhone 12 đầy 50% chỉ trong 30 phút.', 'a34ddd108d.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(74, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore A1263', 'Sạc dự phòng Anker PowerCore A1263 có thiết kế đơn giản, kích thước nhỏ gọn (92 x 60 x 22 mm) giúp người dùng dễ dàng cầm nắm khối lượng nhẹ 180g', '40d0ec1087.jpg', 750000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(75, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore Select A1223', 'Thiết kế pin sạc dự phòng Anker nhỏ gọn, cầm vừa tay.Kích cỡ chỉ lớn hơn thẻ ATM của bạn một chút nên tạo cảm thấy rất thoải mái khi cầm nắm, di chuyển.', 'de5f49536c.jpg', 570000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(76, 'Pin sạc dự phòng Polymer 10.000 mAh Type C Anker PowerCore Lite A1232', 'Thiết kế gọn nhẹ, siêu mỏng, dễ dàng mang theo để sử dụng ở những nơi không có nguồn điện', 'b612f1a938.jpg', 760000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(77, 'Pin sạc dự phòng Polymer 20.000 mAh Type C PD Anker PowerCore Essential A1281 Fabric', 'Pin sạc dự phòng PowerCore Essential 20000mAh PD với kích thước mỏng gọn, trọng lượng nhẹ, dễ dàng mang theo. Vỏ ngoài bọc vải Fabric sang trọng, tinh tế, bền bỉ, thêm sức hút cho sản phẩm trong mọi không gian dùng.', '88c87908f7.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(78, 'Pin sạc dự phòng Polymer 20000mAh Type C PD 20W PowerCore Essential Anker A1287', 'Nạp pin liền mạch, an toàn với công nghệ sạc nhanh Power Delivery 20 W. Power Delivery được tích hợp trên cổng Type-C có khả năng tinh chỉnh dòng sạc phù hợp với từng thiết bị, giúp bổ sung năng lượng nhanh chóng, khi sạc cho iPhone 12 đầy 50% chỉ trong 30 phút.', 'a34ddd108d.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(79, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore A1263', 'Sạc dự phòng Anker PowerCore A1263 có thiết kế đơn giản, kích thước nhỏ gọn (92 x 60 x 22 mm) giúp người dùng dễ dàng cầm nắm khối lượng nhẹ 180g', '40d0ec1087.jpg', 750000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(80, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore Select A1223', 'Thiết kế pin sạc dự phòng Anker nhỏ gọn, cầm vừa tay.Kích cỡ chỉ lớn hơn thẻ ATM của bạn một chút nên tạo cảm thấy rất thoải mái khi cầm nắm, di chuyển.', 'de5f49536c.jpg', 570000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(81, 'Pin sạc dự phòng Polymer 10.000 mAh Type C Anker PowerCore Lite A1232', 'Thiết kế gọn nhẹ, siêu mỏng, dễ dàng mang theo để sử dụng ở những nơi không có nguồn điện', 'b612f1a938.jpg', 760000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(82, 'Pin sạc dự phòng Polymer 20.000 mAh Type C PD Anker PowerCore Essential A1281 Fabric', 'Pin sạc dự phòng PowerCore Essential 20000mAh PD với kích thước mỏng gọn, trọng lượng nhẹ, dễ dàng mang theo. Vỏ ngoài bọc vải Fabric sang trọng, tinh tế, bền bỉ, thêm sức hút cho sản phẩm trong mọi không gian dùng.', '88c87908f7.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(83, 'Pin sạc dự phòng Polymer 20000mAh Type C PD 20W PowerCore Essential Anker A1287', 'Nạp pin liền mạch, an toàn với công nghệ sạc nhanh Power Delivery 20 W. Power Delivery được tích hợp trên cổng Type-C có khả năng tinh chỉnh dòng sạc phù hợp với từng thiết bị, giúp bổ sung năng lượng nhanh chóng, khi sạc cho iPhone 12 đầy 50% chỉ trong 30 phút.', 'a34ddd108d.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(84, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore A1263', 'Sạc dự phòng Anker PowerCore A1263 có thiết kế đơn giản, kích thước nhỏ gọn (92 x 60 x 22 mm) giúp người dùng dễ dàng cầm nắm khối lượng nhẹ 180g', '40d0ec1087.jpg', 750000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(85, 'Pin sạc dự phòng 10.000 mAh Anker PowerCore Select A1223', 'Thiết kế pin sạc dự phòng Anker nhỏ gọn, cầm vừa tay.Kích cỡ chỉ lớn hơn thẻ ATM của bạn một chút nên tạo cảm thấy rất thoải mái khi cầm nắm, di chuyển.', 'de5f49536c.jpg', 570000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(86, 'Pin sạc dự phòng Polymer 10.000 mAh Type C Anker PowerCore Lite A1232', 'Thiết kế gọn nhẹ, siêu mỏng, dễ dàng mang theo để sử dụng ở những nơi không có nguồn điện', 'b612f1a938.jpg', 760000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(87, 'Pin sạc dự phòng Polymer 20.000 mAh Type C PD Anker PowerCore Essential A1281 Fabric', 'Pin sạc dự phòng PowerCore Essential 20000mAh PD với kích thước mỏng gọn, trọng lượng nhẹ, dễ dàng mang theo. Vỏ ngoài bọc vải Fabric sang trọng, tinh tế, bền bỉ, thêm sức hút cho sản phẩm trong mọi không gian dùng.', '88c87908f7.jpg', 1330000, 50, 15, 9, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(88, 'Energizer Báo Xám QE10000GY', 'Pin sạc dự phòng không dây Energizer 10.000 mAh QE10000GY có thiết kế sang trọng, mạnh mẽ với vỏ ngoài bằng kim loại\r\nBảo vệ pin tránh khỏi những hư hỏng lúc va chạm với lực bên ngoài trong lúc sử dụng. Lõi pin Polymer (Li-Po) chất lượng, an tâm khi dùng với khả năng chống cháy nổ, hạn chế chai pin cao.\r\n\r\nThiết kế đế sạc không dây phủ cao su giữ điện thoại chắc chắn trên đế, không bị trơn trượt.', '90308cdf35.jpg', 720000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(89, 'Pin sạc dự phòng Polymer 10.000 mAh Energizer Chiến Binh II UE10046', 'Trang bị 2 cổng sạc đầu ra cùng dung lượng pin sạc 10.000 mAh, giúp bạn dễ dàng sạc cùng lúc 2 thiết bị bằng nhiều loại cáp sạc khác nhau như: Micro USB, Type-C, Lightning', '78ad4e58a7.jpg', 357000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(90, 'Energizer UE10054BK', 'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in logo thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.', 'b1b1bfc8d9.jpg', 440000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(91, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Energizer UE10047PQ', 'Màu đen quý phái, thiết kế tinh tế với vỏ ngoài bằng kim loại bền chắc. Pin sạc dự phòng có kích cỡ vừa tay người trưởng thành, cầm nắm dễ dàng, trọng lượng 275 gram hơi đầm tay nhưng di chuyển, sử dụng hay cất giữ đều rất thuận tiện, nhanh chóng.', '11c8848718.jpg', 680000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(92, 'Energizer QE10007PQ', 'Thiết kế nổi bật. Pin sạc dự phòng không dây Polymer 10.000mAh Type C PD QC3.0 Energizer QE10007PQ xám có thiết kế sang trọng, nhỏ gọn và mạnh mẽ, dễ dàng mang theo đến nhiều nơi.', '5fce4c113a.jpg', 800000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(93, 'Energizer Báo Xám QE10000GY', 'Pin sạc dự phòng không dây Energizer 10.000 mAh QE10000GY có thiết kế sang trọng, mạnh mẽ với vỏ ngoài bằng kim loại\r\nBảo vệ pin tránh khỏi những hư hỏng lúc va chạm với lực bên ngoài trong lúc sử dụng. Lõi pin Polymer (Li-Po) chất lượng, an tâm khi dùng với khả năng chống cháy nổ, hạn chế chai pin cao.\r\n\r\nThiết kế đế sạc không dây phủ cao su giữ điện thoại chắc chắn trên đế, không bị trơn trượt.', '90308cdf35.jpg', 720000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(94, 'Pin sạc dự phòng Polymer 10.000 mAh Energizer Chiến Binh II UE10046', 'Trang bị 2 cổng sạc đầu ra cùng dung lượng pin sạc 10.000 mAh, giúp bạn dễ dàng sạc cùng lúc 2 thiết bị bằng nhiều loại cáp sạc khác nhau như: Micro USB, Type-C, Lightning', '78ad4e58a7.jpg', 357000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(95, 'Energizer UE10054BK', 'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in logo thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.', 'b1b1bfc8d9.jpg', 440000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(96, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Energizer UE10047PQ', 'Màu đen quý phái, thiết kế tinh tế với vỏ ngoài bằng kim loại bền chắc. Pin sạc dự phòng có kích cỡ vừa tay người trưởng thành, cầm nắm dễ dàng, trọng lượng 275 gram hơi đầm tay nhưng di chuyển, sử dụng hay cất giữ đều rất thuận tiện, nhanh chóng.', '11c8848718.jpg', 680000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(97, 'Energizer QE10007PQ', 'Thiết kế nổi bật. Pin sạc dự phòng không dây Polymer 10.000mAh Type C PD QC3.0 Energizer QE10007PQ xám có thiết kế sang trọng, nhỏ gọn và mạnh mẽ, dễ dàng mang theo đến nhiều nơi.', '5fce4c113a.jpg', 800000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(98, 'Energizer Báo Xám QE10000GY', 'Pin sạc dự phòng không dây Energizer 10.000 mAh QE10000GY có thiết kế sang trọng, mạnh mẽ với vỏ ngoài bằng kim loại\r\nBảo vệ pin tránh khỏi những hư hỏng lúc va chạm với lực bên ngoài trong lúc sử dụng. Lõi pin Polymer (Li-Po) chất lượng, an tâm khi dùng với khả năng chống cháy nổ, hạn chế chai pin cao.\r\n\r\nThiết kế đế sạc không dây phủ cao su giữ điện thoại chắc chắn trên đế, không bị trơn trượt.', '90308cdf35.jpg', 720000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(99, 'Pin sạc dự phòng Polymer 10.000 mAh Energizer Chiến Binh II UE10046', 'Trang bị 2 cổng sạc đầu ra cùng dung lượng pin sạc 10.000 mAh, giúp bạn dễ dàng sạc cùng lúc 2 thiết bị bằng nhiều loại cáp sạc khác nhau như: Micro USB, Type-C, Lightning', '78ad4e58a7.jpg', 357000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(100, 'Energizer UE10054BK', 'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in logo thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.', 'b1b1bfc8d9.jpg', 440000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(101, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Energizer UE10047PQ', 'Màu đen quý phái, thiết kế tinh tế với vỏ ngoài bằng kim loại bền chắc. Pin sạc dự phòng có kích cỡ vừa tay người trưởng thành, cầm nắm dễ dàng, trọng lượng 275 gram hơi đầm tay nhưng di chuyển, sử dụng hay cất giữ đều rất thuận tiện, nhanh chóng.', '11c8848718.jpg', 680000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(102, 'Energizer QE10007PQ', 'Thiết kế nổi bật. Pin sạc dự phòng không dây Polymer 10.000mAh Type C PD QC3.0 Energizer QE10007PQ xám có thiết kế sang trọng, nhỏ gọn và mạnh mẽ, dễ dàng mang theo đến nhiều nơi.', '5fce4c113a.jpg', 800000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(103, 'Energizer Báo Xám QE10000GY', 'Pin sạc dự phòng không dây Energizer 10.000 mAh QE10000GY có thiết kế sang trọng, mạnh mẽ với vỏ ngoài bằng kim loại\r\nBảo vệ pin tránh khỏi những hư hỏng lúc va chạm với lực bên ngoài trong lúc sử dụng. Lõi pin Polymer (Li-Po) chất lượng, an tâm khi dùng với khả năng chống cháy nổ, hạn chế chai pin cao.\r\n\r\nThiết kế đế sạc không dây phủ cao su giữ điện thoại chắc chắn trên đế, không bị trơn trượt.', '90308cdf35.jpg', 720000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(104, 'Pin sạc dự phòng Polymer 10.000 mAh Energizer Chiến Binh II UE10046', 'Trang bị 2 cổng sạc đầu ra cùng dung lượng pin sạc 10.000 mAh, giúp bạn dễ dàng sạc cùng lúc 2 thiết bị bằng nhiều loại cáp sạc khác nhau như: Micro USB, Type-C, Lightning', '78ad4e58a7.jpg', 357000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(105, 'Energizer UE10054BK', 'Energizer UE10054BK thiết kế sang trọng, màu đen lịch lãm, mỏng chỉ 16 mm. Chế tác các góc uốn cong, bề mặt có đường sọc đen bóng in logo thương hiệu màu trắng sáng nổi bật cho tổng thể thiết kế gọn đẹp, sành điệu, dễ dàng khi di chuyển, sử dụng.', 'b1b1bfc8d9.jpg', 440000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(106, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Energizer UE10047PQ', 'Màu đen quý phái, thiết kế tinh tế với vỏ ngoài bằng kim loại bền chắc. Pin sạc dự phòng có kích cỡ vừa tay người trưởng thành, cầm nắm dễ dàng, trọng lượng 275 gram hơi đầm tay nhưng di chuyển, sử dụng hay cất giữ đều rất thuận tiện, nhanh chóng.', '11c8848718.jpg', 680000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(107, 'Energizer QE10007PQ', 'Thiết kế nổi bật. Pin sạc dự phòng không dây Polymer 10.000mAh Type C PD QC3.0 Energizer QE10007PQ xám có thiết kế sang trọng, nhỏ gọn và mạnh mẽ, dễ dàng mang theo đến nhiều nơi.', '5fce4c113a.jpg', 800000, 50, 15, 11, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(108, 'Xiaomi Power Bank 3 Ultra Compact', 'Kích thước nhỏ nhắn, cầm gọn trong bàn tay. Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần. Bề mặt phủ màu đen tuyền phong cách, có đường kẻ dọc bám tay, cầm nắm chắc chắn hơn.', '4d2cb3290f.jpg', 474000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(109, 'Xiaomi VXN4286GL', 'Màu trắng thanh nhã, kích thước nhỏ gọn dễ mang theo bên người. Pin sạc dự phòng Polymer 10.000mAh Xiaomi Redmi Type C VXN4286GL Trắng với trọng lượng 320 g cùng với bo góc đẹp mắt làm cảm giác lúc cầm nắm trong tay rất thoải mái. So về chiều dài chỉ vừa bằng một chiếc điện thoại nên có thể bỏ túi, bỏ balo mang theo bên người vô cùng tiện lợi', 'a8c4b9d65b.jpg', 280000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(110, 'Xiaomi Mi Wireless Power Bank Essential', 'Thiết kế nhỏ gọn, độ bền cao. Pin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 'a5542d2a4a.jpg', 489000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(111, 'Xiaomi Power Bank 3 Ultra Compact', 'Kích thước nhỏ nhắn, cầm gọn trong bàn tay. Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần. Bề mặt phủ màu đen tuyền phong cách, có đường kẻ dọc bám tay, cầm nắm chắc chắn hơn.', '4d2cb3290f.jpg', 474000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(112, 'Xiaomi VXN4286GL', 'Màu trắng thanh nhã, kích thước nhỏ gọn dễ mang theo bên người. Pin sạc dự phòng Polymer 10.000mAh Xiaomi Redmi Type C VXN4286GL Trắng với trọng lượng 320 g cùng với bo góc đẹp mắt làm cảm giác lúc cầm nắm trong tay rất thoải mái. So về chiều dài chỉ vừa bằng một chiếc điện thoại nên có thể bỏ túi, bỏ balo mang theo bên người vô cùng tiện lợi', 'a8c4b9d65b.jpg', 280000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(113, 'Xiaomi Mi Wireless Power Bank Essential', 'Thiết kế nhỏ gọn, độ bền cao. Pin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 'a5542d2a4a.jpg', 489000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(114, 'Xiaomi Power Bank 3 Ultra Compact', 'Kích thước nhỏ nhắn, cầm gọn trong bàn tay. Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần. Bề mặt phủ màu đen tuyền phong cách, có đường kẻ dọc bám tay, cầm nắm chắc chắn hơn.', '4d2cb3290f.jpg', 474000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(115, 'Xiaomi VXN4286GL', 'Màu trắng thanh nhã, kích thước nhỏ gọn dễ mang theo bên người. Pin sạc dự phòng Polymer 10.000mAh Xiaomi Redmi Type C VXN4286GL Trắng với trọng lượng 320 g cùng với bo góc đẹp mắt làm cảm giác lúc cầm nắm trong tay rất thoải mái. So về chiều dài chỉ vừa bằng một chiếc điện thoại nên có thể bỏ túi, bỏ balo mang theo bên người vô cùng tiện lợi', 'a8c4b9d65b.jpg', 280000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(116, 'Xiaomi Mi Wireless Power Bank Essential', 'Thiết kế nhỏ gọn, độ bền cao. Pin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 'a5542d2a4a.jpg', 489000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(117, 'Xiaomi Power Bank 3 Ultra Compact', 'Kích thước nhỏ nhắn, cầm gọn trong bàn tay. Pin sạc dự phòng Polymer 10.000mAh Type C Xiaomi Power Bank 3 Ultra Compact đen gần như chỉ bằng 1 tấm thẻ ngân hàng, trọng lượng 200 gram, không chiếm diện tích, cho bạn dễ dàng bỏ vào túi quần, balo, túi xách và mang theo bên mình khi cần. Bề mặt phủ màu đen tuyền phong cách, có đường kẻ dọc bám tay, cầm nắm chắc chắn hơn.', '4d2cb3290f.jpg', 474000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(118, 'Xiaomi VXN4286GL', 'Màu trắng thanh nhã, kích thước nhỏ gọn dễ mang theo bên người. Pin sạc dự phòng Polymer 10.000mAh Xiaomi Redmi Type C VXN4286GL Trắng với trọng lượng 320 g cùng với bo góc đẹp mắt làm cảm giác lúc cầm nắm trong tay rất thoải mái. So về chiều dài chỉ vừa bằng một chiếc điện thoại nên có thể bỏ túi, bỏ balo mang theo bên người vô cùng tiện lợi', 'a8c4b9d65b.jpg', 280000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(119, 'Xiaomi Mi Wireless Power Bank Essential', 'Thiết kế nhỏ gọn, độ bền cao. Pin sạc dự phòng Xiaomi Mi Essential thiết kế dạng hình chữ nhật quen thuộc với lớp vỏ chắc chắn và có độ nhám giúp tăng ma sát, chống trơn trượt khi cầm nắm.', 'a5542d2a4a.jpg', 489000, 50, 15, 5, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(120, 'Samsung EB-P3300', 'Sạc dự phòng Samsung mỏng nhẹ, vẻ ngoài tỏa sáng với gam màu xám sang trọng. Hình dạng và kích thước gần như 1 chiếc smartphone thời thượng của Samsung, sạc dự phòng dễ dàng cầm nắm, dịch chuyển, không choáng chỗ trong túi xách, balo của bạn khi mang theo bên mình trong hành trang thường nhật.', '2178037e60.jpg', 693000, 50, 15, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(121, 'Samsung EB-P5300', 'Kiểu dáng đơn giản, nhỏ gọn, màu đen thời trang. Lớp vỏ nhựa cao cấp kháng vỡ, giúp giảm trọng lượng sạc dự phòng, cầm nắm hơi đầm tay nhưng không nặng với 392 gram.', '0ed03ca2a4.jpg', 1043000, 50, 15, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(122, 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3', 'Thiết kế cao cấp, đeo vừa vặn với nút tai silicone. Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn.', '486c2c1a67.jpg', 6790000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(123, 'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3', 'Sang trọng với lớp vỏ kim loại sáng bóng, bền bỉ, lựa chọn dễ dàng theo sở thích cho 3 phiên bản màu xanh dương, bạc và xám . Tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 dễ dàng cuốn hút bạn ngay từ cái nhìn đầu tiên, với nét sang trọng và cực kỳ tinh tế đến từ sự tối giản trong thiết kế và màu sắc, tạo sự khác biệt ấn tượng với các sản phẩm tai nghe hiện có trên thị trường.', '7f6c015d7b.jpg', 13990000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(124, 'Tai nghe Có Dây Apple MMTN2', 'Tai nghe EarPods cổng Lightning Apple MMTN2 thiết kế trẻ trung với màu trắng sang trọng, tinh tế', 'a00913094b.jpg', 711000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(125, 'Tai nghe Bluetooth AirPods 3 Apple MME73', 'Airpods 3 có thiết kế tương tự như AirPods Pro nhưng không còn phần eartips, đường viền và thân ngắn hơn cho âm thanh truyền tải đến tai tối ưu. Bề mặt tai nghe Bluetooth Apple phủ sắc trắng thời thượng, được làm từ các vật liệu tái chế với độ bền cao, bảo vệ môi trường sống của con người. Housing có độ bám tốt, đeo vừa vặn, hộp sạc có kích cỡ nhỏ gọn, đóng mở nhẹ nhàng, thiết kế chuyên dụng để đựng housing Airpods 3, đảm bảo an toàn khi di chuyển, hạn chế thất lạc và sạc pin thuận tiện.', '1b16fcaac4.jpg', 5490000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(126, 'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', 'Thiết kế nhỏ gọn, ấn tượng người nhìn. Tai nghe sở hữu thiết kế thời trang và nhỏ gọn, trọng lượng cũng rất nhẹ không khác mấy so với tai nghe True Wireless AirPods thế hệ đầu tiên. Ngoài ra, tai nghe còn được phủ lên một lớp chất liệu mới ở đầu mỗi tai nghe để giúp tai nghe bám trên tai người đeo hơn, vì vậy tránh bị rơi rớt hơn.', '4d23f6b4a1.jpg', 4770000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(127, 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3', 'Thiết kế cao cấp, đeo vừa vặn với nút tai silicone. Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn.', '486c2c1a67.jpg', 6790000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(128, 'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3', 'Sang trọng với lớp vỏ kim loại sáng bóng, bền bỉ, lựa chọn dễ dàng theo sở thích cho 3 phiên bản màu xanh dương, bạc và xám . Tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 dễ dàng cuốn hút bạn ngay từ cái nhìn đầu tiên, với nét sang trọng và cực kỳ tinh tế đến từ sự tối giản trong thiết kế và màu sắc, tạo sự khác biệt ấn tượng với các sản phẩm tai nghe hiện có trên thị trường.', '7f6c015d7b.jpg', 13990000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(129, 'Tai nghe Có Dây Apple MMTN2', 'Tai nghe EarPods cổng Lightning Apple MMTN2 thiết kế trẻ trung với màu trắng sang trọng, tinh tế', 'a00913094b.jpg', 711000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(130, 'Tai nghe Bluetooth AirPods 3 Apple MME73', 'Airpods 3 có thiết kế tương tự như AirPods Pro nhưng không còn phần eartips, đường viền và thân ngắn hơn cho âm thanh truyền tải đến tai tối ưu. Bề mặt tai nghe Bluetooth Apple phủ sắc trắng thời thượng, được làm từ các vật liệu tái chế với độ bền cao, bảo vệ môi trường sống của con người. Housing có độ bám tốt, đeo vừa vặn, hộp sạc có kích cỡ nhỏ gọn, đóng mở nhẹ nhàng, thiết kế chuyên dụng để đựng housing Airpods 3, đảm bảo an toàn khi di chuyển, hạn chế thất lạc và sạc pin thuận tiện.', '1b16fcaac4.jpg', 5490000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(131, 'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', 'Thiết kế nhỏ gọn, ấn tượng người nhìn. Tai nghe sở hữu thiết kế thời trang và nhỏ gọn, trọng lượng cũng rất nhẹ không khác mấy so với tai nghe True Wireless AirPods thế hệ đầu tiên. Ngoài ra, tai nghe còn được phủ lên một lớp chất liệu mới ở đầu mỗi tai nghe để giúp tai nghe bám trên tai người đeo hơn, vì vậy tránh bị rơi rớt hơn.', '4d23f6b4a1.jpg', 4770000, 50, 25, 1, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(132, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds Live R180', 'Ngoại hình hoàn toàn mới, độc đáo riêng biệt. Samsung Galaxy Buds Live R180 Gold có một tone màu đồng khá sang trọng, quyến rũ ở cả trong và ngoài, rất phù hợp cho phái nữ. Hộp sạc của tai nghe Samsung Galaxy Buds Live dạng mở nắp vỏ sò, trọng lượng 42.2 gram nhỏ gọn, người dùng có thể đóng mở bằng một tay khá dễ dàng.', 'e6fb925a13.jpg', 1790000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(133, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', '9ba5715ae6.jpg', 2990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(134, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'c9a80d6fb9.jpg', 2990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(135, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'bb0a167507.jpg', 4990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, '');
INSERT INTO `tbl_product` (`id`, `product_name`, `description`, `image`, `price`, `quantity`, `category_id`, `producer_id`, `product_detail_id`, `detail`, `created_date`, `created_by`, `modified_date`, `modified_by`, `status`, `meta_title`) VALUES
(136, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds+ R175', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'b04120f7dd.jpg', 2140000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(137, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds Live R180', 'Ngoại hình hoàn toàn mới, độc đáo riêng biệt. Samsung Galaxy Buds Live R180 Gold có một tone màu đồng khá sang trọng, quyến rũ ở cả trong và ngoài, rất phù hợp cho phái nữ. Hộp sạc của tai nghe Samsung Galaxy Buds Live dạng mở nắp vỏ sò, trọng lượng 42.2 gram nhỏ gọn, người dùng có thể đóng mở bằng một tay khá dễ dàng.', 'e6fb925a13.jpg', 1790000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(138, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', '9ba5715ae6.jpg', 2990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(139, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'c9a80d6fb9.jpg', 2990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(140, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'bb0a167507.jpg', 4990000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(141, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds+ R175', 'Cả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ. Trọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.', 'b04120f7dd.jpg', 2140000, 50, 25, 2, 0, '', '2021-11-12', '', '0000-00-00 00:00:00', '', 1, ''),
(142, 'iPhone 12', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', '0037c6e52b.jpg', 20490000, 50, 13, 1, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(143, 'Điện thoại iPhone 12 Pro 128GB', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.', 'iphone-12-pro-gold-600x600.jpg', 28490000, 20, 13, 1, 3, '', '2021-10-30', '', '2021-10-30 11:04:38', '', 0, ''),
(144, 'iPhone 12', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', '0037c6e52b.jpg', 20490000, 50, 13, 1, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(145, 'iPhone 13', 'Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 - điện thoại có nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', '1d4a9d7e66.jpg', 24990000, 30, 13, 1, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(146, 'OPPO Reno6 Pro 5G', 'OPPO Reno6 Pro 5G - một sản phẩm thuộc dòng Reno6 của OPPO, thỏa mãn những gì người tiêu dùng đã trông đợi với cấu hình khủng cùng hệ thống camera cực ấn tượng và ngoại hình bắt mắt, thật hào hứng mong chờ để được trải nghiệm.', '1cb0b7b7a8.jpg', 18490000, 30, 13, 3, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(147, 'OPPO A94', 'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93.', '66c9d2a62f.jpg', 7600000, 14, 13, 3, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(148, 'OPPO Reno6 Pro 5G', 'OPPO Reno6 Pro 5G - một sản phẩm thuộc dòng Reno6 của OPPO, thỏa mãn những gì người tiêu dùng đã trông đợi với cấu hình khủng cùng hệ thống camera cực ấn tượng và ngoại hình bắt mắt, thật hào hứng mong chờ để được trải nghiệm.', '1cb0b7b7a8.jpg', 18490000, 30, 13, 3, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(149, 'OPPO A94', 'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93.', '66c9d2a62f.jpg', 7600000, 14, 13, 3, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(150, 'Samsung Galaxy S21+ 5G 128GB', 'Ẩn đằng sau thiết kế tuyệt tác của siêu phẩm Galaxy S21+ 5G là cả một kỳ quan công nghệ, mà ở đó bạn có thể trải nghiệm hiệu năng mạnh mẽ nhất, những công nghệ tiên phong, dẫn đầu trào lưu với cụm camera đỉnh cao đến từ Samsung.', 'd4926ecefe.jpg', 20900000, 16, 13, 2, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(151, 'Samsung Galaxy S21+ 5G 128GB', 'Ẩn đằng sau thiết kế tuyệt tác của siêu phẩm Galaxy S21+ 5G là cả một kỳ quan công nghệ, mà ở đó bạn có thể trải nghiệm hiệu năng mạnh mẽ nhất, những công nghệ tiên phong, dẫn đầu trào lưu với cụm camera đỉnh cao đến từ Samsung.', 'd4926ecefe.jpg', 20900000, 16, 13, 2, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(152, 'Samsung Galaxy A52s 5G', 'Samsung đã chính thức giới thiệu chiếc điện thoại Galaxy A52s 5G đến người dùng, đây phiên bản nâng cấp của Galaxy A52 5G ra mắt cách đây không lâu, với ngoại hình không đổi nhưng được nâng cấp đáng kể về thông số cấu hình bên trong.', '5244b7d934.jpg', 10900000, 20, 13, 2, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(153, 'iPad Pro M1 12.9 inch WiFi Cellular 512GB (2021)', 'Samsung chính thức trình làng mẫu máy tính bảng có tên Galaxy Tab S7 FE, máy trang bị cấu hình mạnh mẽ, màn hình giải trí siêu lớn và điểm ấn tượng nhất là viên pin siêu khủng được tích hợp bên trong, giúp tăng hiệu suất làm việc nhưng vẫn có tính di động cực cao.', '2ba916a569.jpg', 41990000, 34, 14, 1, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, ''),
(154, 'iPad Pro 11 inch Wifi Cellular 128GB (2020)', 'iPad Pro 11 inch Wifi Cellular 128GB (2020) đã được Apple trình làng với nhiều sự cải tiến đáng giá lẫn về tính năng và sức mạnh xử lý, hứa hẹn đây sẽ là mẫu máy tính bảng được săn đón nhiều nhất trong năm 2020.', '96504c1f5d.jpg', 26220000, 14, 14, 1, 1, '', '2021-11-24', '', '0000-00-00 00:00:00', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_detail`
--

CREATE TABLE `tbl_product_detail` (
  `id` int(11) NOT NULL,
  `display` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `chip` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `internal_memory` varchar(255) NOT NULL,
  `sim` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `charging` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_detail`
--

INSERT INTO `tbl_product_detail` (`id`, `display`, `os`, `camera`, `chip`, `ram`, `internal_memory`, `sim`, `pin`, `charging`) VALUES
(1, 'Super AMOLED6.5\"Full HD+', 'Android 11', 'Chính 12 MP & Phụ 12 MP, 8 MP', 'Snapdragon 865', '8 GB', '256 GB', '2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh', '25 W'),
(2, 'Dynamic AMOLED 2XChính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '2 camera 12 MP', 'Snapdragon 888', '8 GB', '256 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '3300 mAh', '15 W'),
(3, 'OLED6.1\"Super Retina XDR', 'iOS 14', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '2815 mAh', '20 W'),
(4, 'AMOLED6.43\"Full HD+', 'Android 11', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 5G', '4310 mAh', '30 W');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_date`, `modified_date`, `deleted`) VALUES
(42, 'Vũ Phong', 'trongphong@gmail.com', '0327477079', '33 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội                        ', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-12 02:15:57', '2021-11-16 03:49:41', 0),
(46, 'Đào Anh Khoa', 'Khoa@gmail.com', '0923493480', '333 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-16 04:10:32', '2021-11-16 04:39:07', 0),
(47, 'Trần Đức Thiện', 'thien@gmail.com', '2342342344', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-24 09:54:55', NULL, 0),
(48, 'Trần Văn Nam', 'nam@gmail.com', '1230120312', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-24 11:15:02', NULL, 0),
(49, 'Nguyễn Văn An ', 'an@gmail.com', '1231231241', '3 Cầu Giấy, Láng Thượng, Đống Đa, Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-24 11:15:53', NULL, 0),
(50, 'Hồ Văn Chương', 'chuong@gmail.com', '6778678678', '99 nguyễn chí thanh, đống đa, hà nội', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-24 11:16:54', NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_producer`
--
ALTER TABLE `tbl_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_detail`
--
ALTER TABLE `tbl_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `tbl_producer`
--
ALTER TABLE `tbl_producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `tbl_product_detail`
--
ALTER TABLE `tbl_product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
