-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 07:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udolu_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdownloads`
--

CREATE TABLE `bookdownloads` (
  `book_id` bigint(20) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durationofaudio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coauthor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booklistencount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloadCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `narrators` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_guidance` tinyint(1) NOT NULL DEFAULT 0,
  `book_isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasAudio` tinyint(1) NOT NULL,
  `book_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_category_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `uploaded_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_cover_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `sub_title`, `durationofaudio`, `coauthor`, `publisher`, `book_rating`, `booklistencount`, `downloadCount`, `narrators`, `keywords`, `user_guidance`, `book_isbn`, `book_description`, `hasAudio`, `book_author`, `entry_date`, `book_category_id`, `language_id`, `uploaded_by`, `created_at`, `updated_at`, `book_cover_image_path`, `book_price`) VALUES
(4, 'Medlin', 'Medlin works', '40mins', 'james', 'Hermes', NULL, '4', NULL, 'Helen', 'horror, wild, esoteric', 1, 'ertwrt', 'This book contains highly scary activity', 1, 'Prof. Vincent', '2022-08-03', 6, 2, '', '2022-08-03 11:31:13', '2022-10-14 07:42:14', NULL, 2000.00),
(5, 'james Bond', 'james works', '40mins', 'james', 'Hermes', NULL, '', NULL, 'Helen', 'horror, wild, esoteric', 1, 'ertwrt', 'This book contains highly scary activity', 1, 'Prof. Vincent', '2022-08-03', 6, 2, '', '2022-08-03 12:00:34', '2022-08-03 12:00:34', 'uploads/book_cover_image', 2000.00),
(6, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ASxAX\r\nsdfsgsfdgdf\r\ngfddshdfgh', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 03:09:33', '2022-08-22 03:09:33', 'uploads/Cw106pLHgNtWwKh4i3Tqm8uspR0GxesIY9goyapz.jpg', 43542.00),
(7, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ASxAX\r\nsdfsgsfdgdf\r\ngfddshdfgh', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 03:11:39', '2022-08-22 03:11:39', 'uploads/kGNbEiUadM2sjUl00T5Mqrf8NbykRKiwbPcPJlpi.jpg', 43542.00),
(8, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ASxAX\r\nsdfsgsfdgdf\r\ngfddshdfgh', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 03:11:54', '2022-08-22 03:11:54', 'uploads/qjWhuDBIp4t0pphK3msNHCgSajEru8rLdTwsqGmK.jpg', 43542.00),
(9, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqeqwrerqwer\r\nwerwrewet\r\nrewteter', 0, 'hlkhllkh;l', '2022-08-22', 6, 1, '', '2022-08-22 03:33:12', '2022-08-22 03:33:12', 'uploads/WjEL8pLwNeFcxHGNmP8NfWMwbKnNj5FpFWOpSex0.jpg', 3456.00),
(10, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqeqwrerqwer\r\nwerwrewet\r\nrewteter', 0, 'hlkhllkh;l', '2022-08-22', 6, 1, '', '2022-08-22 03:34:57', '2022-08-22 03:34:57', 'uploads/DpKfyAHCUA9PrtVRq7RD23GPPh36bKeVALbheirk.jpg', 3456.00),
(11, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqeqwrerqwer\r\nwerwrewet\r\nrewteter', 0, 'hlkhllkh;l', '2022-08-22', 6, 1, '', '2022-08-22 03:35:26', '2022-08-22 03:35:26', 'uploads/YLE9mgvbdG7wYZ0FFBA7FqbaETv5SP2sX6dK0aOT.jpg', 3456.00),
(12, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqeqwrerqwer\r\nwerwrewet\r\nrewteter', 0, 'hlkhllkh;l', '2022-08-22', 6, 1, '', '2022-08-22 03:35:31', '2022-08-22 03:35:31', 'uploads/McP7SsUnLRkQArfXfPlGMVYxTrxk2mOG8t7qx0Od.jpg', 3456.00),
(13, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqeqwrerqwer\r\nwerwrewet\r\nrewteter', 0, 'hlkhllkh;l', '2022-08-22', 6, 1, '', '2022-08-22 03:37:13', '2022-08-22 03:37:13', 'uploads/6p4r4hWun1GMzrz4ObuULwaLGzk5HWI2Lvp2St3W.jpg', 3456.00),
(14, 'sdfsdgf', 'sdfgsdfg', '200mm', 'sadfasf', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqerqewrrw', 0, 'hlkhllkh;l', '2022-08-22', 9, 1, '', '2022-08-22 05:23:29', '2022-08-22 05:23:29', 'uploads/SHvgxro47Am3fC8NjGWkekmziQFxlXurdcegWUZy.jpg', 2345.00),
(15, 'sdfsdgf', 'sdfgsdfg', '200mm', 'sadfasf', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqerqewrrw', 0, 'hlkhllkh;l', '2022-08-22', 9, 1, '', '2022-08-22 05:27:02', '2022-08-22 05:27:02', 'uploads/pjUu1a5gyDdCw7p9H4tK46Gx6MJygkH1VUs6F65r.jpg', 2345.00),
(16, 'sdfsdgf', 'sdfgsdfg', '200mm', 'sadfasf', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqerqewrrw', 0, 'hlkhllkh;l', '2022-08-22', 9, 1, '', '2022-08-22 05:28:51', '2022-08-22 05:28:51', 'uploads/O8PDQOEdsF3lKkDiJL70SyFsisvGfR1b83cvxLVy.jpg', 2345.00),
(17, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'ewrqewrqwr\r\nrdssgrwgsdfg', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 05:31:43', '2022-08-22 05:31:43', 'uploads/gPCaGqA0t4jGRJiBqet8p9W9dyldVI1zDQm65gsl.jpg', 2345.00),
(18, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'ewrqewrqwr\r\nrdssgrwgsdfg', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 05:32:36', '2022-08-22 05:32:36', 'uploads/O4plv8pJwG6hEgP6V26pm6OPa8FZmATRiSAz11rB.jpg', 2345.00),
(19, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'ewrqewrqwr\r\nrdssgrwgsdfg', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 05:37:19', '2022-08-22 05:37:19', 'uploads/XKN3mObxAhwBhTyuaBmvIx6FMI3eMoRNgdUqWlY1.jpg', 2345.00),
(20, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'werqwerqwer\r\nsdfasdfa', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 05:38:13', '2022-08-22 05:38:13', 'uploads/ez5xWXcB9BjQCnGIygRYSV9oORggWt110blN0rc7.jpg', 2345.00),
(21, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'werqwerqwer\r\nsdfasdfa', 0, 'hlkhllkh;l', '2022-08-22', 1, 1, '', '2022-08-22 05:39:56', '2022-08-22 05:39:56', 'uploads/aEUQZ3LuLqnnw8qUcAvoZIVGpe71gYYJyyNyJZ3C.jpg', 2345.00),
(22, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wqewerwe\r\nwewrrsfsd\r\nffdg', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:41:09', '2022-08-22 05:41:09', 'uploads/yxiuSq8ojnjibeQdfoNeI5pJDA6ebZmu0y5p3lg0.jpg', 2543.00),
(23, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:46:52', '2022-08-22 05:46:52', 'uploads/tyzzcn3X1ZMuQwKs3CIKeNeFSgcIfocV2d4vFo8t.jpg', 2345.00),
(24, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:47:59', '2022-08-22 05:47:59', 'uploads/BGY3ytqpErJ7zTAi7o2LxUdN9IHtjiIurCBTOV0V.jpg', 2345.00),
(25, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:49:50', '2022-08-22 05:49:50', 'uploads/rIZjlzMgKQzaAeXcoSueOZbhsFJA5FtnkbMuTaK5.jpg', 2345.00),
(26, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:50:08', '2022-08-22 05:50:08', 'uploads/itGYm2fPRJw3paqoRtKbRYQikoSZjSSD8hzGhyhn.jpg', 2345.00),
(27, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:50:29', '2022-08-22 05:50:29', 'uploads/wh6oX030VjsdjQ22luKZ6bxfUcKHHB89SluimYh9.jpg', 2345.00),
(28, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'ewssdgfs\r\nDADFASF', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:50:51', '2022-08-22 05:50:51', 'uploads/opwHIo0X6NwOtxQzyWbe7J0w48tHpDjaQuz2UiU7.jpg', 2345.00),
(29, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:52:25', '2022-08-22 05:52:25', 'uploads/QHobbncaJLUgFvcYC9u9Z6OKaQ6yZlUom5WaFit3.jpg', 2345.00),
(30, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 05:59:21', '2022-08-22 05:59:21', 'uploads/1h20Ck0K5OOZBxUoHD8WidROcfC4tj3vMRBVu3Rv.jpg', 2345.00),
(31, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:00:26', '2022-08-22 06:00:26', 'uploads/jEnuxK9D09kwmFxLbyMHNmppcDqLnQXfQvLKbxsQ.jpg', 2345.00),
(32, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:00:54', '2022-08-22 06:00:54', 'uploads/CG1Q6qTRHZxyF6OZRQ7iMWHB15sX2dXRQTOCFTDo.jpg', 2345.00),
(33, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:09:27', '2022-08-22 06:09:27', 'uploads/CxhA4o6Nl1uIZuYuOPapw4UX6yheHBtoPIir1k15.jpg', 2345.00),
(34, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:10:14', '2022-08-22 06:10:14', 'uploads/LDYvvHCegMENuuWCGdfgOdhlfkwWP5fY2IB9KWL8.jpg', 2345.00),
(35, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:13:54', '2022-08-22 06:13:54', 'uploads/jXAn7iPj3YQyQCjHP2HsFFGGT5eF2TJ32SqZmJN8.jpg', 2345.00),
(36, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'dszfsdfgsd', 0, 'hlkhllkh', '2022-08-22', 9, 1, '', '2022-08-22 06:14:38', '2022-08-22 06:14:38', 'uploads/UEWThMcT9oTB1ZBDlwiO8mZIJFZfgC73KkCX167y.jpg', 2345.00),
(37, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'tyfjghj', 0, 'hlkhllkh', '2022-08-22', 1, 1, '', '2022-08-22 06:18:37', '2022-08-22 06:18:37', 'uploads/mYcxnpf0kzhfA3KjUKNnsISsb1a0CBgWiD9K8NVo.jpg', 4568.00),
(38, 'sdfsdgf', 'sdfgsdfg', '200mm', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'tyfjghj', 0, 'hlkhllkh', '2022-08-22', 1, 1, '', '2022-08-22 06:30:06', '2022-08-22 06:30:06', 'uploads/qCulzI0QCI9aCxnelKuQEmhtigu0tsUEBTiAuTMP.jpg', 4568.00),
(39, 'sdfsdgf', 'sdfgsdfg', '0ms', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'jhhjgjk', 'wearqrfsdfsdf\r\ndfsadfsafs\r\nsdfsfgdgsd', 0, 'hlkhllkh;l', '2022-08-23', 6, 1, '', '2022-08-23 01:59:22', '2022-08-23 01:59:22', 'uploads/SEJ7975ZYCNNY6Bi9fVRMw1rxhAXVDLOod1TpvYr.jpg', 567.00),
(40, 'sdfsdgf', 'sdfgsdfg', '0ms', 'zvxczxcv', 'asdfasf', NULL, '', NULL, 'asadAsd', 'zxcvzx,dfgs,fghh', 0, 'ert', 'sdffgdsgsd\r\ndfdsgsdgsdsdfgsdgsg\r\ndghd', 0, 'hlkhllkh', '2022-08-23', 1, 1, '', '2022-08-23 02:15:45', '2022-08-23 02:15:45', 'uploads/hVtkMIPHv92KyNvOlMlFl6zsJe1YKd6eXeTVmY8H.jpg', 5644.00),
(41, 'Seede', 'Helen', '0ms', 'Christiana', 'trends', NULL, '', NULL, 'hovie', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'The war of seede that took the life of Joviah pin', 0, 'Wreckle', '2022-08-23', 1, 1, '', '2022-08-23 06:39:19', '2022-08-23 06:39:19', 'uploads/QeeqZciXvnUux181kbe5r8qj8LaNda48R9wwVHEt.jpg', 2345.00),
(42, 'Seede', 'Helen', '0ms', 'Christiana', 'trends', NULL, '', NULL, 'hovie', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'The war of seede that took the life of Joviah pin', 0, 'Wreckle', '2022-08-23', 1, 1, '', '2022-08-23 06:57:52', '2022-08-23 06:57:52', 'uploads/nEgIrSBor83DK0cubdySDwBLq2IUPWvnu2fToYQg.jpg', 2345.00),
(43, 'sdfsdgf', 'Helen', '0ms', 'sadfasf', 'trends', NULL, '', NULL, 'asadAsd', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'dhfhgdh\r\ngftyhdhthdhg', 0, 'Wreckle', '2022-08-23', 9, 1, '', '2022-08-23 10:23:39', '2022-08-23 10:23:39', 'uploads/C52gN4lFiQpag3YiDvz7Odgm5BtUuXWWPTa6hkxW.jpg', 8979.00),
(44, 'sdfsdgf', 'Helen', '0ms', 'sadfasf', 'trends', NULL, '', NULL, 'hovie', 'zxcvzx,dfgs,fghh', 0, 'ty1234r', 'dfgsgsgfdhd\r\nfdghdfhdfgh\r\ngfdhdfghgfd', 0, 'Wreckle', '2022-08-23', 1, 5, '', '2022-08-23 11:48:28', '2022-08-23 11:48:28', 'uploads/n0YIag3w6rJA2v604TVHE015l3yLfuIIVX6WyEQC.jpg', 2345.00),
(45, 'sdfsdgf', 'asdfas', '0ms', 'Christiana', 'trends', NULL, '', NULL, 'hovie', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'Test', 0, 'Wreckle', '2022-08-23', 1, 1, '', '2022-08-23 13:09:05', '2022-08-23 13:09:05', 'uploads/vBgnLji4m3k1ACMXXc1u0QvjBpbLU2hyYfoaKiJ0.jpg', 2346.00),
(46, 'Seede', 'asdfas', '0ms', 'Christiana', 'asdfasf', NULL, '', NULL, 'hovie', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'fdhtyfyui\r\nfxsfghdsdghh\r\ngfxfggcghc', 0, 'Wreckle', '2022-08-23', 9, 1, '', '2022-08-23 13:17:28', '2022-08-23 13:17:28', 'uploads/KgXaFjZDJmSzUQwXIllAtLYqi3A3RbiftkKeDSNP.jpg', 67879.00),
(47, 'sdfsdgf', 'heinz', '0ms', 'Christiana', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'test for cloudinary', 0, 'hlkhllkh', '2022-10-13', 6, 1, '', '2022-10-13 07:43:52', '2022-10-13 07:43:52', 'uploads/1665650632_test_image.jpg', 20000.00),
(48, 'sdfsdgf', 'heinz', '0ms', 'Christiana', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'test for cloudinary', 0, 'hlkhllkh', '2022-10-13', 6, 1, '', '2022-10-13 07:46:09', '2022-10-13 07:46:09', 'uploads/1665650769_test_image.jpg', 20000.00),
(49, 'sdfsdgf', 'heinz', '0ms', 'Christiana', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'test for cloudinary', 0, 'hlkhllkh', '2022-10-13', 6, 1, '', '2022-10-13 08:08:50', '2022-10-13 08:08:50', 'uploads/1665652130_test_image.jpg', 20000.00),
(50, 'sdfsdgf', 'Helen', '0ms', 'sadfasf', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'This is a test', 0, 'Wreckle', '2022-10-13', 6, 1, '', '2022-10-13 08:14:13', '2022-10-13 08:14:13', 'uploads/1665652453_testImage.jpg', 4000.00),
(51, 'sdfsdgf', 'Helen', '0ms', 'sadfasf', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'This is a test', 0, 'Wreckle', '2022-10-13', 6, 1, '', '2022-10-13 08:15:39', '2022-10-13 08:15:39', 'uploads/1665652539_testImage.jpg', 4000.00),
(52, 'sdfsdgf', 'Helen', '0ms', 'sadfasf', 'trends', NULL, NULL, NULL, 'hovy', 'war, crime, seede ,at seede, wims kid', 0, 'ty1234r', 'This is a test', 0, 'Wreckle', '2022-10-13', 6, 1, '', '2022-10-13 08:21:37', '2022-10-13 08:21:37', 'uploads/1665652897_testImage.jpg', 4000.00);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_category_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `book_category`, `book_category_id`, `category_image`, `book_category_desc`, `created_at`, `updated_at`) VALUES
(1, 'hjkkl', 'hjkkl', '', 'hjkkl', '2022-07-23 11:47:28', '2022-09-01 13:56:54'),
(6, 'horror', 'HOR', '', 'Horror audio', '2022-07-23 13:26:54', '2022-07-23 13:26:54'),
(9, 'Crime', 'CRM', 'uploads/category_image', 'War and crime', '2022-08-02 08:45:20', '2022-08-02 08:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `book_files`
--

CREATE TABLE `book_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_book_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_files`
--

INSERT INTO `book_files` (`id`, `chapter`, `audio_book_path`, `book_id`, `created_at`, `updated_at`) VALUES
(20, 'test', 'uploads/nyMx1veddJdMJNQ7paJEJ9ejnji2Tv9hTQSSiBEY.jpg', 45, '2022-08-23 13:09:05', '2022-08-23 13:09:05'),
(21, 'test', 'uploads/vImY8TSpXbx9PcHcxxUYAQmAgrnS9UPTeS4DGkk7.jpg', 45, '2022-08-23 13:09:05', '2022-08-23 13:09:05'),
(22, 'test', '$path', 46, '2022-08-23 13:17:28', '2022-08-23 13:17:28'),
(23, 'test', '$path', 46, '2022-08-23 13:17:28', '2022-08-23 13:17:28'),
(24, 'test', '$path', 46, '2022-08-23 13:17:28', '2022-08-23 13:17:28'),
(25, 'test', '$path', 46, '2022-08-23 13:17:28', '2022-08-23 13:17:28'),
(26, 'https://res.cloudinary.com/dzbotxvlc/video/upload/v1665652156/qkweclgmufd3ladx5xtk.mp3', NULL, 49, '2022-10-13 08:09:19', '2022-10-13 08:09:19'),
(27, 'chapter-1', 'https://res.cloudinary.com/dzbotxvlc/video/upload/v1665652901/dig6u33txxjod3utb7dv.mp3', 52, '2022-10-13 08:21:44', '2022-10-13 08:21:44'),
(28, 'chapter-2', 'https://res.cloudinary.com/dzbotxvlc/video/upload/v1665652907/ug8mpqdahmlqjbrpoxjj.mp3', 52, '2022-10-13 08:21:50', '2022-10-13 08:21:50'),
(29, 'chapter-3', 'https://res.cloudinary.com/dzbotxvlc/video/upload/v1665652912/xztf4uskivomtq8vt7te.mp3', 52, '2022-10-13 08:21:54', '2022-10-13 08:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `language_code`, `created_at`, `updated_at`) VALUES
(1, 'English', 'ENG', '2022-08-01 14:28:03', '2022-08-01 14:28:03'),
(2, 'Spanish', 'SPN', '2022-08-01 14:28:03', '2022-08-01 14:28:03'),
(3, 'Hausa', 'HSA', '2022-08-23 01:28:57', '2022-08-23 01:28:57'),
(5, 'Efik', 'EFK', '2022-08-23 07:13:25', '2022-08-23 07:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_20_064133_add_user_othernames_to_users_tables', 2),
(6, '2022_07_21_124520_create_bookcategory_table', 3),
(7, '2022_07_21_131251_create_books_table', 3),
(8, '2022_07_23_114722_create_sessions_table', 4),
(9, '2022_07_26_124324_add_has_audio_and__audio_columns_to_books', 5),
(10, '2022_07_26_130015_drop_book_image2_columns_on_books', 6),
(11, '2022_07_26_133730_add_image_name_and_paths_to_books', 7),
(12, '2022_07_26_135531_add_book_price_to_books', 8),
(14, '2022_07_27_092653_add_audio_path_to_books_table', 9),
(30, '2022_07_28_111244_create_transactions_table', 10),
(31, '2022_07_29_081549_create_language_table', 10),
(32, '2022_07_30_144003_create_subscriptions_table', 10),
(36, '2022_07_30_152810_create_user_subscriptions_table', 11),
(37, '2022_08_21_045723_create_book_files_table', 11),
(38, '2022_08_21_065016_add_status_to_users_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'MyApp', '50f4d56fcdd77ad3e0e5c2d5be7c512c5c8ecf7ce456389fa97552bc92cb3fe6', '[\"*\"]', NULL, '2022-07-20 09:05:35', '2022-07-20 09:05:35'),
(2, 'App\\Models\\User', 4, 'MyApp', 'b3b4f15fb377ddc52b5dbfa9ba29235ae5a1c96414ebc848f38f66dd9d60d701', '[\"*\"]', NULL, '2022-07-20 09:06:36', '2022-07-20 09:06:36'),
(3, 'App\\Models\\User', 4, 'MyApp', 'b534cc192153e8aa6931cfd70d2b6785b29c2fbbf1d5c6a883c96396cc71c5f7', '[\"*\"]', NULL, '2022-07-20 10:01:37', '2022-07-20 10:01:37'),
(4, 'App\\Models\\User', 4, 'MyApp', 'c1fcf5fd33ad44b33354a17a99e3bd56ed173be4e7380436f76a3fa688b8d1f6', '[\"*\"]', NULL, '2022-07-20 10:03:51', '2022-07-20 10:03:51'),
(5, 'App\\Models\\User', 1, 'MyApp', 'ddca22d6ddfbb9989ceaf91bb16fae84f8b698d6bdee062c58d459ebe3ba90fc', '[\"*\"]', NULL, '2022-07-21 09:11:30', '2022-07-21 09:11:30'),
(6, 'App\\Models\\User', 1, 'MyApp', 'ad42ce8f783f40c9161f1a5ecb337fe03915b5128803b1e17f0234815debd2d8', '[\"*\"]', NULL, '2022-07-21 09:53:35', '2022-07-21 09:53:35'),
(7, 'App\\Models\\User', 1, 'MyApp', '3c3ee591fa18df783bc5993e059a0dc2cfc5a5cb9f5bf7bd21645e3ee4e7677f', '[\"*\"]', NULL, '2022-07-21 10:05:22', '2022-07-21 10:05:22'),
(8, 'App\\Models\\User', 1, 'MyApp', '07c8a92aa6a7481aba310b9e0b5f0d2726c302a2448f44f902f27645ff0fd2fe', '[\"*\"]', NULL, '2022-07-21 10:06:59', '2022-07-21 10:06:59'),
(9, 'App\\Models\\User', 1, 'MyApp', '55d76324364ff722688ecbb680a9e2629ad037922eb55e72a791c5d3e899ff6c', '[\"*\"]', NULL, '2022-07-21 10:07:30', '2022-07-21 10:07:30'),
(10, 'App\\Models\\User', 1, 'MyApp', 'a144fe8bd68c93cc5abf8068559240e1ec987506ba256a8d84e541681ef8aa00', '[\"*\"]', NULL, '2022-07-21 10:07:42', '2022-07-21 10:07:42'),
(11, 'App\\Models\\User', 1, 'MyApp', '12f300ef86a46c8966c3965e7c863c0a05143dfe578470d566ad2dbc1736ea7f', '[\"*\"]', NULL, '2022-07-21 10:08:28', '2022-07-21 10:08:28'),
(12, 'App\\Models\\User', 1, 'MyApp', '804bec687d321054dcfe1a210b3ea266673eb5703e05d39dbdc854179f420db1', '[\"*\"]', NULL, '2022-07-21 10:12:49', '2022-07-21 10:12:49'),
(13, 'App\\Models\\User', 1, 'MyApp', '7ee0007974b64bcaf7ca215a961f1989ce1d8bbd61af7741b2146e329e27e500', '[\"*\"]', NULL, '2022-07-21 10:14:32', '2022-07-21 10:14:32'),
(14, 'App\\Models\\User', 1, 'MyApp', '3171b2e9b8e20dc2fe7b94c298cb51d386d96d9f3e155ace785169200851ccd3', '[\"*\"]', NULL, '2022-07-21 10:14:36', '2022-07-21 10:14:36'),
(15, 'App\\Models\\User', 1, 'MyApp', '2904232b5f6814b71da6e39ddebddc152f91c5ecf3a850a81ba42be564dc70d6', '[\"*\"]', NULL, '2022-07-21 10:16:04', '2022-07-21 10:16:04'),
(16, 'App\\Models\\User', 4, 'MyApp', '450df4fd776b435a04ca10ddb1c3b40b90642f1ad1920ea64312687f5165e623', '[\"*\"]', NULL, '2022-07-21 10:17:11', '2022-07-21 10:17:11'),
(17, 'App\\Models\\User', 1, 'MyApp', '740171654f04eb80d919cb4514a0f50802099aec461edd823dd8ae048ec7527e', '[\"*\"]', NULL, '2022-07-21 10:17:31', '2022-07-21 10:17:31'),
(18, 'App\\Models\\User', 1, 'MyApp', '1ba861ecf7b1f2f1816f9a8d614ed1c58ebdb37b852d6ab34a245a56610ec2ef', '[\"*\"]', NULL, '2022-07-21 10:18:22', '2022-07-21 10:18:22'),
(19, 'App\\Models\\User', 1, 'MyApp', '2f310d3f219fe96df8f2910148a132f39dca0c6a281ea6b228e7d75093947db0', '[\"*\"]', NULL, '2022-07-21 10:19:25', '2022-07-21 10:19:25'),
(20, 'App\\Models\\User', 1, 'MyApp', '2c8c67e7deffab07e3bb7a32772abf3e2674ba7562f727edcefed51dc3545d01', '[\"*\"]', NULL, '2022-07-21 10:19:27', '2022-07-21 10:19:27'),
(21, 'App\\Models\\User', 1, 'MyApp', 'bece0513dfab9615d315875079ade2aec112017ba8a3018d199d9b41314e0566', '[\"*\"]', NULL, '2022-07-21 10:19:43', '2022-07-21 10:19:43'),
(22, 'App\\Models\\User', 1, 'MyApp', '981adbe5c88b3cd213887ba41d46e0a9dd7400dd4235e75bb0e705008091f80b', '[\"*\"]', NULL, '2022-07-21 10:25:58', '2022-07-21 10:25:58'),
(23, 'App\\Models\\User', 1, 'MyApp', 'a574a7cccd15457e04afa83fb02414b37f5812bd5a91730fb61694863a613760', '[\"*\"]', NULL, '2022-07-21 10:39:00', '2022-07-21 10:39:00'),
(24, 'App\\Models\\User', 1, 'MyApp', '45c2a453c85e333130dd691ad50acdec98365d118c2c81ccd97025fe7d6547cd', '[\"*\"]', NULL, '2022-07-21 11:42:25', '2022-07-21 11:42:25'),
(25, 'App\\Models\\User', 1, 'MyApp', '885f1e12938d0854d487a596e408218461fb1c7e0be9b6ae3e7d1c05278349fd', '[\"*\"]', NULL, '2022-07-22 03:57:24', '2022-07-22 03:57:24'),
(26, 'App\\Models\\User', 1, 'MyApp', '6ebe3f746f8086e641a29b51ae5cce51075bea5992bb9a3702ea45a4bbe30808', '[\"*\"]', NULL, '2022-07-22 03:59:23', '2022-07-22 03:59:23'),
(27, 'App\\Models\\User', 1, 'MyApp', '06b4bfcf70f3b7d8c2a176b01d0cc2f419fdc056aebf44bc51a9d7908a1906ec', '[\"*\"]', NULL, '2022-07-22 04:13:46', '2022-07-22 04:13:46'),
(28, 'App\\Models\\User', 1, 'MyApp', '1670bc761650b1804b4a08bcf1c5c6f3d43800485530590b55beea61192fbf88', '[\"*\"]', NULL, '2022-07-22 04:55:43', '2022-07-22 04:55:43'),
(29, 'App\\Models\\User', 1, 'MyApp', '6f4aceb95a77b2142972e5d50fadf00025bd6acdd2f2bb2877777e8ee62f5c1c', '[\"*\"]', NULL, '2022-07-22 05:49:12', '2022-07-22 05:49:12'),
(30, 'App\\Models\\User', 1, 'MyApp', 'a865ac7c719e3aca6081b4a83c5342bda4f889271db52f77e26ec1e4ced98442', '[\"*\"]', NULL, '2022-07-22 20:53:21', '2022-07-22 20:53:21'),
(31, 'App\\Models\\User', 1, 'MyApp', 'bfaebb5bfd1d434940026755bbb7a64606f630cff8affa1d0623bab48e6a6bc9', '[\"*\"]', NULL, '2022-07-22 20:54:27', '2022-07-22 20:54:27'),
(32, 'App\\Models\\User', 1, 'MyApp', 'b84c538f55d082d263a9d54f9604100664935e22171327a779f8577663a753f9', '[\"*\"]', NULL, '2022-07-22 20:57:05', '2022-07-22 20:57:05'),
(33, 'App\\Models\\User', 1, 'MyApp', '080e06434e85999bb2064e65a44b6d7e141a3326207221bc9ead0c7da3fe1029', '[\"*\"]', NULL, '2022-07-22 20:57:53', '2022-07-22 20:57:53'),
(34, 'App\\Models\\User', 1, 'MyApp', 'ef3d97832bea2eddc511b413bb0fb31adccacb167c8ccdae601311af6b09f0dc', '[\"*\"]', NULL, '2022-07-22 20:58:13', '2022-07-22 20:58:13'),
(35, 'App\\Models\\User', 1, 'MyApp', 'f28010db1efbf5e1c4f8b2deaca3591a2c2a9ba5db3b2f7eab474a9bd669d2d5', '[\"*\"]', NULL, '2022-07-22 20:58:29', '2022-07-22 20:58:29'),
(36, 'App\\Models\\User', 1, 'MyApp', 'a976e4845564b7a736e9ccf1fdfba25e8b2cb9653e707723f3a9e554cf3634fd', '[\"*\"]', NULL, '2022-07-22 21:00:00', '2022-07-22 21:00:00'),
(37, 'App\\Models\\User', 1, 'MyApp', 'b45fc270895adbdc719907935813555a730881dedc85414f2564770aa29b070d', '[\"*\"]', NULL, '2022-07-22 21:02:44', '2022-07-22 21:02:44'),
(38, 'App\\Models\\User', 1, 'MyApp', '73fe6e97e0fe78fd0fbde2881169a54755f10874105cda1bc09ffb06f69f44c1', '[\"*\"]', NULL, '2022-07-22 21:03:34', '2022-07-22 21:03:34'),
(39, 'App\\Models\\User', 1, 'MyApp', '616575cd238e443a57c5f7a9117e476018f073dd2818cd8d53ac4c2ede6a7365', '[\"*\"]', NULL, '2022-07-22 21:03:40', '2022-07-22 21:03:40'),
(40, 'App\\Models\\User', 1, 'MyApp', '01ed8c65187b632489cdd5a43ac50c5b8cd55c3e11bef586ffc89c58de712e50', '[\"*\"]', NULL, '2022-07-22 21:03:59', '2022-07-22 21:03:59'),
(41, 'App\\Models\\User', 1, 'MyApp', 'd943144aa1317b7e7a1e6bb866ba5e76dcada483f5165c57c74027be44c07e1c', '[\"*\"]', NULL, '2022-07-22 21:04:16', '2022-07-22 21:04:16'),
(42, 'App\\Models\\User', 1, 'MyApp', '070408030fdb3049ea36e3f272f995da548db560c5924ccfc6bdb3f8f139697f', '[\"*\"]', NULL, '2022-07-22 21:07:10', '2022-07-22 21:07:10'),
(43, 'App\\Models\\User', 1, 'MyApp', '2ed5e2ee822ed18dcc30dbce385c950509da48feb9896aa52f84098c2187524a', '[\"*\"]', NULL, '2022-07-22 21:07:51', '2022-07-22 21:07:51'),
(44, 'App\\Models\\User', 1, 'MyApp', 'e64a3dfdb6d5c4761b6f20d1bb1a5e7f4ead1e4802b95c7b618b23cf59dced5a', '[\"*\"]', NULL, '2022-07-22 21:08:53', '2022-07-22 21:08:53'),
(45, 'App\\Models\\User', 1, 'MyApp', 'b9c6e1f785b03e9899058df025de5e9d67025c920235124884b5d569fb7f6bbf', '[\"*\"]', NULL, '2022-07-22 21:13:21', '2022-07-22 21:13:21'),
(46, 'App\\Models\\User', 1, 'MyApp', 'd793854a6bb842b182174eb7c57addfe2cba01e0d916e27548244d2cf247d141', '[\"*\"]', NULL, '2022-07-22 21:30:28', '2022-07-22 21:30:28'),
(47, 'App\\Models\\User', 1, 'MyApp', '2d0f6c391f2cd31415c092d84cfe01c3e3ec6ec31c1f60d1466501fbe1184a25', '[\"*\"]', NULL, '2022-07-22 21:30:43', '2022-07-22 21:30:43'),
(48, 'App\\Models\\User', 1, 'MyApp', '174a828eb5e4b12dd3d106a6e06f68667a62ec91b47039b1e5087bbd9bce25a7', '[\"*\"]', NULL, '2022-07-22 21:32:14', '2022-07-22 21:32:14'),
(49, 'App\\Models\\User', 1, 'MyApp', 'fc1c06acb6ee212542d5318dd7c1c4e8292b991feeba967752db6f947cedc001', '[\"*\"]', NULL, '2022-07-22 21:32:46', '2022-07-22 21:32:46'),
(50, 'App\\Models\\User', 1, 'MyApp', '4105cdd4dc17d504a2c31f274917a9123bfe6dbfe19b3c77dac4afbb55a43230', '[\"*\"]', NULL, '2022-07-22 21:36:07', '2022-07-22 21:36:07'),
(51, 'App\\Models\\User', 1, 'MyApp', 'bd167d3ea6a9902d238c1728b64995102855de0d8f777da0657d9b0d785f7846', '[\"*\"]', NULL, '2022-07-22 21:37:40', '2022-07-22 21:37:40'),
(52, 'App\\Models\\User', 1, 'MyApp', '7fbce02eeb1d18ad2377e05ad31cd1df94609437b038846e8538473907226e3c', '[\"*\"]', NULL, '2022-07-22 21:38:50', '2022-07-22 21:38:50'),
(53, 'App\\Models\\User', 1, 'MyApp', '8762f2e7799f6be9048331bcbc2d7182e99950878370f552f709dfed3d9e827e', '[\"*\"]', NULL, '2022-07-22 21:40:18', '2022-07-22 21:40:18'),
(54, 'App\\Models\\User', 1, 'MyApp', 'c970ede9ded5a69133343d3d4059f504ea6c6847f571aa1a7a80f23554f42c3a', '[\"*\"]', NULL, '2022-07-22 21:45:12', '2022-07-22 21:45:12'),
(55, 'App\\Models\\User', 1, 'MyApp', 'c67681503c72e5d41eb2a9ebf5f4fc0bf79ce137354aba094ff4de799801020c', '[\"*\"]', NULL, '2022-07-22 21:47:20', '2022-07-22 21:47:20'),
(56, 'App\\Models\\User', 1, 'MyApp', 'c95a9bbbc21ad1ba3d379c676b01e8dded97f00bed21fe70e4e41e9a845ccda9', '[\"*\"]', NULL, '2022-07-22 21:51:30', '2022-07-22 21:51:30'),
(57, 'App\\Models\\User', 1, 'MyApp', 'eb094d178dc7a31e06dede9efd0d493ffa912bdd94b4ca207e4e8c44f1ba46d5', '[\"*\"]', NULL, '2022-07-23 04:38:16', '2022-07-23 04:38:16'),
(58, 'App\\Models\\User', 1, 'MyApp', 'd224ccdd5d80ee643f3dda02fb222328dd3ac68505d0c4201ced23486ec3cc18', '[\"*\"]', NULL, '2022-07-23 04:41:22', '2022-07-23 04:41:22'),
(59, 'App\\Models\\User', 1, 'MyApp', 'b9b622f1d55ca9d8580f4cd8b267ca9d8b13a52f556cb422a263077ad7924570', '[\"*\"]', NULL, '2022-07-23 04:42:47', '2022-07-23 04:42:47'),
(60, 'App\\Models\\User', 1, 'MyApp', '464fbbc7029790cea92710ab4cbfc39b150764014ac2c70c81604f0f6d08e296', '[\"*\"]', NULL, '2022-07-23 04:49:38', '2022-07-23 04:49:38'),
(61, 'App\\Models\\User', 1, 'MyApp', '3cbd256d3c93ddc2bcdb018aa8d86bd840f4a68f35c5aa03ef5a16ba729a84dd', '[\"*\"]', NULL, '2022-07-23 05:13:47', '2022-07-23 05:13:47'),
(62, 'App\\Models\\User', 1, 'MyApp', '4dea4a9f0034e28e46c841a2467e9abcdcc54706a92f0e0e7511d372912ed5c8', '[\"*\"]', NULL, '2022-07-23 05:14:12', '2022-07-23 05:14:12'),
(63, 'App\\Models\\User', 1, 'MyApp', 'ff8eccb8bc692638243f65fdf126977feada0f169d319a9e760aecb042653256', '[\"*\"]', NULL, '2022-07-23 05:16:30', '2022-07-23 05:16:30'),
(64, 'App\\Models\\User', 1, 'MyApp', '6aac7b92a8e704e20708aaddd06c8a983298d23ce41efb620f0cc40e0146b919', '[\"*\"]', NULL, '2022-07-23 05:26:29', '2022-07-23 05:26:29'),
(65, 'App\\Models\\User', 1, 'MyApp', '78d9349305e508bc4e5e2c00cf23801135b01ad8cf1fa96c346fca9533c3b3f6', '[\"*\"]', NULL, '2022-07-23 05:38:57', '2022-07-23 05:38:57'),
(66, 'App\\Models\\User', 1, 'MyApp', '460d9c862c5418cbb7a0ac56e022c48f32c20298469f44ac61b3084cec1ad187', '[\"*\"]', NULL, '2022-07-23 05:45:06', '2022-07-23 05:45:06'),
(67, 'App\\Models\\User', 1, 'MyApp', '80b8dc5a2be9994eaacead8e3a03157b9e69a63fece38fcc464f61fa2026bb14', '[\"*\"]', NULL, '2022-07-23 06:04:17', '2022-07-23 06:04:17'),
(68, 'App\\Models\\User', 1, 'MyApp', '314471d9b3968c9ee9c5151605845dce4f78ed2610938949459157b865218fdd', '[\"*\"]', NULL, '2022-07-23 06:06:52', '2022-07-23 06:06:52'),
(69, 'App\\Models\\User', 1, 'MyApp', 'e46a4165eec842a902bc452e174e54139de7a8de77afcd36be7b586f7341e4ba', '[\"*\"]', NULL, '2022-07-23 06:09:26', '2022-07-23 06:09:26'),
(70, 'App\\Models\\User', 1, 'MyApp', '71d0ad4427e8f0286578ad4f874c2573c51f01decf9a57f0444ae40a8c7b698a', '[\"*\"]', NULL, '2022-07-23 06:12:29', '2022-07-23 06:12:29'),
(71, 'App\\Models\\User', 1, 'MyApp', '653df87f7fe00c9b626c999c6e9b202333c999d4c11166f41c3f5a38d46547e9', '[\"*\"]', NULL, '2022-07-23 06:13:50', '2022-07-23 06:13:50'),
(72, 'App\\Models\\User', 1, 'MyApp', 'fbc6bd3fbd2c855c24e97e53e313f9a9dc38e9a81abea2cc309e1a7c1d8fd8fc', '[\"*\"]', NULL, '2022-07-23 06:15:01', '2022-07-23 06:15:01'),
(73, 'App\\Models\\User', 1, 'MyApp', 'e00249ff8db6d618b999cb3ff8aadf3adf7155b9b3ea983eadb3ef1252f5fab5', '[\"*\"]', NULL, '2022-07-23 06:15:26', '2022-07-23 06:15:26'),
(74, 'App\\Models\\User', 1, 'MyApp', '0b0b1b93ca83a927a672b4ab5730482a76c277b7057575ceed12b1ce20606e56', '[\"*\"]', NULL, '2022-07-23 06:16:19', '2022-07-23 06:16:19'),
(75, 'App\\Models\\User', 1, 'MyApp', '55f4ab2b32255e58e4d8b48b879d3024a25fe102861c118f3c2714946ab560ae', '[\"*\"]', NULL, '2022-07-23 06:18:10', '2022-07-23 06:18:10'),
(76, 'App\\Models\\User', 1, 'MyApp', 'a4219f3402455b273bd638e5ea9744498f1705718068647a6c9b30f875e23100', '[\"*\"]', NULL, '2022-07-23 06:21:19', '2022-07-23 06:21:19'),
(77, 'App\\Models\\User', 1, 'MyApp', 'e5f069a43a2dbdffb517ddb1ce55685061c5d9d58660c18e28da8951c1348e9b', '[\"*\"]', NULL, '2022-07-23 07:24:56', '2022-07-23 07:24:56'),
(78, 'App\\Models\\User', 1, 'MyApp', 'd90e7cd899c259c518cdb7eedb857f3db70ea0d87b79069dbcab9f38a5add6a9', '[\"*\"]', NULL, '2022-07-23 07:37:08', '2022-07-23 07:37:08'),
(79, 'App\\Models\\User', 1, 'MyApp', '7580cfbb703db05fa9664095075ab8dbb9f04a71be1855dd1a16425cee0099ee', '[\"*\"]', NULL, '2022-07-23 07:39:11', '2022-07-23 07:39:11'),
(80, 'App\\Models\\User', 1, 'MyApp', 'c956afc8841962e628206478e7b441a77668c2cd072527735989d4ad53359fc6', '[\"*\"]', NULL, '2022-07-23 07:39:55', '2022-07-23 07:39:55'),
(81, 'App\\Models\\User', 1, 'MyApp', 'b876f9bc131a8be14f0a0933f6db65e0d3376b26457d4ca6fa1e281c680db4a5', '[\"*\"]', NULL, '2022-07-23 07:40:24', '2022-07-23 07:40:24'),
(82, 'App\\Models\\User', 1, 'MyApp', 'e44a1f7d89dd8a9146cf90d3023707928dda535ccd2838e56b26354671585142', '[\"*\"]', NULL, '2022-07-23 07:41:05', '2022-07-23 07:41:05'),
(83, 'App\\Models\\User', 1, 'MyApp', '9782fabd6f2b98ac90a92df439b565e616e77cfb630566bd682bfb266cb2d4ee', '[\"*\"]', NULL, '2022-07-23 07:48:25', '2022-07-23 07:48:25'),
(84, 'App\\Models\\User', 4, 'MyApp', '2feb5201877cbe72505931f14d1a2ffe2bf7d2e92aef76bbeb020c26d937b4c6', '[\"*\"]', NULL, '2022-07-23 07:49:52', '2022-07-23 07:49:52'),
(85, 'App\\Models\\User', 1, 'MyApp', 'c58ebc29da3dbd74f805ba6345e4edf88e93d741d50dd1411be424c78d9882d1', '[\"*\"]', NULL, '2022-07-23 07:50:05', '2022-07-23 07:50:05'),
(86, 'App\\Models\\User', 1, 'MyApp', '30503ca8e9d2071240d405008860382ad218c6001cef2937e55e16341856fa6c', '[\"*\"]', NULL, '2022-07-23 07:50:37', '2022-07-23 07:50:37'),
(87, 'App\\Models\\User', 1, 'MyApp', 'bd9759b421277a2b9a8b471d49ce1238e03db81d758e9950cd46d10161f63471', '[\"*\"]', NULL, '2022-07-23 07:51:31', '2022-07-23 07:51:31'),
(88, 'App\\Models\\User', 1, 'MyApp', '0dbe38a78ebfafd24f867e1c43d93af8f03402cfe1f6813332f7f69a9f9f174b', '[\"*\"]', NULL, '2022-07-23 07:52:15', '2022-07-23 07:52:15'),
(89, 'App\\Models\\User', 1, 'MyApp', '5d60a27e655db70b13037f871d07157251ae88ed6939945bd700e9886c7d320b', '[\"*\"]', NULL, '2022-07-23 07:52:53', '2022-07-23 07:52:53'),
(90, 'App\\Models\\User', 1, 'MyApp', 'd7a056b86e6827a0720fc9b6b73437bd76178268cb6ec924c5c18a2f1a4b44b2', '[\"*\"]', NULL, '2022-07-23 07:54:56', '2022-07-23 07:54:56'),
(91, 'App\\Models\\User', 1, 'MyApp', 'ea9641ed8fa4b4f66ddf166ff8287ced9104a4160c02d9fee1b660724e2421fd', '[\"*\"]', NULL, '2022-07-23 07:57:08', '2022-07-23 07:57:08'),
(92, 'App\\Models\\User', 1, 'MyApp', '92274e95208fd7c7d8157f9aae209406a2aec2847fbd2b90eac86e5d310e4df7', '[\"*\"]', NULL, '2022-07-23 07:58:00', '2022-07-23 07:58:00'),
(93, 'App\\Models\\User', 1, 'MyApp', 'aa4f2a824b7c1a8a7e864417ca2aa1f43c602ba5d409b181eb08c745e8c14817', '[\"*\"]', NULL, '2022-07-23 07:59:10', '2022-07-23 07:59:10'),
(94, 'App\\Models\\User', 1, 'MyApp', 'cef94383e857ac5c4f4acd0b4c7988bb810c5fc00b3ce5756261ef96e73ce906', '[\"*\"]', NULL, '2022-07-23 07:59:31', '2022-07-23 07:59:31'),
(95, 'App\\Models\\User', 1, 'MyApp', '504da2cf2404df091a8e80eb905300c0ced58d8d44f9c47ffbadad65210f9574', '[\"*\"]', NULL, '2022-07-23 08:00:37', '2022-07-23 08:00:37'),
(96, 'App\\Models\\User', 1, 'MyApp', 'a70d07b00c5db6c8d0a9162e497dc6031e11fe265784017c8d81b02b85220630', '[\"*\"]', NULL, '2022-07-23 08:00:56', '2022-07-23 08:00:56'),
(97, 'App\\Models\\User', 1, 'MyApp', 'd3ca4826be764e44283771d43426033d3f5b687885a1a77beb0d512039237e97', '[\"*\"]', NULL, '2022-07-23 08:01:59', '2022-07-23 08:01:59'),
(98, 'App\\Models\\User', 1, 'MyApp', '6d8d3ca5da669fdc0b0b572e595bdfb55b5ebd461bb3a59498e0fd2dc7ba3618', '[\"*\"]', NULL, '2022-07-23 08:08:30', '2022-07-23 08:08:30'),
(99, 'App\\Models\\User', 1, 'MyApp', '51ce489e373b9c390ade1f5de222c0f3699a35b44bdfaa33ce2e91e07050d5f5', '[\"*\"]', NULL, '2022-07-23 08:10:20', '2022-07-23 08:10:20'),
(100, 'App\\Models\\User', 1, 'MyApp', '4410334ffc9c37ec02aca153b08779b03b675dac1a9135245233e801f0677db3', '[\"*\"]', NULL, '2022-07-23 08:19:32', '2022-07-23 08:19:32'),
(101, 'App\\Models\\User', 1, 'MyApp', '55c9cd585170720a635ac9ba1f094d2a062d73469015a95c834364510c10c730', '[\"*\"]', NULL, '2022-07-23 08:23:10', '2022-07-23 08:23:10'),
(102, 'App\\Models\\User', 1, 'MyApp', '8a17b1775cf68d450a572f07d0342a5aa20a88a1829f7ca553413c5253ac38ca', '[\"*\"]', NULL, '2022-07-23 08:24:45', '2022-07-23 08:24:45'),
(103, 'App\\Models\\User', 1, 'MyApp', 'a2c6865257cac5149867e6e22bd546bd0c6fb23d814f068bd30992e961d396bd', '[\"*\"]', NULL, '2022-07-23 08:30:45', '2022-07-23 08:30:45'),
(104, 'App\\Models\\User', 1, 'MyApp', 'b0d17f021e19ed870964bc5f89ae6904aeddd6393d396845cfd1765a427c2a1b', '[\"*\"]', NULL, '2022-07-23 09:05:26', '2022-07-23 09:05:26'),
(105, 'App\\Models\\User', 1, 'MyApp', 'ba0a4a3ae1542047f579e31d1ed8d238623651489d894138ecf1a58955ede8f0', '[\"*\"]', NULL, '2022-07-23 09:24:35', '2022-07-23 09:24:35'),
(106, 'App\\Models\\User', 1, 'MyApp', '88aa5bdbbe813d4c8d682900f955ed51ebcc323750698d641ff6c6cc76aece1f', '[\"*\"]', NULL, '2022-07-23 10:27:38', '2022-07-23 10:27:38'),
(107, 'App\\Models\\User', 1, 'MyApp', '089e15389b79bfb2fd185e06591fac32ef85e46fe729b75caf6e59cfa06e1c9f', '[\"*\"]', NULL, '2022-07-23 10:32:38', '2022-07-23 10:32:38'),
(108, 'App\\Models\\User', 1, 'MyApp', 'd4122f143c197f00199228c03b3bc61503409fb97830b25cf8ecf057dbd225b2', '[\"*\"]', NULL, '2022-07-23 10:49:51', '2022-07-23 10:49:51'),
(109, 'App\\Models\\User', 1, 'MyApp', '6b579345daf550e8e34416cbf66303b4778ce136dd156df488de363eb7136ccb', '[\"*\"]', NULL, '2022-07-23 10:55:39', '2022-07-23 10:55:39'),
(110, 'App\\Models\\User', 1, 'MyApp', '5b3d7b1b6da31ab1c6a94c7515a87030e3d11c5fc894fb7587354cd3b4a80a1a', '[\"*\"]', NULL, '2022-07-23 11:05:04', '2022-07-23 11:05:04'),
(111, 'App\\Models\\User', 1, 'MyApp', 'a9fa7bcbc893f5af8bdebc7838f9f5b2c6ef73ad4ef439b8c4d3408d46a6d190', '[\"*\"]', NULL, '2022-07-23 11:06:17', '2022-07-23 11:06:17'),
(112, 'App\\Models\\User', 1, 'MyApp', '6a2f376250afd2ba96cfd2bd8a8d4863141968220f9e44063f2c6a1f2930b438', '[\"*\"]', NULL, '2022-07-23 11:10:39', '2022-07-23 11:10:39'),
(113, 'App\\Models\\User', 1, 'MyApp', 'd45d4ddfa2da1fbe64ec8d6e2f40aade7846974713345cc04d25dc558460c293', '[\"*\"]', NULL, '2022-07-23 11:29:41', '2022-07-23 11:29:41'),
(114, 'App\\Models\\User', 1, 'MyApp', '850a7d3ac5c4c17b5341057ab6faf9a1a9f591e7d011d5442a7bef9bb4b086ab', '[\"*\"]', NULL, '2022-07-23 11:30:19', '2022-07-23 11:30:19'),
(115, 'App\\Models\\User', 1, 'MyApp', '4b9bd7c29d66cc8779b6161930cbc7165166be54b51f57dc5ddc8fb717ce7231', '[\"*\"]', NULL, '2022-07-23 11:30:29', '2022-07-23 11:30:29'),
(116, 'App\\Models\\User', 1, 'MyApp', '5aa226fd409a2444909060590997d025dfd45556e8e8cebfa95b97a13857b493', '[\"*\"]', NULL, '2022-07-23 11:31:11', '2022-07-23 11:31:11'),
(117, 'App\\Models\\User', 1, 'MyApp', 'e473fe78e54cb714838aa5b50c2784a760fa349ace08b3529db4b4be921a0187', '[\"*\"]', NULL, '2022-07-23 12:41:34', '2022-07-23 12:41:34'),
(118, 'App\\Models\\User', 1, 'MyApp', 'b9e4ec12a876fd23bfece4911354a30ab5196098eb7baeb11d8edc6c05c477f8', '[\"*\"]', NULL, '2022-07-23 12:41:56', '2022-07-23 12:41:56'),
(119, 'App\\Models\\User', 4, 'MyApp', 'ea14056fbd85e8bd43d38b6df9d2326ccef7bc4b2ba1ae2e0b3c7193164519fd', '[\"*\"]', NULL, '2022-07-23 12:51:09', '2022-07-23 12:51:09'),
(120, 'App\\Models\\User', 1, 'MyApp', '1cac6631a35f4d6d338005f3b343998d023313d47dfc355cc208ea80de663eb4', '[\"*\"]', NULL, '2022-07-23 13:25:46', '2022-07-23 13:25:46'),
(121, 'App\\Models\\User', 1, 'MyApp', '1319a1b65eeb36fc439d9b28e7a1bac2b26d4ad3d535b6875c26e6d8121eb110', '[\"*\"]', NULL, '2022-07-24 07:48:32', '2022-07-24 07:48:32'),
(122, 'App\\Models\\User', 1, 'MyApp', '0b1308ecf733b89b1145a2a61fcbecb6c6097afe43a273f920ec5c48f583292b', '[\"*\"]', NULL, '2022-07-24 07:52:55', '2022-07-24 07:52:55'),
(123, 'App\\Models\\User', 1, 'MyApp', '57b0b95d5ff71211bdc4b3a10812516caab5b4f108f69224a07cee4cb689bb21', '[\"*\"]', NULL, '2022-07-25 06:32:18', '2022-07-25 06:32:18'),
(124, 'App\\Models\\User', 4, 'MyApp', '860c40847fc6632c3724c7b132b46505beeb62dfeedf229c6b30243264fec619', '[\"*\"]', NULL, '2022-07-25 07:19:09', '2022-07-25 07:19:09'),
(125, 'App\\Models\\User', 4, 'MyApp', 'c9011d93b9801695744d2b5f8bbb510133aa58019a8b0d422bbe7329b58ea939', '[\"*\"]', '2022-07-31 05:18:53', '2022-07-25 07:19:15', '2022-07-31 05:18:53'),
(126, 'App\\Models\\User', 4, 'MyApp', '02c70f37ce4238927d1eae7163b2c70a0d0dac11567f5d8e9b8a08bab0bbc5dd', '[\"*\"]', '2022-07-26 06:13:51', '2022-07-25 20:52:37', '2022-07-26 06:13:51'),
(127, 'App\\Models\\User', 4, 'MyApp', 'fb2f73d18e89641878b7cf115ba5694a919b3eff83ef770e75bf7c23a69cd879', '[\"*\"]', '2022-10-12 10:10:55', '2022-07-26 07:02:38', '2022-10-12 10:10:55'),
(128, 'App\\Models\\User', 1, 'MyApp', '78a7a442bf2ee2898d82d75cfb8f7dadf975f4b5ebb3093cde3d8e4ef1480cb5', '[\"*\"]', NULL, '2022-07-27 06:25:44', '2022-07-27 06:25:44'),
(129, 'App\\Models\\User', 1, 'MyApp', 'd84478015fb2060ea7dff9b8880e459caba44e60c0c07eb73bd479f5a6c19f1a', '[\"*\"]', NULL, '2022-07-27 08:44:57', '2022-07-27 08:44:57'),
(130, 'App\\Models\\User', 4, 'MyApp', '0de6bbef822b98ce4750d40b27adf8d2447aaae26054f2ea5f0ff45aa8c28bab', '[\"*\"]', '2022-07-29 07:34:43', '2022-07-27 09:41:09', '2022-07-29 07:34:43'),
(131, 'App\\Models\\User', 1, 'MyApp', '209c5769a743bfa2a2cb2249fa7c1015bc459c60f89c40d4d08228ecd85dfa81', '[\"*\"]', NULL, '2022-07-28 08:42:50', '2022-07-28 08:42:50'),
(132, 'App\\Models\\User', 4, 'MyApp', 'c99469e315e0c30c6ab8defe2cc3bd400e9174af2bab2fc6b70125d4fd06f63f', '[\"*\"]', NULL, '2022-07-28 09:57:49', '2022-07-28 09:57:49'),
(133, 'App\\Models\\User', 5, 'MyApp', '9180e7edbc82255f9a75ed1f5cc2d2c888bec1a5bf9a22fd894f9073f06e17c3', '[\"*\"]', NULL, '2022-07-29 11:01:17', '2022-07-29 11:01:17'),
(134, 'App\\Models\\User', 1, 'MyApp', '6735d5335f4eb70ee18ab09f787c689aea5f43243d0c71581b329bb40c0eb062', '[\"*\"]', '2022-07-31 05:28:06', '2022-07-31 05:26:50', '2022-07-31 05:28:06'),
(135, 'App\\Models\\User', 1, 'MyApp', 'f4634ed786aa6fd7faed9a384171bad4a3bb51b4b4bbc19a9e649bfab411a3a3', '[\"*\"]', '2022-08-01 01:32:18', '2022-07-31 05:40:04', '2022-08-01 01:32:18'),
(136, 'App\\Models\\User', 1, 'MyApp', 'cee65ebc7f502c57c3529b19ef56ed5afc77e18616eeddfdc56b579bc0a7752e', '[\"*\"]', '2022-08-01 07:56:33', '2022-08-01 05:40:47', '2022-08-01 07:56:33'),
(137, 'App\\Models\\User', 1, 'MyApp', 'c04ab89282c019424a7f88ffd3976bf0bfa309a32b00d2ab0c8659d2dc0fe672', '[\"*\"]', '2022-08-03 14:33:48', '2022-08-01 07:56:38', '2022-08-03 14:33:48'),
(138, 'App\\Models\\User', 1, 'MyApp', 'af87b702906e3c753699cc65bcea1566f556cd3a13b6b487d8d9c8440b6bc813', '[\"*\"]', NULL, '2022-08-01 14:16:48', '2022-08-01 14:16:48'),
(139, 'App\\Models\\User', 1, 'MyApp', '21c5225c1cf8360459a5856798f360d5978bc5be7e0a479fe40b12e8a3508b74', '[\"*\"]', NULL, '2022-08-01 14:40:29', '2022-08-01 14:40:29'),
(140, 'App\\Models\\User', 1, 'MyApp', '6489c4c0c2a55a666859012de7234117b608bee25942d105f4f0c59919a7e878', '[\"*\"]', NULL, '2022-08-01 18:49:12', '2022-08-01 18:49:12'),
(141, 'App\\Models\\User', 1, 'MyApp', 'c102666e2e36bb44cc8abd00942531d9303f99cd657ab7c05a00fd3f635e9f11', '[\"*\"]', NULL, '2022-08-01 21:49:29', '2022-08-01 21:49:29'),
(142, 'App\\Models\\User', 1, 'MyApp', '1e9d092feb39ce74c6eddec34b91896940176a65c884cc828e8697bf2148928d', '[\"*\"]', NULL, '2022-08-02 05:40:58', '2022-08-02 05:40:58'),
(143, 'App\\Models\\User', 1, 'MyApp', 'e076617b8fd8b6b53c2b183b70f7df79387fde7fd8fafa949c9c61e5f21c6435', '[\"*\"]', NULL, '2022-08-02 08:44:45', '2022-08-02 08:44:45'),
(144, 'App\\Models\\User', 1, 'MyApp', '989332e43751af40907d0b5624c74ac8af869a54ad8ebd558c82d704af2c621a', '[\"*\"]', NULL, '2022-08-02 09:28:56', '2022-08-02 09:28:56'),
(145, 'App\\Models\\User', 1, 'MyApp', '539a97eac48a3010cb6dd28ff38b66a6074adac283e6718c9d21e1da415153d3', '[\"*\"]', NULL, '2022-08-02 09:35:46', '2022-08-02 09:35:46'),
(146, 'App\\Models\\User', 1, 'MyApp', '5d0c10e596d41affa4b2c7ea169b83ce8348094c21de7dce59734276bd47a35b', '[\"*\"]', NULL, '2022-08-02 10:48:14', '2022-08-02 10:48:14'),
(147, 'App\\Models\\User', 1, 'MyApp', '7936b0e3759f76ef2a7fafa85ccdabdc353def0c52c8cf54a04ad8307b41035e', '[\"*\"]', NULL, '2022-08-04 06:54:53', '2022-08-04 06:54:53'),
(148, 'App\\Models\\User', 1, 'MyApp', 'def3207a0464856ed8373ca7389a1e3abefff25b065e416e2dbbd53f88b1fd9a', '[\"*\"]', NULL, '2022-08-05 06:10:32', '2022-08-05 06:10:32'),
(149, 'App\\Models\\User', 1, 'MyApp', '42f170b57deec8de9ca5686c14c6a722c63f68075c7a289fc619a73f356fb559', '[\"*\"]', NULL, '2022-08-11 06:56:36', '2022-08-11 06:56:36'),
(150, 'App\\Models\\User', 1, 'MyApp', '7cd2f44df3466b3a63bc50e8b268031d45ca9fcbf4f55133c7baa7bdc9a2ca36', '[\"*\"]', NULL, '2022-08-11 10:22:10', '2022-08-11 10:22:10'),
(151, 'App\\Models\\User', 1, 'MyApp', '4392f91fb0a5ab242057580356f6c2ed6ac02801d3809fc9346765b4758d12c5', '[\"*\"]', NULL, '2022-08-12 05:54:25', '2022-08-12 05:54:25'),
(152, 'App\\Models\\User', 1, 'MyApp', '8ae0df9f300fa0d39b16c5690494b714915ffc42b3455448078c4ddea33bc56b', '[\"*\"]', NULL, '2022-08-12 06:22:45', '2022-08-12 06:22:45'),
(153, 'App\\Models\\User', 1, 'MyApp', '485a6043360780dfbc3ce68c77cbf9990e142c00659f6fdfdcfb8f31a2f5068d', '[\"*\"]', NULL, '2022-08-12 12:05:12', '2022-08-12 12:05:12'),
(154, 'App\\Models\\User', 1, 'MyApp', 'c45ddf31c15ceabab36eb6511883694316488562f630c351ab51097a4e7b8be3', '[\"*\"]', NULL, '2022-08-15 09:49:51', '2022-08-15 09:49:51'),
(155, 'App\\Models\\User', 1, 'MyApp', '45a1d4554306be0e58af2d5be09f738c60b8d8afd44d0c6da37a6fca40c7ed34', '[\"*\"]', NULL, '2022-08-15 11:58:27', '2022-08-15 11:58:27'),
(156, 'App\\Models\\User', 1, 'MyApp', '5943604fd3be39d9214451acb4502dcb5e0162020679f98a29dc828accfc2000', '[\"*\"]', NULL, '2022-08-16 09:39:34', '2022-08-16 09:39:34'),
(157, 'App\\Models\\User', 1, 'MyApp', '439d846624b10b24cd0a094d9606e3965e5d8bee9441bae462a18d649854f68b', '[\"*\"]', NULL, '2022-08-17 06:07:57', '2022-08-17 06:07:57'),
(158, 'App\\Models\\User', 1, 'MyApp', 'ae0b633063275fdec6fdfa294fba445f8f6e25629ad2fe6a9432b4234d8d51ff', '[\"*\"]', NULL, '2022-08-18 07:25:06', '2022-08-18 07:25:06'),
(159, 'App\\Models\\User', 1, 'MyApp', '5c407a6f320b5922f65d6f536c1e0fc28c35a2d701a85d8356fa30a5b5ade7ea', '[\"*\"]', NULL, '2022-08-18 10:08:47', '2022-08-18 10:08:47'),
(160, 'App\\Models\\User', 1, 'MyApp', 'f1e86b0844f01bc5b6d2e42a3824537faf0cf1b8d81ff9c623b88b557fd3caa4', '[\"*\"]', NULL, '2022-08-18 13:49:07', '2022-08-18 13:49:07'),
(161, 'App\\Models\\User', 1, 'MyApp', '6c873994be0d0e12146ae8ac93ecedab38af961850d1d7a4bb2b0e436788cb20', '[\"*\"]', NULL, '2022-08-18 19:21:50', '2022-08-18 19:21:50'),
(162, 'App\\Models\\User', 1, 'MyApp', '11d3e431242997502fc99ed3e3c8c39545158833685e4951cd247284feab8854', '[\"*\"]', NULL, '2022-08-19 06:15:05', '2022-08-19 06:15:05'),
(163, 'App\\Models\\User', 1, 'MyApp', 'c08746eb80ace576156ed8e95a36f231e5bea0a3cd7a88d6e3f091a92c861c9e', '[\"*\"]', NULL, '2022-08-19 13:16:21', '2022-08-19 13:16:21'),
(164, 'App\\Models\\User', 1, 'MyApp', '17404e6513be19d991358d127480804a004857d469413730ab4a75bbf7ae8700', '[\"*\"]', NULL, '2022-08-20 01:58:06', '2022-08-20 01:58:06'),
(165, 'App\\Models\\User', 1, 'MyApp', 'a8b741338d3a1a47f7c473ef55a78b7c7a39f671d69dc6c4ee449eff698a1fb9', '[\"*\"]', NULL, '2022-08-20 04:34:10', '2022-08-20 04:34:10'),
(166, 'App\\Models\\User', 1, 'MyApp', '4ee8f6bd1d70cf879244cf8d533f1b86b82560c1c6a4dc3e673e9df5eb7079bc', '[\"*\"]', NULL, '2022-08-21 05:28:37', '2022-08-21 05:28:37'),
(167, 'App\\Models\\User', 1, 'MyApp', '510f16dc2f614408346a0ccf175bfa8a555c4b9c77ce830ef38f9fe69b8cf068', '[\"*\"]', NULL, '2022-08-21 13:40:51', '2022-08-21 13:40:51'),
(168, 'App\\Models\\User', 1, 'MyApp', '55b41f45475daab63d08d0866fe8c377d629f393b905b7d690b6e829ad63041d', '[\"*\"]', NULL, '2022-08-22 00:02:15', '2022-08-22 00:02:15'),
(169, 'App\\Models\\User', 1, 'MyApp', '599bdf510cd49a0aaeed3561f1d28064eaeac7c83d89484dfbe9e1d7fa895142', '[\"*\"]', NULL, '2022-08-22 03:15:25', '2022-08-22 03:15:25'),
(170, 'App\\Models\\User', 1, 'MyApp', '45d184c7d497eb601df6cb118e2ddc59207b36fd633d75064440afbd82d6c1c2', '[\"*\"]', NULL, '2022-08-22 10:50:47', '2022-08-22 10:50:47'),
(171, 'App\\Models\\User', 1, 'MyApp', '8e8c55904d9b33a7966dfc9561e828eccfa262adc00ef860badcc5ab858be045', '[\"*\"]', NULL, '2022-08-22 10:53:25', '2022-08-22 10:53:25'),
(172, 'App\\Models\\User', 1, 'MyApp', 'f3401a334421e060bdd6e516339d333ba4f89697d428b8a8aba127c8deeb27cd', '[\"*\"]', NULL, '2022-08-22 11:43:29', '2022-08-22 11:43:29'),
(173, 'App\\Models\\User', 1, 'MyApp', 'e11f227e97312926e9a5549689ebf58f686d020deb4028334d4409837c59c42d', '[\"*\"]', NULL, '2022-08-22 12:54:52', '2022-08-22 12:54:52'),
(174, 'App\\Models\\User', 1, 'MyApp', '4e544179acbd729d70b3f0946fd1a556378cb11b60232dfc23e6ecfc97c82c1c', '[\"*\"]', NULL, '2022-08-22 13:20:50', '2022-08-22 13:20:50'),
(175, 'App\\Models\\User', 1, 'MyApp', '64ac90d48367714a97f1ba2cb952d9a1ebe9515029a6a7c4bbe652a1309ba404', '[\"*\"]', NULL, '2022-08-22 13:35:00', '2022-08-22 13:35:00'),
(176, 'App\\Models\\User', 1, 'MyApp', '8358b4d36833636cab30802f8f681a499a85cc0849c04478424276073249a57d', '[\"*\"]', NULL, '2022-08-23 00:09:29', '2022-08-23 00:09:29'),
(177, 'App\\Models\\User', 1, 'MyApp', 'e21e979eebe1aa1b1ce4d92f905368a6f8534ef06f822781948d0d138002ce05', '[\"*\"]', NULL, '2022-08-23 06:11:50', '2022-08-23 06:11:50'),
(178, 'App\\Models\\User', 1, 'MyApp', '7398a22889ff87eef92268ef18459229d586940435b1c117fb27762d36e78eca', '[\"*\"]', NULL, '2022-08-23 10:06:39', '2022-08-23 10:06:39'),
(179, 'App\\Models\\User', 1, 'MyApp', 'fcdd3f154686cdb91adb88fa219494b8d1e74703cccbd922b4fda06b3766bd01', '[\"*\"]', NULL, '2022-08-25 06:56:49', '2022-08-25 06:56:49'),
(180, 'App\\Models\\User', 1, 'MyApp', 'f5734602dc49ae43294dafe4010aaa0d767fa57ac59f31ed4fdbff6cd0909a01', '[\"*\"]', NULL, '2022-08-26 09:07:03', '2022-08-26 09:07:03'),
(181, 'App\\Models\\User', 1, 'MyApp', '0c4add8f6ef1f3b3534c744d0395cc40d90851861b50589306dddbea1c414f75', '[\"*\"]', NULL, '2022-08-29 09:15:13', '2022-08-29 09:15:13'),
(182, 'App\\Models\\User', 1, 'MyApp', 'f1174665227d17d0ea3f2cc7caa4c4fb0ade0e1ec2dd7b53830dd5122a16b095', '[\"*\"]', NULL, '2022-08-30 06:57:00', '2022-08-30 06:57:00'),
(183, 'App\\Models\\User', 1, 'MyApp', 'e77cf6fa283d3f6b0d48268c4719000a13a9ecbb8b2e598e513a4a7ed10d39c9', '[\"*\"]', NULL, '2022-08-30 10:48:52', '2022-08-30 10:48:52'),
(184, 'App\\Models\\User', 1, 'MyApp', '7db158768a0c9537bc1be9b8c076c50247d828a76feefe018f80afd4d4479a1d', '[\"*\"]', NULL, '2022-08-31 02:13:40', '2022-08-31 02:13:40'),
(185, 'App\\Models\\User', 1, 'MyApp', '5914e9348e574dce2abe64ce83534dd2cf3c38af755f01296d936ba973e3f7ec', '[\"*\"]', NULL, '2022-08-31 05:56:49', '2022-08-31 05:56:49'),
(186, 'App\\Models\\User', 1, 'MyApp', '088c741c4f60276de18d0d580a38b57f75fa360ddc2356153d242b6e2b5cf938', '[\"*\"]', NULL, '2022-08-31 12:35:24', '2022-08-31 12:35:24'),
(187, 'App\\Models\\User', 1, 'MyApp', '45180039e2d7c5fce5e2eef1c70d8b28bba37cf447053da0d58db011ac617267', '[\"*\"]', NULL, '2022-09-01 00:40:38', '2022-09-01 00:40:38'),
(188, 'App\\Models\\User', 1, 'MyApp', '71f085560b7529f69bd8cdcb846e8a62e67394c6fe77b0dbc3c17dc5040394e0', '[\"*\"]', NULL, '2022-09-01 05:38:47', '2022-09-01 05:38:47'),
(189, 'App\\Models\\User', 1, 'MyApp', 'f556e6047e37fe8cd979283ac4dc6476261877d30e829d43f81dd7be4ec8161b', '[\"*\"]', NULL, '2022-09-01 09:47:04', '2022-09-01 09:47:04'),
(190, 'App\\Models\\User', 1, 'MyApp', 'dda48dc990fca276ec9b7af425771c61efcfd8f12ce1b535137cbfbfb6d0aceb', '[\"*\"]', NULL, '2022-09-05 05:42:15', '2022-09-05 05:42:15'),
(191, 'App\\Models\\User', 1, 'MyApp', 'a8e704a37b57a99709bf6b51912145149020ce93607187c7be01e3d148a0664f', '[\"*\"]', NULL, '2022-09-20 14:51:13', '2022-09-20 14:51:13'),
(192, 'App\\Models\\User', 1, 'MyApp', 'a4280e90dc57cf413f7aa5b2dc4b114711a1f96b95a652f38c62530506ac827a', '[\"*\"]', NULL, '2022-09-20 15:18:12', '2022-09-20 15:18:12'),
(193, 'App\\Models\\User', 1, 'MyApp', '29d6c029080474405f5118deae2f21f736db4f81e1904b062d8c683432500dc5', '[\"*\"]', NULL, '2022-09-21 15:36:30', '2022-09-21 15:36:30'),
(194, 'App\\Models\\User', 1, 'MyApp', '58034b77b0fd0cbdfcbf42e854968f6569206a4641f10a24586897b365f27452', '[\"*\"]', NULL, '2022-09-23 11:13:31', '2022-09-23 11:13:31'),
(195, 'App\\Models\\User', 1, 'MyApp', '20121f439961a72ebd86edd2cc530861bbfc18a321150a5abaf01183d8fac58b', '[\"*\"]', NULL, '2022-10-08 09:24:14', '2022-10-08 09:24:14'),
(196, 'App\\Models\\User', 1, 'MyApp', 'de2cf2674d77675109b51ee3ac0312e1f16386cce46b9e92d7ae59173ee2ac43', '[\"*\"]', NULL, '2022-10-08 09:56:17', '2022-10-08 09:56:17'),
(197, 'App\\Models\\User', 1, 'MyApp', 'b96dc87c81e882226b45f7975252073c0dde40c73dc2a897dc3f6e2e67f8f4d0', '[\"*\"]', '2022-10-09 16:48:21', '2022-10-08 19:06:52', '2022-10-09 16:48:21'),
(198, 'App\\Models\\User', 1, 'MyApp', 'f4a2e7a59d26a82dbcd1f70f4cafe1d17906f59ac5925eb1162cf6ec1fb2b496', '[\"*\"]', NULL, '2022-10-08 20:58:01', '2022-10-08 20:58:01'),
(199, 'App\\Models\\User', 1, 'MyApp', '3b30fae386eed37a9bc4ebb1c2017dda2236e2185de60a1e6b84e1b50b947a5f', '[\"*\"]', NULL, '2022-10-08 21:01:32', '2022-10-08 21:01:32'),
(200, 'App\\Models\\User', 1, 'MyApp', '198795debd68f79945f397a629d0d60467f39faa44d870ec5a6fb6fe135a8e28', '[\"*\"]', NULL, '2022-10-08 21:03:12', '2022-10-08 21:03:12'),
(201, 'App\\Models\\User', 1, 'MyApp', 'bf7d077ae012dcfe0b075afe130cfefe2c03c23c9bab1e8ee2e9ca677c1c95c6', '[\"*\"]', NULL, '2022-10-08 21:06:17', '2022-10-08 21:06:17'),
(202, 'App\\Models\\User', 1, 'MyApp', '659e400302cc8c09a4ced06178f3b9a9651cc7b9d375a81133c73fecc45a23ab', '[\"*\"]', '2022-10-14 09:41:45', '2022-10-11 11:21:54', '2022-10-14 09:41:45'),
(203, 'App\\Models\\User', 1, 'MyApp', '901ea42b78d50273b41ca0c57e4fe571db41e32511b40f7abf3f8717caf259f7', '[\"*\"]', NULL, '2022-10-12 10:17:36', '2022-10-12 10:17:36'),
(204, 'App\\Models\\User', 1, 'MyApp', '3717a12077685d4ca100dc855f9d14694b8f48ec0cf7c15a3a055e759c4eea50', '[\"*\"]', NULL, '2022-10-12 12:23:55', '2022-10-12 12:23:55'),
(205, 'App\\Models\\User', 1, 'MyApp', '2c596a8d7030c7c0b815430ec436ceb8a79e30137469252d4192e93ceb74b2e5', '[\"*\"]', NULL, '2022-10-13 06:26:08', '2022-10-13 06:26:08'),
(206, 'App\\Models\\User', 1, 'MyApp', 'a4be884bccaabe7f3176db8f5346d23282f18de1b17141d1f2c6911803726fd0', '[\"*\"]', NULL, '2022-10-13 10:24:31', '2022-10-13 10:24:31'),
(207, 'App\\Models\\User', 1, 'MyApp', 'd79cd9aacf00f9adfbd8846395efd6b7736e0dbe352bbaa9f2b7580543c87ea6', '[\"*\"]', '2022-11-08 05:27:49', '2022-10-13 13:16:40', '2022-11-08 05:27:49'),
(208, 'App\\Models\\User', 6, 'MyApp', '08d11c9039563de93229134962bafc307a58f3de75caae23bdfab06f88a98eb0', '[\"*\"]', NULL, '2022-10-16 00:26:34', '2022-10-16 00:26:34'),
(209, 'App\\Models\\User', 6, 'MyApp', 'f4e35254246468a402bc07a5b4baa586c45a98d4add4b92cf964aac689606f0c', '[\"*\"]', NULL, '2022-10-16 00:27:17', '2022-10-16 00:27:17'),
(210, 'App\\Models\\User', 6, 'MyApp', '5f75d07b8fd9a7db7082df0e62ca3007a8bd06753d7e1d99cc4fee080bb844ac', '[\"*\"]', NULL, '2022-10-16 00:27:28', '2022-10-16 00:27:28'),
(211, 'App\\Models\\User', 6, 'MyApp', '61f05e9d22ce3e00b3cbc19899e476e6cfa6e32077958fab7369c44fe7f5ff61', '[\"*\"]', NULL, '2022-10-18 12:31:28', '2022-10-18 12:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3V3uXZ8aJVn4XcbbSGTF4r97vJAMNmBeE5jhpzSs', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWlVMHhza2JSdWlaemtwcXJLcEQzQ256dnJWUmoyekRiVTZwVTZIUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1665883810),
('FVdXtki08NpzRMbqbI27toGUPqAbRjWnXz1iwfIX', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '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', 1666099888),
('GxT7l85wQliLwJMGY0MAUyqg3s5kJDt5fldqR104', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjBRb3Z1N1JwTVp5Nm9JZ2FlMXI5OXNSZ0hCRXFFNlh2VG5oTzh6MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1666183517),
('sDSJK1nEsjnX3X9pNyrSTBUSdDYQ5dKhfMjkqr6V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU85ZXVkbXBoUzlWYlNUQmRTYlJLREJCYVNReEladjY2TEdWZk44NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1667888639);

-- --------------------------------------------------------

--
-- Table structure for table `streamed_books`
--

CREATE TABLE `streamed_books` (
  `id` int(11) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `stream_duration` varchar(255) NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `streamed_books`
--

INSERT INTO `streamed_books` (`id`, `book_id`, `session_id`, `user_email`, `stream_duration`, `uploaded_by`, `updated_at`, `created_at`) VALUES
(1, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:37:38', '2022-10-14 07:37:38'),
(2, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:39:26', '2022-10-14 07:39:26'),
(3, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:39:53', '2022-10-14 07:39:53'),
(4, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:41:15', '2022-10-14 07:41:15'),
(5, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:41:34', '2022-10-14 07:41:34'),
(6, 4, NULL, 'ezeronyeenyichukwu@gmail.com', '20', 'ezeronyeenyichukwu@gmail.com', '2022-10-14 07:42:14', '2022-10-14 07:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscription_duration`, `amount`, `created_at`, `updated_at`) VALUES
('bronze', '4-weeks', 4000.00, '2022-07-31 18:50:26', '2022-07-31 18:50:26'),
('gold', '1-year', 10000.00, '2022-07-31 19:23:50', '2022-07-31 19:23:50'),
('silver', '8-weeks', 7500.00, '2022-07-31 18:55:31', '2022-07-31 18:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `transaction_status`, `Transaction_type`, `payment_channel`, `paystack_ref`, `amount`, `created_at`, `updated_at`) VALUES
(7878333, 'ezeronyeenyichukwu@gmail.com', '', 'subscription', 'card-payment', '', 7500.00, '2022-08-01 09:55:18', '2022-08-01 09:55:18'),
(7878354636533, 'ezeronyeenyichukwu@gmail.com', 'successful', 'subscription', 'card-payment', '232341551', 10000.00, '2022-08-02 11:47:48', '2022-08-02 11:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_date` date NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subisActive` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_othernames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_firstname`, `user_email`, `email_verified_at`, `password`, `status`, `profile_image`, `reg_date`, `user_role`, `subisActive`, `remember_token`, `created_at`, `updated_at`, `user_othernames`) VALUES
(1, 'Ezeronye', 'ezeronyeenyichukwu@gmail.com', NULL, '$2y$10$rf48lrEME1o1O2xOKW6n8OGo5RZNDADjxSyX8woe.WO69PH5NE01K', 'active', NULL, '2022-07-20', 'admin', 1, NULL, '2022-07-20 08:03:28', '2022-10-11 09:05:45', 'Ebere'),
(4, 'Ezeronye', 'ezeronyeenyichukwu1@gmail.com', NULL, '$2y$10$ilzlambZ8GtwndDjKfz5eeunceZOevCQglvkYHJMEs0H4wHiauI7G', 'active', NULL, '2022-07-20', 'Reader', 0, NULL, '2022-07-20 09:06:36', '2022-07-20 09:06:36', 'Ebere'),
(5, 'omoshola', 'ebereenyichukwu1@gmail.com', NULL, '$2y$10$eVy1Lsg4ffBai0VAoAvTXeJbmnzaXlo8LLM4QL7YFL2fkJKWA0Jum', 'active', NULL, '2022-07-29', 'Reader', 1, NULL, '2022-07-29 11:01:17', '2022-07-29 11:01:17', 'James'),
(6, 'vincent', 'vincent0001@gmail.com', NULL, '$2y$10$VB0w9NDQLONEZmFCTC2pTej5oUd00NSltZuVIkyhLmIBEaJYV3VtS', 'active', NULL, '2022-10-16', 'Reader', 0, NULL, '2022-10-16 00:26:34', '2022-10-16 00:26:34', 'vincent');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribed_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_expiry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_book_category_id_foreign` (`book_category_id`),
  ADD KEY `books_language_id_foreign` (`language_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_book_category_id_unique` (`book_category_id`);

--
-- Indexes for table `book_files`
--
ALTER TABLE `book_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_files_book_id_foreign` (`book_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `streamed_books`
--
ALTER TABLE `streamed_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `user_subscriptions_subscription_id_foreign` (`subscription_id`),
  ADD KEY `user_subscriptions_transaction_id_foreign` (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book_files`
--
ALTER TABLE `book_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `streamed_books`
--
ALTER TABLE `streamed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7878435257877;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_category_id_foreign` FOREIGN KEY (`book_category_id`) REFERENCES `book_categories` (`id`),
  ADD CONSTRAINT `books_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `book_files`
--
ALTER TABLE `book_files`
  ADD CONSTRAINT `book_files_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `user_subscriptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`),
  ADD CONSTRAINT `user_subscriptions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `user_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
