-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 04:10 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruitazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `emp_num` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `hiredate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `firstname`, `lastname`, `emp_num`, `role_id`, `job_id`, `hiredate`, `address`, `city`, `zip`, `phonenumber`, `sex`, `age`, `creation_date`, `update_date`) VALUES
(1, 'Nancy', 'Davolio', 'FZ9829', 4, 2, '2020-01-21 20:33:13', '1666 Country Road 309A', 'Ignacio', '81137-9716', '514-3700', 'female', 22, '2020-10-21 20:33:13', '2020-10-27 06:28:36'),
(2, 'Andrew', 'Fuller', 'FZ9283', 1, 4, '2020-02-01 20:33:13', '219 Smith', 'manasa', '81141-0', '368-5900', 'male', 45, '2020-10-21 20:33:13', '2020-10-27 06:28:46'),
(3, 'Janet', 'Leverling', 'FZ1728', 3, 5, '2020-03-14 20:34:34', '38 Lone Pine', 'Durango', '81301-3634', '265-1040', 'female', 26, '2020-10-21 20:34:34', '2020-10-27 06:28:56'),
(4, 'Margaret', 'Peacock', 'FZ6457', 4, 6, '2020-10-21 20:34:34', '612 Jachim ST', 'La Junta', '81050-9734', '363-3200', 'female', 32, '2020-10-21 20:34:34', '2020-10-27 03:50:39'),
(5, 'Steven', 'Buchanan', 'FZ5537', 2, 7, '2020-10-21 20:35:31', '3409 1ST ST S', 'Lamar', '81052-9402', '769-5100', 'male', 27, '2020-10-21 20:35:31', '2020-10-27 03:50:53'),
(6, 'Michael', 'Suyama', 'FZ7764', 0, 3, '2020-10-21 20:35:31', '57680 State Highway 69', 'Westclife', '81252-9402', '249-8950', 'male', 47, '2020-10-21 20:35:31', '2020-10-27 03:51:04'),
(7, 'Robert', 'King', 'FZ8837', 3, 8, '2020-10-21 20:36:56', 'Po Box 1214', 'Westclife', '81252-1214', '431-7993', 'male', 32, '2020-10-21 20:36:56', '2020-10-27 03:51:28'),
(8, 'Laura', 'Callahan', 'FZ3354', 1, 6, '2020-10-21 20:36:56', '610 Ivy St', 'Nucla', '81424-0', '288-6400', 'female', 26, '2020-10-21 20:36:56', '2020-10-27 06:25:23'),
(9, 'Anne', 'Dodsworth', 'FZ4464', 0, 7, '2020-10-21 20:37:47', '1580 Sneffles St', 'Mintrose', '81401-6413', '721-1234', 'female', 28, '2020-10-21 20:37:47', '2020-10-27 03:51:56'),
(10, 'Smith', 'Adam', 'FZ7384', 1, 1, '2020-10-21 20:37:47', '571 Coyote Dr', 'Guffey', '80820-9120', '923-3700', 'male', 28, '2020-10-21 20:37:47', '2020-10-27 03:52:08'),
(11, 'Myers', 'Peter', 'FZ7726', 0, 8, '2020-10-21 20:58:31', '571 Coyote Dr', 'Guffey', '80820-9120', '759-0606', 'male', 35, '2020-10-21 20:58:31', '2020-10-27 03:52:19'),
(12, 'Jack', 'Kivari', 'FZ0929', 4, 9, '2020-10-21 20:58:31', '1666 Country Road 309A', 'Ignacio', '81137-9716', '989-5566', 'male', 29, '2020-10-21 20:58:31', '2020-10-27 03:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `emp_dept`
--

CREATE TABLE `emp_dept` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_loc` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_dept`
--

INSERT INTO `emp_dept` (`id`, `dept_name`, `dept_loc`, `creation_date`, `update_date`) VALUES
(1, 'IT', 'Site', '2020-10-21 20:15:41', '2020-10-21 20:16:34'),
(2, 'ACCOUNTING', 'HO', '2020-10-21 20:15:41', '2020-10-21 20:16:42'),
(3, 'PPIC', 'Site', '2020-10-21 20:16:06', '2020-10-21 20:16:49'),
(4, 'MARKETING', 'HO', '2020-10-21 20:16:06', '2020-10-21 20:16:54'),
(5, 'IT', 'HO', '2020-10-27 05:53:43', '2020-10-27 05:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `emp_job`
--

CREATE TABLE `emp_job` (
  `id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_job`
--

INSERT INTO `emp_job` (`id`, `job_title`, `dept_id`, `creation_date`, `update_date`) VALUES
(1, 'IT Manager', 5, '2020-10-21 20:26:31', '2020-10-27 05:54:37'),
(2, 'Marketing Manager', 4, '2020-10-21 20:26:31', '2020-10-21 20:26:31'),
(3, 'Accounting Manager', 2, '2020-10-21 20:27:06', '2020-10-21 20:27:06'),
(4, 'IT Technical Support', 1, '2020-10-21 20:27:06', '2020-10-21 20:27:06'),
(5, 'PPIC Manager', 3, '2020-10-21 20:27:47', '2020-10-21 20:27:47'),
(6, 'Marketing Research', 4, '2020-10-21 20:27:47', '2020-10-21 20:27:47'),
(7, 'Accounting Receivable', 2, '2020-10-21 20:28:58', '2020-10-21 20:28:58'),
(8, 'PPIC Staff', 3, '2020-10-21 20:28:58', '2020-10-21 20:28:58'),
(9, 'Sales Admin', 4, '2020-10-21 20:29:15', '2020-10-21 20:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE `emp_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`id`, `username`, `password`, `creation_date`, `update_date`, `role`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-10-22 18:09:22', '2020-10-22 18:09:50', 1),
(2, 'admin-accounting', 'ffe7a019bc8c991d28b894b9aaac2ff7', '2020-10-22 19:57:26', '2020-10-22 19:57:43', 2),
(3, 'admin-ppic', '57d72ff8d039e743050884ae52f8b4e7', '2020-10-24 03:27:33', '2020-10-24 03:27:33', 3);

-- --------------------------------------------------------

--
-- Table structure for table `emp_token`
--

CREATE TABLE `emp_token` (
  `id_token` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_token`
--

INSERT INTO `emp_token` (`id_token`, `id_login`, `token`, `ip_address`, `creation_date`, `update_date`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiIsInBhc3N3b3JkIjoiZTEwYWRjMzk0OWJhNTlhYmJlNTZlMDU3ZjIwZjg4M2UiLCJjcmVhdGlvbl9kYXRlIjoiMjAyMC0xMC0yMlQxODowOToyMi4wMDBaIiwidXBkYXRlX2RhdGUiOiIyMDIwLTEwLTIyVDE4OjA5OjUwLjAwMFoiLCJyb2xlIjoxfV0sImlhdCI6MTYwMzM5MzcwNiwiZXhwIjoxNjAzMzk1MTQ2fQ.kGijOgeG-s7JhO-6vYZZyP9wzWBOtBCWctZamq7hPpM', '192.168.56.1', '2020-10-22 19:08:26', '2020-10-22 19:08:26'),
(2, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiIsInBhc3N3b3JkIjoiZTEwYWRjMzk0OWJhNTlhYmJlNTZlMDU3ZjIwZjg4M2UiLCJjcmVhdGlvbl9kYXRlIjoiMjAyMC0xMC0yMlQxODowOToyMi4wMDBaIiwidXBkYXRlX2RhdGUiOiIyMDIwLTEwLTIyVDE4OjA5OjUwLjAwMFoiLCJyb2xlIjoxfV0sImlhdCI6MTYwMzM5Mzc0MiwiZXhwIjoxNjAzMzk1MTgyfQ.xDdWwHvSy_OG7iGKtbLkheuuf5W6Bfc-FHPriNACs6g', '192.168.56.1', '2020-10-22 19:09:02', '2020-10-22 19:09:02'),
(3, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiIsInBhc3N3b3JkIjoiZTEwYWRjMzk0OWJhNTlhYmJlNTZlMDU3ZjIwZjg4M2UiLCJjcmVhdGlvbl9kYXRlIjoiMjAyMC0xMC0yMlQxODowOToyMi4wMDBaIiwidXBkYXRlX2RhdGUiOiIyMDIwLTEwLTIyVDE4OjA5OjUwLjAwMFoiLCJyb2xlIjoxfV0sImlhdCI6MTYwMzM5NjM4NCwiZXhwIjoxNjAzMzk3ODI0fQ.RlzZSM_lKFTCyvPRvC0pC25xHBPWtbncor54zJksZao', '192.168.56.1', '2020-10-22 19:53:04', '2020-10-22 19:53:04'),
(4, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJhZG1pbi1hY2NvdW50aW5nIiwicGFzc3dvcmQiOiJmZmU3YTAxOWJjOGM5OTFkMjhiODk0YjlhYWFjMmZmNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTIyVDE5OjU3OjI2LjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjJUMTk6NTc6NDMuMDAwWiIsInJvbGUiOjJ9XSwiaWF0IjoxNjAzMzk2NzIzLCJleHAiOjE2MDMzOTgxNjN9.ZPCzxI_KbhaGi9gm1W5AVsd1aWDgkbn_1O31Pl1kBb0', '192.168.56.1', '2020-10-22 19:58:43', '2020-10-22 19:58:43'),
(5, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MiwidXNlcm5hbWUiOiJhZG1pbi1hY2NvdW50aW5nIiwicGFzc3dvcmQiOiJmZmU3YTAxOWJjOGM5OTFkMjhiODk0YjlhYWFjMmZmNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTIyVDE5OjU3OjI2LjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjJUMTk6NTc6NDMuMDAwWiIsInJvbGUiOjJ9XSwiaWF0IjoxNjAzNDk5MjQ3LCJleHAiOjE2MDM1MDA2ODd9.1SsSbyn-_MsQ1ysHtNUYnjzQJIONmYUxYKpMK0Gg8ko', '192.168.56.1', '2020-10-24 00:27:27', '2020-10-24 00:27:27'),
(6, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJhZG1pbi1wcGljIiwicGFzc3dvcmQiOiI1N2Q3MmZmOGQwMzllNzQzMDUwODg0YWU1MmY4YjRlNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTI0VDAzOjI3OjMzLjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjRUMDM6Mjc6MzMuMDAwWiIsInJvbGUiOjN9XSwiaWF0IjoxNjAzNTEwMDcwLCJleHAiOjE2MDM1MTE1MTB9.LfUX_UcYHKR3AUUNB6pmylyU-s2G4FkIgNNe6lAMAyY', '192.168.56.1', '2020-10-24 03:27:50', '2020-10-24 03:27:50'),
(7, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJhZG1pbi1wcGljIiwicGFzc3dvcmQiOiI1N2Q3MmZmOGQwMzllNzQzMDUwODg0YWU1MmY4YjRlNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTI0VDAzOjI3OjMzLjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjRUMDM6Mjc6MzMuMDAwWiIsInJvbGUiOjN9XSwiaWF0IjoxNjAzNjcwODgxLCJleHAiOjE2MDM2NzIzMjF9.t03B15uxeN1A3TT3kUq1FWRxAtbJIeuuZoYjdrOUc-c', '192.168.56.1', '2020-10-26 00:08:01', '2020-10-26 00:08:01'),
(8, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJhZG1pbi1wcGljIiwicGFzc3dvcmQiOiI1N2Q3MmZmOGQwMzllNzQzMDUwODg0YWU1MmY4YjRlNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTI0VDAzOjI3OjMzLjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjRUMDM6Mjc6MzMuMDAwWiIsInJvbGUiOjN9XSwiaWF0IjoxNjAzNjg1OTQwLCJleHAiOjE2MDM2ODczODB9.VsxaYPxxWIDlfxhZPmLQHkJ7JCG-bAPdj8S-gFMbtOA', '192.168.56.1', '2020-10-26 04:19:00', '2020-10-26 04:19:00'),
(9, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJhZG1pbi1wcGljIiwicGFzc3dvcmQiOiI1N2Q3MmZmOGQwMzllNzQzMDUwODg0YWU1MmY4YjRlNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTI0VDAzOjI3OjMzLjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjRUMDM6Mjc6MzMuMDAwWiIsInJvbGUiOjN9XSwiaWF0IjoxNjAzNzkwNzM4LCJleHAiOjE2MDM3OTIxNzh9.tnZyNsGeuJYpVP0l5txpuG20iLEcQnG9zDavJ72ag9E', '192.168.56.1', '2020-10-27 09:25:38', '2020-10-27 09:25:38'),
(10, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MywidXNlcm5hbWUiOiJhZG1pbi1wcGljIiwicGFzc3dvcmQiOiI1N2Q3MmZmOGQwMzllNzQzMDUwODg0YWU1MmY4YjRlNyIsImNyZWF0aW9uX2RhdGUiOiIyMDIwLTEwLTI0VDAzOjI3OjMzLjAwMFoiLCJ1cGRhdGVfZGF0ZSI6IjIwMjAtMTAtMjRUMDM6Mjc6MzMuMDAwWiIsInJvbGUiOjN9XSwiaWF0IjoxNjAzNzkxMzU0LCJleHAiOjE2MDM3OTI3OTR9.DteS2wb4jelGOgljmSPqOVywEt2kB6yz6AoRemyXqfc', '192.168.56.1', '2020-10-27 09:35:54', '2020-10-27 09:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_header_id` int(11) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `invoice_header_id`, `product_name`, `product_qty`, `product_price`) VALUES
(87, 72, 'Jambu Batu', 1, 13000),
(88, 72, 'Pisang Cavendish', 1, 15000),
(89, 72, 'Semangka', 1, 25000),
(90, 73, 'Semangka', 1, 25000),
(91, 73, 'Anggur Hitam', 1, 25000),
(92, 74, 'Pisang Cavendish', 5, 15000),
(93, 74, 'Jambu Batu', 3, 13000),
(94, 75, 'Jambu Batu', 7, 13000),
(95, 75, 'Semangka', 9, 25000),
(96, 76, 'Pisang Cavendish', 3, 15000),
(97, 76, 'Semangka', 2, 25000),
(98, 77, 'Anggur Hitam', 2, 25000),
(99, 77, 'Jambu Batu', 9, 13000),
(100, 78, 'Jambu Batu', 5, 13000),
(101, 78, 'Anggur Hitam', 5, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_header`
--

CREATE TABLE `invoice_header` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_to_seller` varchar(4000) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_header`
--

INSERT INTO `invoice_header` (`id`, `user_id`, `message_to_seller`, `time`, `status_payment`) VALUES
(72, 1, 'test', '2020-10-19 21:25:23', 0),
(73, 1, 'test', '2020-10-19 21:28:42', 0),
(74, 43, 'test', '2020-10-25 22:34:13', 0),
(75, 42, 'test', '2020-10-24 22:34:47', 0),
(76, 42, 'test', '2020-10-23 12:18:19', 0),
(77, 43, 'test', '2020-10-20 12:18:19', 1),
(78, 1, 'test', '2020-10-21 12:19:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `description`, `featured`, `img`, `category_id`) VALUES
(1, 'Jambu Batu', 13000, 'Jambu batu ini mempunyai tekstur yang sangat keras layaknya batu. Akan tetapi, untuk rasanya tentu saja tidak kalah manis dibandingkan dengan rasa yang dimiliki oleh jambu air. Buah jambu batu ini mempunyai biji yang kecil dengan warna orange keputihan. Biji tersebut terletak di tengah bagian daging buahnya. Saat baru saja berkembang, buah jambu batu memiliki warna hijau tua. Kemudian lambat laun ia akan berubah warna menjadi kekuning-kuningan saat buah tersebut sudah matang.', 1, 'https://awsimages.detik.net.id/community/media/visual/2020/01/13/7f7a964f-0590-4ca5-9f6f-5f07858f74b9_43.jpeg?w=700&q=90', 2),
(2, 'Pisang Cavendish', 15000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/12/2/80540977/80540977_27566c81-1ec0-417d-ae94-3f71d18731f8_1024_1024', 2),
(3, 'Semangka', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://id-test-11.slatic.net/shop/62ee79a230855f40e0a85786b230b004.jpeg', 2),
(4, 'Anggur Hitam', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://id-test-11.slatic.net/p/d5a6e71ee396e17aaa045687562cb4fd.jpg_720x720q80.jpg_.webp', 2),
(5, 'Mangga', 13000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//86/MTA-2720900/rezeki-fresh-market_rezeki-fresh-market-mangga-harum-manis--0-9-1-1-kg-3-4-pcs-_full02.jpg', 2),
(6, 'Apel', 8000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://awsimages.detik.net.id/community/media/visual/2018/09/07/782ca732-8a5a-4a27-b653-a4c4efc9d5ab.jpeg?w=700&q=90', 2),
(7, 'Jeruk', 5000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2016/10/2/1491479/1491479_cb28990b-45d6-4794-9b8c-46c32bdc2dc3', 2),
(8, 'Sawi', 9000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 0, 'https://hidroponikstore.com/wp-content/uploads/2018/08/sawi-manis-shanghai.jpg', 1),
(9, 'Paprika', 12000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 0, 'https://cf.shopee.co.id/file/1c1e517cffbfbf15956db3d94d46c088', 1),
(10, 'Alpukat', 17000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://s.blanja.com/picspace/440/195000/694.700_a567c8da8a5c4158a69d4f6c34476f6c.jpg', 2),
(11, 'Nangka', 18000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 1, 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1548504364/xknl8brdtnbrsxhbk6bb.jpg', 1),
(12, 'Belimbing', 19000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus. Rutrum tellus pellentesque eu tincidunt tortor. Sed blandit libero volutpat sed cras ornare. Et netus et malesuada fames ac. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Lacus sed viverra tellus in. Sollicitudin ac orci phasellus egestas. Purus in mollis nunc sed. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Interdum consectetur libero id faucibus nisl tincidunt eget.', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHTR0CHJjwnCS0T-ba1XkdzHFGOVULQIXPYw&usqp=CAU', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`) VALUES
(1, 'vegetables'),
(2, 'fruits');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `password`) VALUES
(1, 'linxkaa', '$2b$10$9ahaidXnIPNQKCD3LYnRcO4NQX6PRj8aHdqEvtxvx.h7593Q1lYIG'),
(41, 'sekar06', '$2b$10$9ahaidXnIPNQKCD3LYnRcO4NQX6PRj8aHdqEvtxvx.h7593Q1lYIG'),
(42, 'reybrav', '$2b$10$9ahaidXnIPNQKCD3LYnRcO4NQX6PRj8aHdqEvtxvx.h7593Q1lYIG'),
(43, 'linxkaaa', '$2b$10$9ahaidXnIPNQKCD3LYnRcO4NQX6PRj8aHdqEvtxvx.h7593Q1lYIG');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `name`, `address`, `email`, `creation_date`, `update_date`) VALUES
(1, 1, 'Lintang Kusuma Asmara', 'Taman Pondok Gedang', 'lintang@gmail.com', '2020-10-10 18:39:46', '2020-10-12 18:40:43'),
(7, 41, 'sekar', 'Tamarind Lane', 'sekar@gmail.com', '2020-10-15 18:39:46', '2020-10-15 18:40:43'),
(8, 42, 'Reyhan', 'Bali', 'reybrav@gmail.com', '2020-10-18 18:39:46', '2020-10-25 18:51:16'),
(9, 43, 'Lintang', 'Taman Pondok Gede', 'lintang@gmail.com', '2020-10-25 18:39:46', '2020-10-25 18:40:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_num` (`emp_num`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `emp_dept`
--
ALTER TABLE `emp_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_job`
--
ALTER TABLE `emp_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `emp_login`
--
ALTER TABLE `emp_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_token`
--
ALTER TABLE `emp_token`
  ADD PRIMARY KEY (`id_token`),
  ADD KEY `id_login` (`id_login`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_header`
--
ALTER TABLE `invoice_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emp_dept`
--
ALTER TABLE `emp_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_job`
--
ALTER TABLE `emp_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_login`
--
ALTER TABLE `emp_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emp_token`
--
ALTER TABLE `emp_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `invoice_header`
--
ALTER TABLE `invoice_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `emp_job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp_job`
--
ALTER TABLE `emp_job`
  ADD CONSTRAINT `emp_job_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `emp_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp_token`
--
ALTER TABLE `emp_token`
  ADD CONSTRAINT `emp_token_ibfk_1` FOREIGN KEY (`id_login`) REFERENCES `emp_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
