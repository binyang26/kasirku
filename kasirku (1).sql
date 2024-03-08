-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2024 pada 09.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'minuman', '2024-03-05 19:23:32', '2024-03-05 19:23:32'),
(2, 'makanan', '2024-03-05 19:23:37', '2024-03-05 19:23:37'),
(3, 'bara', '2024-03-05 19:23:52', '2024-03-06 18:36:58'),
(8, 'drink', '2024-03-06 18:39:50', '2024-03-06 18:39:50'),
(10, 'minumanaa', '2024-03-07 00:28:14', '2024-03-07 00:28:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(2, '00002', 'Wikwoyaa', 'Cinunuk', '088888888888', '2024-03-05 19:25:49', '2024-03-06 18:56:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200853_buat_penjualan_table', 1),
(11, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(12, '2021_03_05_200904_buat_setting_table', 1),
(13, '2021_03_11_225128_create_sessions_table', 1),
(14, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(15, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(16, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(17, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 1, '2024-03-05 18:24:48', '2024-03-05 18:24:48'),
(2, 1, 1, 4000, 0, 4000, 5000, 2, '2024-03-05 19:26:04', '2024-03-05 19:26:23'),
(3, NULL, 11, 80000, 0, 80000, 100000, 2, '2024-03-05 19:26:26', '2024-03-05 19:26:47'),
(4, NULL, 0, 0, 0, 0, 0, 2, '2024-03-05 20:13:33', '2024-03-05 20:13:33'),
(5, NULL, 0, 0, 0, 0, 0, 2, '2024-03-05 20:42:19', '2024-03-05 20:42:19'),
(6, NULL, 1, 4000, 0, 4000, 0, 2, '2024-03-05 21:06:00', '2024-03-05 21:07:00'),
(7, NULL, 10, 40000, 0, 40000, 0, 2, '2024-03-05 21:20:04', '2024-03-05 21:20:23'),
(8, NULL, 0, 0, 0, 0, 0, 2, '2024-03-05 21:23:52', '2024-03-05 21:23:52'),
(9, NULL, 0, 0, 0, 0, 0, 2, '2024-03-05 21:44:54', '2024-03-05 21:44:54'),
(10, NULL, 1, 60000, 0, 60000, 0, 2, '2024-03-06 00:39:56', '2024-03-06 00:40:05'),
(11, NULL, 1, 2000, 0, 2000, 0, 2, '2024-03-06 00:45:50', '2024-03-06 00:45:56'),
(12, NULL, 1, 60000, 0, 60000, 0, 2, '2024-03-06 17:47:35', '2024-03-06 17:47:43'),
(13, NULL, 1, 4000, 0, 4000, 0, 2, '2024-03-06 17:47:45', '2024-03-06 17:47:52'),
(14, NULL, 1, 60000, 0, 60000, 70000, 2, '2024-03-06 18:15:38', '2024-03-06 18:15:57'),
(15, NULL, 0, 0, 0, 0, 0, 2, '2024-03-06 19:25:43', '2024-03-06 19:25:43'),
(16, NULL, 0, 0, 0, 0, 0, 2, '2024-03-06 19:35:55', '2024-03-06 19:35:55'),
(17, NULL, 0, 0, 0, 0, 0, 2, '2024-03-06 20:51:47', '2024-03-06 20:51:47'),
(18, NULL, 0, 0, 0, 0, 0, 2, '2024-03-06 21:08:02', '2024-03-06 21:08:02'),
(19, NULL, 2, 80000, 0, 80000, 0, 5, '2024-03-07 00:05:21', '2024-03-07 00:05:50'),
(20, NULL, 0, 0, 0, 0, 0, 5, '2024-03-07 00:06:01', '2024-03-07 00:06:01'),
(21, NULL, 0, 0, 0, 0, 0, 5, '2024-03-07 00:06:05', '2024-03-07 00:06:05'),
(22, NULL, 0, 0, 0, 0, 0, 2, '2024-03-07 00:50:55', '2024-03-07 00:50:55'),
(23, NULL, 0, 0, 0, 0, 0, 2, '2024-03-07 00:54:49', '2024-03-07 00:54:49'),
(24, NULL, 0, 0, 0, 0, 0, 2, '2024-03-07 01:04:49', '2024-03-07 01:04:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4000, 2, 0, 8000, '2024-03-05 19:26:09', '2024-03-05 19:26:11'),
(2, 3, 3, 60000, 1, 0, 60000, '2024-03-05 19:26:30', '2024-03-05 19:26:30'),
(3, 3, 2, 2000, 10, 0, 20000, '2024-03-05 19:26:33', '2024-03-05 19:26:36'),
(4, 4, 3, 60000, 1, 0, 60000, '2024-03-05 20:16:14', '2024-03-05 20:16:14'),
(5, 6, 1, 4000, 1, 0, 4000, '2024-03-05 21:06:57', '2024-03-05 21:06:57'),
(6, 7, 1, 4000, 10, 0, 40000, '2024-03-05 21:20:08', '2024-03-05 21:20:13'),
(7, 10, 3, 60000, 1, 0, 60000, '2024-03-06 00:40:01', '2024-03-06 00:40:01'),
(8, 11, 2, 2000, 1, 0, 2000, '2024-03-06 00:45:55', '2024-03-06 00:45:55'),
(9, 12, 3, 60000, 1, 0, 60000, '2024-03-06 17:47:39', '2024-03-06 17:47:39'),
(10, 13, 1, 4000, 1, 0, 4000, '2024-03-06 17:47:49', '2024-03-06 17:47:49'),
(11, 14, 3, 60000, 1, 0, 60000, '2024-03-06 18:15:45', '2024-03-06 18:15:45'),
(13, 15, 5, 20000, 1, 0, 20000, '2024-03-06 19:29:49', '2024-03-06 19:29:49'),
(14, 17, 5, 20000, 1, 0, 20000, '2024-03-06 20:51:54', '2024-03-06 20:52:47'),
(15, 18, 5, 20000, 1, 0, 20000, '2024-03-06 21:09:11', '2024-03-06 21:09:11'),
(16, 18, 3, 60000, 1, 0, 60000, '2024-03-06 21:09:13', '2024-03-06 21:09:13'),
(17, 19, 5, 20000, 1, 0, 20000, '2024-03-07 00:05:29', '2024-03-07 00:05:29'),
(18, 19, 3, 60000, 1, 0, 60000, '2024-03-07 00:05:44', '2024-03-07 00:05:44'),
(19, 23, 5, 20000, 1, 0, 20000, '2024-03-07 00:55:23', '2024-03-07 00:55:23'),
(20, 23, 5, 20000, 1, 0, 20000, '2024-03-07 00:55:45', '2024-03-07 00:55:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'teh pucuk', 'mayora', 2000, 0, 4000, 80, '2024-03-05 19:24:15', '2024-03-06 19:06:43'),
(2, 2, 'P000002', 'wafer', NULL, 1000, 0, 2000, 39, '2024-03-05 19:24:39', '2024-03-06 00:45:56'),
(3, 3, 'P000003', 'tas', NULL, 50000, 0, 60000, 15, '2024-03-05 19:25:04', '2024-03-07 00:05:50'),
(5, 2, 'P000004', 'ayam', NULL, 10000, 0, 20000, 9, '2024-03-06 19:09:06', '2024-03-07 00:05:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('swtOlCRZmQOC8AV51HkhqroPn62bQeZuyjmiXaT4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRTZmb2Z1bEhPRGlqYUp3STJzYkpLWERrWkNKM1dFQ2xvR2ZQMDFSNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkT2hScDFvZzRsWG1iS09lRWtKVmk0LnlJWWpYRGlKak4zbkRpaDhvQno4OTFJR2IxUnhmcnUiO30=', 1709799354);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) NOT NULL,
  `path_kartu_member` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$OhRp1og4lXmbKOeEkJVi4.yIYjXDiJjN3nDih8oBz891IGb1Rxfru', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2024-03-05 18:23:46', '2024-03-05 18:23:46'),
(2, 'Kasir 1', 'kasir1@gmail.com', NULL, '$2y$10$1zu2gGzpdE.OOuSFKcMX5ul.zkNXjNL2zHHwfnW5/7D6MJ6u4.yNm', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-03-05 18:23:46', '2024-03-05 18:23:46'),
(3, 'Kasir', 'kasir@gmail.com', NULL, '$2y$10$0N8cn3GpqiwqgExltE9dkOWDAeN7NXBcuDJY/xOel2UC6u4zMstnS', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-03-05 18:23:46', '2024-03-05 18:23:46'),
(4, 'bintanga', 'bintang@gmail.com', NULL, '$2y$10$UX2VVNm8paXAxfULdy7tGOZLuVXQmyZIjZBWrXXt3PdHcUhtxWxQ6', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-03-05 20:55:50', '2024-03-06 19:19:06'),
(5, 'bintang', 'bintang26@gmail.com', NULL, '$2y$10$cksULzecUm.DOuxxfD56N.YZpDlMb7TYQqnHWv0Y46EwSOq/vTPJS', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-03-07 00:04:58', '2024-03-07 00:04:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
