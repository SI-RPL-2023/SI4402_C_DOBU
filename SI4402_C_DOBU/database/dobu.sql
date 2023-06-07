-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2023 pada 13.24
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET TIME_ZONE = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dobu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `ARTIKEL` (
  `ID_ARTIKEL` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_ARTIKEL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `DESC_ARTIKEL` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `THUMBNAIL_ARTIKEL` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `ARTIKEL` (
  `ID_ARTIKEL`,
  `ID_INSTITUTIONS`,
  `NAME_ARTIKEL`,
  `DESC_ARTIKEL`,
  `THUMBNAIL_ARTIKEL`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '3caa0935-0124-481b-838f-f291ee3749ea',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'kenapa sih penting donasi buku?',
  'membantu generasi muda yang ingin belajar supaya bisa sukses',
  '/upload/2217c28fd59c3ab1860cd2cce27b2a9f/thumbnail/1685597685_2217c28fd59c3ab1860cd2cce27b2a9f_VRzm7-0.jpg',
  '(ADMIN) DIYAS YAKLUNA BAIHAQI',
  '2023-05-27 17:37:53',
  '2023-06-01 05:34:45'
),
(
  '48cdb3f0-535a-48c6-900b-a4022bcc0828',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'ARTIKEL DONASI SOLO',
  'ARTIKEL DONASI SOLO',
  '/upload/2217c28fd59c3ab1860cd2cce27b2a9f/thumbnail/1685543767_2217c28fd59c3ab1860cd2cce27b2a9f_VRzm7-0.jpg',
  NULL,
  '2023-05-31 14:36:07',
  '2023-05-31 14:36:07'
),
(
  '863db6c3-dbbc-48e0-b512-009c1110a42a',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  'Kenapa harus membaca buku',
  'Biar pintar',
  '/upload/9e33b53cd6e23b2b93350c6b626981d3/thumbnail/1683751386_9e33b53cd6e23b2b93350c6b626981d3_odmnkq8hn8hs4svg7sgh.png',
  '(ADMIN) FANDI AHMAD ATQAN SETYOSO',
  '2023-05-10 20:43:06',
  '2023-05-10 21:03:11'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_bank`
--

CREATE TABLE `BOOK_BANK` (
  `ID_BOOK_BANK` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NOVEL` INT(11) NOT NULL,
  `KOMIK` INT(11) NOT NULL,
  `BIOGRAFI` INT(11) NOT NULL,
  `ILMIAH` INT(11) NOT NULL,
  `KAMUS` INT(11) NOT NULL,
  `ATLAS` INT(11) NOT NULL,
  `MAJALAH` INT(11) NOT NULL,
  `DONGENG` INT(11) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `book_bank`
--

INSERT INTO `BOOK_BANK` (
  `ID_BOOK_BANK`,
  `ID_INSTITUTIONS`,
  `NOVEL`,
  `KOMIK`,
  `BIOGRAFI`,
  `ILMIAH`,
  `KAMUS`,
  `ATLAS`,
  `MAJALAH`,
  `DONGENG`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '04de7e55-4425-3fa0-af25-a8b9938d16a5',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  50,
  26,
  37,
  41,
  37,
  46,
  31,
  26,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '1f82cf8a-fa64-391c-8564-b7f6b06ca945',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  49,
  29,
  35,
  20,
  11,
  28,
  30,
  27,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '3295c3f1-d707-3e12-8bac-36f2aabdc69e',
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  14,
  48,
  8,
  50,
  16,
  2,
  11,
  15,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '3888442d-dd6f-3bda-a2db-c04dfa809535',
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  23,
  3,
  5,
  15,
  32,
  12,
  4,
  50,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '428c3676-ed6a-34af-af58-3440bad0c55e',
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  4,
  20,
  40,
  18,
  22,
  23,
  5,
  17,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '44e6ef2d-a0c7-3504-8fbc-a59dcf51c8df',
  '9ed81d0a-e58a-3d0b-9dd3-91eafab5266f',
  23,
  34,
  50,
  49,
  46,
  41,
  37,
  26,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '603d55cf-0df8-3aa0-800a-7a2e9b5c126c',
  '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb',
  18,
  2,
  8,
  10,
  29,
  2,
  40,
  22,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '92e3a955-5c22-3e01-9c48-f75ffaf07f1e',
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  19,
  31,
  38,
  34,
  25,
  12,
  32,
  35,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  '9e4deca6-3d45-3455-aad3-b00d7ea30c13',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  33,
  49,
  42,
  17,
  31,
  1,
  8,
  16,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'b1b42e18-cc69-30bd-af7b-74c5198052ae',
  '537b0937-ddf0-3143-afb9-5511d880d50c',
  25,
  25,
  10,
  7,
  40,
  13,
  22,
  4,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'b34c50da-1732-39fe-a785-82b05e0a7f94',
  'f1b7740b-30c6-38ae-98f6-a994afbf55e6',
  38,
  10,
  46,
  4,
  11,
  41,
  29,
  28,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'd1b1e326-36ae-3f2e-8bb7-3ad35045258e',
  '05993934-409e-3c74-9559-150c4cee359b',
  7,
  20,
  12,
  17,
  20,
  15,
  32,
  1,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'd9b9d478-6192-3487-9cf6-931b0d979f3e',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  10,
  9,
  7,
  9,
  39,
  31,
  41,
  3,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'e6234c38-0f30-30a3-8dcb-cd24cf6fcc27',
  '05fae751-7d73-3b41-a567-44843869588f',
  11,
  18,
  49,
  18,
  33,
  29,
  38,
  16,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
),
(
  'ffedd74f-91f0-3587-afa1-4914d38de545',
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  15,
  37,
  41,
  5,
  39,
  27,
  44,
  34,
  NULL,
  '2023-03-29 15:44:43',
  '2023-03-29 15:44:43'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donators`
--

CREATE TABLE `DONATORS` (
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `PASSWORD_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `GENDER_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `STATUS_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_DONATORS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `POINT_DONATORS` INT(11) NOT NULL DEFAULT 0,
  `PROFILE_IMAGES_DONATORS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donators`
--

INSERT INTO `DONATORS` (
  `ID_DONATORS`,
  `NAME_DONATORS`,
  `EMAIL_DONATORS`,
  `PASSWORD_DONATORS`,
  `GENDER_DONATORS`,
  `STATUS_DONATORS`,
  `CONTACT_DONATORS`,
  `ADDRESS_DONATORS`,
  `POINT_DONATORS`,
  `PROFILE_IMAGES_DONATORS`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '7023f416-cea9-49da-a25e-6fad1ca0e2e9',
  'Fandi Setyoso',
  'fandiganz@gmail.com',
  '$2y$10$o4SzUrhDud8CRqGD2FRbUOvF2kmqlurdVjte5Pjm3zBSKILNswY/2',
  NULL,
  'Pelajar',
  '085156913021',
  'Bandung',
  10,
  NULL,
  '2023-05-10 15:54:02',
  '2023-05-10 17:10:55'
),
(
  '7b5f8d30-8bcc-46ac-ab00-2874cf216bab',
  'DIYAS YAKLUNA BAIHAQII',
  'diyas.yb@gmail.com',
  '$2y$10$w5HTd9nBMO0UK42uDXhmUeEsi4YeLQZ8g7kuFkooFRCHSthk2Thby',
  'female',
  'Pelajar',
  '081260222829',
  'medan',
  0,
  NULL,
  '2023-06-01 04:53:21',
  '2023-06-01 04:54:14'
),
(
  'b92b82c5-bed1-43ea-9d7e-99e358905f53',
  'Haikal Andriansyah',
  'mhaikalap@gmail.com',
  '$2y$10$JYRSDVTr66LnfaHBfkrUtuK.8q9Hwd4o6tXrr7ZqvYxghDTeiRK5m',
  NULL,
  'Pelajar',
  '081234456574',
  'Jl. Sukapura',
  0,
  NULL,
  '2023-03-29 18:59:59',
  '2023-03-29 18:59:59'
),
(
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  'DIYAS YAKLUNA BAIHAQI',
  'diyasyaklunabaihaqi2111@gmail.com',
  '$2y$10$oHOjUUYtKdaVsRelbUEZNu9YmLbRniIHQ1YHx.BXbsG.wPrfHSTe2',
  'male',
  'Pelajar',
  '081260222829',
  'medan',
  0,
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/photo/1684924287_d3350936a1ed4d7d9f75ece30bc6fc48_DJI_0640.jpg',
  '2023-04-16 05:19:15',
  '2023-05-31 15:48:03'
),
(
  'd51051f7-502c-445b-9546-f2eca7e59df4',
  'Arthur',
  'arthur@gmail.com',
  '$2y$10$7tnWpbA8w.4brbM7hk94.OEgWA0F2ow2o2h9DX6Ert0vVqxb4byYu',
  NULL,
  'Umum',
  '085942046918',
  'aa',
  0,
  NULL,
  '2023-04-04 12:10:47',
  '2023-04-04 12:10:47'
),
(
  'e292cb29-2146-41d3-9c24-2c87c7a38d9f',
  'DIYAS YAKLUNA BAIHAQII',
  'diyass.yb@gmail.com',
  '$2y$10$mCxNWPU7pbA4g3PyV0vPr.qCMUqsA9BzdgvR/mxSbcCapakYHO0ni',
  'male',
  'Pekerja',
  '081260222829',
  'medan',
  0,
  NULL,
  '2023-06-01 05:31:39',
  '2023-06-01 05:33:18'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_events`
--

CREATE TABLE `DONOR_EVENTS` (
  `ID_DONOR_EVENTS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_DONOR_EVENTS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `START_DATE_DONOR_EVENTS` DATE NOT NULL,
  `END_DATE_DONOR_EVENTS` DATE NOT NULL,
  `START_TIME_DONOR_EVENTS` TIME NOT NULL,
  `END_TIME_DONOR_EVENTS` TIME NOT NULL,
  `DESC_DONOR_EVENTS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `THUMBNAIL_DONOR_EVENTS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `POINT_DONOR_EVENTS` INT(11) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donor_events`
--

INSERT INTO `DONOR_EVENTS` (
  `ID_DONOR_EVENTS`,
  `ID_INSTITUTIONS`,
  `NAME_DONOR_EVENTS`,
  `START_DATE_DONOR_EVENTS`,
  `END_DATE_DONOR_EVENTS`,
  `START_TIME_DONOR_EVENTS`,
  `END_TIME_DONOR_EVENTS`,
  `DESC_DONOR_EVENTS`,
  `THUMBNAIL_DONOR_EVENTS`,
  `POINT_DONOR_EVENTS`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '5e0e4a9c-d9c3-4e45-8aad-0fce59b94fc8',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'DONASI BUKU SOLO',
  '2023-05-31',
  '2023-06-17',
  '07:30:00',
  '21:00:00',
  'DONASI BUKU DI SOLO',
  '/upload/2217c28fd59c3ab1860cd2cce27b2a9f/thumbnail/1685543581_2217c28fd59c3ab1860cd2cce27b2a9f_VRzm7-0.jpg',
  10,
  '(ADMIN) DIYAS',
  '2023-05-31 14:33:01',
  '2023-06-01 04:59:01'
),
(
  'f432351e-eb10-4107-b76b-1246b26ee584',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  'Donasi Buku Lippo Plaza Jember',
  '2023-05-11',
  '2023-06-01',
  '03:32:00',
  '03:32:00',
  'Donasi Buku Lippo Plaza Jember',
  '/upload/9e33b53cd6e23b2b93350c6b626981d3/thumbnail/1683750763_9e33b53cd6e23b2b93350c6b626981d3_odmnkq8hn8hs4svg7sgh.png',
  6,
  NULL,
  '2023-05-10 20:32:43',
  '2023-05-10 20:32:43'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_notes`
--

CREATE TABLE `DONOR_NOTES` (
  `ID_DONOR_NOTES` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONOR_EVENTS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `STATUS_DONOR_NOTES` TINYINT(4) NOT NULL,
  `SCHEDULE_DONOR_NOTES` DATE NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donor_notes`
--

INSERT INTO `DONOR_NOTES` (
  `ID_DONOR_NOTES`,
  `ID_DONATORS`,
  `ID_INSTITUTIONS`,
  `ID_DONOR_EVENTS`,
  `STATUS_DONOR_NOTES`,
  `SCHEDULE_DONOR_NOTES`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '4819f00f-b65f-4dc2-a91c-91583578d840',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  NULL,
  1,
  '2023-04-25',
  NULL,
  '2023-04-25 11:38:50',
  '2023-04-25 11:38:50'
),
(
  '58dcc2fc-dc56-4539-868c-357ed8c9fc8b',
  '7023f416-cea9-49da-a25e-6fad1ca0e2e9',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  NULL,
  3,
  '2023-05-11',
  '(ADMIN) FANDI AHMAD ATQAN SETYOSO',
  '2023-05-10 15:54:14',
  '2023-05-10 15:55:22'
),
(
  '91dad5fe-23ff-4d99-aee2-d025049bc02f',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  NULL,
  4,
  '2023-05-29',
  '(ADMIN) DIYAS',
  '2023-05-27 17:16:58',
  '2023-05-31 14:29:52'
),
(
  'c0799b82-0fc0-4475-bcd0-5953473db5cf',
  'e292cb29-2146-41d3-9c24-2c87c7a38d9f',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  NULL,
  3,
  '2023-06-03',
  '(ADMIN) DIYAS YAKLUNA BAIHAQI',
  '2023-06-01 05:32:18',
  '2023-06-01 05:34:10'
),
(
  'd67e986f-b052-40b7-b57d-686586277dc4',
  '7b5f8d30-8bcc-46ac-ab00-2874cf216bab',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  NULL,
  3,
  '2023-06-03',
  '(ADMIN) DIYAS',
  '2023-06-01 04:54:50',
  '2023-06-01 04:58:24'
),
(
  'df0e217f-a0fe-441f-b456-4e26e9f47ac0',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  NULL,
  3,
  '2023-05-29',
  '(ADMIN) DIYAS',
  '2023-05-27 17:34:58',
  '2023-05-27 17:35:41'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donor_submissions`
--

CREATE TABLE `DONOR_SUBMISSIONS` (
  `ID_DONOR_SUBMISSIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_DONATORS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `RECIPIENT_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `APPLICANT_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `BOOK_TYPE_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `QUANTITY_DONOR_SUBMISSIONS` INT(11) NOT NULL,
  `TIME_USED_DONOR_SUBMISSIONS` DATETIME DEFAULT NULL,
  `KTP_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LETTER_DONOR_SUBMISSIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `STATUS_DONOR_SUBMISSIONS` TINYINT(4) NOT NULL,
  `MODIFIED_BY` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `donor_submissions`
--

INSERT INTO `DONOR_SUBMISSIONS` (
  `ID_DONOR_SUBMISSIONS`,
  `ID_DONATORS`,
  `ID_INSTITUTIONS`,
  `RECIPIENT_DONOR_SUBMISSIONS`,
  `APPLICANT_DONOR_SUBMISSIONS`,
  `BOOK_TYPE_DONOR_SUBMISSIONS`,
  `QUANTITY_DONOR_SUBMISSIONS`,
  `TIME_USED_DONOR_SUBMISSIONS`,
  `KTP_DONOR_SUBMISSIONS`,
  `LETTER_DONOR_SUBMISSIONS`,
  `STATUS_DONOR_SUBMISSIONS`,
  `MODIFIED_BY`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '10e7cb9e-0ee0-4867-82e1-37c8629b8009',
  'e292cb29-2146-41d3-9c24-2c87c7a38d9f',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'DIYAS YAKLUNA BAIHAQI',
  'DIYAS YAKLUNA BAIHAQI',
  'Dongeng',
  111,
  NULL,
  '/upload/e292cb29214641d39c242c87c7a38d9f/ktp/1685597574_e292cb29214641d39c242c87c7a38d9f_VRzm7-0.jpg',
  '/upload/e292cb29214641d39c242c87c7a38d9f/letter/1685597574_e292cb29214641d39c242c87c7a38d9f_VRzm7-0.jpg',
  4,
  '(ADMIN) DIYAS YAKLUNA BAIHAQI',
  '2023-06-01 05:32:54',
  '2023-06-01 05:34:25'
),
(
  '212a83ce-15da-4d42-8cf2-ce852ca06c16',
  '7b5f8d30-8bcc-46ac-ab00-2874cf216bab',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'DIYAS YAKLUNA BAIHAQI',
  'DIYAS YAKLUNA BAIHAQII',
  'Dongeng',
  11,
  NULL,
  '/upload/7b5f8d308bcc46acab002874cf216bab/ktp/1685595320_7b5f8d308bcc46acab002874cf216bab_VRzm7-0.jpg',
  '/upload/7b5f8d308bcc46acab002874cf216bab/letter/1685595320_7b5f8d308bcc46acab002874cf216bab_VRzm7-0.jpg',
  4,
  '(ADMIN) DIYAS',
  '2023-06-01 04:55:20',
  '2023-06-01 04:58:38'
),
(
  '22e6629a-b5f5-4901-bfdf-fb62c6704b96',
  '7023f416-cea9-49da-a25e-6fad1ca0e2e9',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'Fandi',
  'Fandi Setyoso',
  'Ilmiah',
  11,
  NULL,
  '/upload/7023f416cea949daa25e6fad1ca0e2e9/ktp/1683737817_7023f416cea949daa25e6fad1ca0e2e9_BPMN 1.png',
  '/upload/7023f416cea949daa25e6fad1ca0e2e9/letter/1683737817_7023f416cea949daa25e6fad1ca0e2e9_BPMN 1.png',
  4,
  '(ADMIN) DIYAS',
  '2023-05-10 16:56:57',
  '2023-05-27 17:40:07'
),
(
  '74f9be8f-d271-45ca-a885-c64eaa87ec6b',
  '7023f416-cea9-49da-a25e-6fad1ca0e2e9',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  'Fandi Setyoso',
  'Fandi Setyoso',
  'Ilmiah',
  1,
  NULL,
  '/upload/7023f416cea949daa25e6fad1ca0e2e9/ktp/1683734100_7023f416cea949daa25e6fad1ca0e2e9_BPMN 1.png',
  '/upload/7023f416cea949daa25e6fad1ca0e2e9/letter/1683734100_7023f416cea949daa25e6fad1ca0e2e9_BPMN 1.png',
  3,
  '(ADMIN) FANDI AHMAD ATQAN SETYOSO',
  '2023-05-10 15:55:00',
  '2023-05-10 16:04:55'
),
(
  '9121e852-7dcf-488d-9822-5f51e21f6aa1',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'diyas',
  'DIYAS YAKLUNA BAIHAQI',
  'Novel',
  1,
  NULL,
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/ktp/1682815946_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png',
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/letter/1682815946_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png',
  3,
  'DIYAS',
  '2023-04-30 00:52:26',
  '2023-04-30 00:55:04'
),
(
  'da8d3d64-2268-4aae-8be1-02a9ebff351f',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'diyas',
  'DIYAS YAKLUNA BAIHAQI',
  'Komik',
  11,
  NULL,
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/ktp/1682914675_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png',
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/letter/1682914675_d3350936a1ed4d7d9f75ece30bc6fc48_DOBU (1).png',
  1,
  NULL,
  '2023-05-01 04:17:55',
  '2023-05-01 04:17:55'
),
(
  'f3379d70-36b6-4567-a269-c5034eb50724',
  'd3350936-a1ed-4d7d-9f75-ece30bc6fc48',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'diyas',
  'DIYAS YAKLUNA BAIHAQI',
  'Novel',
  10,
  NULL,
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/ktp/1685209257_d3350936a1ed4d7d9f75ece30bc6fc48_odmnkq8hn8hs4svg7sgh.jpg',
  '/upload/d3350936a1ed4d7d9f75ece30bc6fc48/letter/1685209257_d3350936a1ed4d7d9f75ece30bc6fc48_odmnkq8hn8hs4svg7sgh.jpg',
  3,
  '(ADMIN) DIYAS',
  '2023-05-27 17:40:57',
  '2023-05-27 17:41:22'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `EMPLOYEES` (
  `ID_EMPLOYEES` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `PASSWORD_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_EMPLOYEES` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_EMPLOYEES` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `EMPLOYEES` (
  `ID_EMPLOYEES`,
  `ID_INSTITUTIONS`,
  `NAME_EMPLOYEES`,
  `EMAIL_EMPLOYEES`,
  `PASSWORD_EMPLOYEES`,
  `CONTACT_EMPLOYEES`,
  `ADDRESS_EMPLOYEES`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '26bdd539-401a-41aa-846d-186daacd349b',
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  '(ADMIN) DIYAS YAKLUNA BAIHAQII',
  'diyas@dobu.co.id',
  '$2y$10$9E0PzB/6YuiCarLpfd3s1elpt1hUI/sWofiZRO1leCS64X3Xkox/u',
  '087772934259',
  'Jln. Isekai timur, Medan',
  '2023-03-29 17:22:26',
  '2023-06-01 05:34:52'
),
(
  '2ac079e7-e6ec-11ed-8b9e-54bf640d205f',
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  '(ADMIN) FANDI AHMAD ATQAN SETYOSO',
  'fandi@dobu.co.id',
  '$2y$10$ymjtTnnw1AeyduEwr9p3nu8FkFvNetbpSfJSmc2siKf.8ZHPNjqVe',
  '081286226512',
  'Jln. aster ter, Batak',
  NULL,
  NULL
),
(
  '9334ff07-e6ed-11ed-8b9e-54bf640d205f',
  '05993934-409e-3c74-9559-150c4cee359b',
  '(ADMIN) ARTHUR',
  'arthur@dobu.co.id',
  '$2y$10$mrrwe59SCYFnB4QRHAYMae4cXukdbNkRWsu2q3gbEvlxI40TrN4P2',
  '(+62) 818 3565 9450',
  'Ds. Uluwatu No. 86, Semarang 32328, Lampung',
  NULL,
  NULL
),
(
  'b0daa461-e6eb-11ed-8b9e-54bf640d205f',
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  '(ADMIN) M. HAIKAL ANDRIANSYAH PUTRAA',
  'haikal@dobu.co.id',
  '$2y$10$9dbx/mncUNsE7WbapFEVQuXWD3boEHR4zv4JLTJf.4aoVoeO6vJIS',
  '085256433390',
  'Jln A.Lamaggarung, Makassar',
  NULL,
  '2023-04-30 00:13:02'
),
(
  'ca667144-e6ea-11ed-8b9e-54bf640d205f',
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  '(ADMIN)FIRAS AL-GHAFFAR NUGRAHA',
  'firas@dobu.co.id',
  '$2y$10$7i1J7kFjtDcapFkDQFw7DuuDhVQn3LIb2QNG8o9iO6OV.ABzE9Hvi',
  '0853713900',
  'Jl bukan jokowi, Bandung',
  NULL,
  NULL
),
(
  'ce5532fa-e6ec-11ed-8b9e-54bf640d205f',
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  '(ADMIN) MUHAMMAD FATIH RAFFIESYA',
  'fatih@dobu.co.id',
  '$2y$10$jZS3.sCsF0ljyv/odGEcEeiTxjbM74zyhpGw8Ju264l547rQAuSnm',
  '(+62) 657 2988 2582',
  'Jr. Rajawali No. 155, Cilegon 14431, Sulsel',
  NULL,
  NULL
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `institutions`
--

CREATE TABLE `INSTITUTIONS` (
  `ID_INSTITUTIONS` CHAR(36) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `NAME_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CONTACT_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `EMAIL_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ADDRESS_INSTITUTIONS` TEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LONGITUDE_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `LATITUDE_INSTITUTIONS` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `institutions`
--

INSERT INTO `INSTITUTIONS` (
  `ID_INSTITUTIONS`,
  `NAME_INSTITUTIONS`,
  `CONTACT_INSTITUTIONS`,
  `EMAIL_INSTITUTIONS`,
  `ADDRESS_INSTITUTIONS`,
  `LONGITUDE_INSTITUTIONS`,
  `LATITUDE_INSTITUTIONS`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  '0264db2d-0f84-32ef-b732-d56d7b3d0493',
  'West Mall Grand Indonesia',
  '02123580001',
  'gi@gmail.com',
  'Jl. Tlk. Betung I No.45A, Kb. Melati, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10230',
  '-6.194538721865727 ',
  '106.81935224584291',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '04c10453-6762-3a69-9cd4-fdfc043164bd',
  'Metro Tanah Abang',
  '0213908988',
  'tanahabang@gmail.com',
  'RR68+Q7Q, Jl. K.H. Mas Mansyur, RT.13/RW.6, Kb. Kacang, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10260',
  '-6.188028284762222',
  '106.81576790380056',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '05993934-409e-3c74-9559-150c4cee359b',
  'Solo Paragon Mall',
  '02717882356',
  'paragonsolo@gmail.com',
  'Jl. Yosodipuro No.133, Mangkubumen, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57139',
  '-7.562389865550433',
  '110.80995209771206',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '05fae751-7d73-3b41-a567-44843869588f',
  'Solo Square Mall',
  '02717651500',
  'square@gmail.com',
  'Jl. Slamet Riyadi No.451-455, Pajang, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57146',
  '-7.560472858950352',
  '110.78880786887665',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '07f00675-121a-3c22-9f77-97e21324aeeb',
  'Lippo Mall Kemang',
  '02129528400',
  'lipo@pmijabar.or.id',
  'Jl. Pangeran Antasari No.36, RW.5, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12150',
  '-6.261161910146755',
  '106.8128599963201',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '0a2fdb17-2d3e-3949-9f36-68cf14b941e5',
  'Summarecon Mall Bekasi',
  '02129572888',
  'sumarekon@gmail.com',
  'Sentra Summarecon Bekasi, Jl. Boulevard Ahmad Yani, Marga Mulya, Kec. Bekasi Utara, Kota Bks, Jawa Barat 17142',
  '-6.226020939924486',
  '107.00109785537238',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '2217c28f-d59c-3ab1-860c-d2cce27b2a9f',
  'The Park Mall Solo Baru',
  '0271624545',
  'solobaru@gmail.com',
  'Jl. Ir. Soekarno, Dusun II, Madegondo, Kec. Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552',
  '-7.5988721983396355',
  '110.81665788236991',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '272f8cd3-f856-37f0-ac40-94c3b36d52da',
  'Damar Plaza',
  '075134117',
  'damar@gmail.com',
  '3943+7XG, Jl. Damar, Olo, Kec. Padang Bar., Kota Padang, Sumatera Barat',
  '-0.9443065636893715',
  '100.3549698644178',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '537b0937-ddf0-3143-afb9-5511d880d50c',
  'Super Mall Green City',
  '07513554192',
  'green@gmail.com',
  'Jl. By Pass No.2, Korong Gadang, Kec. Kuranji, Kota Padang, Sumatera Barat 25171',
  '-0.9160587549292628',
  '100.39812232631375',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '731ef6df-6171-33fd-bd05-93cd76db2cdd',
  '23 Paskal Shopping Center',
  '02286062942',
  'Pascal@gmail.com',
  'Jl. Pasir Kaliki No.25-27, Kb. Jeruk, Kec. Andir, Kota Bandung, Jawa Barat 40241',
  '-6.915017674100582',
  '107.59453879632751',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '9aa2e5e7-3186-3d65-9b53-75f74c42b1eb',
  'Trans Studio Bandung',
  '08118118244',
  'tsm@gmail.com',
  'Trans Studio Mall, Jl. Gatot Subroto No.289A, Cibangkong, Kec. Batununggal, Kota Bandung, Jawa Barat 40273',
  '-6.924412677972702',
  '107.63594819313195',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '9d25e4f1-fbaf-359e-9e45-890677a67c0d',
  'Kota Kasablanka',
  '02129465000',
  'kokas@gmail.com',
  'Jl. Casablanca Raya Kav. 88, Menteng Dalam, Kec. Tebet, Daerah Khusus Ibukota Jakarta 12870',
  '-6.211147448337681',
  '106.86565155067206',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '9e33b53c-d6e2-3b2b-9335-0c6b626981d3',
  'Lippo Plaza Jember',
  '081270040328',
  'Lipojember@gmail.com',
  'Jl. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131',
  '-8.173938273451496',
  '113.68785402658317',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  '9ed81d0a-e58a-3d0b-9dd3-91eafab5266f',
  'Grand City Mall Surabaya',
  '0315459000',
  'grandcity@gmail.com',
  'Jl. Walikota Mustajab No.1, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272',
  '-7.2620419827907075',
  '112.75000044883716',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
),
(
  'f1b7740b-30c6-38ae-98f6-a994afbf55e6',
  'RITA Supermall Purwokerto',
  '0281632006',
  'rsm@gmail.com',
  'Jl. Jend. Soedirman No.296, Pereng, Sokanegara, Kec. Purwokerto Tim., Kabupaten Banyumas, Jawa Tengah 53116',
  '-7.425384197160473',
  '109.23010400674659',
  '2023-03-29 17:22:26',
  '2023-03-29 17:22:26'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `MIGRATIONS` (
  `ID` INT(10) UNSIGNED NOT NULL,
  `MIGRATION` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `BATCH` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `MIGRATIONS` (
  `ID`,
  `MIGRATION`,
  `BATCH`
) VALUES (
  1,
  '2014_10_12_000000_create_users_table',
  1
),
(
  2,
  '2014_10_12_100000_create_password_reset_tokens_table',
  1
),
(
  3,
  '2014_10_12_100000_create_password_resets_table',
  1
),
(
  4,
  '2019_08_19_000000_create_failed_jobs_table',
  1
),
(
  5,
  '2019_12_14_000001_create_personal_access_tokens_table',
  1
),
(
  6,
  '2023_01_03_072915_create_donators_table',
  1
),
(
  7,
  '2023_01_03_073540_create_institutions_table',
  1
),
(
  8,
  '2023_01_03_073932_create_status_donors_table',
  1
),
(
  9,
  '2023_01_03_074537_create_employees_table',
  1
),
(
  10,
  '2023_01_03_074647_create_book_bank_table',
  1
),
(
  11,
  '2023_01_03_074814_create_donor_submissions_table',
  1
),
(
  12,
  '2023_01_03_074929_create_donor_events_table',
  1
),
(
  13,
  '2023_01_03_075110_create_donor_notes_table',
  1
),
(
  14,
  '2023_01_08_161425_create_articel_table',
  1
),
(
  15,
  '2023_03_30_002045_dobu',
  1
),
(
  16,
  '2023_05_19_100223_create_faq_tables',
  2
),
(
  17,
  '2023_05_19_101113_create_questions_table',
  3
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `QUESTIONS` (
  `ID` BIGINT(20) UNSIGNED NOT NULL,
  `NAMA_FAQ` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `ISI_FAQ` LONGTEXT COLLATE UTF8MB4_UNICODE_CI NOT NULL,
  `CREATED_AT` TIMESTAMP NULL DEFAULT NULL,
  `UPDATED_AT` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `QUESTIONS` (
  `ID`,
  `NAMA_FAQ`,
  `ISI_FAQ`,
  `CREATED_AT`,
  `UPDATED_AT`
) VALUES (
  10,
  'Siapa dibalik DOBU?',
  'DIYAS YAKLUNA BAIHAQI (1202204058)\r\nFIRAS AL-GHAFFAR NUGRAHA (1202194273)\r\nM. HAIKAL ANDRIANSYAH PUTRA (1202204237)\r\nFANDI AHMAD ATQAN SETYOSO (1202204103)\r\nMUHAMMAD FATIH RAFFIESYA (1202204306)\r\nARTHUR (1202204220)',
  '2023-05-20 04:11:31',
  '2023-05-20 04:11:31'
),
(
  11,
  'Apa Itu Dobu',
  'DOBU sigkatan dari donasi buku, sebauh website yang mempermudah masyarakat indonesia untuk melakukan donasi buku dimana pun dan kapan pun.',
  '2023-05-20 04:12:30',
  '2023-06-01 04:59:47'
),
(
  12,
  'kenapa Donasi Buku itu Penting?',
  'Dengan mendonasikan buku, Anda dapat membantu orang-orang yang kurang mampu atau tinggal di daerah terpencil untuk mendapatkan akses ke bahan bacaan yang berkualitas. Ini memberi mereka kesempatan untuk belajar, meningkatkan literasi, dan mengembangkan keterampilan yang diperlukan untuk kehidupan yang lebih baik.',
  '2023-05-20 04:18:00',
  '2023-05-20 04:18:29'
),
(
  13,
  'donasi buku',
  'donasi buku',
  '2023-05-27 17:42:38',
  '2023-05-27 17:42:38'
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_donor`
--

CREATE TABLE `STATUS_DONOR` (
  `ID_STATUS_DONOR` TINYINT(3) UNSIGNED NOT NULL,
  `NAME_STATUS_DONOR` VARCHAR(255) COLLATE UTF8MB4_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

--
-- Dumping data untuk tabel `status_donor`
--

INSERT INTO `STATUS_DONOR` (
  `ID_STATUS_DONOR`,
  `NAME_STATUS_DONOR`
) VALUES (
  1,
  'Menunggu Persetujuan'
),
(
  2,
  'Dijadwalkan'
),
(
  3,
  'Diterima'
),
(
  4,
  'Ditolak'
);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `ARTIKEL` ADD PRIMARY KEY (`ID_ARTIKEL`);

--
-- Indeks untuk tabel `book_bank`
--
ALTER TABLE `BOOK_BANK` ADD PRIMARY KEY (`ID_BOOK_BANK`);

--
-- Indeks untuk tabel `donators`
--
ALTER TABLE `DONATORS` ADD PRIMARY KEY (`ID_DONATORS`), ADD UNIQUE KEY `DONATORS_EMAIL_DONATORS_UNIQUE` (`EMAIL_DONATORS`);

--
-- Indeks untuk tabel `donor_events`
--
ALTER TABLE `DONOR_EVENTS` ADD PRIMARY KEY (`ID_DONOR_EVENTS`);

--
-- Indeks untuk tabel `donor_notes`
--
ALTER TABLE `DONOR_NOTES` ADD PRIMARY KEY (`ID_DONOR_NOTES`);

--
-- Indeks untuk tabel `donor_submissions`
--
ALTER TABLE `DONOR_SUBMISSIONS` ADD PRIMARY KEY (`ID_DONOR_SUBMISSIONS`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `EMPLOYEES` ADD PRIMARY KEY (`ID_EMPLOYEES`), ADD UNIQUE KEY `EMPLOYEES_EMAIL_EMPLOYEES_UNIQUE` (`EMAIL_EMPLOYEES`);

--
-- Indeks untuk tabel `institutions`
--
ALTER TABLE `INSTITUTIONS` ADD PRIMARY KEY (`ID_INSTITUTIONS`), ADD UNIQUE KEY `INSTITUTIONS_EMAIL_INSTITUTIONS_UNIQUE` (`EMAIL_INSTITUTIONS`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `MIGRATIONS` ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `QUESTIONS` ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `status_donor`
--
ALTER TABLE `STATUS_DONOR` ADD PRIMARY KEY (`ID_STATUS_DONOR`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `MIGRATIONS` MODIFY `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `QUESTIONS` MODIFY `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `status_donor`
--
ALTER TABLE `STATUS_DONOR` MODIFY `ID_STATUS_DONOR` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;