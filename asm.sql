-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 10, 2023 lúc 02:14 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `MaBV` int(11) NOT NULL,
  `TenBV` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `MaTK` int(11) NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`MaBV`, `TenBV`, `MaTK`, `TaiKhoan`, `TieuDe`, `HinhAnh`, `NoiDung`, `NgayNhap`) VALUES
(1, '7 cách bảo ', 1, 'phucden', '7 cách bảo quản giày thể thao tốt nhất', '7-cach-bao-quan-740x480.png', 'Giày Air Jordan 1 Rebellionaire có thiết kế cổ cao với màu đen kết hợp xám tối cùng họa văn độc đáo đang làm mưa làm gió trên thị trường sneaker. Đây là mẫu sneaker Must to Have đối với các tín đồ của dòng Jordan.', '2022-11-22'),
(2, 'Biến Hóa ', 1, 'phucden', 'Biến Hóa Màu Sắc Cùng Nike Air Force 1/1 Black Multi-Color', '271879440_4769424636472571_9032475676919274181_n.jpg', 'Nike Air Force 1/1 \'Black Multi-Color\' được thiết kế với tông màu đen chủ đạo, đôi\r\n                                    giày này đi kèm với một bảng các layer đầy màu sắc cho phép người mang có thể tùy\r\n                                    biến để cá nhân hóa đôi giày của mình, tạo ra phong cách riêng độc đáo và không hề\r\n                                    trùng lặp với bất kỳ ai.', '2022-11-22'),
(3, '7 cách bảo ', 1, 'phucden', 'Cách vệ sinh, giặt giày Adidas đúng chuẩn từ hãng, sạch như mới', 'cach-giat-giay-adidas-1.webp', 'Adidas là thương hiệu nổi tiếng thế giới về giày thể thao, giày sneaker các loại.                                     Các sản phẩm từ hãng được nhiều khách hàng yêu thích bởi kiểu dáng năng động, trẻ                                     trung cùng chất lượng vượt trội. Tuy nhiên sau một thời gian sử dụng, nếu không biết                                     vệ sinh giày đúng cách thì chúng rất dễ bị bạc màu và hư hỏng. Bắt tay vào việc vệ                                     sinh giày hiệu quả với hướng dẫn cách giặt giày Adidas đúng chuẩn từ hãng dưới đây!', '2022-11-22'),
(4, '7 cách bảo ', 1, 'phucden', '7 cách bảo quản giày thể thao tốt nhất', '7-cach-bao-quan-740x480.png', 'Giày Air Jordan 1 Rebellionaire có thiết kế cổ cao với màu đen kết hợp xám tối cùng họa văn độc đáo đang làm mưa làm gió trên thị trường sneaker. Đây là mẫu sneaker Must to Have đối với các tín đồ của dòng Jordan.', '2022-11-22'),
(5, 'Biến Hóa ', 1, 'phucden', 'Biến Hóa Màu Sắc Cùng Nike Air Force 1/1 Black Multi-Color', '271879440_4769424636472571_9032475676919274181_n.jpg', 'Nike Air Force 1/1 \'Black Multi-Color\' được thiết kế với tông màu đen chủ đạo, đôi\r\n                                    giày này đi kèm với một bảng các layer đầy màu sắc cho phép người mang có thể tùy\r\n                                    biến để cá nhân hóa đôi giày của mình, tạo ra phong cách riêng độc đáo và không hề\r\n                                    trùng lặp với bất kỳ ai.', '2022-11-22'),
(6, '7 cách bảo ', 1, 'phucden', 'Cách vệ sinh, giặt giày Adidas đúng chuẩn từ hãng, sạch như mới', 'cach-giat-giay-adidas-1.webp', 'Adidas là thương hiệu nổi tiếng thế giới về giày thể thao, giày sneaker các loại.                                     Các sản phẩm từ hãng được nhiều khách hàng yêu thích bởi kiểu dáng năng động, trẻ                                     trung cùng chất lượng vượt trội. Tuy nhiên sau một thời gian sử dụng, nếu không biết                                     vệ sinh giày đúng cách thì chúng rất dễ bị bạc màu và hư hỏng. Bắt tay vào việc vệ                                     sinh giày hiệu quả với hướng dẫn cách giặt giày Adidas đúng chuẩn từ hãng dưới đây!', '2022-11-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaTK` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayBL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaTK`, `MaSP`, `TaiKhoan`, `Email`, `NoiDung`, `NgayBL`) VALUES
(1, 1, 1, 'nghi61', 'nghinvps23655@gmail.com', '123', '05:47:25am 2022/11/30'),
(2, 1, 1, 'nghi61', 'nghinvps23655@gmail.com', '123', '05:47:59am 2022/11/30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `updated_at`) VALUES
(1, 'Women', NULL),
(2, 'Men', NULL),
(3, 'Bag', NULL),
(4, 'Shoes', NULL),
(5, 'Watches', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGH` int(11) NOT NULL,
  `MaTK` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuong` int(3) NOT NULL,
  `Size` tinyint(1) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `TenHD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PTTT` tinyint(1) NOT NULL DEFAULT 1,
  `TDH` int(10) NOT NULL,
  `TrangThai` tinyint(1) NOT NULL DEFAULT 0,
  `NgayDH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(11) NOT NULL,
  `MaTK` int(11) NOT NULL,
  `HoVaTen` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `LoiNhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idcate` int(11) NOT NULL,
  `gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(3) NOT NULL,
  `LX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `idcate`, `gia`, `HinhAnh`, `MoTa`, `SoLuong`, `LX`) VALUES
(1, 'Esprit Ruffle Shirt', 1, '1,000,000', 'images/product-01.jpg', '', 1, 1),
(2, 'Herschel supply', 1, '1,000,000', 'images/product-02.jpg', '', 1, 1),
(3, 'Only Check Trouser', 2, '2,000,000', 'images/product-03.jpg', '', 1, 1),
(4, 'Classic Trench Coat', 1, '1,500,000', 'images/product-04.jpg', '', 1, 1),
(5, 'Vintage Inspired Classic', 5, '2,000,000', 'images/product-06.jpg', '', 1, 1),
(6, 'Converse All Star Hi Plimsolls', 4, '1,750,000', 'images/product-09.jpg', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sptgh`
--

CREATE TABLE `sptgh` (
  `ID` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuong` int(3) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `MaTK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'QuangPhat', 'quangphat10@gmail.com', NULL, '$2y$10$lZzJHiQXf1sWtpjiooCdLOjHUzwUkUaawGt/ocz2XahRcmTyVT0GS', 'admin', NULL, '2023-08-07 22:04:41', '2023-08-07 22:04:41'),
(2, 'Phat', 'dlqpleesin1@gmail.com', NULL, '$2y$10$rQ9wir6nwVpziPGl6sSjgu3rjYKHUMt7xdIfBR0fnt4wjm7ons1FS', 'user', NULL, '2023-08-07 22:06:05', '2023-08-07 22:06:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`MaBV`),
  ADD KEY `MaTK` (`MaTK`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `MaTK` (`MaTK`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGH`),
  ADD KEY `FK_MAHD` (`MaHD`),
  ADD KEY `FK_MaKH` (`MaTK`),
  ADD KEY `FK_MAHH` (`MaSP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`),
  ADD KEY `MaTK` (`MaTK`),
  ADD KEY `MaPH` (`MaPH`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaLoai` (`idcate`);

--
-- Chỉ mục cho bảng `sptgh`
--
ALTER TABLE `sptgh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaTK` (`MaTK`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `MaBV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `MaGH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sptgh`
--
ALTER TABLE `sptgh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
