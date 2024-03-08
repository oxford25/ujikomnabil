-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_ujikom
CREATE DATABASE IF NOT EXISTS `db_ujikom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_ujikom`;

-- Dumping structure for table db_ujikom.barangs
CREATE TABLE IF NOT EXISTS `barangs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` double(8,2) NOT NULL,
  `harga_jual` double(8,2) NOT NULL,
  `satuan_id` int NOT NULL,
  `stok` int NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.barangs: ~6 rows (approximately)
INSERT INTO `barangs` (`id`, `kode`, `nama`, `kategori_id`, `harga_beli`, `harga_jual`, `satuan_id`, `stok`, `diskon`, `created_at`, `updated_at`) VALUES
	(1, '20243100001', 'mie ayam', '1', 100000.00, 10000.00, 10, 22, 0.00, '2024-03-01 10:20:08', '2024-03-07 04:16:36'),
	(2, '20243100002', 'Teh botol', '1', 75000.00, 5000.00, 9, 10, 0.00, '2024-03-01 12:13:28', '2024-03-07 04:16:45'),
	(3, '20243100003', 'teh kotak', '2', 40000.00, 4000.00, 9, 23, 0.00, '2024-03-07 02:32:22', '2024-03-07 04:24:26'),
	(4, '20243100004', 'coca cola', '2', 113500.00, 6000.00, 9, 23, 0.00, '2024-03-07 02:34:38', '2024-03-07 04:24:26'),
	(5, '20243100005', 'fanta', '2', 50000.00, 5000.00, 8, 24, 0.00, '2024-03-07 04:11:24', '2024-03-07 04:17:24'),
	(6, '20243100006', 'fanta', '2', 50000.00, 5000.00, 8, 24, 0.00, '2024-03-07 04:13:20', '2024-03-07 04:17:38');

-- Dumping structure for table db_ujikom.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table db_ujikom.kategoris
CREATE TABLE IF NOT EXISTS `kategoris` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.kategoris: ~2 rows (approximately)
INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
	(1, 'Makanan', '2024-03-01 10:18:24', '2024-03-01 10:19:08'),
	(2, 'Minuman', '2024-03-01 10:18:37', '2024-03-01 10:19:16');

-- Dumping structure for table db_ujikom.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.migrations: ~10 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_01_08_132653_create_kategoris_table', 1),
	(6, '2024_01_08_132723_create_satuans_table', 1),
	(7, '2024_01_08_132733_create_barangs_table', 1),
	(8, '2024_01_12_125330_create_transaksis_table', 1),
	(9, '2024_01_12_125358_create_transaksi_sementaras_table', 1),
	(10, '2024_01_15_004113_create_transaksi_details_table', 1);

-- Dumping structure for table db_ujikom.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table db_ujikom.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table db_ujikom.satuans
CREATE TABLE IF NOT EXISTS `satuans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.satuans: ~2 rows (approximately)
INSERT INTO `satuans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
	(8, 'Kaleng', '2024-03-07 04:15:02', '2024-03-07 04:15:02'),
	(9, 'Botol', '2024-03-07 04:15:08', '2024-03-07 04:15:08'),
	(10, 'porsi', '2024-03-07 04:16:23', '2024-03-07 04:16:23');

-- Dumping structure for table db_ujikom.transaksis
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `bayar` double(8,2) NOT NULL,
  `kembali` double(8,2) NOT NULL,
  `kode_kasir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.transaksis: ~12 rows (approximately)
INSERT INTO `transaksis` (`id`, `kode_transaksi`, `total`, `bayar`, `kembali`, `kode_kasir`, `tanggal`, `created_at`, `updated_at`) VALUES
	(1, '2024310000001', 22500.00, 50000.00, 27500.00, 'K-20243100002', '2024-03-01 17:24:33', '2024-03-01 10:24:33', '2024-03-01 10:24:33'),
	(2, '2024310000002', 11700.00, 20000.00, 8300.00, 'K-20243100002', '2024-03-01 17:29:33', '2024-03-01 10:29:33', '2024-03-01 10:29:33'),
	(3, '2024310000003', 15000.00, 50000.00, 35000.00, 'K-20243100002', '2024-03-01 19:14:49', '2024-03-01 12:14:49', '2024-03-01 12:14:49'),
	(4, '2024310000004', 10000.00, 30000.00, 20000.00, 'K-20243100002', '2024-03-02 12:45:50', '2024-03-02 05:45:50', '2024-03-02 05:45:50'),
	(5, '2024310000005', 15000.00, 30000.00, 15000.00, 'K-20243100002', '2024-03-02 15:09:37', '2024-03-02 08:09:37', '2024-03-02 08:09:37'),
	(6, '2024310000006', 15000.00, 100000.00, 85000.00, 'K-20243100002', '2024-03-04 09:34:33', '2024-03-04 02:34:33', '2024-03-04 02:34:33'),
	(7, '2024310000007', 15000.00, 100000.00, 85000.00, 'K-20243100004', '2024-03-04 12:12:36', '2024-03-04 05:12:36', '2024-03-04 05:12:36'),
	(8, '2024310000008', 10000.00, 20000.00, 10000.00, 'K-20243100004', '2024-03-05 15:17:53', '2024-03-05 08:17:53', '2024-03-05 08:17:53'),
	(9, '2024310000009', 10000.00, 10000.00, 0.00, 'K-20243100004', '2024-03-05 22:05:00', '2024-03-05 15:05:00', '2024-03-05 15:05:00'),
	(10, '2024310000010', 10000.00, 20000.00, 10000.00, 'K-20243100004', '2024-03-06 09:04:01', '2024-03-06 02:04:01', '2024-03-06 02:04:01'),
	(11, '2024310000011', 20000.00, 20000.00, 0.00, 'K-20243100004', '2024-03-07 07:42:38', '2024-03-07 00:42:38', '2024-03-07 00:42:38'),
	(12, '2024310000012', 10000.00, 20000.00, 10000.00, 'K-20243100004', '2024-03-07 08:19:04', '2024-03-07 01:19:04', '2024-03-07 01:19:04'),
	(13, '2024310000013', 15000.00, 50000.00, 50000.00, 'K-20243100004', '2024-03-07 09:24:49', '2024-03-07 02:24:49', '2024-03-07 02:24:49'),
	(14, '2024310000014', 10000.00, 10000.00, 0.00, 'K-20243100004', '2024-03-07 11:24:26', '2024-03-07 04:24:26', '2024-03-07 04:24:26');

-- Dumping structure for table db_ujikom.transaksi_details
CREATE TABLE IF NOT EXISTS `transaksi_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double(8,2) NOT NULL,
  `jumlah` int NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.transaksi_details: ~17 rows (approximately)
INSERT INTO `transaksi_details` (`id`, `kode_transaksi`, `barang`, `harga`, `jumlah`, `diskon`, `total`, `created_at`, `updated_at`) VALUES
	(1, '2024310000001', 'mie ayam', 5000.00, 5, 10.00, 22500.00, '2024-03-01 10:24:33', '2024-03-01 10:24:33'),
	(2, '2024310000002', 'mie ayam', 13000.00, 1, 10.00, 11700.00, '2024-03-01 10:29:33', '2024-03-01 10:29:33'),
	(3, '2024310000003', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-01 12:14:49', '2024-03-01 12:14:49'),
	(4, '2024310000003', 'Teh botol', 5000.00, 1, 0.00, 5000.00, '2024-03-01 12:14:49', '2024-03-01 12:14:49'),
	(5, '2024310000004', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-02 05:45:50', '2024-03-02 05:45:50'),
	(6, '2024310000005', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-02 08:09:37', '2024-03-02 08:09:37'),
	(7, '2024310000005', 'Teh botol', 5000.00, 1, 0.00, 5000.00, '2024-03-02 08:09:37', '2024-03-02 08:09:37'),
	(8, '2024310000006', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-04 02:34:33', '2024-03-04 02:34:33'),
	(9, '2024310000006', 'Teh botol', 5000.00, 1, 0.00, 5000.00, '2024-03-04 02:34:33', '2024-03-04 02:34:33'),
	(10, '2024310000007', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-04 05:12:36', '2024-03-04 05:12:36'),
	(11, '2024310000007', 'Teh botol', 5000.00, 1, 0.00, 5000.00, '2024-03-04 05:12:36', '2024-03-04 05:12:36'),
	(12, '2024310000008', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-05 08:17:53', '2024-03-05 08:17:53'),
	(13, '2024310000009', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-05 15:05:00', '2024-03-05 15:05:00'),
	(14, '2024310000010', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-06 02:04:01', '2024-03-06 02:04:01'),
	(15, '2024310000011', 'mie ayam', 10000.00, 2, 0.00, 20000.00, '2024-03-07 00:42:38', '2024-03-07 00:42:38'),
	(16, '2024310000012', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-07 01:19:04', '2024-03-07 01:19:04'),
	(17, '2024310000013', 'mie ayam', 10000.00, 1, 0.00, 10000.00, '2024-03-07 02:24:49', '2024-03-07 02:24:49'),
	(18, '2024310000013', 'Teh botol', 5000.00, 1, 0.00, 5000.00, '2024-03-07 02:24:49', '2024-03-07 02:24:49'),
	(19, '2024310000014', 'teh kotak', 4000.00, 1, 0.00, 4000.00, '2024-03-07 04:24:26', '2024-03-07 04:24:26'),
	(20, '2024310000014', 'coca cola', 6000.00, 1, 0.00, 6000.00, '2024-03-07 04:24:26', '2024-03-07 04:24:26');

-- Dumping structure for table db_ujikom.transaksi_sementaras
CREATE TABLE IF NOT EXISTS `transaksi_sementaras` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_id` int NOT NULL,
  `harga` double(8,2) NOT NULL,
  `jumlah` int NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.transaksi_sementaras: ~2 rows (approximately)
INSERT INTO `transaksi_sementaras` (`id`, `kode_transaksi`, `barang_id`, `harga`, `jumlah`, `diskon`, `total`, `created_at`, `updated_at`) VALUES
	(1, '2024310000015', 1, 10000.00, 1, 0.00, 10000.00, '2024-03-08 06:26:11', '2024-03-08 06:26:11'),
	(2, '2024310000015', 2, 5000.00, 1, 0.00, 5000.00, '2024-03-08 06:26:18', '2024-03-08 06:26:18');

-- Dumping structure for table db_ujikom.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_ujikom.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `kode`, `nama`, `foto`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'K-20243100003', 'andhika', NULL, 'andhika111@gmail.com', NULL, '$2y$12$1AF67DesxKhb26BDHXlnHeZrFWBftK7QTC6s0ghkSrUXBfn2DiKYq', 'admin', NULL, '2024-03-01 10:16:56', '2024-03-01 10:16:56'),
	(6, 'K-20243100004', 'adul', NULL, 'adul111@gmail.com', NULL, '$2y$12$lrrL8SEW56fd07Mj5SB7O.kFXWUbjpOW66EV0yz94u.JgCiZSrKky', 'kasir', NULL, '2024-03-04 08:05:25', '2024-03-04 08:05:25'),
	(7, 'K-20243100005', 'nabil', NULL, 'nabil111@gmail.com', NULL, '$2y$12$GGrf7w/Z.1v3VABUbNd1weAiOkTuvcHrxqX/La/Quv/lvXqOuusWa', 'admin', NULL, '2024-03-07 03:09:44', '2024-03-07 03:09:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
