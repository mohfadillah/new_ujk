-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 07:47 AM
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
-- Database: `web_mohfadillah_pointofsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `id_kategori`, `nama_barang`, `satuan`, `qty`, `harga`, `created_at`, `updated_at`) VALUES
(1, 5, 'Barang 5', 'Kilogram', 100, 5000, '2024-07-09 20:35:26', '2024-07-09 20:37:29'),
(2, 4, 'Barang 4', 'Ons', 100, 5000, '2024-07-09 20:36:17', '2024-07-09 20:36:17'),
(3, 3, 'Barang 3', 'Gram', 100, 5000, '2024-07-09 20:37:53', '2024-07-09 20:37:53'),
(4, 2, 'Barang 2', 'Kilogram', 100, 5000, '2024-07-09 20:38:11', '2024-07-09 20:38:11'),
(5, 1, 'Barang 1', 'Gram', 100, 5000, '2024-07-09 20:38:31', '2024-07-09 20:38:31'),
(6, 4, 'tes', 'tes', 100, 152100, '2024-07-09 20:49:33', '2024-07-09 20:49:56'),
(7, 4, 'tes', 'tes', 100, 50000, '2024-07-10 00:19:14', '2024-07-10 00:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualans`
--

CREATE TABLE `detail_penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_penjualan` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_penjualans`
--

INSERT INTO `detail_penjualans` (`id`, `id_penjualan`, `id_barang`, `jumlah`, `harga`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 2, 4000, 8000, '2024-07-10 07:46:54', '2024-07-10 07:46:54'),
(2, 2, 5, 2, 4000, 8000, '2024-07-10 07:47:13', '2024-07-10 07:47:13'),
(3, 3, 5, 2, 4000, 8000, '2024-07-10 07:48:20', '2024-07-10 07:48:20'),
(4, 4, 5, 2, 4000, 8000, '2024-07-10 07:52:41', '2024-07-10 07:52:41'),
(5, 4, 4, 2, 4000, 8000, '2024-07-10 07:52:41', '2024-07-10 07:52:41'),
(6, 5, 3, 5, 3000, 15000, '2024-07-10 08:32:10', '2024-07-10 08:32:10'),
(7, 6, 1, 2, 2000, 4000, '2024-07-10 08:33:38', '2024-07-10 08:33:38'),
(8, 7, 1, 1, 2000, 2000, '2024-07-10 19:03:40', '2024-07-10 19:03:40'),
(9, 8, 3, 2, 4000, 8000, '2024-07-10 19:15:39', '2024-07-10 19:15:39'),
(10, 8, 4, 10, 2000, 20000, '2024-07-10 19:15:39', '2024-07-10 19:15:39'),
(11, 9, 5, 2, 2000, 4000, '2024-07-10 19:16:50', '2024-07-10 19:16:50');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Kategori 1', '2024-07-09 20:02:45', '2024-07-09 20:02:45'),
(2, 'Kategori 2', '2024-07-09 20:02:59', '2024-07-09 20:02:59'),
(3, 'Kategori 3', '2024-07-09 20:03:06', '2024-07-09 20:03:06'),
(4, 'Kategori 4', '2024-07-09 20:03:14', '2024-07-09 20:03:14'),
(5, 'Kategori 5', '2024-07-09 20:03:22', '2024-07-09 20:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'Kasir', NULL, NULL),
(3, 'Pimpinan', NULL, NULL);

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
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000000_create_users_table', 2),
(5, '2024_07_10_021801_create_levels_table', 3),
(6, '2024_07_10_025217_create_kategori_barang_table', 4),
(7, '2024_07_10_031510_create_barangs_table', 5),
(9, '2024_07_10_035555_create_penjualans_table', 6),
(12, '2024_07_10_061210_create_detail_penjualans_table', 7),
(13, '2024_07_10_143835_create_penjualan', 8);

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
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `nominal_bayar` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_user`, `kode_transaksi`, `tanggal_transaksi`, `nominal_bayar`, `kembalian`, `created_at`, `updated_at`) VALUES
(1, 2, 'TR-10072024001', '2024-07-10', 10000.00, 2000.00, '2024-07-10 07:46:54', '2024-07-10 07:46:54'),
(2, 2, 'TR-10072024001', '2024-07-10', 10000.00, 2000.00, '2024-07-10 07:47:13', '2024-07-10 07:47:13'),
(3, 2, 'TR-10072024001', '2024-07-10', 10000.00, 2000.00, '2024-07-10 07:48:20', '2024-07-10 07:48:20'),
(4, 1, 'TR-10072024004', '2024-07-10', 20000.00, 4000.00, '2024-07-10 07:52:41', '2024-07-10 07:52:41'),
(5, 2, 'TR-10072024005', '2024-07-10', 20000.00, 5000.00, '2024-07-10 08:32:10', '2024-07-10 08:32:10'),
(6, 2, 'TR-10072024006', '2024-07-10', 5000.00, 1000.00, '2024-07-10 08:33:38', '2024-07-10 08:33:38'),
(7, 2, 'TR-11072024007', '2024-07-11', 5000.00, 3000.00, '2024-07-10 19:03:40', '2024-07-10 19:03:40'),
(8, 1, 'TR-11072024008', '2024-07-11', 30000.00, 2000.00, '2024-07-10 19:15:39', '2024-07-10 19:15:39'),
(9, 2, 'TR-11072024009', '2024-07-11', 5000.00, 1000.00, '2024-07-10 19:16:50', '2024-07-10 19:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualans`
--

INSERT INTO `penjualans` (`id`, `id_user`, `kode_transaksi`, `tanggal_transaksi`, `created_at`, `updated_at`) VALUES
(1, 3, 'TR10072024001', '2024-07-10', '2024-07-09 21:18:39', '2024-07-09 21:18:39'),
(2, 2, 'TR10072024002', '2024-07-10', '2024-07-09 21:19:00', '2024-07-09 21:19:00'),
(3, 2, 'TR-10072024003', '2024-07-10', '2024-07-09 23:22:50', '2024-07-09 23:22:50'),
(4, 2, 'TR-10072024003', '2024-07-10', '2024-07-09 23:24:06', '2024-07-09 23:24:06'),
(5, 2, 'TR-10072024005', '2024-07-10', '2024-07-09 23:33:30', '2024-07-09 23:33:30'),
(6, 2, 'TR-10072024006', '2024-07-10', '2024-07-09 23:52:30', '2024-07-09 23:52:30'),
(7, 2, 'TR-10072024007', '2024-07-10', '2024-07-09 23:58:04', '2024-07-09 23:58:04'),
(8, 2, 'TR-10072024008', '2024-07-10', '2024-07-10 01:03:27', '2024-07-10 01:03:27'),
(9, 2, 'TR-10072024009', '2024-07-10', '2024-07-10 06:47:56', '2024-07-10 06:47:56'),
(10, 1, 'TR-10072024010', '2024-07-10', '2024-07-10 06:56:23', '2024-07-10 06:56:23'),
(11, 1, 'TR-10072024010', '2024-07-10', '2024-07-10 06:57:16', '2024-07-10 06:57:16'),
(12, 1, 'TR-10072024010', '2024-07-10', '2024-07-10 06:57:36', '2024-07-10 06:57:36'),
(13, 1, 'TR-10072024010', '2024-07-10', '2024-07-10 06:58:02', '2024-07-10 06:58:02'),
(14, 2, 'TR-10072024014', '2024-07-10', '2024-07-10 07:07:59', '2024-07-10 07:07:59'),
(15, 2, 'TR-10072024014', '2024-07-10', '2024-07-10 07:09:52', '2024-07-10 07:09:52'),
(16, 2, 'TR-10072024016', '2024-07-10', '2024-07-10 07:11:31', '2024-07-10 07:11:31'),
(17, 2, 'TR-10072024017', '2024-07-10', '2024-07-10 07:19:59', '2024-07-10 07:19:59'),
(18, 1, 'TR-10072024018', '2024-07-12', '2024-07-10 07:28:39', '2024-07-10 07:28:39'),
(19, 1, 'TR-10072024019', '2024-07-10', '2024-07-10 07:29:40', '2024-07-10 07:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NEQLKSQwGEuiFnwhwKWnWiiGGsi3qvPnIDoeZ0ak', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidThiTWpJQkFObXdsUmkxZWF0ekhxZU9PYXRWOWhsTUw3cHkzUXYwSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW5qdWFsYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1720669587),
('Xg0QcCLdpEwmodlkjcOcYu91418v0cMFMt9saoQu', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFNBc2lRWGh4T1RucW0waWo0YlBUQkl4VElabWxBSUhUOGdZTHZ2ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wZW5qdWFsYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1720662783);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `nama_lengkap`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Moh Fadillah Romadhon', 'fadil@gmail.com', NULL, '$2y$12$WpK9QSVLWxubWufng.dK.O2ShEia23/RhJ9Rol.RUeuAnaiF1mL62', NULL, NULL, NULL),
(2, 2, 'Kasir', 'kasir@gmail.com', NULL, '$2y$12$twxnUQTrKifsmLJLtr1Bze2NrS6dZOdAsswYuT98FrWrEMMNfWHb2', NULL, '2024-07-09 19:26:44', '2024-07-09 19:26:44'),
(3, 3, 'Pimpinan', 'pimpinan@gmail.com', NULL, '$2y$12$0MbzrvpAfHEMc5QROeZCReIAeckE2ewskFHpSHD971qAs2MYKS4pm', NULL, '2024-07-09 19:27:00', '2024-07-09 19:27:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_penjualans_id_penjualan_foreign` (`id_penjualan`),
  ADD KEY `detail_penjualans_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penjualan_id_user_foreign` (`id_user`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualans`
--
ALTER TABLE `detail_penjualans`
  ADD CONSTRAINT `detail_penjualans_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `detail_penjualans_id_penjualan_foreign` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualans` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
