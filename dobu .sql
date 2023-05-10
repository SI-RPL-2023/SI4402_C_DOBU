-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 07:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dobu`
--

-- --------------------------------------------------------

--
-- Table structure for table `articel`
--

CREATE TABLE `articel` (
  `id_articel` char(36) NOT NULL,
  `name_articel` varchar(255) NOT NULL,
  `desc_articel` text NOT NULL,
  `thumbnail_articel` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articel`
--

INSERT INTO `articel` (`id_articel`, `name_articel`, `desc_articel`, `thumbnail_articel`, `created_at`, `updated_at`) VALUES
('53a31dd4-d82e-49f8-ae5d-0f9bb14ce100', 'Hari Bakti PU ke-74', 'Kegiatan donor darah yang difasilitasi oleh PMI Daerah Sulawesi Tengah ini, sering kali menjadi salah satu kegiatan rutin yang ditambahkan ke dalam rangkaian acara-acara besar Balai Wilayah Sungai Sulawesi III Palu. Sebab, seperti yang diketahui oleh Sobat Balai, bahwa Donor Darah tidak hanya sebagai kegiatan amal tetapi juga sangat bermanfaat bagi kesehatan tubuh. \r\n\r\n            Donor darah merupakan upaya seseorang dalam memberikan sejumlah darahnya yang ditranfusikan kepada orang lain. Sayangnya, banyak orang takut donor darah dengan beragam alasan. Mulai dari takut jarum suntik hingga takut darahnya habis. Padahal, manfaat donor darah bagi pendonor banyak banget lho. Malahan setelah donor darah, tubuh jadi lebih fit karena produksi darah diperbaharui. Selain itu, tekanan darah jadi lebih stabil. Keuntungan juga bisa didapat bagi mereka yang kelebihan sel darah merah. Karena dengan donor darah, tubuh jadi menyeimbangkan dengan kebutuhan.', NULL, '2023-04-29 15:12:00', '2023-04-29 15:12:00'),
('6192ddd6-ed02-4e93-9498-37e131475fce', 'Membantu Orang Lain Sehat, Diri Kita Menjadi Sehat', 'Mengawali rangkaian kegiatan Peringatan Hari Ulang Tahun Pertambangan Dan Energi (HUT PE) ke-77, Kementerian Energi Dan Sumber Daya Mineral bekerja sama dengan PMI Provinsi DKI melaksanakan kegiatan bakti sosial donor darah. Ditargetkan akan terkumpul sebanyak 200 kantong dari kegiatan donor darah kali ini.\r\n\r\n            \"Berkaitan dengan HUT PE, Kementerian ESDM melaksanakan kegiatan donor darah. Kita mentargetkan yang ikut berpartisipasi dalam kegiatan donor darah kali ini akan terkumpul sebanyak 200 kantong darah, dan yang sudah mendaftar via google form itu 147 orang dan sisanya on site,\"kata Reni Febriana penanggung jawab acara Kegiatan Acara Donor Darah HUT PE 2022. Rabu (21/9).\r\n            \r\n            Reni menambahkan, untuk mendapatkan target 200 kantong darah terkadang diperlukan pendonor melebih target kantong darah karena beberapa pendonor yang mendaftar belum tentu dapat mendonorkan darahnya karena berbagai alasan.', NULL, '2023-04-29 15:12:00', '2023-04-29 15:12:00'),
('a43fc69b-1851-4ee6-804e-bcf742a84acc', 'Manfaat Rutin Donor Darah', 'Tahukah Anda bahwa setiap 8 detik, ada satu orang yang membutuhkan transfusi darah di Indonesia dan setiap menitnya, ada 10 orang sekarang menanti donasi donor darah? Menurut Badan Kesehatan Dunia (WHO) tahun 2015, Indonesia kekurangan jumlah produksi darah secara nasional, yaitu sekitar 500 ribu kantong tiap tahunnya. Bisa jadi kesadaran masyarakat untuk menjadi pendonor sukarela masih rendah. Padahal, banyak sekali manfaat rutin donor darah bagi kesehatan pendonornya.\r\n            Mental Health Foundation menyebut, donor darah dapat mengurangi stres, meningkatkan persepsi terhadap keadaan emosional yang meliputi kepuasan hidup dan kebahagiaan hidup (emotional well-being), baik untuk kesehatan tubuh, membantu menyingkirkan perasaan negatif, menciptakan rasa saling memiliki dan mengurangi perasaan kesepian (isolation).', NULL, '2023-04-29 15:12:00', '2023-04-29 15:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id_blood_bank` char(36) NOT NULL,
  `id_institutions` char(36) NOT NULL,
  `a_positive_blood_bank` int(11) NOT NULL,
  `a_negative_blood_bank` int(11) NOT NULL,
  `b_positive_blood_bank` int(11) NOT NULL,
  `b_negative_blood_bank` int(11) NOT NULL,
  `ab_positive_blood_bank` int(11) NOT NULL,
  `ab_negative_blood_bank` int(11) NOT NULL,
  `o_positive_blood_bank` int(11) NOT NULL,
  `o_negative_blood_bank` int(11) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id_blood_bank`, `id_institutions`, `a_positive_blood_bank`, `a_negative_blood_bank`, `b_positive_blood_bank`, `b_negative_blood_bank`, `ab_positive_blood_bank`, `ab_negative_blood_bank`, `o_positive_blood_bank`, `o_negative_blood_bank`, `modified_by`, `created_at`, `updated_at`) VALUES
('0aa7ca62-11b6-38e3-bce2-af40e0528055', '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb', 24, 40, 25, 46, 24, 13, 23, 12, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('4a2d0f98-1b1e-3511-a905-1c3a9f3e1c28', '731ef6df-6171-33fd-bd05-93cd76db2cdd', 37, 41, 44, 10, 5, 4, 40, 9, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('5650a0db-fdb7-39ae-973f-b46286805592', '9d25e4f1-fbaf-359e-9e45-890677a67c0d', 0, 46, 49, 37, 31, 34, 10, 1, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('6570c29c-f970-3cad-961d-65689a6632d7', '0a2fdb17-2d3e-3949-9f36-68cf14b941e5', 34, 8, 21, 21, 31, 47, 30, 27, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('7193b8a5-f472-35be-9a27-d3d3e6b924ee', 'f1b7740b-30c6-38ae-98f6-a994afbf55e6', 28, 33, 9, 45, 32, 27, 27, 4, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('7d105351-a825-36b7-97a3-ddab7d6220c4', '04c10453-6762-3a69-9cd4-fdfc043164bd', 6, 6, 32, 48, 21, 5, 42, 30, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('8a643095-ef85-34b4-8781-4dcd0dd3eb86', '07f00675-121a-3c22-9f77-97e21324aeeb', 16, 15, 33, 22, 5, 6, 49, 12, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('8f05a7ef-17ff-31b6-91a9-880ab037c4ae', '9ed81d0a-e58a-3d0b-9dd3-91eafab5266f', 34, 38, 39, 40, 9, 9, 50, 43, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('93e133c5-50f6-3777-962c-312359dcd066', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', 2, 30, 24, 30, 2, 24, 18, 33, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('a1ee140a-4be6-36e6-8e83-93e87079428e', '0264db2d-0f84-32ef-b732-d56d7b3d0493', 40, 27, 45, 2, 40, 3, 29, 24, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('e4f510b0-cd6a-3af0-8c13-3b0016e3b8a5', '05993934-409e-3c74-9559-150c4cee359b', 47, 49, 22, 14, 16, 37, 48, 7, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('ea6f7a35-1943-3b4b-b275-d70dd0d4dcb7', '537b0937-ddf0-3143-afb9-5511d880d50c', 24, 3, 34, 18, 16, 25, 39, 39, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('ecda9bda-f028-3e7a-bd26-7b68d3ef4337', '05fae751-7d73-3b41-a567-44843869588f', 35, 9, 11, 40, 11, 40, 33, 11, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('ee148f17-0fa7-3945-b69b-80deb126769f', '2217c28f-d59c-3ab1-860c-d2cce27b2a9f', 25, 5, 20, 19, 35, 19, 4, 32, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('f35f438b-4b58-3b98-a9d9-c4442757bfc8', '272f8cd3-f856-37f0-ac40-94c3b36d52da', 28, 1, 12, 47, 34, 38, 17, 47, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `donators`
--

CREATE TABLE `donators` (
  `id_donators` char(36) NOT NULL,
  `name_donators` varchar(255) NOT NULL,
  `email_donators` varchar(255) NOT NULL,
  `password_donators` varchar(255) NOT NULL,
  `gender_donators` varchar(255) DEFAULT NULL,
  `status_donators` varchar(255) NOT NULL,
  `contact_donators` varchar(255) NOT NULL,
  `address_donators` text NOT NULL,
  `point_donators` int(11) NOT NULL DEFAULT 0,
  `profile_images_donators` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donators`
--

INSERT INTO `donators` (`id_donators`, `name_donators`, `email_donators`, `password_donators`, `gender_donators`, `status_donators`, `contact_donators`, `address_donators`, `point_donators`, `profile_images_donators`, `created_at`, `updated_at`) VALUES
('06938d80-8180-4de5-939d-c352581008de', 'Fandi Setyoso', 'fandiganz@gmail.com', '$2y$10$qVgK351qCeOl7sNO91/Nv.G1MxFRkYZGuiH.9STAGQzHJTKgC1YGK', NULL, 'Pelajar', '085156913021', 'Bandung', 0, NULL, '2023-05-10 04:47:01', '2023-05-10 04:47:01'),
('b92b82c5-bed1-43ea-9d7e-99e358905f53', 'Haikal Andriansyah', 'mhaikalap@gmail.com', '$2y$10$JYRSDVTr66LnfaHBfkrUtuK.8q9Hwd4o6tXrr7ZqvYxghDTeiRK5m', NULL, 'Pelajar', '081234456574', 'Jl. Sukapura', 0, NULL, '2023-03-29 18:59:59', '2023-03-29 18:59:59'),
('d3350936-a1ed-4d7d-9f75-ece30bc6fc48', 'DIYAS YAKLUNA BAIHAQI', 'diyasyaklunabaihaqi2111@gmail.com', '$2y$10$iwXcSHJetclPrPzIXZ/HsONOXQ6BYjx0XprhtmLbYgVxi7yGdf.32', 'male', 'Pelajar', '081260222829', 'medan', 0, NULL, '2023-04-16 05:19:15', '2023-04-16 05:42:00'),
('d51051f7-502c-445b-9546-f2eca7e59df4', 'Arthur', 'arthur@gmail.com', '$2y$10$7tnWpbA8w.4brbM7hk94.OEgWA0F2ow2o2h9DX6Ert0vVqxb4byYu', NULL, 'Umum', '085942046918', 'aa', 0, NULL, '2023-04-04 12:10:47', '2023-04-04 12:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `donor_events`
--

CREATE TABLE `donor_events` (
  `id_donor_events` char(36) NOT NULL,
  `id_institutions` char(36) NOT NULL,
  `name_donor_events` varchar(255) NOT NULL,
  `start_date_donor_events` date NOT NULL,
  `end_date_donor_events` date NOT NULL,
  `start_time_donor_events` time NOT NULL,
  `end_time_donor_events` time NOT NULL,
  `desc_donor_events` text NOT NULL,
  `thumbnail_donor_events` varchar(255) DEFAULT NULL,
  `point_donor_events` int(11) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor_events`
--

INSERT INTO `donor_events` (`id_donor_events`, `id_institutions`, `name_donor_events`, `start_date_donor_events`, `end_date_donor_events`, `start_time_donor_events`, `end_time_donor_events`, `desc_donor_events`, `thumbnail_donor_events`, `point_donor_events`, `modified_by`, `created_at`, `updated_at`) VALUES
('718a208a-3788-42a5-aa27-3ecee22c7f53', '2217c28f-d59c-3ab1-860c-d2cce27b2a9f', 'donasi buku meda', '2023-04-26', '2023-05-13', '10:00:00', '20:00:00', 'donasi dilakukan di medan', NULL, 4, NULL, '2023-04-30 00:39:14', '2023-04-30 00:39:14'),
('83a2e926-c6d5-4802-becb-ca53ccecb46e', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', 'Donasi Buku TelU', '2023-05-21', '2023-05-22', '11:53:00', '04:53:00', 'TelU', '/upload/9e33b53cd6e23b2b93350c6b626981d3/thumbnail/1683696103_9e33b53cd6e23b2b93350c6b626981d3_Use Case Diagram.vpd.png', 10, '(ADMIN) FANDI AHMAD ATQAN SETYOSO', '2023-05-10 04:53:51', '2023-05-10 05:21:43'),
('de2f7210-2b10-4cd3-af69-3ee6a5588b3e', '04c10453-6762-3a69-9cd4-fdfc043164bd', 'DOBU Trans Studio Bandung', '2023-03-01', '2023-06-01', '08:00:00', '17:00:00', 'Donasi buku di Trans Studio Bandung', NULL, 23, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('e3232ba8-54ed-470c-8b8b-7f580fefd1ff', '0264db2d-0f84-32ef-b732-d56d7b3d0493', 'DOBU Kota Kasablanka', '2023-03-03', '2023-06-05', '08:00:00', '17:00:00', 'Donasi buku di Kota Kasablanka', NULL, 64, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('edc90655-62b7-4392-baf2-b2aa22e39353', '05993934-409e-3c74-9559-150c4cee359b', 'DOBU Summarecon Mall Bekasi', '2023-02-03', '2023-12-11', '08:00:00', '17:00:00', 'Donasi buku di Summarecon Mall Bekasi', NULL, 65, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('f2ea22c1-2ec9-4f93-8f7c-bf24d89514ee', '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb', 'DOBU RITA Supermall Purwokerto', '2023-03-02', '2023-03-05', '08:00:00', '17:00:00', 'Donasi buku di RITA Supermall Purwokerto', NULL, 22, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('f688361f-7242-4ded-b39e-427e9a4a7859', '0264db2d-0f84-32ef-b732-d56d7b3d0493', 'DOBU Metro Tanah Abang', '2023-02-03', '2023-10-15', '08:00:00', '17:00:00', 'Donasi buku di Metro Tanah Abang', NULL, 98, NULL, '2023-03-29 17:22:26', '2023-03-29 17:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `donor_notes`
--

CREATE TABLE `donor_notes` (
  `id_donor_notes` char(36) NOT NULL,
  `id_donators` char(36) NOT NULL,
  `id_institutions` char(36) NOT NULL,
  `id_donor_events` char(36) DEFAULT NULL,
  `status_donor_notes` tinyint(4) NOT NULL,
  `schedule_donor_notes` date NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor_notes`
--

INSERT INTO `donor_notes` (`id_donor_notes`, `id_donators`, `id_institutions`, `id_donor_events`, `status_donor_notes`, `schedule_donor_notes`, `modified_by`, `created_at`, `updated_at`) VALUES
('05e66387-40a1-4a55-ae5f-135e78c64612', '06938d80-8180-4de5-939d-c352581008de', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', NULL, 3, '2023-05-11', '(ADMIN) FANDI AHMAD ATQAN SETYOSO', '2023-05-10 04:47:17', '2023-05-10 04:48:49'),
('1236da7b-3484-49f7-aa84-129b328485ac', 'd3350936-a1ed-4d7d-9f75-ece30bc6fc48', '2217c28f-d59c-3ab1-860c-d2cce27b2a9f', NULL, 3, '2023-05-01', 'DIYAS', '2023-04-30 00:46:54', '2023-04-30 00:47:18'),
('4819f00f-b65f-4dc2-a91c-91583578d840', 'd3350936-a1ed-4d7d-9f75-ece30bc6fc48', '0264db2d-0f84-32ef-b732-d56d7b3d0493', NULL, 1, '2023-04-25', NULL, '2023-04-25 11:38:50', '2023-04-25 11:38:50'),
('543306fb-68b1-4565-ba98-9d65df77aaa2', '06938d80-8180-4de5-939d-c352581008de', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', '83a2e926-c6d5-4802-becb-ca53ccecb46e', 1, '2023-05-21', NULL, '2023-05-10 05:00:07', '2023-05-10 05:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `donor_submissions`
--

CREATE TABLE `donor_submissions` (
  `id_donor_submissions` char(36) NOT NULL,
  `id_donators` char(36) NOT NULL,
  `id_institutions` char(36) NOT NULL,
  `recipient_donor_submissions` varchar(255) NOT NULL,
  `applicant_donor_submissions` varchar(255) NOT NULL,
  `book_type_donor_submissions` varchar(255) NOT NULL,
  `quantity_donor_submissions` int(11) NOT NULL,
  `time_used_donor_submissions` datetime DEFAULT NULL,
  `ktp_donor_submissions` varchar(255) NOT NULL,
  `letter_donor_submissions` varchar(255) NOT NULL,
  `status_donor_submissions` tinyint(4) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor_submissions`
--

INSERT INTO `donor_submissions` (`id_donor_submissions`, `id_donators`, `id_institutions`, `recipient_donor_submissions`, `applicant_donor_submissions`, `book_type_donor_submissions`, `quantity_donor_submissions`, `time_used_donor_submissions`, `ktp_donor_submissions`, `letter_donor_submissions`, `status_donor_submissions`, `modified_by`, `created_at`, `updated_at`) VALUES
('03cd23b3-50ee-4f32-9e05-5d57a47825db', '06938d80-8180-4de5-939d-c352581008de', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', 'Fandi Setyoso', 'Fandi Setyoso', 'Ilmiah', 1, NULL, '/upload/06938d8081804de5939dc352581008de/ktp/1683694093_06938d8081804de5939dc352581008de_BPMN 1.png', '/upload/06938d8081804de5939dc352581008de/letter/1683694093_06938d8081804de5939dc352581008de_BPMN 1.png', 3, '(ADMIN) FANDI AHMAD ATQAN SETYOSO', '2023-05-10 04:48:13', '2023-05-10 04:50:03'),
('9121e852-7dcf-488d-9822-5f51e21f6aa1', 'd3350936-a1ed-4d7d-9f75-ece30bc6fc48', '2217c28f-d59c-3ab1-860c-d2cce27b2a9f', 'diyas', 'DIYAS YAKLUNA BAIHAQI', 'Novel', 1, NULL, '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/ktp/1682815946_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png', '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/letter/1682815946_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png', 3, 'DIYAS', '2023-04-30 00:52:26', '2023-04-30 00:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id_employees` char(36) NOT NULL,
  `id_institutions` char(36) NOT NULL,
  `name_employees` varchar(255) NOT NULL,
  `email_employees` varchar(255) NOT NULL,
  `password_employees` varchar(255) NOT NULL,
  `contact_employees` varchar(255) NOT NULL,
  `address_employees` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id_employees`, `id_institutions`, `name_employees`, `email_employees`, `password_employees`, `contact_employees`, `address_employees`, `created_at`, `updated_at`) VALUES
('26bdd539-401a-41aa-846d-186daacd349b', '2217c28f-d59c-3ab1-860c-d2cce27b2a9f', '(ADMIN) DIYAS', 'diyasyakluna@dobu.co.id', '$2y$10$9E0PzB/6YuiCarLpfd3s1elpt1hUI/sWofiZRO1leCS64X3Xkox/u', '087772934259', 'Jln. Isekai timur, Medan', '2023-03-29 17:22:26', '2023-04-30 00:28:41'),
('2ac079e7-e6ec-11ed-8b9e-54bf640d205f', '9e33b53c-d6e2-3b2b-9335-0c6b626981d3', '(ADMIN) FANDI AHMAD ATQAN SETYOSO', 'fandi@dobu.co.id', '$2y$10$ymjtTnnw1AeyduEwr9p3nu8FkFvNetbpSfJSmc2siKf.8ZHPNjqVe', '081286226512', 'Jln. aster ter, Batak', NULL, NULL),
('9334ff07-e6ed-11ed-8b9e-54bf640d205f', '05993934-409e-3c74-9559-150c4cee359b', '(ADMIN) ARTHUR', 'arthur@dobu.co.id', '$2y$10$mrrwe59SCYFnB4QRHAYMae4cXukdbNkRWsu2q3gbEvlxI40TrN4P2', '(+62) 818 3565 9450', 'Ds. Uluwatu No. 86, Semarang 32328, Lampung', NULL, NULL),
('b0daa461-e6eb-11ed-8b9e-54bf640d205f', '731ef6df-6171-33fd-bd05-93cd76db2cdd', '(ADMIN) M. HAIKAL ANDRIANSYAH PUTRAA', 'haikal@dobu.co.id', '$2y$10$9dbx/mncUNsE7WbapFEVQuXWD3boEHR4zv4JLTJf.4aoVoeO6vJIS', '085256433390', 'Jln A.Lamaggarung, Makassar', NULL, '2023-04-30 00:13:02'),
('ca667144-e6ea-11ed-8b9e-54bf640d205f', '0264db2d-0f84-32ef-b732-d56d7b3d0493', '(ADMIN)FIRAS AL-GHAFFAR NUGRAHA', 'firas@dobu.co.id', '$2y$10$7i1J7kFjtDcapFkDQFw7DuuDhVQn3LIb2QNG8o9iO6OV.ABzE9Hvi', '0853713900', 'Jl bukan jokowi, Bandung', NULL, NULL),
('ce5532fa-e6ec-11ed-8b9e-54bf640d205f', '04c10453-6762-3a69-9cd4-fdfc043164bd', '(ADMIN) MUHAMMAD FATIH RAFFIESYA', 'fatih@dobu.co.id', '$2y$10$jZS3.sCsF0ljyv/odGEcEeiTxjbM74zyhpGw8Ju264l547rQAuSnm', '(+62) 657 2988 2582', 'Jr. Rajawali No. 155, Cilegon 14431, Sulsel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id_institutions` char(36) NOT NULL,
  `name_institutions` varchar(255) NOT NULL,
  `contact_institutions` varchar(255) NOT NULL,
  `email_institutions` varchar(255) NOT NULL,
  `address_institutions` text NOT NULL,
  `longitude_institutions` varchar(255) NOT NULL,
  `latitude_institutions` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id_institutions`, `name_institutions`, `contact_institutions`, `email_institutions`, `address_institutions`, `longitude_institutions`, `latitude_institutions`, `created_at`, `updated_at`) VALUES
('0264db2d-0f84-32ef-b732-d56d7b3d0493', 'West Mall Grand Indonesia', '02123580001', 'gi@gmail.com', 'Jl. Tlk. Betung I No.45A, Kb. Melati, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10230', '-6.194538721865727 ', '106.81935224584291', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('04c10453-6762-3a69-9cd4-fdfc043164bd', 'Metro Tanah Abang', '0213908988', 'tanahabang@gmail.com', 'RR68+Q7Q, Jl. K.H. Mas Mansyur, RT.13/RW.6, Kb. Kacang, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10260', '-6.188028284762222', '106.81576790380056', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('05993934-409e-3c74-9559-150c4cee359b', 'Solo Paragon Mall', '02717882356', 'paragonsolo@gmail.com', 'Jl. Yosodipuro No.133, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139', '-7.562389865550433', '110.80995209771206', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('05fae751-7d73-3b41-a567-44843869588f', 'Solo Square Mall', '02717651500', 'square@gmail.com', 'Jl. Slamet Riyadi No.451-455, Pajang, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57146', '-7.560472858950352', '110.78880786887665', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('07f00675-121a-3c22-9f77-97e21324aeeb', 'Lippo Mall Kemang', '02129528400', 'lipo@pmijabar.or.id', 'Jl. Pangeran Antasari No.36, RW.5, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12150', '-6.261161910146755', '106.8128599963201', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('0a2fdb17-2d3e-3949-9f36-68cf14b941e5', 'Summarecon Mall Bekasi', '02129572888', 'sumarekon@gmail.com', 'Sentra Summarecon Bekasi, Jl. Boulevard Ahmad Yani, Marga Mulya, Kec. Bekasi Utara, Kota Bks, Jawa Barat 17142', '-6.226020939924486', '107.00109785537238', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('2217c28f-d59c-3ab1-860c-d2cce27b2a9f', 'The Park Mall Solo Baru', '0271624545', 'solobaru@gmail.com', 'Jl. Ir. Soekarno, Dusun II, Madegondo, Kec. Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552', '-7.5988721983396355', '110.81665788236991', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('272f8cd3-f856-37f0-ac40-94c3b36d52da', 'Damar Plaza', '075134117', 'damar@gmail.com', '3943+7XG, Jl. Damar, Olo, Kec. Padang Bar., Kota Padang, Sumatera Barat', '-0.9443065636893715', '100.3549698644178', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('537b0937-ddf0-3143-afb9-5511d880d50c', 'Super Mall Green City', '07513554192', 'green@gmail.com', 'Jl. By Pass No.2, Korong Gadang, Kec. Kuranji, Kota Padang, Sumatera Barat 25171', '-0.9160587549292628', '100.39812232631375', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('731ef6df-6171-33fd-bd05-93cd76db2cdd', '23 Paskal Shopping Center', '02286062942', 'Pascal@gmail.com', 'Jl. Pasir Kaliki No.25-27, Kb. Jeruk, Kec. Andir, Kota Bandung, Jawa Barat 40241', '-6.915017674100582', '107.59453879632751', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('9aa2e5e7-3186-3d65-9b53-75f74c42b1eb', 'Trans Studio Bandung', '08118118244', 'tsm@gmail.com', 'Trans Studio Mall, Jl. Gatot Subroto No.289A, Cibangkong, Kec. Batununggal, Kota Bandung, Jawa Barat 40273', '-6.924412677972702', '107.63594819313195', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('9d25e4f1-fbaf-359e-9e45-890677a67c0d', 'Kota Kasablanka', '02129465000', 'kokas@gmail.com', 'Jl. Casablanca Raya Kav. 88, Menteng Dalam, Kec. Tebet, Daerah Khusus Ibukota Jakarta 12870', '-6.211147448337681', '106.86565155067206', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('9e33b53c-d6e2-3b2b-9335-0c6b626981d3', 'Lippo Plaza Jember', '081270040328', 'Lipojember@gmail.com', 'Jl. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131', '-8.173938273451496', '113.68785402658317', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('9ed81d0a-e58a-3d0b-9dd3-91eafab5266f', 'Grand City Mall Surabaya', '0315459000', 'grandcity@gmail.com', 'Jl. Walikota Mustajab No.1, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '-7.2620419827907075', '112.75000044883716', '2023-03-29 17:22:26', '2023-03-29 17:22:26'),
('f1b7740b-30c6-38ae-98f6-a994afbf55e6', 'RITA Supermall Purwokerto', '0281632006', 'rsm@gmail.com', 'Jl. Jend. Soedirman No.296, Pereng, Sokanegara, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53116', '-7.425384197160473', '109.23010400674659', '2023-03-29 17:22:26', '2023-03-29 17:22:26');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_03_072915_create_donators_table', 1),
(7, '2023_01_03_073540_create_institutions_table', 1),
(8, '2023_01_03_073932_create_status_donors_table', 1),
(9, '2023_01_03_074537_create_employees_table', 1),
(10, '2023_01_03_074647_create_blood_bank_table', 1),
(11, '2023_01_03_074814_create_donor_submissions_table', 1),
(12, '2023_01_03_074929_create_donor_events_table', 1),
(13, '2023_01_03_075110_create_donor_notes_table', 1),
(14, '2023_01_08_161425_create_articel_table', 1),
(15, '2023_03_30_002045_dobu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_donor`
--

CREATE TABLE `status_donor` (
  `id_status_donor` tinyint(3) UNSIGNED NOT NULL,
  `name_status_donor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_donor`
--

INSERT INTO `status_donor` (`id_status_donor`, `name_status_donor`) VALUES
(1, 'Menunggu Persetujuan'),
(2, 'Dijadwalkan'),
(3, 'Diterima'),
(4, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articel`
--
ALTER TABLE `articel`
  ADD PRIMARY KEY (`id_articel`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id_blood_bank`);

--
-- Indexes for table `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id_donators`),
  ADD UNIQUE KEY `donators_email_donators_unique` (`email_donators`);

--
-- Indexes for table `donor_events`
--
ALTER TABLE `donor_events`
  ADD PRIMARY KEY (`id_donor_events`);

--
-- Indexes for table `donor_notes`
--
ALTER TABLE `donor_notes`
  ADD PRIMARY KEY (`id_donor_notes`);

--
-- Indexes for table `donor_submissions`
--
ALTER TABLE `donor_submissions`
  ADD PRIMARY KEY (`id_donor_submissions`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employees`),
  ADD UNIQUE KEY `employees_email_employees_unique` (`email_employees`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id_institutions`),
  ADD UNIQUE KEY `institutions_email_institutions_unique` (`email_institutions`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `status_donor`
--
ALTER TABLE `status_donor`
  ADD PRIMARY KEY (`id_status_donor`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_donor`
--
ALTER TABLE `status_donor`
  MODIFY `id_status_donor` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
