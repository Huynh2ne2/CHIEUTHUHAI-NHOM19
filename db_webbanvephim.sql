-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 05:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webbanvephim`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcodes`
--

CREATE TABLE `allcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyMap` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `valueVi` varchar(255) NOT NULL,
  `valueEn` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allcodes`
--

INSERT INTO `allcodes` (`id`, `keyMap`, `type`, `valueVi`, `valueEn`, `created_at`, `updated_at`) VALUES
(1, 'SM1', 'STATUS_MOVIE', 'Phim sắp chiếu', 'Movie comming soon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'SM2', 'STATUS_MOVIE', 'Phim đang chiếu', 'Movie is showing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'SC1', 'STATUS_CHAIR', 'Chưa đăng ký', 'Still', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'SC2', 'STATUS_CHAIR', 'Đã đăng ký', 'Registered', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'SB1', 'STATUS_BOOK', 'Chờ', 'Wait', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'SB2', 'STATUS_BOOK', 'Xác nhận', 'Confirm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'SB3', 'STATUS_BOOK', 'Hủy', 'Cancel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'M', 'GENDER', 'Nam', 'Male', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'F', 'GENDER', 'Nữ', 'Female', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Other', 'GENDER', 'Khác', 'Other', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'R1', 'ROLE', 'Quản trị viên', 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'R2', 'ROLE', 'Nhân viên', 'Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'R3', 'ROLE', 'Khách hàng', 'Customer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'SP1', 'STATUS_PASS', 'Yêu cầu đổi', 'Request', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'SP2', 'STATUS_PASS', 'Xác nhận đổi', 'Confirm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'G1', 'CHAIR', 'Thượng Hạng', 'VIP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'G2', 'CHAIR', 'Thường', 'Standard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'PRI1', 'PRICE', '100000', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'PRI2', 'PRICE', '70000', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `showtimeId` int(11) NOT NULL,
  `seatId` int(11) NOT NULL,
  `totalPrice` float NOT NULL,
  `image_payment` varchar(255) NOT NULL,
  `statusBook` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `userId`, `showtimeId`, `seatId`, `totalPrice`, `image_payment`, `statusBook`, `created_at`, `updated_at`) VALUES
(25, 1, 11, 25, 100000, 'image11/ioW90NjIS15lO6JqhAmcwfidciVgneqD6Ju3ygES.jpg', 'SB2', '2024-06-01 06:11:13', '2024-06-01 08:12:08'),
(26, 1, 11, 26, 100000, 'image11/oYpeiNQggIbSXvuHiB7kSDWY6KhVIEKij9VBcyfy.jpg', 'SB2', '2024-06-01 06:11:55', '2024-06-01 08:16:35'),
(27, 1, 11, 39, 70000, 'image11/RFhf8pW39FFSkaJEkBhefL59bgSKS5HT74DNSsCg.png', 'SB2', '2024-06-01 06:12:34', '2024-06-01 08:20:04'),
(28, 1, 11, 40, 70000, 'image11/d79WqK7mjUnXffKkrKOg3hbwDUysveC3Wu8W5XqM.jpg', 'SB2', '2024-06-01 06:13:25', '2024-06-01 11:29:13'),
(29, 7, 11, 48, 70000, 'image11/Jmk6A9PqpVDNiYQOsy4TmuVu0ZQZwlPjkw8fATZh.png', 'SB2', '2024-06-01 07:57:40', '2024-06-01 09:41:46'),
(30, 5, 11, 27, 100000, 'image11/UcEjM3iuSTsYrVgZPNSismKr6ntxJ68Mb8UEaOLv.jpg', 'SB2', '2024-06-02 04:19:05', '2024-06-02 04:19:22'),
(31, 1, 11, 36, 70000, 'image11/A3le3LlsvkCdim49rlkM1tVYFuZqcYVTWkjHX0pj.jpg', 'SB2', '2024-06-03 02:51:13', '2024-06-03 07:28:52'),
(32, 1, 13, 28, 100000, 'image11/41ewifw4CxxT4R27jHNZ4vm3QLvVRBGXMtpSFqgx.jpg', 'SB2', '2024-06-03 07:07:45', '2024-06-03 07:30:48'),
(33, 1, 14, 44, 70000, 'image11/SVuoo5qxuUAVOFBzEUJ2xRcP0nOPGZQJirx0YOmw.jpg', 'SB2', '2024-06-03 07:27:45', '2024-06-03 08:14:07'),
(34, 1, 14, 45, 70000, 'image11/cNcqHo77ok7FpU6vuMhkKeEoJNcFTENP8A2A2LYZ.jpg', 'SB2', '2024-06-03 07:50:07', '2024-06-03 08:36:22'),
(35, 1, 15, 46, 70000, 'image11/ZZqPgEdvX1rbv5OydAcMvLuj7EUO5sNGnWxVI0O4.jpg', 'SB2', '2024-06-03 08:13:47', '2024-06-05 02:09:18'),
(36, 1, 15, 43, 70000, 'image11/mBMjwqwkxKJtf0YK74ITveZovGPiK4f3Td31tkeW.png', 'SB1', '2024-06-03 08:35:40', '2024-06-03 08:35:40'),
(37, 1, 15, 35, 70000, 'image11/LUc4fVcbLIxHAFFvnwUWgJe2cRvlRhJ50Vq1eTJc.png', 'SB1', '2024-06-05 02:08:56', '2024-06-05 02:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_passes`
--

CREATE TABLE `forgot_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `new_pass` varchar(255) NOT NULL,
  `confirm_pass` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `statusId` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgot_passes`
--

INSERT INTO `forgot_passes` (`id`, `userId`, `new_pass`, `confirm_pass`, `token`, `statusId`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$YkPSeylYRJff./8TgFMeOuixmtv1QqqgtBeaork0kO9gLCmQRI2oG', '$2y$10$L7Kj7vGK8./ti2cv3GgsI.k5Lp5C5.viYFdd1neVWQecyZQW1yVM2', 'qBZbNOOx9K27FpfC', 'SP1', '2024-05-29 03:41:22', '2024-05-29 03:41:22'),
(2, 1, '$2y$10$hF2vJfrj6FYoiLVY6sFRiu9Q7r.I.s0XJCIIobGjmVhbGv8K8i3zW', '$2y$10$y1vsS2VCGG7cNkcdJl.RTOqHfKEobDOcKxAO00ZpVzlmGp/TmRo8q', '1gqscwhagO4ph9uq', 'SP1', '2024-05-29 03:44:22', '2024-05-29 03:44:22'),
(3, 1, '$2y$10$MMPFipoCABHnG3SnWDUmtuyaMF/qJuD1CfkTtogC3lXNxa9aUwc1G', '$2y$10$1rGfQU/oJZAQsPXgTvXgnOFYD/Jb9h70lyDOqnJLtUzk7mvsAxgkG', 'wOB9Y8KX7zd9zFZG', 'SP2', '2024-05-29 03:52:07', '2024-05-29 03:52:07'),
(4, 1, '$2y$10$08r4WlBN9Joo49Eeyc.ixuEvfXfUkQfRDCAfCrFFJrqTy0cwdvjC6', '$2y$10$A2hwjpLC95W.x3BDZXVeUuKV5ijtPfAlUTz8RTasT9kel7IUPUNsy', 'AOerjUDAC28iXGU7', 'SP2', '2024-05-29 03:52:59', '2024-05-29 03:52:59'),
(5, 1, '$2y$10$sLA0ThdMxfi/H8zkXpZCpeQfQgnfK5/qtiwFg8vNvUaaV6FM791g6', '$2y$10$Nf64RsqJaItMjAL7CeF.i.I0rbti4tX7qvDPFwlSpH7Rj.DkT3rdW', 'OGT2QLbUhG1qWX9o', 'SP2', '2024-05-29 03:55:31', '2024-05-29 03:55:31'),
(6, 1, '$2y$10$wDk3cDUCcfaWh4j09qYjwOdL9NW4z1E2lMxabPdobwpjpH0T6p0oW', '$2y$10$arl.PB/ReD.siT3SzknjL.I5mvJl5.vGTg3twgyIm7FloM0JL8t5G', 'hVaDA7gRiv5R8Zhf', 'SP2', '2024-05-29 03:56:12', '2024-05-29 03:56:12'),
(7, 1, '$2y$10$a.WU1Zi52NZQyaiueTQo3OBnAf218p2ZY486OpnuMcvUamE36N0l6', '$2y$10$s6X2tnqaaVhhO0iH9KT0bO9X1zgRWrS76Segdw0PMY5gYvcTxR8K6', 'f4IoOJrJ6loZXWla', 'SP2', '2024-05-29 03:57:28', '2024-05-29 03:57:28'),
(8, 1, '$2y$10$ZP/1ujEl6MSzUjjf4krv6ejmGgGTOgI7TCwL10jWT0JIbNfMKvQSW', '$2y$10$n4n3HtKGuAJ4zmaIGE7R3uDRX3xKmErwUfLg0wgyaCv8HmS7rWCOG', 'ttiWqQiadvI5lZxd', 'SP2', '2024-05-29 03:58:58', '2024-05-29 03:58:58'),
(9, 1, '$2y$10$hI/44v3J7Iy3uyXz5RHLoeb2h1W/C4KaFJRJF.NhRzbGXHiohoyVm', '$2y$10$ZvV1Z6LKiRrPZyA/puY0sOBj4TQM8LTkUGyILShA3d0fIWgl4mDDa', 'fj76eeMfEueivkfA', 'SP2', '2024-05-29 04:14:03', '2024-05-29 04:14:03'),
(10, 1, '$2y$10$A8umHd6Z8G7wo44ECFxhLOT6efevLtXJRbx3VcsKkt6N0oWhY4Vqa', '$2y$10$j4CP8hO8KwBsVyrYZy6/n.cruyjycUquCpOXMqKR1j.u3zX/ZO6Z.', 'RVXYzPYcCrRInYE0', 'SP2', '2024-05-29 04:25:07', '2024-05-29 06:00:47'),
(11, 1, '$2y$10$2zxKQQg36y9ez8reVN/6tOl/Gtx9u.DT2JBk6vUnhPHFbr/3/m1uq', '$2y$10$HY4XO1nt2xtFJvPpNOqfXOupv39kbeAHuHXu0XhC2b0wbaOYo5RVG', 'JxJRqWk5FbMtT9Ws', 'SP1', '2024-05-29 04:28:06', '2024-05-29 04:28:06'),
(12, 1, '$2y$10$2efh6OpjLSmb/Yf/9zaTMOPoEVF5s3.Ta0c/QaczWW9NZJ30/HzRO', '$2y$10$hvVGk49TrhaNvzqqSS.XUOldw9pQiAEaoXq4wBTj8r/mTyu1IoW6y', 'S6ZAO8oULoKIykeh', 'SP2', '2024-05-29 04:39:47', '2024-05-29 04:41:15'),
(13, 1, '$2y$10$Yr0DgAdhYRRF/FXJAzCD8O13RFo4zcGXsYQFKjWfd7Zk8D82WjqM6', '$2y$10$njz9vd2ZzpG72ndUb05vgueXPqtmqHSYtoj397JmPE3FNDwbk/TYO', 'cljlz5bkLJKALMnL', 'SP1', '2024-05-29 04:50:23', '2024-05-29 04:50:23'),
(14, 1, '$2y$10$L8LEOdGYvIKc4sz4nd56Iuzj2SBaaIm1KVxWa2itNsYH2kJJNXzNG', '$2y$10$VAJPm9pMzUKg2XtI8iyIO.lQWe1mBfgMr55vLij7vJXL2RLJuRxXO', '0ZcjhA3SrV3ZCLXj', 'SP2', '2024-05-29 04:51:36', '2024-05-29 06:08:31'),
(15, 1, '$2y$10$1mo5d0tT4dHZkbQ/C88dkeZxKaKeYaR.mt7WZ4phUBZahH3NjgAQe', '$2y$10$7BZttIX7mlGPBzpLKvm9QuiHCQdfla3LgPK8Nwiav146X0vgSvru2', 'PMPBBqJli4Qo0Npu', 'SP2', '2024-05-29 05:08:15', '2024-05-29 06:00:47'),
(16, 1, '$2y$10$G0s5PdIWGpttL7LQTJTKxec0slN9n31TL1MG4UnbeuDfu8myFLvXS', '$2y$10$mKQrE1eZAJ7o0mrjPbOQ0OLdjTxm.DVTuqhhgUtAMSWbxaK5rxWR6', 'UJM9WnEMvREp43XL', 'SP1', '2024-05-29 05:09:50', '2024-05-29 05:09:50'),
(17, 1, '$2y$10$YFo.z8cv8aAki7KMKZdkrO59G2JNcHNAebZthOqymTQ7iZBJ74aDS', '$2y$10$vbiTsXbp8mCgwX/HmK/HFe8y3fQYvuAWAAv2T84h0ihKaiZES2hxi', 'Lt6kSQmWqYKHF0Ud', 'SP1', '2024-05-29 05:51:37', '2024-05-29 05:51:37'),
(18, 1, '$2y$10$U5LxFd4g4Z7ejWdr7N5qHeQR/xfsWoK1fZaMyb7l6NXSSus5q4zcK', '$2y$10$QmeVhvR0.p5ayQ/drHgMJ.MJqphQvyC3RsHadTgj6Pm8543E0IaVm', 'JCc7q1vydCH3dm0j', 'SP1', '2024-05-29 05:51:39', '2024-05-29 05:51:39'),
(19, 1, '$2y$10$uP1gFoeYoBdxMqAF11p/BuDLDo3jBlwe6ij1jq8ONjeZ4yYfJ/POK', '$2y$10$8cJvcbRYHVuYPXfYUUnv/.2IJmz9nx2fYs61thr2VR1kTU2OhQiq6', 'hLlZk4Mh80jugFVw', 'SP1', '2024-05-29 05:52:40', '2024-05-29 05:52:40'),
(20, 1, '$2y$10$lct4D.F9jVp4hbGnTOeZ5e1GvyO8wZ7pq/VLE9OTGM.9m4bAbn5Ha', '$2y$10$RuAoKhRa1TxqY1bOQaUeYOz6qNiPCJaDtS5ptf/LCcuSYa676WSKe', 'FqTgBAJaFWsms1Fs', 'SP1', '2024-06-02 04:26:14', '2024-06-02 04:26:14'),
(21, 1, '$2y$10$AI5Q0bn2WUK/Myr1xVaOBe/MR/G.QcwwrKhVnoGpqihjrGSSnLS7m', '$2y$10$mLWuVORDHfybSucueXWL0.jfZId9VImXtQBAS56hA/ol6RncVoWUm', 'WMnGIiBIqCy94hrE', 'SP1', '2024-06-02 04:30:40', '2024-06-02 04:30:40'),
(22, 1, '$2y$10$b1k18gFKIc9qOqyKn.kFzuxaqaDFS.6mM8ANEiVVlelNXUI4tu0ku', '$2y$10$n1ElS8zFPa.5tjsa4M5fS.dvKhXCnEAAHDDYxjYdQtMNBoDZ7ZU7G', 'CPz5MlmcOK74miZM', 'SP1', '2024-06-02 04:31:40', '2024-06-02 04:31:40'),
(23, 1, '$2y$10$hN3iR5hDY5sUnqnpArrQCegMXbI8.GvfTBtrNO3pkMUh5PA7qTQou', '$2y$10$SwPX.DQFcQRa70wPHoir9uP0hmVr8ZJajQFH1fIjj7KgwCkg2k7OK', 'NXfD3YJsqdZtEwic', 'SP2', '2024-06-02 04:33:02', '2024-06-02 04:33:18'),
(24, 1, '$2y$10$t7AaQtUaeked7b5PwEwNZuNqqn0kTU5N2QHxxFHY3YtLnZICMaieq', '$2y$10$29eOc3mASNNyJtLSdqo/su681iZCLIaHO38VUafbAbcBO2BgwWofy', 'k1gI7HZnt94V01Dc', 'SP1', '2024-06-03 02:55:21', '2024-06-03 02:55:21'),
(25, 1, '$2y$10$HJxRlNoGttlATEzI18wwYeCWU7QZaPI4zxifhR7miAEJGp2HigHyy', '$2y$10$ak2fdwbr7EdfmHie0v4ji.UC0hDdfwWForVQOif3Tfk3u2tNpu4LS', '0yvRqujmmYerDRoT', 'SP2', '2024-06-03 02:55:34', '2024-06-03 02:55:50'),
(26, 1, '$2y$10$NM3rtYVkMXwQvrCUy/OXI.lycUBK3gsx07c8ja4bgcJAIlxHZMthG', '$2y$10$YHiIIHXccYUqS7aAyULKguJOaHebjQ4cqlZud3h69hYJ3vdAhOjwe', 'W79qNkphik8tTsC4', 'SP2', '2024-06-03 07:09:40', '2024-06-03 07:09:57'),
(27, 1, '$2y$10$UnDMPXVzcamYzZtyoB8bMO7iAMDsiN.Cw7eAYUcLNIUNSW1PQLvw2', '$2y$10$rlHIlsnhvLYqV4vwlSQtWOikGOzrywAMb25.9wyOJQwuKhZddimti', '0PFUaghWhgaJOXZm', 'SP2', '2024-06-03 08:38:02', '2024-06-03 08:38:20'),
(28, 1, '$2y$10$Gd.u/oL5NXcwSas7DcSMz.C0PPUMIQpylMFkze6DxgbM02vOaf7wC', '$2y$10$uJCvpi9nmAobYm5dHOflw.s9HILCDicoPqw6VUCedww84lMT4cx2a', 'B7Es7vTHu4NYK3uf', 'SP1', '2024-06-03 08:38:06', '2024-06-03 08:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameGenre` varchar(255) NOT NULL,
  `valueVi` varchar(255) NOT NULL,
  `valueEn` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `nameGenre`, `valueVi`, `valueEn`, `created_at`, `updated_at`) VALUES
(1, 'Kinh dị', 'Kinh dị', 'Horror', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Hành động', 'Hành động', 'Action', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tình cảm', 'Tình cảm', 'Romance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Võ thuật', 'Võ thuật', 'Martial Arts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Khoa học viễn tưởng', 'Khoa học viễn tưởng', 'Science Fiction', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Tài liệu', 'Tài liệu', 'Documentary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Hoạt hình', 'Hoạt hình', 'Amination', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Hài hước', 'Hài hước', 'Comedy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Gia đình', 'Gia đình', 'Family', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Tâm lý', 'Tâm lý', 'Drama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Phiêu lưu', 'Phiêu lưu', 'Adventure', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameLocation` varchar(255) NOT NULL,
  `valueVi` varchar(255) NOT NULL,
  `valueEn` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `nameLocation`, `valueVi`, `valueEn`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', 'Hà Nội', 'Ha Noi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Hồ Chí Minh', 'Hồ Chí Minh', 'Ho Chi Minh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Đà Nẵng', 'Đà Nẵng', 'Da Nang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Cần Thơ', 'Cần Thơ', 'Can Tho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bình Dương', 'Bình Dương', 'Binh Duong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Đồng Nai', 'Đồng Nai', 'Dong Nai', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Quảng Ninh', 'Quảng Ninh', 'Quang Ninh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Thừa Thiên Huế', 'Thừa Thiên Huế', 'Hue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Quảng Bình', 'Quảng Bình', 'Quang Binh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Khánh Hòa', 'Khánh Hòa', 'Khanh Hoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(6, '2024_05_15_164141_create_movies_table', 1),
(7, '2024_05_15_164522_create_allcodes_table', 1),
(8, '2024_05_15_164713_create_locations_table', 1),
(11, '2024_05_24_035249_create_showtimes_table', 1),
(16, '2024_05_26_070222_create_genres_table', 2),
(22, '2014_10_12_100000_create_password_resets_table', 3),
(23, '2019_08_19_000000_create_failed_jobs_table', 3),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(25, '2024_05_14_102805_create_user_table', 3),
(26, '2024_05_28_150037_create_forgotpasswords_table', 3),
(27, '2024_05_29_034023_create_forgot_passes_table', 4),
(29, '2024_05_15_165633_create_bookings_table', 6),
(31, '2024_05_15_165524_create_seatings_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `genreId` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `statusId` varchar(255) NOT NULL,
  `preview` longtext DEFAULT NULL,
  `duration` varchar(255) NOT NULL,
  `actor` varchar(255) NOT NULL,
  `premiere_date` date NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `image`, `genreId`, `director`, `statusId`, `preview`, `duration`, `actor`, `premiere_date`, `subtitle`, `video`, `created_at`, `updated_at`) VALUES
(7, 'The Conjuring', 'image11/ckTFaq4oJVbafkY5tDP55Ipc08XIRY5o0tv43FO2.jpg', 1, 'James Wan', 'SM1', 'In 1971, Carolyn and Roger Perron move their family into a dilapidated Rhode Island farm house and soon strange things start happening around it with escalating nightmarish terror. In desperation, Carolyn contacts the noted paranormal investigators, Ed and Lorraine Warren, to examine the house. What the Warrens discover is a whole area steeped in a satanic haunting that is now targeting the Perron family wherever they go. To stop this evil, the Warrens will have to call upon all their skills and spiritual strength to defeat this spectral menace at its source that threatens to destroy everyone involved.', '112 phút', 'Patrick Wilson, Vera Farmiga', '2024-06-05', 'English, Français, Español', 'https://www.youtube.com/watch?v=k10ETZ41q5o', '2024-05-28 10:34:03', '2024-06-05 03:03:12'),
(8, 'The Shining', 'image11/0T9MKoPw2WliwFqpZJd0kcAIsYM5xSnWsfHq2iWh.jpg', 1, 'Stanley Kubrick', 'SM2', 'After landing a job as an off-season caretaker, Jack Torrance, an aspiring author and recovering alcoholic, drags his wife Wendy and gifted son Danny to snow-covered Colorado\'s secluded Overlook Hotel. But writer\'s block prevents Jack from pursuing a new writing career. Everything has its time, however. First, the manager must give Jack a grand tour. Then, Mr Hallorann, the facility\'s ageing chef, chats with Danny about rare psychic gifts. The mysterious employee also warns the boy about the cavernous hotel\'s abandoned rooms. Room 237, especially, is off-limits. That\'s all very well, but Jack is gradually losing his mind. After all, strange occurrences and blood-chilling visions have trapped the family in a silent gargantuan prison hammered by endless snowstorms. And now, incessant voices inside Jack\'s head demand sacrifice. However, is Jack capable of murder?', '146 minutes', 'Jack Nicholson, Shelley Duvall', '2024-05-28', 'English, Français, Deutsch', 'https://www.youtube.com/watch?v=5Cb3ik6zP2I', '2024-05-28 10:42:14', '2024-05-28 10:42:14'),
(9, 'The Exorcist', 'image11/PC8zgdRanivTpWaUb3zVtj5pey0h7EPssLfa1u9p.jpg', 1, 'William Friedkin', 'SM1', 'To save his family a father hires three expert exorcists to get rid of the demon possessing his child.', '122 minutes', 'Ellen Burstyn,  Max von Sydow, Linda Blair', '2024-12-26', 'English, Français', 'https://www.youtube.com/watch?v=YDGw1MTEe9k', '2024-05-28 10:45:49', '2024-05-28 10:45:49'),
(10, 'Hereditary', 'image11/AeJvDCfXo4djGrmuGr3fmAAZw2qJMws80S3pHG24.jpg', 1, 'Ari Aster', 'SM1', 'When her mentally ill mother passes away, Annie (Toni Collette), her husband (Gabriel Byrne), son (Alex Wolff), and daughter (Milly Shapiro) all mourn her loss. The family turn to different means to handle their grief, including Annie and her daughter both flirting with the supernatural. They each begin to have disturbing, otherworldly experiences linked to the sinister secrets and emotional trauma that have been passed through the generations of their family.', '127 minutes', 'Toni Collette,  Gabriel Byrne, Alex Wolff, Milly Shapiro', '2024-06-08', 'English, Français, Deutsch', 'ttps://www.youtube.com/watch?v=V6-EMzhaUdo', '2024-05-28 10:49:27', '2024-05-28 10:49:27'),
(11, 'The Witch', 'image11/HP0hY7jzxr5cj4oD3vzPgftgPqwP8Gce0ZmttjD9.jpg', 1, 'Robert Eggers', 'SM2', 'New England, 1630: William and Katherine try to lead a devout Christian life, homesteading on the edge of an impassible wilderness, with five children. When their newborn son mysteriously vanishes and their crops fail, the family begins to turn on one another. \"The Witch\" is a chilling portrait of a family unraveling within their own sins, leaving them prey for an inconceivable evil.', '127 minutes', 'Toni Collette,  Gabriel Byrne, Alex Wolff, Milly Shapiro', '2024-05-28', 'English, Français', 'https://www.youtube.com/watch?v=iQXmlf3Sefg', '2024-05-28 10:52:12', '2024-05-28 10:52:12'),
(12, 'John Wick', 'image11/0hYp6FQ6aHluLvBssQZesq5oYvV7qsmOcKaG9pxq.jpg', 2, 'Chad Stahelski, David Leitch', 'SM2', 'With the untimely death of his beloved wife still bitter in his mouth, John Wick, the expert former assassin, receives one final gift from her--a precious keepsake to help John find a new meaning in life now that she is gone. But when the arrogant Russian mob prince, Iosef Tarasov, and his men pay Wick a rather unwelcome visit to rob him of his prized 1969 Mustang and his wife\'s present, the legendary hitman will be forced to unearth his meticulously concealed identity. Blind with revenge, John will immediately unleash a carefully orchestrated maelstrom of destruction against the sophisticated kingpin, Viggo Tarasov, and his family, who are fully aware of his lethal capacity. Now, only blood can quench the boogeyman\'s thirst for retribution.', '101 minutes', 'Keanu Reeves, Michael Nyqvist, Alfie Allen', '2024-10-24', 'English, Français, Español', 'https://www.youtube.com/watch?v=C0BMx-qxsP4', '2024-05-28 10:54:32', '2024-05-28 10:54:32'),
(13, 'Mad Max: Fury Road', 'image11/533Ilh2OmBtSg2Uwf8ahn87nzgFHhp0L9dJ6NIPe.jpg', 2, 'George Miller', 'SM2', 'An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There\'s Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.', '120 minutes', 'Tom Hardy, Charlize Theron, Nicholas Hoult', '2024-05-28', 'English, Français, Deutsch', 'https://www.youtube.com/watch?v=hEJnMQG9ev8', '2024-05-28 10:56:20', '2024-05-28 10:56:20'),
(14, 'The Raid: Redemption', 'image11/glhPSGoKl6dvrCEgcbDQWdypX0pMtA6BhSJ195Ip.jpg', 2, 'Gareth Evans', 'SM2', 'In Jakarta, Indonesia, Lieutenant Wahyu organizes the invasion of an apartment building that is the safe house of the powerful and cruel drug lord Tama and his gang. The SWAT team breaks in the building but one lookout sees and warns the gangsters and the police force is trapped on the seventh floor. They learn that Lt. Wahyu has not informed his superiors about the operation. Now the police officers have to fight with limited ammunition against the armed and dangerous gangsters.', '101 minutes', 'Iko Uwais, Joe Taslim, Yayan Ruhian', '2024-09-22', 'Indonesian, English', 'https://www.youtube.com/watch?v=GDYwcjhvD-Y', '2024-05-28 11:00:16', '2024-05-28 15:45:03'),
(15, 'Taken', 'image11/woD6FMbC7tClif3a0mO5ISSPgmsWmADMXjclI5AO.jpg', 2, 'Pierre Morel', 'SM1', 'Seventeen year-old Kim is the pride and joy of her father Bryan Mills. Bryan is a retired agent who left the Central Intelligence Agency to be near Kim in California. Kim lives with her mother Lenore and her wealthy stepfather Stuart. Kim manages to convince her reluctant father to allow her to travel to Paris with her friend Amanda. When the girls arrive in Paris they share a cab with a stranger named Peter, and Amanda lets it slip that they are alone in Paris. Using this information an Albanian gang of human traffickers kidnaps the girls. Kim barely has time to call her father and give him information. Her father gets to speak briefly to one of the kidnappers and he promises to kill the kidnappers if they do not let his daughter go free. The kidnapper wishes him \"good luck,\" so Bryan Mills travels to Paris to search for his daughter and her friend.', '93 minutes', 'Liam Neeson, Maggie Grace, Famke Janssen', '2024-05-29', 'English, Français', 'https://www.youtube.com/watch?v=uPccSiQABok', '2024-05-28 11:01:55', '2024-05-28 11:01:55'),
(16, 'The Bourne Identity', 'image11/qF4IQRLWdtCcnB4xD01xXHtwUQ50hJfu0tPcYwh7.jpg', 2, 'Doug Liman', 'SM1', 'When a body is recovered at sea still alive, the mystery man (Damon) seems to have forgotten everything in life, including who he was. Eventually he begins to remember smaller details in life and soon finds out that his name was Jason Bourne. What he doesn\'t like is the gun and fake passports belonging to him. Now Bourne, and his new friend, Marie Helena Kreutz (Potente) travel from country to country in search of his new identity. But someone is not happy to see him alive, and is frantically trying to track him down.', '119 minutes', 'Matt Damon, Franka Potente, Chris Cooper', '2024-06-14', 'English, Français, Español', 'https://www.youtube.com/watch?v=cD-uQreIwEk', '2024-05-28 11:04:46', '2024-05-28 11:04:46'),
(17, 'Titanic', 'image11/tJj0FgPZt8mXIeDY1JCsGCh40bYs9eRUq7bIv2JS.jpg', 3, 'James Cameron', 'SM1', '84 years later, a 100 year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning.', '194 minutes', 'Leonardo DiCaprio, Kate Winslet, Billy Zane', '2024-12-19', 'English, Français, Deutsch', 'https://www.youtube.com/watch?v=kVrqfYjkTdQ', '2024-05-28 11:06:28', '2024-05-28 11:06:28'),
(18, 'The Notebook', 'image11/8FQmLPt4NzvGj8e6Fys2cBUAFlZ2KspSGs5Iazbw.jpg', 3, 'Nick Cassavetes', 'SM2', 'With almost religious devotion, Duke, a kind octogenarian inmate of a peaceful nursing home, reads daily a captivating story from the worn-out pages of his leather-bound notebook to a fellow female patient. To keep her company, Duke recounts the fascinating love affair between impecunious but poetic country boy Noah and Allie, an affluent city girl. And little by little, Duke unfolds a Southern, lumber-scented summer romance beneath the tall trees of late 1930s North Carolina. Indeed, it seems as if the silent manuscript possesses the unfathomable power to penetrate the opaque clouds that enclose the silver-haired dame; slowly but surely, the enchanted lady becomes immersed in the strangely alluring fairy tale of the young ardent lovers\' highs and lows. But nobody knows what tomorrow holds. Are all summer loves doomed to fail?', '123 minutes', 'Ryan Gosling, Rachel McAdams, James Garner', '2024-05-28', 'English, Español', 'https://www.youtube.com/watch?v=yDJIcYXpwZs', '2024-05-28 11:08:11', '2024-05-28 11:08:11'),
(19, 'Crazy Rich Asians', 'image11/LkQYP7s3aRy8Sg9OQsLMrajodmEC8ViaNGaYqurb.jpg', 3, 'Jon M. Chu', 'SM2', 'Rachel Chu, an American-born Chinese NYU professor, travels with her boyfriend, Nick to his hometown in Singapore for his best friend\'s wedding. Before long, his secret is out: Nick\'s family is wealthy, and he\'s considered the most eligible bachelor in Asia. Every single woman is incredibly jealous of Rachel and wants to bring her down.', '120 minutes', 'Constance Wu, Henry Golding, Gemma Chan', '2024-08-15', 'English, Mandarin', 'https://www.youtube.com/watch?v=YZNWTLsYvHw', '2024-05-28 11:09:44', '2024-05-28 11:09:44'),
(20, 'Love, Guaranteed', 'image11/rfvUNmPaDDS3s21MyTcGJLVxl3ZnJbVIjZnLRtIc.jpg', 3, 'Mark Steven Johnson', 'SM2', 'Earnest, hard-working lawyer Susan (Rachael Leigh Cook) has taken one too many pro bono cases. To save her small law firm, Susan begrudgingly takes a high-paying, high-profile case from Nick (Damon Wayans Jr.), a charming new client who wants to sue a dating website that guarantees users will find love. But Susan and Nick soon find themselves in the middle of a media storm, and as the case heats up, so do their feelings for each other - which could jeopardize everything.', '91 minutes', 'Rachael Leigh Cook, Damon Wayans Jr., Heather Graham', '2024-05-28', 'English', 'https://www.youtube.com/watch?v=GDTNXVcaYQg', '2024-05-28 11:11:02', '2024-05-28 11:11:02'),
(21, 'The Vow', 'image11/vXz0xcL1IMRBF0z3ezj5x8q8CrF0S8XRdUbAIt2U.jpg', 3, 'Michael Sucsy', 'SM2', 'Leo and Paige are a couple who just got married. After an accident, Paige is left unconscious, and when she awakes she doesn\'t remember Leo. Her parents, whom she hasn\'t seen since she and Leo got together, come and visit her. She can\'t believe that she hasn\'t seen them for such a long time. Leo wants to bring her home with him but her parents want her to go with them. She goes with Leo but when she doesn\'t recognize anything, she goes to her parents. And she wonders why did she cut off contact with her family. She also runs into her ex and wonders why they broke up. Leo tries to win her back by courting her again.', '104 minutes', 'Channing Tatum, Rachel McAdams, Sam Neill', '2024-04-28', 'English, Français', 'https://www.youtube.com/watch?v=0EriaHBKgfE', '2024-05-28 11:12:51', '2024-05-28 11:14:56'),
(22, 'dssadsa', 'image11/k5KpEz7SnOjzo45dWIbXyLDMIKFU6sDOQCsfPkCr.jpg', 3, 'adasdsa', 'SM2', 'dsadsa', 'dsadsa', 'đasa', '2024-05-31', 'dsadad', 'đasad', '2024-05-31 09:04:36', '2024-05-31 09:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `seatings`
--

CREATE TABLE `seatings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chairId` varchar(255) NOT NULL,
  `statusSeat` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seatings`
--

INSERT INTO `seatings` (`id`, `chairId`, `statusSeat`, `price`, `created_at`, `updated_at`) VALUES
(25, 'G1', 'SC2', 100000, '0000-00-00 00:00:00', '2024-06-01 08:14:10'),
(26, 'G1', 'SC2', 100000, '0000-00-00 00:00:00', '2024-06-01 08:16:35'),
(27, 'G1', 'SC2', 100000, '0000-00-00 00:00:00', '2024-06-02 04:19:22'),
(28, 'G1', 'SC2', 100000, '0000-00-00 00:00:00', '2024-06-03 07:30:48'),
(29, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '2024-06-01 05:45:47'),
(30, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'G1', 'SC1', 100000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '2024-05-31 15:15:39'),
(36, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-03 07:28:52'),
(37, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-01 08:20:04'),
(40, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-01 11:29:13'),
(41, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-03 08:14:07'),
(45, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-03 08:36:22'),
(46, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-05 02:09:18'),
(47, 'G2', 'SC1', 70000, '0000-00-00 00:00:00', '2024-06-01 05:33:45'),
(48, 'G2', 'SC2', 70000, '0000-00-00 00:00:00', '2024-06-01 09:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`id`, `movie_id`, `location_id`, `time`, `date`, `created_at`, `updated_at`) VALUES
(11, 7, 1, '10h30 - 12h30', '2024-05-29', '2024-05-28 16:01:26', '2024-05-29 14:15:10'),
(12, 7, 1, '12h30 - 14h30', '2024-05-29', '2024-05-28 16:05:35', '2024-05-28 16:05:35'),
(13, 7, 2, '10h30 - 12h30', '2024-05-30', '2024-05-29 14:00:49', '2024-05-29 14:00:49'),
(14, 8, 3, '19h30 - 21h30', '2024-03-06', '2024-06-03 07:25:36', '2024-06-03 07:27:09'),
(15, 11, 2, '20h00 - 21h30', '2024-06-03', '2024-06-03 08:12:54', '2024-06-03 08:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `typeAccount` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `fullName`, `email`, `address`, `phoneNumber`, `gender`, `roleId`, `typeAccount`, `google_id`, `created_at`, `updated_at`) VALUES
(1, 'huynhne', '$2y$10$GD9VzeBoWWe7nBT8txltJenrj2vF865IJIj6hYjd4h.fZfEtrs.nu', 'Đặng Như Huỳnh', 'nhuhuynhdang.191203@gmail.com', 'TPHCM', '0123456789', 'F', 'R2', 'Google', '100364477654988489548', '2024-05-24 15:10:54', '2024-06-03 08:38:06'),
(3, 'danh', '$2y$10$6fBdha7gSZj3YavbAR1Kb.oLpcWKWWqdy3C52cJ5krej0W1mlwQHi', 'Nguyễn Thành Danh', 'danh@gmail.com', 'TPHCM', '0123456789', 'M', 'R2', 'normal', NULL, '2024-05-27 02:31:41', '2024-05-27 02:31:41'),
(4, 'hang', '$2y$10$o01JoTsiZrmwzXKRiK6Dpuh81/1sYXggG6NnchZftGrWlvp2IDgHC', 'Nguyễn Kim Hằng', 'hang@gmail.com', 'TPHCM', '0123456789', 'F', 'R3', 'normal', NULL, '2024-05-27 02:32:18', '2024-05-27 02:32:18'),
(5, 'huynh', '$2y$10$qMiXWflAjAfh13dQNpOf8OwxKr1wN9IJA5a3Ev8CtGss3G5WZ.qr6', 'Đặng Như Huỳnh', 'huynh@gmail.com', 'Long An', '0123456789', 'F', 'R1', 'normal', NULL, '2024-05-27 04:51:52', '2024-06-03 06:42:39'),
(6, 'Nguyễn kha', '$2y$10$MU0HI/O3nZek.O4nbGLVeOwFcXUO5NBVmZqBwh1RNQJyn4CMo1j.a', 'Nguyễn Văn Kha', 'kha@gmail.com', 'TPHCM', '0123456789', NULL, 'R3', 'normal', NULL, '2024-05-28 03:27:58', '2024-05-28 03:27:58'),
(7, 'sang', '$2y$10$vYSi/Jwf9GrFK/6cs647HulcMzX8E/p6fnTXvwYg5YGsbZvNx9Rvu', 'Nguyễn Văn Sang', 'sang@gmail.com', 'TPHCM', '0123456789', 'M', 'R3', 'normal', NULL, '2024-05-29 14:24:02', '2024-05-29 14:24:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allcodes`
--
ALTER TABLE `allcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_passes`
--
ALTER TABLE `forgot_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seatings`
--
ALTER TABLE `seatings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtimes_movie_id_index` (`movie_id`),
  ADD KEY `showtimes_location_id_index` (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allcodes`
--
ALTER TABLE `allcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `forgot_passes`
--
ALTER TABLE `forgot_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `seatings`
--
ALTER TABLE `seatings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD CONSTRAINT `showtimes_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `showtimes_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
