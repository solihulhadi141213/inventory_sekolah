-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2025 at 08:36 PM
-- Server version: 9.1.0
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'password_hash',
  `admin_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_name`, `admin_email`, `admin_password`, `admin_image`) VALUES
(1, 'Claire Miratussany', 'dhiforester@gmail.com', '$2y$10$misFrfYHskXzKnQbHPqLpOcszLFYZmqxhCT9Fkd3lLsTjJJDwNxxC', '7bb94f492b5b7930e977503eabf2ee.jpg'),
(3, 'Santi Nursari', 'solihulhadi1412@gmail.com', '$2y$10$7QEsfYISpXiAgB86svpTLeXGt5MMb7oEgEXndKwGnvSYTmGNyZr2.', 'cfc1eeafdeeac7732170146a1e8f06.jpg'),
(4, 'Solihul Hadi', 'solihulhadi1412@gmail.com', '$2y$10$G4fufuOFth/y4mLrEECX9uY9wSOkALVC3TzJAbP.FzpF9EPCS/IiS', '1228a184d4775d6253fd1fcbfebd25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `app_configuration`
--

DROP TABLE IF EXISTS `app_configuration`;
CREATE TABLE IF NOT EXISTS `app_configuration` (
  `id_configuration` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_keyword` json NOT NULL,
  `app_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_base_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `app_year` int NOT NULL,
  `app_company` json NOT NULL,
  PRIMARY KEY (`id_configuration`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `app_configuration`
--

INSERT INTO `app_configuration` (`id_configuration`, `app_title`, `app_keyword`, `app_description`, `app_favicon`, `app_logo`, `app_base_url`, `app_author`, `app_year`, `app_company`) VALUES
(1, 'InvSchool v1.0', '[\"siswa\", \"sekolah\", \"inventariis\", \"permintaan perbaikan\"]', 'Aplikasi untuk mengelola inventaris sekolah dan manajemen permintaan perbaikan sarana prasarana sekolah', '770c16f183200d90756f024f3414db.png', '33568fb879f888bf6b2fc389fdbc2a.png', 'http://localhost/inventory_sekolah', 'Aurel', 2025, '{\"company_name\": \"SMK Pertiwi Kuningan\", \"company_email\": \"smkpertiwikuningan@gmail.com\", \"company_address\": \"Jl. Siliwangi No.26A Kuningan Jawa Barat\", \"company_contact\": \"(0232) 875135\"}');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

DROP TABLE IF EXISTS `captcha`;
CREATE TABLE IF NOT EXISTS `captcha` (
  `id_captcha` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `captcha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `datetime_creat` datetime NOT NULL,
  `datetime_expired` datetime NOT NULL,
  PRIMARY KEY (`id_captcha`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id_captcha`, `captcha`, `datetime_creat`, `datetime_expired`) VALUES
(304, 'DKXXR', '2025-11-07 18:56:07', '2025-11-07 18:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ex: kelas 1, 2, 3 dst',
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ex: 1A, 1B, 2A, 2B dst',
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `jenjang`, `kelas`) VALUES
(1, 'Kelas 1', '1 Alpa'),
(2, 'Kelas 1', '1 Beta'),
(3, 'Kelas 1', '1 Charly'),
(4, 'Kelas 2', '2 A'),
(5, 'Kelas 2', '2 B'),
(6, 'Kelas 2', '2 C'),
(7, 'Kelas 3', '3 A'),
(8, 'Kelas 3', '3 B'),
(10, 'Kelas 3', '3 C');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan`
--

DROP TABLE IF EXISTS `permintaan`;
CREATE TABLE IF NOT EXISTS `permintaan` (
  `id_permintaan` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_siswa` int UNSIGNED NOT NULL,
  `id_kelas` int NOT NULL,
  `tgl_permintaan` datetime NOT NULL,
  `tgl_selesai` datetime DEFAULT NULL COMMENT 'hanya jika selesai',
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kebutuhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Segera, Penting, Biasa',
  `keterangan_permintaan` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'keterangan permintaan',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Diterima, Ditolak, Proses, Selesai',
  `keterangan_pengambilan` text COLLATE utf8mb4_unicode_ci COMMENT 'keterangan jika selesai',
  PRIMARY KEY (`id_permintaan`),
  KEY `id_siswa` (`id_siswa`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permintaan`
--

INSERT INTO `permintaan` (`id_permintaan`, `id_siswa`, `id_kelas`, `tgl_permintaan`, `tgl_selesai`, `kategori`, `kebutuhan`, `keterangan_permintaan`, `status`, `keterangan_pengambilan`) VALUES
(3, 3, 1, '2025-11-08 00:10:00', '2025-11-08 02:14:00', 'Pembelian', 'Penting', 'Pembelian tanaman hias untuk di depan kelas', 'Selesai', ''),
(4, 5, 1, '2025-11-08 00:10:00', '0000-00-00 00:00:00', 'Isi Ulang', 'Segera', 'Perbaiki bangku kelas', 'Selesai', 'Silahkan ambiil barang di aula'),
(5, 4, 1, '2025-11-08 01:01:00', '0000-00-00 00:00:00', 'Pembelian', 'Penting', 'Pembelian perlengkapan kebersihan', 'Ditolak', ''),
(7, 3, 1, '2025-11-08 03:08:00', '0000-00-00 00:00:00', 'Pembelian', 'Segera', 'Pembelian perangkat penulisan', 'Proses', '');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_status`
--

DROP TABLE IF EXISTS `permintaan_status`;
CREATE TABLE IF NOT EXISTS `permintaan_status` (
  `id_permintaan_status` int NOT NULL AUTO_INCREMENT,
  `id_permintaan` int UNSIGNED NOT NULL,
  `id_admin` int UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Diterima, Ditolak, Proses, Selesai 	',
  PRIMARY KEY (`id_permintaan_status`),
  KEY `id_permintaan` (`id_permintaan`),
  KEY `id_admin` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permintaan_status`
--

INSERT INTO `permintaan_status` (`id_permintaan_status`, `id_permintaan`, `id_admin`, `tanggal`, `keterangan`, `foto`, `status`) VALUES
(1, 5, 1, '2025-11-08 02:10:00', 'Barang masih bisa digunakan', '', 'Ditolak'),
(2, 4, 1, '2025-11-08 02:11:00', 'Pengajuan diterima, tunggu update beriikutnya', '', 'Diterima'),
(3, 4, 1, '2025-11-08 02:11:00', 'Barang sedang diperbaiki', 'okx5O4pYSr6BBNkCq9GLlLPZktNK9Y0vs3fy.png', 'Proses'),
(4, 4, 1, '2025-11-08 02:12:00', 'Silahkan ambiil barang di aula', 'HHj5d82JpfAyZXSOKhO64YY1RLNZ28kT2G2f.jpg', 'Selesai'),
(5, 3, 1, '2025-11-08 02:14:00', '', '', 'Diterima'),
(6, 3, 1, '2025-11-08 02:14:00', '', '', 'Proses'),
(7, 3, 1, '2025-11-08 02:14:00', '', '', 'Selesai'),
(8, 7, 1, '2025-11-08 03:09:00', 'Pengajuan diterima, tunggu update beriikutnya', '', 'Diterima'),
(9, 7, 1, '2025-11-08 03:09:00', ' Barang dalam proses perbaikan', 'ajSOflazjP1GrirCh1Em38LASHrFW7sgectq.jpg', 'Proses');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_kelas` int NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Laki-laki, Perempuan',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'password_hash',
  `foto_siswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_siswa`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nis`, `nama`, `gender`, `email`, `password`, `foto_siswa`) VALUES
(3, 1, '20603010', 'Dewi Widiastuti', 'Perempuan', 'dewiwidiastuti@gmail.com', '$2y$10$iu8eDIBsHBZ1IEFA2pH9teRof0Mw2xG3wNzuShBKejENlXlnP2XkO', '4GUe9qI3JAag4xSDVnw5KGl4ZaCfRznkGFsG.jpg'),
(4, 1, '206030101', 'Windy Yanuariska', 'Perempuan', 'windygiga@gmail.com', '$2y$10$D6uPD9WRmgrhGgdO6MWyBOywi0r6/4u7Ii0gzSiiFdgezKWUu.Qdu', 'EZxcpx19r2Aikn3z0l7rAfD2VrvBpWOLSfC1.jpg'),
(5, 1, '206030102', 'Unengsih Nurmalasari', 'Perempuan', 'unengsih@gmail.com', '$2y$10$V6s7vJb9blOeIRx4kgDln.omPkhJeHZRe1WV4S4l8BuGXCkXZPq4q', 'yWH20moPnSZ9sDg9eLeD1XNtYX2hc8NNDYlB.jpeg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permintaan`
--
ALTER TABLE `permintaan`
  ADD CONSTRAINT `permintaan_to_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permintaan_to_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permintaan_status`
--
ALTER TABLE `permintaan_status`
  ADD CONSTRAINT `status_to_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_to_permintaan` FOREIGN KEY (`id_permintaan`) REFERENCES `permintaan` (`id_permintaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_to_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
