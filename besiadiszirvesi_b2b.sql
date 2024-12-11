-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 13 Mar 2023, 19:11:24
-- Sunucu sürümü: 10.3.38-MariaDB
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `besiadiszirvesi_b2b`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `company_profils`
--

CREATE TABLE `company_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_tr` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `company_profils`
--

INSERT INTO `company_profils` (`id`, `title_tr`, `title_en`, `created_at`, `updated_at`) VALUES
(1, 'Ajans', 'Agent', '2021-10-31 09:29:14', '2021-10-31 09:29:14'),
(2, 'Yüklenici/Müteahhit', 'Contractor', '2021-10-31 09:29:28', '2021-10-31 09:40:03'),
(4, 'Distribütör', 'Distributor', '2021-10-31 09:40:48', '2021-10-31 09:40:48'),
(5, 'İhracatçı', 'Exporter', '2021-10-31 09:40:56', '2021-10-31 09:40:56'),
(6, 'Yabancı Tüccar', 'Foreign Trader', '2021-10-31 09:41:08', '2021-10-31 09:41:08'),
(7, 'İthalatçı', 'Importer', '2021-11-03 19:34:51', '2021-11-03 19:34:51'),
(8, 'Yatırımcı', 'Investor', '2021-11-03 19:35:01', '2021-11-03 19:35:01'),
(9, 'Üretici firma', 'Manufacturer', '2021-11-03 19:35:12', '2021-11-03 19:35:12'),
(10, 'Sivil Toplum Kuruluşu', 'NGO', '2021-11-03 19:35:22', '2021-11-03 19:35:22'),
(11, 'Kamu / Devlet Kurumu', 'Public/Governmental Body', '2021-11-03 19:35:34', '2021-11-03 19:35:34'),
(12, 'Araştırma / Akademik Kuruluşu', 'Research/ Academic Institution', '2021-11-03 19:35:44', '2021-11-03 19:35:44'),
(13, 'Perakendeci', 'Retailer', '2021-11-03 19:35:52', '2021-11-03 19:35:52'),
(14, 'Servis sağlayıcı', 'Service Provider', '2021-11-03 19:36:03', '2021-11-03 19:36:03'),
(15, 'Tedarikçi', 'Supplier', '2021-11-03 19:36:11', '2021-11-03 19:36:11'),
(16, 'Toptancı', 'Wholesaler', '2021-11-03 19:36:21', '2021-11-03 19:36:21'),
(17, 'Ticaret / Sanayi / Sektörel Organizasyon', 'Trade/Industrial/Sectoral Organization', '2021-11-03 19:36:32', '2021-11-03 19:36:32'),
(18, 'Ticaret odası', 'Chamber of Commerce', '2021-11-03 19:36:41', '2021-11-03 19:36:41'),
(19, 'Diğer', 'Other', '2021-11-03 19:36:51', '2021-11-03 19:36:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_03_112923_create_sessions_table', 1),
(6, '2021_10_04_032038_create_sektorler_table', 1),
(7, '2021_10_05_094354_create_settings_table', 1),
(8, '2021_10_15_163217_create_firmalars_table', 1),
(9, '2021_10_16_192528_create_ulkelers_table', 1),
(10, '2021_10_17_172051_create_randevulars_table', 1),
(11, '2021_10_18_090719_create_saatlers_table', 1),
(12, '2021_10_28_162628_create_company_profils_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('export@onmartmakine.com', '$2y$10$sIfb0hwsNRtI3YCtURwlj.J5QG6RgsRAEsfbzInKwm5zluY4K9byC', '2021-11-19 15:22:44'),
('yaqoobtamimi1212@gmail.com', '$2y$10$UnYO1yG8d9doJbf5W0ijJeY8XXsd0dezy58rjjoXB.st5.MtHsXlq', '2021-11-19 18:21:31'),
('Georgesklim@live.com', '$2y$10$gENbtz0MOrukqOiRszh5a.gJAlwO2Xtwel5N2EHfpISEy6dMGq6BS', '2021-11-19 20:03:44'),
('mattar.saif33@gmail.com', '$2y$10$g9wemeM0gdRnG5ypZTr52u1f4wVToOxvkrhnVBPHxFZGXixrt32Vi', '2021-11-21 03:51:32'),
('nesrinetoraman@caytas.com.tr', '$2y$10$Q2OgkSpx9zTra5v/SsskCORYVS5srxbdCzCOpfDB9M/V2uM7cSZaC', '2021-11-22 08:00:05'),
('ihracat@incibaharat.com', '$2y$10$oVYyEkSS39Hsk/e8hMVI0uZ33Ft/OztlyLwI5wTmg47.BexyZeY1u', '2021-11-22 14:10:19'),
('safinasissah@gmail.com', '$2y$10$gRCcQ8ebp9rJYSpPc36OpO6JpmFlQOK/gN3Dq9cazAl.VQ4rC0pUu', '2021-11-22 14:33:38'),
('annotare.heritages@gmail.com', '$2y$10$34AhgP2WnYh7XmOWNxp5zeDwV0rr5wyc0X0/xv3H1ymwoA51MnK06', '2021-11-23 17:33:58'),
('cigdem@aykardenizcilik.com.tr', '$2y$10$XmQ90Z.n6MTMrBwgeXFx5e.r4IioWExGz.3O9JFTSVETFrrZD9N2i', '2021-11-24 14:21:39'),
('onur.molbay@minevital.com', '$2y$10$N5ixqtsBUHSUM4145ZhCY.4H45MN/EOu9Y3XFXdCP2M7Ae6keb3Nu', '2021-11-25 06:12:19'),
('karam.export.company@gmai.com', '$2y$10$I7qPgB73VZZoGX1Xs2UPyu6EROkzoz5kyWs1Sd6D7EkOIsYV8vBb6', '2021-11-26 06:13:03'),
('executive.mamakiddies@gmail.com', '$2y$10$DUgOkg12FqU/1qEB6ksWkeFLzWk56VDDcj27q9joG2Id5k7EokzZO', '2021-11-26 07:11:13'),
('feyza.narli@manpower.com.tr', '$2y$10$c4kpotq2d72A05p0BOldp.ExqO0K.x7149KAoYz4S3hOsPsTTkTeG', '2022-10-28 13:59:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevulars`
--

CREATE TABLE `randevulars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gorusme_yapan` int(11) NOT NULL,
  `gorusme_gelen` int(11) NOT NULL,
  `gorusme_tarih` varchar(255) NOT NULL,
  `gorusme_saat` int(11) NOT NULL,
  `gorusmeyapan_sector` int(11) NOT NULL,
  `gorusmeyapan_country` int(11) NOT NULL,
  `gorusmegelen_sector` int(11) NOT NULL,
  `gorusmegelen_country` int(11) NOT NULL,
  `status` enum('0','1','2','3') NOT NULL,
  `randevutalepeden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `randevulars`
--

INSERT INTO `randevulars` (`id`, `gorusme_yapan`, `gorusme_gelen`, `gorusme_tarih`, `gorusme_saat`, `gorusmeyapan_sector`, `gorusmeyapan_country`, `gorusmegelen_sector`, `gorusmegelen_country`, `status`, `randevutalepeden`, `created_at`, `updated_at`) VALUES
(645, 462, 505, '28/09/2022', 1, 2, 1, 2, 1, '1', 505, '2022-10-27 16:46:20', '2022-10-27 16:46:20'),
(646, 501, 505, '28/09/2022', 2, 2, 1, 2, 1, '1', 505, '2022-10-27 16:50:47', '2022-10-27 16:50:47'),
(647, 503, 505, '28/09/2022', 3, 2, 1, 2, 1, '1', 505, '2022-10-27 16:51:05', '2022-10-27 16:51:05'),
(648, 474, 505, '28/09/2022', 4, 2, 1, 2, 1, '1', 505, '2022-10-27 16:51:27', '2022-10-27 16:51:27'),
(651, 466, 506, '28/09/2022', 1, 2, 1, 2, 1, '1', 506, '2022-10-27 17:11:38', '2022-10-27 17:11:38'),
(652, 503, 506, '28/09/2022', 2, 2, 1, 2, 1, '1', 506, '2022-10-27 17:12:05', '2022-10-27 17:12:05'),
(654, 440, 506, '28/09/2022', 4, 2, 1, 2, 1, '1', 506, '2022-10-27 17:12:58', '2022-10-27 17:12:58'),
(655, 474, 506, '28/09/2022', 5, 2, 1, 2, 1, '1', 506, '2022-10-27 17:13:21', '2022-10-27 17:13:21'),
(656, 465, 506, '28/09/2022', 6, 2, 1, 2, 1, '1', 506, '2022-10-27 17:13:42', '2022-10-27 17:13:42'),
(657, 453, 506, '28/09/2022', 7, 2, 1, 2, 1, '1', 506, '2022-10-27 17:14:08', '2022-10-27 17:14:08'),
(658, 501, 506, '28/09/2022', 8, 2, 1, 2, 1, '1', 506, '2022-10-27 17:14:28', '2022-10-27 17:14:28'),
(659, 503, 515, '28/09/2022', 1, 2, 1, 2, 1, '1', 515, '2022-10-27 18:12:32', '2022-10-27 18:12:32'),
(660, 465, 515, '28/09/2022', 3, 2, 1, 2, 1, '1', 515, '2022-10-27 18:12:59', '2022-10-27 18:12:59'),
(661, 501, 515, '28/09/2022', 4, 2, 1, 2, 1, '1', 515, '2022-10-27 18:13:31', '2022-10-27 18:13:31'),
(662, 469, 515, '28/09/2022', 5, 2, 1, 2, 1, '1', 515, '2022-10-27 18:14:01', '2022-10-27 18:14:01'),
(663, 474, 515, '28/09/2022', 2, 2, 1, 2, 1, '1', 515, '2022-10-27 18:14:49', '2022-10-27 18:14:49'),
(668, 453, 515, '28/09/2022', 8, 2, 1, 2, 1, '1', 515, '2022-10-27 18:17:36', '2022-10-27 18:17:36'),
(673, 481, 514, '28/09/2022', 3, 11, 1, 11, 1, '1', 514, '2022-10-27 18:22:45', '2022-10-27 18:22:45'),
(674, 446, 514, '28/09/2022', 6, 10, 1, 11, 1, '1', 514, '2022-10-27 18:24:19', '2022-10-27 18:24:19'),
(675, 452, 514, '28/09/2022', 8, 25, 1, 11, 1, '1', 514, '2022-10-27 18:25:49', '2022-10-27 18:25:49'),
(685, 497, 509, '28/09/2022', 4, 25, 1, 25, 1, '1', 497, '2022-10-27 19:09:22', '2022-10-27 19:09:22'),
(686, 497, 511, '28/09/2022', 6, 25, 1, 7, 1, '1', 497, '2022-10-27 19:10:10', '2022-10-27 19:10:10'),
(687, 497, 514, '28/09/2022', 2, 25, 1, 11, 1, '1', 497, '2022-10-27 19:11:29', '2022-10-27 19:11:29'),
(688, 487, 514, '28/09/2022', 7, 20, 1, 11, 1, '1', 514, '2022-10-27 19:29:54', '2022-10-27 19:29:54'),
(689, 445, 514, '28/09/2022', 4, 26, 1, 11, 1, '1', 514, '2022-10-27 19:34:36', '2022-10-27 19:34:36'),
(690, 459, 514, '28/09/2022', 5, 25, 1, 11, 1, '1', 514, '2022-10-27 19:40:59', '2022-10-27 19:40:59'),
(691, 497, 509, '28/09/2022', 1, 25, 1, 25, 1, '1', 497, '2022-10-27 19:58:13', '2022-10-27 19:58:13'),
(692, 493, 511, '28/09/2022', 1, 9, 1, 7, 1, '1', 493, '2022-10-28 06:37:25', '2022-10-28 06:37:25'),
(693, 493, 521, '28/09/2022', 3, 9, 1, 12, 1, '1', 493, '2022-10-28 06:38:19', '2022-10-28 06:38:19'),
(696, 493, 509, '28/09/2022', 8, 9, 1, 25, 1, '1', 493, '2022-10-28 06:59:21', '2022-10-28 06:59:21'),
(697, 493, 517, '28/09/2022', 2, 9, 1, 25, 1, '1', 493, '2022-10-28 07:14:29', '2022-10-28 07:14:29'),
(698, 495, 511, '28/09/2022', 4, 9, 1, 7, 1, '1', 495, '2022-10-28 07:16:55', '2022-10-28 07:16:55'),
(700, 488, 529, '28/09/2022', 2, 9, 1, 16, 1, '1', 529, '2022-10-28 10:35:22', '2022-10-28 10:35:22'),
(701, 495, 529, '28/09/2022', 3, 9, 1, 16, 1, '1', 529, '2022-10-28 10:36:24', '2022-10-28 10:36:24'),
(702, 461, 510, '28/09/2022', 3, 19, 1, 1, 1, '1', 510, '2022-10-28 10:36:33', '2022-10-28 10:36:33'),
(703, 446, 510, '28/09/2022', 5, 10, 1, 1, 1, '1', 510, '2022-10-28 10:37:30', '2022-10-28 10:37:30'),
(705, 461, 521, '28/09/2022', 2, 19, 1, 12, 1, '1', 461, '2022-10-28 10:43:03', '2022-10-28 10:43:03'),
(706, 461, 515, '28/09/2022', 7, 19, 1, 2, 1, '1', 461, '2022-10-28 10:46:20', '2022-10-28 10:46:20'),
(707, 473, 529, '28/09/2022', 4, 16, 1, 16, 1, '1', 529, '2022-10-28 11:02:33', '2022-10-28 11:02:33'),
(708, 519, 529, '28/09/2022', 8, 2, 1, 16, 1, '1', 529, '2022-10-28 11:03:35', '2022-10-28 11:03:35'),
(709, 500, 518, '28/09/2022', 1, 25, 1, 28, 1, '1', 518, '2022-10-28 11:03:49', '2022-10-28 11:03:49'),
(711, 484, 509, '28/09/2022', 2, 26, 1, 25, 1, '1', 509, '2022-10-28 11:04:03', '2022-10-28 11:04:03'),
(712, 452, 529, '28/09/2022', 7, 25, 1, 16, 1, '1', 529, '2022-10-28 11:04:19', '2022-10-28 11:04:19'),
(713, 484, 529, '28/09/2022', 5, 26, 1, 16, 1, '1', 529, '2022-10-28 11:05:17', '2022-10-28 11:05:17'),
(714, 444, 529, '28/09/2022', 1, 5, 1, 16, 1, '1', 529, '2022-10-28 11:06:11', '2022-10-28 11:06:11'),
(715, 438, 524, '28/09/2022', 1, 23, 1, 7, 1, '1', 524, '2022-10-28 11:13:29', '2022-10-28 11:13:29'),
(718, 487, 517, '28/09/2022', 3, 20, 1, 25, 1, '1', 487, '2022-10-28 11:26:26', '2022-10-28 11:26:26'),
(719, 498, 510, '28/09/2022', 2, 28, 1, 1, 1, '1', 498, '2022-10-28 12:31:50', '2022-10-28 12:31:50'),
(720, 498, 517, '28/09/2022', 1, 28, 1, 25, 1, '1', 498, '2022-10-28 12:34:27', '2022-10-28 12:34:27'),
(721, 452, 536, '28/09/2022', 2, 25, 1, 25, 1, '1', 536, '2022-10-28 12:42:35', '2022-10-28 12:42:35'),
(722, 452, 534, '28/09/2022', 1, 25, 1, 8, 1, '1', 534, '2022-10-28 12:43:16', '2022-10-28 12:43:16'),
(723, 450, 536, '28/09/2022', 1, 25, 1, 25, 1, '1', 536, '2022-10-28 12:43:17', '2022-10-28 12:43:17'),
(724, 458, 536, '28/09/2022', 3, 25, 1, 25, 1, '1', 536, '2022-10-28 12:44:04', '2022-10-28 12:44:04'),
(725, 480, 536, '28/09/2022', 4, 28, 1, 25, 1, '1', 536, '2022-10-28 12:45:50', '2022-10-28 12:45:50'),
(726, 446, 534, '28/09/2022', 2, 10, 1, 8, 1, '1', 534, '2022-10-28 12:47:00', '2022-10-28 12:47:00'),
(727, 459, 536, '28/09/2022', 6, 25, 1, 25, 1, '1', 536, '2022-10-28 12:47:13', '2022-10-28 12:47:13'),
(728, 487, 533, '28/09/2022', 4, 20, 1, 9, 1, '1', 487, '2022-10-28 12:47:43', '2022-10-28 12:47:43'),
(729, 477, 536, '28/09/2022', 5, 25, 1, 25, 1, '1', 536, '2022-10-28 12:48:11', '2022-10-28 12:48:11'),
(730, 458, 534, '28/09/2022', 4, 25, 1, 8, 1, '1', 534, '2022-10-28 12:49:17', '2022-10-28 12:49:17'),
(731, 477, 534, '28/09/2022', 6, 25, 1, 8, 1, '1', 534, '2022-10-28 12:50:34', '2022-10-28 12:50:34'),
(732, 461, 534, '28/09/2022', 5, 19, 1, 8, 1, '1', 534, '2022-10-28 12:53:51', '2022-10-28 12:53:51'),
(733, 487, 537, '28/09/2022', 5, 20, 1, 8, 1, '2', 487, '2022-10-28 12:55:48', '2022-10-28 12:55:48'),
(734, 456, 510, '28/09/2022', 1, 19, 1, 1, 1, '1', 510, '2022-10-28 13:01:00', '2022-10-28 13:01:00'),
(735, 487, 510, '28/09/2022', 6, 20, 1, 1, 1, '1', 510, '2022-10-28 13:02:57', '2022-10-28 13:02:57'),
(736, 491, 512, '28/09/2022', 1, 10, 1, 4, 1, '1', 491, '2022-10-28 13:07:10', '2022-10-28 13:07:10'),
(737, 491, 532, '28/09/2022', 2, 10, 1, 4, 1, '1', 491, '2022-10-28 13:08:01', '2022-10-28 13:08:01'),
(738, 491, 518, '28/09/2022', 3, 10, 1, 28, 1, '1', 491, '2022-10-28 13:14:13', '2022-10-28 13:14:13'),
(739, 491, 517, '28/09/2022', 4, 10, 1, 25, 1, '1', 491, '2022-10-28 13:15:02', '2022-10-28 13:15:02'),
(740, 491, 524, '28/09/2022', 5, 10, 1, 7, 1, '1', 524, '2022-10-28 13:33:31', '2022-10-28 13:33:31'),
(741, 498, 513, '28/09/2022', 3, 28, 1, 26, 1, '1', 498, '2022-10-28 13:33:49', '2022-10-28 13:33:49'),
(742, 504, 530, '28/09/2022', 4, 2, 1, 12, 1, '1', 530, '2022-10-28 13:36:16', '2022-10-28 13:36:16'),
(743, 487, 519, '28/09/2022', 2, 20, 1, 2, 1, '1', 487, '2022-10-28 13:36:44', '2022-10-28 13:36:44'),
(744, 498, 537, '28/09/2022', 4, 28, 1, 8, 1, '2', 498, '2022-10-28 13:38:27', '2022-10-28 13:38:27'),
(745, 498, 542, '28/09/2022', 5, 28, 1, 2, 1, '1', 498, '2022-10-28 13:39:05', '2022-10-28 13:39:05'),
(746, 464, 544, '28/09/2022', 4, 13, 1, 13, 1, '1', 544, '2022-10-28 13:43:28', '2022-10-28 13:43:28'),
(747, 461, 539, '28/09/2022', 6, 19, 1, 19, 1, '1', 539, '2022-10-28 13:46:12', '2022-10-28 13:46:12'),
(748, 497, 535, '28/09/2022', 3, 25, 1, 13, 1, '1', 497, '2022-10-28 13:51:31', '2022-10-28 13:51:31'),
(749, 479, 438, '28/09/2022', 5, 1, 1, 23, 1, '1', 438, '2022-10-28 13:51:52', '2022-10-28 13:51:52'),
(750, 501, 534, '28/09/2022', 7, 2, 1, 8, 1, '1', 501, '2022-10-28 13:52:35', '2022-10-28 13:52:35'),
(751, 504, 548, '28/09/2022', 5, 2, 1, 28, 1, '1', 548, '2022-10-28 13:52:43', '2022-10-28 13:52:43'),
(752, 440, 549, '28/09/2022', 5, 2, 1, 26, 1, '1', 549, '2022-10-28 13:53:02', '2022-10-28 13:53:02'),
(753, 440, 549, '28/09/2022', 6, 2, 1, 26, 1, '1', 549, '2022-10-28 13:54:49', '2022-10-28 13:54:49'),
(754, 488, 549, '28/09/2022', 4, 9, 1, 26, 1, '1', 549, '2022-10-28 14:06:31', '2022-10-28 14:06:31'),
(755, 487, 525, '28/09/2022', 8, 20, 1, 12, 1, '1', 487, '2022-10-28 14:18:52', '2022-10-28 14:18:52'),
(756, 479, 544, '28/09/2022', 6, 1, 1, 13, 1, '1', 544, '2022-10-28 14:21:20', '2022-10-28 14:21:20'),
(757, 488, 544, '28/09/2022', 7, 9, 1, 13, 1, '1', 544, '2022-10-28 14:23:04', '2022-10-28 14:23:04'),
(758, 460, 544, '28/09/2022', 8, 12, 1, 13, 1, '1', 544, '2022-10-28 14:24:29', '2022-10-28 14:24:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `saatlers`
--

CREATE TABLE `saatlers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `saat` varchar(255) NOT NULL,
  `tarih` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `saatlers`
--

INSERT INTO `saatlers` (`id`, `saat`, `tarih`, `created_at`, `updated_at`) VALUES
(1, '16:00 - 16:15', NULL, NULL, NULL),
(2, '16:15 - 16:30', NULL, NULL, NULL),
(3, '16:30 - 16:45', NULL, NULL, NULL),
(4, '16:45 - 17:00', NULL, NULL, NULL),
(5, '17:00 - 17:15', NULL, NULL, NULL),
(6, '17:15 - 17:30', NULL, NULL, NULL),
(7, '17:30 - 17:45', NULL, NULL, NULL),
(8, '17:45 - 18:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sektorler`
--

CREATE TABLE `sektorler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_tr` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_de` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `sektorler`
--

INSERT INTO `sektorler` (`id`, `title_tr`, `title_en`, `title_fr`, `title_ar`, `title_de`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Danışmanlık ve Mühendislik Hizmetleri', 'Consulting & Engineering Services', NULL, NULL, NULL, '1', '2021-10-26 09:28:05', '2021-10-27 08:24:22'),
(2, 'İnşaat ve Altyapı', 'Building & Infrastructure', NULL, NULL, NULL, '1', '2021-10-26 09:28:05', '2021-10-27 08:24:08'),
(3, 'Bankacılık ve İslami Finans', 'Banking & Islamic Finance', NULL, NULL, NULL, '1', '2021-10-26 09:28:05', '2021-10-27 08:23:57'),
(4, 'Otomotiv Endüstrisi', 'Automotive Industry', NULL, NULL, NULL, '1', '2021-10-26 09:28:05', '2021-10-27 08:23:45'),
(5, 'Tarımsal Sanayi', 'Agro-Industry', NULL, NULL, NULL, '1', '2021-10-26 09:28:05', '2021-10-27 08:23:33'),
(6, 'Kozmetik & Kişisel Bakım', 'Cosmetics & Personal Care', NULL, NULL, NULL, '1', '2021-11-03 19:29:45', '2021-11-03 19:29:45'),
(7, 'Eğitim, İstihdam ve Eğitim', 'Education, Employment & Training', NULL, NULL, NULL, '1', '2021-11-03 19:29:57', '2021-11-03 19:29:57'),
(8, 'Enerji ve Çevre', 'Energy & Environment', NULL, NULL, NULL, '1', '2021-11-03 19:30:11', '2021-11-03 19:30:11'),
(9, 'Finansal Hizmetler', 'Financial Services', NULL, NULL, NULL, '1', '2021-11-03 19:30:22', '2021-11-03 19:30:22'),
(10, 'Yiyecek ve İçecek', 'Food & Beverage', NULL, NULL, NULL, '1', '2021-11-03 19:30:37', '2021-11-03 19:30:37'),
(11, 'Gıda İşleme & Paketleme', 'Food Processing & Packaging', NULL, NULL, NULL, '1', '2021-11-03 19:30:46', '2021-11-03 19:30:46'),
(12, 'Mobilya', 'Furniture', NULL, NULL, NULL, '1', '2021-11-03 19:30:57', '2021-11-03 19:30:57'),
(13, 'Sağlık', 'Health', NULL, NULL, NULL, '1', '2021-11-03 19:31:05', '2021-11-03 19:31:05'),
(14, 'HoReCa', 'HoReCa', NULL, NULL, NULL, '1', '2021-11-03 19:31:15', '2021-11-03 19:31:15'),
(15, 'Endüstriyel Ekipmanları', 'Industrial Equipment', NULL, NULL, NULL, '1', '2021-11-03 19:31:25', '2021-11-03 19:31:25'),
(16, 'İnnovasyon ve Bilgi Teknolojisi', 'Innovation & IT', NULL, NULL, NULL, '1', '2021-11-03 19:31:38', '2021-11-03 19:31:38'),
(17, 'Kurumlar ve Hükümetler', 'Institutions & Governments', NULL, NULL, NULL, '1', '2021-11-03 19:31:47', '2021-11-03 19:31:47'),
(18, 'Sigortacılık', 'Insurance', NULL, NULL, NULL, '1', '2021-11-03 19:31:58', '2021-11-03 19:31:58'),
(19, 'Demir Çelik Endüstrisi', 'Iron & Steel', NULL, NULL, NULL, '1', '2021-11-03 19:32:10', '2021-11-03 19:32:10'),
(20, 'Makine ve Endüstriyel Ekipmanları', 'Machinery & Industrial Equipments', NULL, NULL, NULL, '1', '2021-11-03 19:32:22', '2021-11-15 18:44:59'),
(21, 'Medya İletişimi', 'Media & Communication', NULL, NULL, NULL, '1', '2021-11-03 19:32:35', '2021-11-03 19:32:35'),
(22, 'Ecza Ürünleri', 'Pharmaceutical Products', NULL, NULL, NULL, '1', '2021-11-03 19:32:45', '2021-11-03 19:32:45'),
(23, 'Telekomünikasyon', 'Telecommunication', NULL, NULL, NULL, '1', '2021-11-03 19:32:54', '2021-11-03 19:32:54'),
(24, 'Tekstil ve Muhafazakar Moda', 'Textile & Modest Fashion', NULL, NULL, NULL, '1', '2021-11-03 19:33:06', '2021-11-03 19:33:06'),
(25, 'Turizm ve Eğlence', 'Tourism & Leisure', NULL, NULL, NULL, '1', '2021-11-03 19:33:16', '2021-11-03 19:33:16'),
(26, 'Ticaret ve Dağıtım', 'Trade & Distribution', NULL, NULL, NULL, '1', '2021-11-03 19:33:27', '2021-11-03 19:33:27'),
(27, 'Nakliye ve Lojistik', 'Transport & Logistics', NULL, NULL, NULL, '1', '2021-11-03 19:33:40', '2021-11-03 19:33:40'),
(28, 'Diğer', 'Other', NULL, NULL, NULL, '1', '2021-11-03 19:33:55', '2021-11-21 16:37:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5xI8FbSiVGantqHYAfwBjAeqWGPHvHfKjzzSeSJD', NULL, '159.146.64.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiajV6R3UwQ296NUY4RVViWHpRMmlwY3lxbEZEZlRFa0lMTDJzQjkyRyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668706806),
('eF4i6bg75m2JbFOrbarOjVy9Eh51CaVKeb5I3L0X', NULL, '31.142.3.190', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_8_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVg4OHlsN0xWemlJSDkzVUhrQ2ZoMk51N1RpTTlWRUk4RFp6Um9VciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668596914),
('iWkxSWtxK4KRt42QNE01b4MvHmyoXx72DARuLHqM', NULL, '34.105.219.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoienhHN3V3WFk3QUxkbVBvSk9TTnlydUM4bHZNdUs1MUl3c3FkQkpSdiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668706807),
('lLk4JCxYGhuTSe3bk9CKG38bcvTgjpzfohhH1ok7', NULL, '34.105.219.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXBSODc1NVR0ZVI3Z25jM0ZtZ2JsaE5XcTViNE5pajZpYk5sbng1cyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668706807),
('PU2mht74lw3tBDBxASiY8BTCYEqA3eCzaKeKptKY', NULL, '35.205.159.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnc5ck5QRHNraWFLclRCMDBkdzZrYVFoMmJDRXlXNlVBSmZrSmw1QiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668530689),
('pVIFOqGji5VXcx1QaVznBlQvPMpgJxu2F46fCFRr', NULL, '35.206.247.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.1; bit.ly/3eZNDnO; b58927ebbe) Chrome/84.0.4147.105 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ01aWEdoaXJ4VEJqRWVxYkRaSXFzMURGa1RQSTdRNldKbktwTTBvQSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668618238),
('snAXaPPxMkHMshuH5TiiyHGahpsCH3jX6oZAduyB', 470, '31.142.40.235', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibExiaFVQV1hIem5zQTloWGh4cUIwbW01SGlrRlBzeHFJbHVpeEJqSyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDcwO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkOFNEV05YZ0tUb1FxWXBVTDI0OW4zZVV5M3h6SjJzNmpOd0hWd01qSHB2ZXVZOXFCdVhYeHUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668624156),
('uKPjsN4vfXAwZvtVpzNxg85Xq7CFFK7qco8QRdYn', NULL, '35.206.247.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.1; bit.ly/3eZNDnO; b58927ebbe) Chrome/84.0.4147.105 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEtycG1GN1YxRjZENHZrWllUcWhyRHEzQ0x1SHQyV3QzbEVyaHlOQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vYjJiLmJlc2lhZGlzemlydmVzaS5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1668618239),
('wXowsHaVW27XBy5lNSm6t3XQYB27NyI8qugWtEOA', NULL, '35.205.159.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0dZQWN5TFV2RjVJbEhDZk5LZmJjZ3hOdXNucXVvMVJIakpLRkl2MCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668530689),
('xJwMlua3KkO0vyBOYozD2XZevNDE83ntp5fF8pbw', NULL, '159.146.64.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUozMThJYTJMY012Zmk1ZUlVWHE2S1FSaG5nZExxMmF3WnV5eWNGcyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly9iMmIuYmVzaWFkaXN6aXJ2ZXNpLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwczovL2IyYi5iZXNpYWRpc3ppcnZlc2kuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1668530688);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `barkod` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `start`, `end`, `status`, `barkod`, `logo`, `created_at`, `updated_at`) VALUES
(1, '2022-09-28', '2022-09-28', '0', 8000001, 'tmlogo.png', NULL, '2022-10-28 13:55:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulkelers`
--

CREATE TABLE `ulkelers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `ulkelers`
--

INSERT INTO `ulkelers` (`id`, `iso_code`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'TR', 'TÜRKİYE', 'TURKEY', NULL, NULL),
(2, 'US', 'A.B.D. ', 'UNITED STATES', NULL, NULL),
(3, 'AF', 'AFGANİSTAN', 'AFGHANISTAN', NULL, NULL),
(4, 'DE', 'ALMANYA  ', 'GERMANY', NULL, NULL),
(5, 'AD', 'ANDORRA', 'ANDORRA', NULL, NULL),
(6, 'AO', 'ANGOLA', 'ANGOLA', NULL, NULL),
(7, 'AI', 'ANGUİLLA', 'ANGUİLLA', NULL, NULL),
(8, 'AQ', 'ANTARTİKA', 'ANTARCTICA', NULL, NULL),
(9, 'AG', 'ANTİGUA-BARBUDA  ', 'ANTIGUA-BARBUDA', NULL, NULL),
(10, 'AR', 'ARJANTİN', 'ARGENTINA', NULL, NULL),
(11, 'AL', 'ARNAVUTLUK  ', 'ALBANIA', NULL, NULL),
(12, 'AW', 'ARUBA', 'ARUBA', NULL, NULL),
(13, 'AU', 'AVUSTRALYA', 'AUSTRALIA', NULL, NULL),
(14, 'AT', 'AVUSTURYA ', 'AUSTRIA', NULL, NULL),
(15, 'AZ', 'AZERBAYCAN-NAHÇ.', 'AZERBAIJAN', NULL, NULL),
(16, 'BS', 'BAHAMALAR', 'BAHAMAS', NULL, NULL),
(17, 'BH', 'BAHREYN', 'BAHRAIN', NULL, NULL),
(18, 'BD', 'BANGLADEŞ  ', 'BANGLADESH', NULL, NULL),
(19, 'BB', 'BARBADOS ', 'BARBADOS', NULL, NULL),
(20, 'TL', 'BATI TİMOR', 'TIMOR-LESTE', NULL, NULL),
(21, 'BE', 'BELÇİKA  ', 'BELGIUM', NULL, NULL),
(22, 'BZ', 'BELİZE ', 'BELIZE', NULL, NULL),
(23, 'BJ', 'BENİN  ', 'BENIN', NULL, NULL),
(24, 'BM', 'BERMUDA', 'BERMUDA', NULL, NULL),
(25, 'BY', 'BEYAZ RUSYA  ', 'BELARUS', NULL, NULL),
(26, 'BT', 'BHUTAN', 'BHUTAN', NULL, NULL),
(27, 'AE', 'BİRLEŞİK ARAP EMİRLİKLERİ', 'UNITED ARAB EMIRATES', NULL, NULL),
(28, 'BO', 'BOLİVYA', 'BOLIVIA', NULL, NULL),
(29, 'BA', 'BOSNA HERSEK  ', 'BOSNIA  & HERZEGOVINA', NULL, NULL),
(30, 'BW', 'BOTSVANA', 'BOTSWANA', NULL, NULL),
(31, 'BV', 'BOUVET ADASI', 'BOUVET ISLAND', NULL, NULL),
(32, 'BR', 'BREZİLYA', 'BRAZIL', NULL, NULL),
(33, 'BN', 'BRUNEİ  ', 'BRUNEI DARRUSSALAM', NULL, NULL),
(34, 'BG', 'BULGARİSTAN ', 'BULGARIA', NULL, NULL),
(35, 'BF', 'BURKİNA FASO  ', 'BURKINA FASO', NULL, NULL),
(36, 'MM', 'BURMA (BİRMANYA)  ', 'MYANMAR', NULL, NULL),
(37, 'BI', 'BURUNDİ  ', 'BURUNDI', NULL, NULL),
(38, 'CV', 'CAPE VERDE', 'CAPE VERDE', NULL, NULL),
(39, 'KY', 'CAYMAN ADALARI', 'CAYMAN ISLANDS', NULL, NULL),
(40, 'GI', 'CEBELİTARIK', 'GIBRALTAR', NULL, NULL),
(41, 'XC', 'CEUTA', 'CEUTA', NULL, NULL),
(42, 'DZ', 'CEZAYİR', 'ALGERIA', NULL, NULL),
(43, 'DJ', 'CİBUTİ  ', 'DJIBOUTI', NULL, NULL),
(44, 'CC', 'COCOS ADALARI', 'COCOS ISLANDS', NULL, NULL),
(45, 'CK', 'COOK ADASI  ', 'COOK ISLAND', NULL, NULL),
(46, 'TD', 'ÇAD  ', 'CHAD', NULL, NULL),
(47, 'CZ', 'ÇEK CUMHURİYETİ ', 'CZECH REPUBLIC', NULL, NULL),
(48, 'CN', 'ÇİN HALK CUMHUR.  ', 'CHINA, PEOPLE\'S REPUBLIC OF ', NULL, NULL),
(49, 'DK', 'DANİMARKA  ', 'DENMARK', NULL, NULL),
(50, 'DO', 'DOMİNİK CUMHUR.  ', 'DOMINICAN REPUBLIC', NULL, NULL),
(51, 'DM', 'DOMİNİKA ', 'DOMINICA', NULL, NULL),
(52, 'EC', 'EKVATOR', 'ECUADOR', NULL, NULL),
(53, 'GQ', 'EKVATOR GİNESİ  ', 'EQUATORIAL GUINEA', NULL, NULL),
(54, 'SV', 'EL SALVADOR', 'EL SALVADOR', NULL, NULL),
(55, 'ID', 'ENDONEZYA ', 'INDONESIA', NULL, NULL),
(56, 'ER', 'ERİTRE  ', 'ERITREA', NULL, NULL),
(57, 'AM', 'ERMENİSTAN  ', 'ARMENIA', NULL, NULL),
(58, 'EE', 'ESTONYA  ', 'ESTONIA', NULL, NULL),
(59, 'ET', 'ETİYOPYA  ', 'ETHIOPIA', NULL, NULL),
(60, 'FK', 'FALKLAND ADALARI', 'FALKLAND ISLANDS', NULL, NULL),
(61, 'FO', 'FAROE ADALARI', 'FAROE ISLANDS', NULL, NULL),
(62, 'MA', 'FAS', 'MOROCCO', NULL, NULL),
(63, 'FJ', 'FİJİ  ', 'FIJI', NULL, NULL),
(64, 'CI', 'FİLDİŞİ SAHİLİ', 'CÔTE d\'IVORIE', NULL, NULL),
(65, 'PH', 'FİLİPİNLER', 'PHILIPPINES', NULL, NULL),
(66, 'FI', 'FİNLANDİYA  ', 'FINLAND', NULL, NULL),
(67, 'FR', 'FRANSA ', 'FRANCE', NULL, NULL),
(68, 'TF', 'FRANSA GÜNEY BÖLGELERİ', 'FRENCH SOUTHERN TERRITORIES', NULL, NULL),
(69, 'PF', 'FRANSIZ POLİNEZYASI', 'FRENCH POLYNESIA', NULL, NULL),
(70, 'GA', 'GABON  ', 'GABON', NULL, NULL),
(71, 'GM', 'GAMBİYA  ', 'GAMBIA', NULL, NULL),
(72, 'GH', 'GANA ', 'GHANA', NULL, NULL),
(73, 'GN', 'GİNE  ', 'GUINEA', NULL, NULL),
(74, 'GW', 'GİNE-BİSSAU  ', 'GUINEA-BISSAU', NULL, NULL),
(75, 'GD', 'GRENADA  ', 'GRENADA', NULL, NULL),
(76, 'GL', 'GRÖNLAND', 'GREENLAND', NULL, NULL),
(77, 'GU', 'GUAM', 'GUAM', NULL, NULL),
(78, 'GT', 'GUATEMALA', 'GUATEMALA', NULL, NULL),
(79, 'GY', 'GUYANA', 'GUYANA', NULL, NULL),
(80, 'ZA', 'GÜNEY AFRİKA CUM.  ', 'SOUTH AFRİCA REPUBLIC', NULL, NULL),
(81, 'GS', 'GÜNEY GEORGİA VE GÜNEY SANDVİÇ ADALARI', 'SOUTH GEORGIA & SOUTH SANDWICH ISLANDS', NULL, NULL),
(82, 'KR', 'GÜNEY KORE CUM.  ', 'KOREA, REPUBLIC OF', NULL, NULL),
(83, 'GE', 'GÜRCİSTAN  ', 'GEORGIA', NULL, NULL),
(84, 'HT', 'HAİTİ  ', 'HAITI', NULL, NULL),
(85, 'HM', 'HEARD ADALAI VE MC DONALD ADASI', 'HEARD ISLAND & Mc DONALD ISLAND', NULL, NULL),
(86, 'HR', 'HIRVATİSTAN', 'CROATIA', NULL, NULL),
(87, 'IN', 'HİNDİSTAN', 'INDIA', NULL, NULL),
(88, 'NL', 'HOLLANDA  ', 'NETHERLANDS', NULL, NULL),
(89, 'AN', 'HOLLANDA ANTİLLERİ', 'NETHERLANDS ANTİLLES', NULL, NULL),
(90, 'HN', 'HONDURAS', 'HONDURAS', NULL, NULL),
(91, 'HK', 'HONG-KONG  ', 'HONG KONG', NULL, NULL),
(92, 'IQ', 'IRAK', 'IRAQ', NULL, NULL),
(93, 'IO', 'İNGİLİZ HİNT OKYANUSU TOPRAKLARI', 'BRITISH INDIAN OCEAN TERRITORY', NULL, NULL),
(94, 'VG', 'İNGİLİZ VİRGİN ADALARI', 'BRITISH VIRGIN ISLANDS', NULL, NULL),
(95, 'GB', 'İNGİLTERE ', 'UNITED KINGDOM', NULL, NULL),
(96, 'IR', 'İRAN ', 'IRAN', NULL, NULL),
(97, 'IE', 'İRLANDA  ', 'IRELAND', NULL, NULL),
(98, 'ES', 'İSPANYA ', 'SPAIN', NULL, NULL),
(99, 'IL', 'İSRAİL', 'ISRAEL', NULL, NULL),
(100, 'SE', 'İSVEÇ  ', 'SWEDEN', NULL, NULL),
(101, 'CH', 'İSVİÇRE  ', 'SWITZERLAND', NULL, NULL),
(102, 'PS', 'İŞGAL ALTINDAKİ FİLİSTİN TOPRAKLARI', 'OCCUPIED PALESTINIAN TERRITORY', NULL, NULL),
(103, 'IT', 'İTALYA  ', 'ITALY', NULL, NULL),
(104, 'IS', 'İZLANDA  ', 'ICELAND', NULL, NULL),
(105, 'JM', 'JAMAİKA ', 'JAMAICA', NULL, NULL),
(106, 'JP', 'JAPONYA ', 'JAPAN', NULL, NULL),
(107, 'KH', 'KAMBOÇYA  ', 'CAMBODIA', NULL, NULL),
(108, 'CM', 'KAMERUN  ', 'CAMEROON', NULL, NULL),
(109, 'CA', 'KANADA  ', 'CANADA', NULL, NULL),
(110, 'ME', 'KARADAĞ  ', 'MONTENEGRO', NULL, NULL),
(111, 'QA', 'KATAR', 'QATAR', NULL, NULL),
(112, 'KZ', 'KAZAKİSTAN  ', 'KAZAKHISTAN', NULL, NULL),
(113, 'KE', 'KENYA  ', 'KENYA', NULL, NULL),
(114, 'CY', 'KIBRIS RUM KES.  ', 'CYPRUS', NULL, NULL),
(115, 'KG', 'KIRGIZİSTAN  ', 'KYRGYZSTAN', NULL, NULL),
(116, 'KI', 'KİRİBATİ  ', 'KIRIBATI', NULL, NULL),
(117, 'CO', 'KOLOMBİYA', 'COLOMBIA', NULL, NULL),
(118, 'KM', 'KOMORLAR  ', 'COMOROS', NULL, NULL),
(119, 'CG', 'KONGO  ', 'CONGO', NULL, NULL),
(120, 'CD', 'KONGO DEM. CUM', 'DEMOCRATIC REPUBLIC OF CONGO', NULL, NULL),
(121, 'XK', 'KOSOVA  ', 'KOSOVO', NULL, NULL),
(122, 'CR', 'KOSTA RİKA', 'COSTA RICA', NULL, NULL),
(123, 'CX', 'KRİSMIS ADALARI', 'CHRISTMAS ISLANDS', NULL, NULL),
(124, 'KW', 'KUVEYT', 'KUWAIT', NULL, NULL),
(125, 'KP', 'KUZEY KORE', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', NULL, NULL),
(126, 'MP', 'KUZEY MARİANA ADALARI', 'NORTH MARIANA ISLANDS', NULL, NULL),
(127, 'CU', 'KÜBA', 'CUBA', NULL, NULL),
(128, 'LA', 'LAOS DEMOK.HALK C  ', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', NULL, NULL),
(129, 'LS', 'LESOTO  ', 'LESOTHO', NULL, NULL),
(130, 'LV', 'LETONYA ', 'LATVIA', NULL, NULL),
(131, 'LI', 'LIECHTENSTEIN  ', 'LIECHTENSTEIN', NULL, NULL),
(132, 'LR', 'LİBERYA  ', 'LIBERIA', NULL, NULL),
(133, 'LY', 'LİBYA', 'LIBYAN ARAB JAMAHIRIYA', NULL, NULL),
(134, 'LT', 'LİTVANYA  ', 'LITHUANIA', NULL, NULL),
(135, 'LB', 'LÜBNAN', 'LEBANON', NULL, NULL),
(136, 'LU', 'LÜKSEMBURG  ', 'LUXEMBOURG', NULL, NULL),
(137, 'HU', 'MACARİSTAN  ', 'HUNGARY', NULL, NULL),
(138, 'MG', 'MADAGASKAR  ', 'MADAGASCAR', NULL, NULL),
(139, 'MO', 'MAKAO', 'MACAO', NULL, NULL),
(140, 'MK', 'MAKEDONYA', 'MACEDONIA', NULL, NULL),
(141, 'MW', 'MALAVİ  ', 'MALAWI', NULL, NULL),
(142, 'MV', 'MALDİVLER', 'MALDIVES', NULL, NULL),
(143, 'MY', 'MALEZYA', 'MALAYSIA', NULL, NULL),
(144, 'ML', 'MALİ ', 'MALI', NULL, NULL),
(145, 'MT', 'MALTA  ', 'MALTA', NULL, NULL),
(146, 'MH', 'MARSHAL ADALARI ', 'MASHALL ISLANDS', NULL, NULL),
(147, '', 'MARTİNİK  ', 'MARTINIQUE', NULL, NULL),
(148, 'MU', 'MAURİTİUS  ', 'MAURITIUS', NULL, NULL),
(149, 'YT', 'MAYOTTE', 'MAYOTTE', NULL, NULL),
(150, 'MX', 'MEKSİKA ', 'MEXICO', NULL, NULL),
(151, 'XL', 'MELİLLA', 'MELİLLA', NULL, NULL),
(152, 'EG', 'MISIR  ', 'EGYPT', NULL, NULL),
(153, 'FM', 'MİKRONEZYA', 'MICRONESIA, FEDERATED STATES of', NULL, NULL),
(154, 'MN', 'MOĞOLİSTAN', 'MONGOLIA', NULL, NULL),
(155, 'MD', 'MOLDOVYA ', 'MOLDOVA, REPUBLIC OF', NULL, NULL),
(156, 'MS', 'MONTSERRAT', 'MONTSERRAT', NULL, NULL),
(157, 'MR', 'MORİTANYA  ', 'MAURITANIA', NULL, NULL),
(158, 'MZ', 'MOZAMBİK ', 'MOZAMBIQUE', NULL, NULL),
(159, 'NA', 'NAMİBYA  ', 'NAMIBIA', NULL, NULL),
(160, 'NR', 'NAURU ', 'NAURU', NULL, NULL),
(161, 'NP', 'NEPAL', 'NEPAL', NULL, NULL),
(162, 'NU', 'NIUE ADASI ', 'NIUE ISLAND', NULL, NULL),
(163, 'NE', 'NİJER  ', 'NIGER', NULL, NULL),
(164, 'NG', 'NİJERYA  ', 'NIGERIA', NULL, NULL),
(165, 'NI', 'NİKARAGUA', 'NICARAGUA', NULL, NULL),
(166, 'NF', 'NORFOLK ADASI', 'NORFOLK ISLAND', NULL, NULL),
(167, 'NO', 'NORVEÇ  ', 'NORWAY', NULL, NULL),
(168, 'CF', 'ORTA AFRİKA CUM', 'CENTRAL AFRICAN REPUBLIC', NULL, NULL),
(169, 'UZ', 'ÖZBEKİSTAN  ', 'UZBEKISTAN', NULL, NULL),
(170, 'PK', 'PAKİSTAN  ', 'PAKISTAN', NULL, NULL),
(171, 'PW', 'PALAU  ', 'PALAU', NULL, NULL),
(172, 'PA', 'PANAMA', 'PANAMA', NULL, NULL),
(173, 'PG', 'PAPUA (YENİ GİNE)  ', 'PAPUA NEW GUINEA', NULL, NULL),
(174, 'PY', 'PARAGUAY', 'PARAGUAY', NULL, NULL),
(175, 'PE', 'PERU  ', 'PERU', NULL, NULL),
(176, 'PN', 'PİTCAİRN', 'PITCAIRN', NULL, NULL),
(177, 'PL', 'POLONYA  ', 'POLAND', NULL, NULL),
(178, 'PT', 'PORTEKİZ  ', 'PORTUGAL', NULL, NULL),
(179, 'RO', 'ROMANYA  ', 'ROMANIA', NULL, NULL),
(180, 'RW', 'RUANDA  ', 'RWANDA', NULL, NULL),
(181, 'RU', 'RUSYA FEDERASYONU  ', 'RUSSIAN FEDERATION', NULL, NULL),
(182, 'WS', 'SAMOA ', 'SAMOA', NULL, NULL),
(183, 'SM', 'SAN MARİNO', 'SAN MARINO', NULL, NULL),
(184, 'ST', 'SAO TOME VE PRIN.  ', 'SAO TOME & PRINCIPE', NULL, NULL),
(185, 'SN', 'SENEGAL ', 'SENEGAL', NULL, NULL),
(186, 'SC', 'SEYŞELLER  ', 'SEYCHELLES', NULL, NULL),
(187, 'XS', 'SIRBİSTAN  ', 'SERBIA', NULL, NULL),
(188, 'SL', 'SİERRA LEONE  ', 'SIERRA LEONE', NULL, NULL),
(189, 'SG', 'SİNGAPUR ', 'SINGAPORE', NULL, NULL),
(190, 'SK', 'SLOVAK CUMHURİYETİ', 'SLOVAKIA', NULL, NULL),
(191, 'SI', 'SLOVENYA', 'SLOVENIA', NULL, NULL),
(192, 'SB', 'SOLOMON ADALARI ', 'SOLOMON ISLANDS', NULL, NULL),
(193, 'SO', 'SOMALİ  ', 'SOMALIA', NULL, NULL),
(194, 'LK', 'SRİ LANKA', 'SRI LANKA', NULL, NULL),
(195, 'SH', 'ST. HELENA', 'SAINT HELENA', NULL, NULL),
(196, 'KN', 'ST. KITTS VE  NEVİS  ', 'SAINT KITTS & NEVIS', NULL, NULL),
(197, 'PM', 'ST. PIERRE & MIQUELON', 'ST. PIERRE & MIQUELON', NULL, NULL),
(198, 'LC', 'ST.LUCİA  ', 'ST. LUCIA', NULL, NULL),
(199, '', 'ST.VİNCENT  & GRENADİNES', 'ST. VINCENT & GRENADINES', NULL, NULL),
(200, 'SD', 'SUDAN  ', 'SUDAN', NULL, NULL),
(201, 'SR', 'SURİNAM  ', 'SURINAME', NULL, NULL),
(202, 'SY', 'SURİYE ARAP CUMHURİYETİ', 'SYRIA ARAB REPUBLIC', NULL, NULL),
(203, 'SA', 'SUUDİ ARABİSTAN', 'SAUDI ARABIA', NULL, NULL),
(204, 'SZ', 'SVAZİLAND', 'SWAZILAND', NULL, NULL),
(205, 'CL', 'ŞİLİ  ', 'CHILE', NULL, NULL),
(206, 'TJ', 'TACİKİSTAN ', 'TAJIKISTAN', NULL, NULL),
(207, 'TZ', 'TANZANYA', 'TANZANIA, UNITED REPUBLIC OF, ', NULL, NULL),
(208, 'TH', 'TAYLAND  ', 'THAILAND', NULL, NULL),
(209, 'TW', 'TAYVAN', 'TAIWAN', NULL, NULL),
(210, 'TG', 'TOGO', 'TOGO', NULL, NULL),
(211, 'TK', 'TOKELAU', 'TOKELAU', NULL, NULL),
(212, 'TO', 'TONGA', 'TONGA', NULL, NULL),
(213, 'TT', 'TRİNİDAD VE TOBAGO', 'TRINIDAD & TOBAGO', NULL, NULL),
(214, 'TN', 'TUNUS', 'TUNISIA', NULL, NULL),
(215, 'TC', 'TURKS VE CAİCAOS ADALARI', 'TURKS & CAICOS ISLANDS', NULL, NULL),
(216, 'TV', 'TUVALU  ', 'TUVALU', NULL, NULL),
(217, 'TM', 'TÜRKMENİSTAN  ', 'TURKMENISTAN', NULL, NULL),
(218, 'UG', 'UGANDA ', 'UGANDA', NULL, NULL),
(219, 'UA', 'UKRAYNA  ', 'UKRAINE', NULL, NULL),
(220, 'OM', 'UMMAN', 'OMAN', NULL, NULL),
(221, 'UY', 'URUGUAY', 'URUGUAY', NULL, NULL),
(222, 'JO', 'ÜRDÜN', 'JORDAN', NULL, NULL),
(223, 'VU', 'VANUATU ', 'VANUATU', NULL, NULL),
(224, '', 'VATİKAN', 'HOLY SEE', NULL, NULL),
(225, 'VE', 'VENEZUELLA', 'VENEZUELA', NULL, NULL),
(226, 'VN', 'VİETNAM SOSYALİST  ', 'VIET-NAM', NULL, NULL),
(227, 'WF', 'WALLİS VE FUTUNA', 'WALLIS & FUTUNA', NULL, NULL),
(228, 'YE', 'YEMEN', 'YEMEN', NULL, NULL),
(229, 'NC', 'YENİ KALEDONYA', 'NEW CALEDONIA', NULL, NULL),
(230, 'NZ', 'YENİ ZELANDA  ', 'NEW ZEALAND', NULL, NULL),
(231, '', 'YENİ ZELANDA OKY. ', 'NEW ZEALAND OCEAN..', NULL, NULL),
(232, 'GR', 'YUNANİSTAN  ', 'GREECE', NULL, NULL),
(233, 'ZM', 'ZAMBİYA  ', 'ZAMBIA', NULL, NULL),
(234, 'ZW', 'ZİMBABVE  ', 'ZIMBABWE', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` enum('admin','user','company') NOT NULL DEFAULT 'user',
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `masano` text DEFAULT NULL,
  `barkod` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `sector` int(11) DEFAULT NULL,
  `company_profile` int(11) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `productandservices` longtext DEFAULT NULL,
  `companydesciption` longtext DEFAULT NULL,
  `randevuonay` enum('0','1','2','3') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `status`, `masano`, `barkod`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `sector`, `company_profile`, `companyname`, `country`, `phone`, `website`, `productandservices`, `companydesciption`, `randevuonay`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Necmettin Kartal', 'necmettin@tmakreditasyon.com', 'admin', '1', NULL, NULL, '2021-10-26 09:28:05', '$2y$10$wgpqOOwxVwF2WUwqmKQtzemB4E3Kz7Nn/Nggnm4ZqpCCMFNScsb8G', NULL, NULL, 1, NULL, 'Kültür Bakanlığı', '1', NULL, NULL, NULL, NULL, '1', 'UTVAUoyRkrKbWoCLWE56339gbjIA8iQJcfrtOyVTsxde27EQmfw0ldfbWxWK', NULL, NULL, NULL, '2021-11-02 06:51:38'),
(438, 'Feridun Sezgin', 'feridunsezgin@gmail.com', 'company', '1', NULL, NULL, '2022-10-25 16:25:02', '$2y$10$WpVu6lIeieUf9R76ZRQpOOaHlmtyzIAdLonNNTDjko7Ysil2cFsuC', NULL, NULL, 23, NULL, 'Adadigital', '1', '5333207272', 'Www.adadigital.com.tr', '<p>Elektronik</p>', '<p>Elektronik</p>', '1', '27oXLIC3rZPAcMDa4lB4ZU4ssUUEqnvrrxG7nqi3UmSX9GRPvaYgKhegPVsW', NULL, NULL, '2022-10-25 16:24:00', '2022-10-28 12:41:40'),
(439, 'Mehmet BUĞRA Atınç', 'haremhome@yahoo.com', 'user', '1', '32', NULL, NULL, '$2y$10$.psfMcp.iAqv0Oio7mz4guhS.Nrhqi/RYdyCfSv9zFa4jZFm0lIcW', NULL, NULL, 24, NULL, 'Harem Giyim Üniforma & Aden Tarımsal Ürünler', '1', '5323510157', 'www.haremuniform.com', '<p>Kadın, erkek klasik ve spor giyim, otel ve fabrika personel &uuml;niforması, kabuklu badem</p>', '<p>Kadın, erkek klasik ve spor giyim, otel fabrika personel &uuml;niformaları tamamı kendi b&uuml;nyemizde imal edilmektedir.</p>', '1', NULL, NULL, NULL, '2022-10-26 11:37:25', '2022-10-27 17:16:35'),
(440, 'Bilal Ülker', 'bilalulker@ulkerlergroup.com', 'user', '1', '62', NULL, NULL, '$2y$10$bQRaILiXH518yg7xqhxyfO5T3fshrSVW9miai/rsgAAHxU/gyOhBm', NULL, NULL, 2, NULL, 'Ülkerler Group', '1', '05337163467', 'www.ulkerlergroup.com', '<p>İnşaat Emlak Kurumsal Kiralama, Freanchising Restoranlar</p>', '<p>Didim ve Bodrumda L&uuml;x daire ve Villa İmalatları yapan şirketlerimiz, Didim&rsquo; de 2 ve İzmir&rsquo;de 1 olmak &uuml;zere 3 adet Burger King Freanchise&rsquo; ı bulunmaktadır.Kurumsal kiralamalar başta olmak &uuml;zere Emlak sekt&ouml;r&uuml;nde b&ouml;lgesinin en &ouml;nemli firmalarından olan şirketimiz gayrilmenkul alanında ciddi yatırımları ile beraber yatırımcılarada geniş bir portf&ouml;y hizmeti vermektedir.</p>', '1', 'xSklLXG9ZrNmFY7L0RWiL1Zxa4pInUDULnf4q9k9fUoQutYSihf5GpHAvfNM', NULL, NULL, '2022-10-26 11:49:28', '2022-10-28 11:04:47'),
(441, 'İRFAN CİHAN MERSİN', 'irfancihan.mersin@sadik.com.tr', 'user', '1', '55', NULL, '2022-10-26 12:02:21', '$2y$10$QzhUS.vj6JgDJWO9D4CbjOvDuYX9ebU.WtmepEQpuBpI/F6UdiEzK', NULL, NULL, 4, NULL, 'SADIK GRUBU', '1', '05325444714', 'www.sadik.com.tr', '<p>Otomotiv Enerji Tarım Girisim Sermayesi</p>', '<p>1947 yilinda kurulan Sadık Grubu bugun 5 farkli ana sektorde hizmet vermektedir.</p>', '1', NULL, NULL, NULL, '2022-10-26 12:01:05', '2022-10-27 17:22:18'),
(442, 'Oktay Mersin', 'oktay.mersin@sadik.com.tr', 'user', '1', '57', NULL, NULL, '$2y$10$8NhV/whAN65mnVL9JuUGC.9MXHb7AHjp2.hHaCi5BWHbKB6VxbgI6', NULL, NULL, 4, NULL, 'Sadık Grubu', '1', '05322138433', 'www.sadik.com.tr', '<p>Otomotiv-Akaryakıt-Sigorta-Tarım-Madeni Yağlar Lastik Park-T&uuml;v-S&uuml;d</p>', '<p>1947 yılında kurulan Sadık Grubu, otomotiv sekt&ouml;r&uuml;nde Renault ve Dacia yetkili bayilikleri bulunmakta olup, ayrıca ikinci el ve filo kiralama hizmetleri sunmaktadır. T&Uuml;V S&Uuml;D D-Expert g&uuml;vencesiyle tarafsız, profesyonel ikinci el ara&ccedil; ekspertiz hizmeti vermektedir. 17 d&uuml;nya markası ile lastik alanında da hizmet verilmektedir. Akaryakıt sekt&ouml;r&uuml;nde Petrol Ofisi, Total, Opet, Aygaz ve Shell markalarında 6 istasyonu bulunan Sadık Grubu, Petrol Ofisi ile birlikte ger&ccedil;ekleştirdiği Taşıt Tanıma Merkezi (TTM) hizmetiyle de filo sahibi işletmelerin akaryakıt ihtiya&ccedil;larında s&uuml;ratli, rahat ve g&uuml;venilir &ccedil;&ouml;z&uuml;mler sunmaktadır. Ayrıca yine akaryakıt sekt&ouml;r&uuml;nde Shell, Total, Opet ve Petrol Ofisi markalarının T&uuml;rkiye ticari satışlar dağıtımını ger&ccedil;ekleştirmekte olup, toptan madeni yağda da Petrol Ofisi markası ile hizmet vermektedir. Tarım ve gıda alanında da Sadık Tarım markası ile iyi tarım uygulamaları kapsamında yetişen zeytin ağa&ccedil;larından erken hasat soğuk sıkım zeytinyağı ve bal &uuml;retimi yapılmaktadır.</p>', '1', NULL, NULL, NULL, '2022-10-26 12:03:32', '2022-10-27 17:22:40'),
(444, 'Umran Mersin', 'umran.mersin@sadik.com.tr', 'user', '1', '56', NULL, NULL, '$2y$10$5YYWgqMOQLBh0R1sVbxJP.83ZyD2hYbtSeHhDa8nCwh8nGiZpWn2W', NULL, NULL, 5, NULL, 'Sadik Grubu-Sadik Tarim', '1', '05305104768', 'www.sadiktarim.com', '<p>Erken Hasat Soguk Sıkım Zeytinyagi .Nar uretimi .Dogal bal cesitleri</p>', '<p>Kendi arazilerimizde urettigimiz zeytinyaglari narlari ve gezici aricilikla urettigimiz dogal ballari Sadik Tarim markasi ile pazarliyoruz</p>', '1', '8j5A1MEuFq8tnT2l6fRNvfvtPvKse9C5VAUbp6LiI7e39fJQfp2TfZ5sIx0f', NULL, NULL, '2022-10-26 12:19:46', '2022-10-27 17:22:29'),
(445, 'Serhat cengiz', 'serhatcengiz@gmail.com', 'user', '1', '15', NULL, NULL, '$2y$10$Y8.rBFHHXNVrPE/UzFI79eSoWkMD5iwuotkmsgJW3mbQ9cczWc7xG', NULL, NULL, 26, NULL, 'Cengiz ticaret', '1', '5327392236', 'www.cengizlerstore.com.tr', '<p>Beyaz eşya mobilya</p>', '<p>Cengiz ticaret</p>', '1', NULL, NULL, NULL, '2022-10-26 13:04:46', '2022-10-27 17:12:50'),
(446, 'Ezgi Atılsın Korkmaz', 'info@ezelwines.com', 'user', '1', '23', NULL, NULL, '$2y$10$ZdKQLLjsdKx0KxKumTOB3.1Tuluo7YYQpJrF3UNPzjK5YIzi1RL9C', NULL, NULL, 10, NULL, 'Ezel Şarapçılık', '1', '00905062769655', 'http://www.ezelwines.com/', '<p>Şarap</p>', '<p>Şarap &uuml;retimi yapmaktayız.</p>', '1', 'jPGiWAF4oFXDp2dbPc4k8uTOhUCBxASF0plQf3Z64jX2njCEXlLNBCm1ZSDO', NULL, NULL, '2022-10-26 13:06:58', '2022-10-27 17:14:51'),
(447, 'Ekrem Ates', 'ates@hd.com.tr', 'user', '1', '33', NULL, NULL, '$2y$10$VvW7Ct0nRz6o2MPigEcapeAWoTAUrm98WCT0wNFc5VcijfRcjbK1q', NULL, NULL, 4, NULL, 'HD KAUÇUK A.Ş', '1', '05323542130', 'HD.com.tr', '<p>Otomotiv yedek par&ccedil;a</p>', '<p>1959 kurulmuş 60 &uuml;lkeye ihracat yapıyor,ağır vasıta ara&ccedil;ların s&uuml;spansiyon par&ccedil;aları &uuml;retimi yapıyor</p>', '1', NULL, NULL, NULL, '2022-10-26 13:10:45', '2022-10-27 17:16:43'),
(448, 'RAMAZAN KARALAR', 'ramazankaralar@hotmail.com', 'user', '1', '41', NULL, '2022-10-26 13:31:53', '$2y$10$MvChPD19WOBm8VLMOQpF2.X/qbaYmwytSAYLdFNofwCUWNPWnNtu.', NULL, NULL, 28, NULL, 'Mali Müşavir Ramazan Karalar ve Ort', '1', '+905436123633', 'www.ramazankaralar.com', '<p>Muhasebe ve Mali M&uuml;şavirlik</p>', '<p>Muhasebe ve Mali M&uuml;şavirlik - Bağımsız Denetim</p>', '1', NULL, NULL, NULL, '2022-10-26 13:11:15', '2022-10-27 17:19:30'),
(449, 'İbrahim şenel', 'ibrahim@senelmimarlik.com', 'user', '1', '60', NULL, NULL, '$2y$10$VyvfDwhf79rf8On0E22CcOlQLn4Ag/1AW2tZCrqbzbC4fvrSAZvtW', NULL, NULL, 2, NULL, 'Teğet inşaat sanayi ticaret ltd.şti', '1', '5325832465', 'Senelmimarlik.com', '<p>Proje, m&uuml;şavirlik</p>', '<p>Konut, eğitim yapıları, sanayi ve turizm yapıları ile ilgili proje ve m&uuml;şavirlik hizmetleri sunmaktayız, sekt&ouml;rde 23 yıldır faaliyet g&ouml;stermekteyiz</p>', '1', 'MhJiKvbuK8p6hVG21pWNKgMQyZxR2HvzdRdnJ77wDh9SooqaCPglpSnpzAat', NULL, NULL, '2022-10-26 13:12:32', '2022-10-28 10:46:00'),
(450, 'Özlem Köseoğlu', 'ozlem@koseogluturizm.com.tr', 'user', '1', '40', NULL, NULL, '$2y$10$pGnxBKBStUeC6hp1hygZA.nwABJcilkd91KaLjsUdMTLynFZ2GSCi', NULL, NULL, 25, NULL, 'Köseoğlu Turizm', '1', '05558000616', 'www.koseogluturizm.com.tr', '<p>Etstur acenteliği</p>', '<p>Otel rezervasyonu, u&ccedil;ak bileti, yurti&ccedil;i- yurtdışı turlar</p>', '1', NULL, NULL, NULL, '2022-10-26 13:12:56', '2022-10-27 17:19:22'),
(451, 'Efsun alpbaz', 'efsun.ozmen@gmail.com', 'user', '1', '5', NULL, NULL, '$2y$10$Tev5yzxLii2uTy.14VxovuUomDm4vYq2cPjZdtkGihjjKGgRZf0fC', NULL, NULL, 28, NULL, 'Altınefe', '1', '5327833413', 'Altınefe', '<p>Kuyumculuk</p>', '<p>Kuyum Bluediamond bayisi</p>', '1', NULL, NULL, NULL, '2022-10-26 13:33:15', '2022-10-27 16:56:11'),
(452, 'Levent Altuntaş', 'laltuntas@hotmail.com', 'user', '1', '34', NULL, NULL, '$2y$10$uMlCHOhv5CjFp1T9HUGb2OI9Ke.W5.K3OcPftk6l2gGqwbWGXLNlK', NULL, NULL, 25, NULL, 'Herakles Termal Otel', '1', '05424578323', 'www.heraklestermal.com.tr', '<p>Termal Otelcilik</p>', '<p>Pamukkale\'de, 130 oda kapaaiteli, Konaklama ve Fizik Tedavi Hizmeti veren, 4 yildizli bir termal oteliz.</p>', '1', NULL, NULL, NULL, '2022-10-26 13:33:58', '2022-10-27 17:16:52'),
(453, 'Erdinç Özlü', 'erdincozlu5252@gmail.com', 'user', '1', '14', NULL, NULL, '$2y$10$SkYRPU6ECYHa4eDdiV1cN.7Y//FiAeXNZBNmUSSl20mPfb4p9Jjoy', NULL, NULL, 2, NULL, 'Cemete yapı', '1', '05442769799', 'Cemete yapı inşaat', '<p>İnşaat ve m&uuml;hendislik hizmetleri</p>', '<p>İnşaat m&uuml;hendislik</p>', '1', NULL, NULL, NULL, '2022-10-26 13:46:25', '2022-10-27 17:12:42'),
(454, 'Memiş türedi', 'turedimemis@hotmail.com', 'user', '1', '43', NULL, '2022-10-26 13:50:45', '$2y$10$rtqU0s7T1VYUjB82LEvU1u6mN9AuecN4bpSGseJY9tc6O0Fl807ZO', NULL, NULL, 28, NULL, 'Marmaris teknik klima', '1', '5335704690', 'www.marmaristeknik.com', '<p>İklimlendirme ve soğutma klima sistemleri</p>', '<p>Marmaris Ve Dat&ccedil;a Daikin Bayi ve servis</p>', '1', NULL, NULL, NULL, '2022-10-26 13:46:31', '2022-10-27 17:19:45'),
(455, 'UTKU UYANIK', 'utku09@hotmail.com', 'user', '1', '12', NULL, NULL, '$2y$10$01bRsluxt9atbv6FfPXX2ensCbN8fxjPvvSrw1tf23yKc0sSsgtWq', NULL, NULL, 2, NULL, 'Brd motor insaat aş.', '1', '05555227158', 'Yok', '<p>İnsaaat taahhut bahceli ev yapip satmaktayiz</p>', '<p>İnsaaat taahhut bahceli ev yapip satmaktayiz</p>', '1', NULL, NULL, NULL, '2022-10-26 13:46:42', '2022-10-27 17:12:02'),
(456, 'Coşkun CERIT', 'c.cerit@ceritdemir.com.tr', 'user', '1', '16', NULL, '2022-10-26 14:03:27', '$2y$10$f0Da3adwCJMzA1R5UqNXfu8xHSJpYNySeR51s0tHY82NZlrP/qG4K', NULL, NULL, 19, NULL, 'Cerit Demir Profil san.tic.ltd.sti.', '1', '5322751045', 'ceritdemir.com.tr', '<p>Toptan ve perakende Demir ticareti</p>', '<p>Aydın merkezde toptan ve parekende sekt&ouml;r&uuml;nde faliyet gostermekteyiz.Bolgemizde inşaat ve makine sanayide faaliyet g&ouml;steren firmalara &ccedil;&ouml;z&uuml;n ortağı oluyoruz</p>', '1', NULL, NULL, NULL, '2022-10-26 13:56:49', '2022-10-27 17:12:58'),
(457, 'Nuri Turgut', 'nuri@cottonbox.com.tr', 'user', '1', '59', NULL, NULL, '$2y$10$gK5IWdm1dedHyM6/VFmV2uex7rOwkiaNd8tD5ifAw52bPYpE530/W', NULL, NULL, 24, NULL, 'Sumas Tekstil AS', '1', '0 532 317 79 70', 'www.cottonbox.com.tr', '<p>Pamuklu ev tekstili &uuml;r&uuml;nleri uretim ve satışı. Nevresim takimi vs.</p>', '<p>Yurt i&ccedil;inde 1.200 satis noktasında bayi &ccedil;alışması, yurt dışında 47 &uuml;lkede Cottonbox markası ile satis. Marka yatırımı seklinde &ouml;zetlenebilir.</p>', '1', NULL, NULL, NULL, '2022-10-26 14:10:39', '2022-10-27 17:23:42'),
(458, 'Caner Torunoğulları', 'caner@orkahotels.com', 'user', '1', '47', NULL, '2022-10-26 14:12:17', '$2y$10$pHP4DRccbe8zJTbaFDTM5eyNYIf8flhHtDLBGuH64mHyfTjiSLga6', NULL, NULL, 25, NULL, 'Orka Hotels', '1', '5496166810', 'Orkahotels.com', '<p>Hotels, Insaat</p>', '<p>Istanbul &amp; Ege de oteler &amp; Insaat</p>', '1', NULL, NULL, NULL, '2022-10-26 14:11:50', '2022-10-27 17:20:15'),
(459, 'Ahmet Ayar', 'ahmetayar.pasa.spa@gmail.com', 'user', '1', '49', NULL, NULL, '$2y$10$EFHOG0BqFL1Oc9LMirvCa.ja3PnA.PanMVOiALAIdWTKJtXVblJj2', NULL, NULL, 25, NULL, 'Özyatırım spa turizm tic. İnş.ltd.şti', '1', '05364610876', 'www.energym.com.tr', '<p>Otel i&ccedil;i spa hizmetleri</p>', '<p>Firmamız turizm sekt&ouml;r&uuml;nde otel i&ccedil;i spa merkezleri işletmeleri yapmaktayız</p>', '1', NULL, NULL, NULL, '2022-10-26 14:28:25', '2022-10-27 17:20:34'),
(460, 'İlker Birol', 'ilkerbirol83@gmailcom.tr', 'user', '1', '1', NULL, NULL, '$2y$10$uszIzCr6jEMTmWYpu.jhtO2ra0Z5SmzKtryTwOSuE01/Ku6JHr4fu', NULL, NULL, 12, NULL, 'A dizayn mobilya dekorasyon', '1', '5365666066', 'Yok', '<p>Mutfak banyo inşaat</p>', '<p>A dan z ye t&uuml;m mobilya ve dekorasyon işleri</p>', '1', NULL, NULL, NULL, '2022-10-26 14:52:00', '2022-10-27 16:55:07'),
(461, 'Mehmet Demiroğlu', 'm.demiroglu@demirogludemir.com', 'user', '1', '18', NULL, '2022-10-26 15:57:52', '$2y$10$P4QFLNDtbwpfdrzxjXQZ/.fFmBff0yDxxlMnYCG4fF7iaN1ieRrXu', NULL, NULL, 19, NULL, 'Demiroğlu Demir San.ve Tic.AŞ', '1', '05353224237', 'www.demirogludemir.com', '<p>Yapı &ccedil;elikleri, boru ve profil, izolasyon malzemeri satışı; Sac &uuml;r&uuml;nleri işleme merkezi</p>', '<p>2009 yılında kurulmuştur.2014 yılında t&uuml;zel kişiliğe d&ouml;n&uuml;ş&uuml;lm&uuml;ş, aynı yıl i&ccedil;inde makina yatırımları ger&ccedil;ekleşmiş, 2019\'da Muğla şubemiz de a&ccedil;ılmıştır</p>', '1', '2ZKP25OD3jSYkY53FOJ7JM4k3FWmSQ4CKI1K7ZrbVrbLUgbim7TbuJGhfqjN', NULL, NULL, '2022-10-26 14:59:52', '2022-10-27 17:13:16'),
(462, 'Onur Kolat', 'onurkolat@kltyapi.com.tr', 'user', '1', '39', NULL, NULL, '$2y$10$a.35GWJJolcK8O6d.bsX0OndO23Oja.Zkts6wjXeAIAXtJBNUpcTm', NULL, NULL, 2, NULL, 'KLT YAPI SAN. TIC. LTD. STI.', '1', '05323565203', 'www.kltyapi.com.tr', '<p>Novo Projects / novo|maison; novo|center; novo|myndos; novo|platin</p>', '<p>Bodrum yarimada genelinde NOVO markali konut ve ticari projeleri hayata geciren KLT YAPI 45 yili askin tecrubesi ile gayrimenkul sektorunde markali proje konspeti ile ilerlemektedir.</p>', '1', NULL, NULL, NULL, '2022-10-26 15:23:34', '2022-10-27 17:19:13'),
(463, 'Senem Barut', 'senem-bircan@hotmail.com', 'user', '1', '8', NULL, NULL, '$2y$10$iOGyS7aeckhrqXpiG9oGtOqTKwZe36dqwVTYPNoQaKCV12HiKLfhK', NULL, NULL, 28, NULL, 'Aydın Arabuluculuk Merkezi', '1', '05428114609', 'www.aydinarabuluculukmerkezi.com.tr', '<p>Arabuluculuk hizmeti</p>', '<p>İş&ccedil;i işveren, ticaret, t&uuml;ketici ve her t&uuml;rl&uuml; hukuk uyuşmazlıklarında arabuluculuk hizmeti verilmektedir</p>', '1', NULL, NULL, NULL, '2022-10-26 15:40:46', '2022-10-27 16:57:02'),
(464, 'İbrahim Durak', 'ibrahimdurak77@gmail.com', 'user', '1', '36', NULL, '2022-10-26 17:09:40', '$2y$10$FYN8M4ZlNp.zj8ciusePUODu3QUbsI3NlEzwcRXmFCkH0urPz.PdS', NULL, NULL, 13, NULL, 'İlknur Optik', '1', '05334674448', 'www.İlknuroptik.com', '<p>Optik &ccedil;er&ccedil;eve kontak lenscam ve G&uuml;neş g&ouml;zl&uuml;kleri</p>', '<p>Aydın Merkez Efeler ve Kuşadası nda Perakende Optik mağazalarımız var 45 yılı aşkındır hizmet vermekteyiz</p>', '1', NULL, NULL, NULL, '2022-10-26 16:12:02', '2022-10-27 17:18:46'),
(465, 'Gülşah öztürk canatan', 'gulsahcanatan@outlook.com', 'user', '1', '19', NULL, NULL, '$2y$10$9ORKI1DTOQljgTb2QeQiFOFDJ2xH99mMY7uV3Ek.lknafyN4vGUP.', NULL, NULL, 2, NULL, 'Dizayn yapi mimarlık mühendislik', '1', '5324721042', 'Yok', '<p>Mimari proje , inşaat ve danışmanlık alanında hizmet vermektedir</p>', '<p>Mimari proje , inşaat ve danışmanlık alanında hizmet vermektedir</p>', '1', NULL, NULL, NULL, '2022-10-26 16:21:50', '2022-10-27 17:13:24'),
(466, 'Oğuzhan Canatan', 'oguzhan_cntn@canatanlar.com.tr', 'user', '1', '13', NULL, NULL, '$2y$10$DEKUeUlI4iMz9fG6e9f28O8PavoeXvCQmHlsKw41hNuaUgL0hhXtW', NULL, NULL, 2, NULL, 'Canatanlar inşaat Ltd şti', '1', '05445411123', 'Canatanlar.com.tr', '<p>Hazır beton &uuml;retimi, mıcır ve altyapı dolgu malzemeri &uuml;retimi ve d&uuml;nya &ccedil;apında markaların Ege b&ouml;lgesinde dağıtım organizasyonu</p>', '<p>Aydın b&ouml;lgesi Canatan beton markası</p>', '1', 'XMnlkLBQwN2s6fUMg6T4pxZwtLu6AZwwvTTM8NLXGhfCtMjcQ0Q1v2mWbvnA', NULL, NULL, '2022-10-26 17:07:22', '2022-10-27 17:12:33'),
(467, 'Mehmet  Erişkin', 'mehmet@eriskinoptik.com.tr', 'user', '1', '22', NULL, NULL, '$2y$10$AFZELX01ciGrcKeoCmol..RJyc60axlSaetJcUtfXnQFBgfCiT70G', NULL, NULL, 28, NULL, 'Erişkin Optik Sanayi Ticaret Limited Şirketi', '1', '5323606002', 'www.eriskinoptik.com.tr', '<p>Perakende g&ouml;zl&uuml;k, g&uuml;neş g&ouml;zl&uuml;ğ&uuml; ve lens satışı.</p>', '<p>40 yıldır Denizli\'de hizmet veren, bulunduğu b&ouml;lgede sekt&ouml;r&uuml;n&uuml;n en g&uuml;&ccedil;l&uuml; ve tanınan firması. 3 mağaza ile Denizli\' de hizmet veriyor.</p>', '1', NULL, NULL, NULL, '2022-10-26 17:37:56', '2022-10-27 17:14:17'),
(468, 'Elvan Özbilen', 'elvanozbilen@hotmail.com', 'user', '1', '48', NULL, NULL, '$2y$10$rxBui6VZ3vfsoEc9UC8tEuyM8pJtRpB7vwl80n7lYhyM1HnqzUk.e', NULL, NULL, 28, NULL, 'Özbilen Kuyumculuk', '1', '05323053052', 'www.evagold.co', '<p>Kuyumculuk, Altın, M&uuml;cevharat</p>', '<p>Mağaza kuyumculuğu</p>', '1', NULL, NULL, NULL, '2022-10-27 08:01:03', '2022-10-27 17:20:24'),
(469, 'Burak Semerci', 'burak_semerci@hotmail.com', 'user', '1', '7', NULL, NULL, '$2y$10$pOgGjQAoHnzkKwjpRXQRku01KU8TmqQL2Wnme9eA0o77LUpvYIL8y', NULL, NULL, 2, NULL, 'Arhan inşaat', '1', '05545872588', 'www.arhaninsaat.net', '<p>İnşaat taahh&uuml;t,hafriyat,Ağa&ccedil; ziraati</p>', '<p>İzmir Aydın Muğla b&ouml;lgesinde inşaat taahh&uuml;t ve yap sat sekt&ouml;r&uuml;nde 2008yılından beri faliyette bulunan firmamız aynı zamanda;sert &ccedil;ekirdekli erkenci ağa&ccedil; zıraatı yatırımları yapmaktadır. &Uuml;r&uuml;nlerin tamamı ihracata y&ouml;nelik olup katma değeri y&uuml;ksek &uuml;r&uuml;nlerdir.</p>', '1', NULL, NULL, NULL, '2022-10-27 08:01:37', '2022-10-27 16:56:31'),
(470, 'Cahide Fenli Akman', 'cfaemporium@gmail.com', 'user', '1', '28', NULL, NULL, '$2y$10$8SDWNXgKToQqYpUL249n3eUy3xzJ2s6jNwHVwMjHpveuY9qBuXXxu', NULL, NULL, 1, NULL, 'Gallus Teknoloji A.Ş', '1', '05324026575', 'https://gallus.ai/tr', '<p>Teknoloji yazılım m&uuml;hendislik</p>', '<p>Sigorta centeleri i&ccedil;in yazılım</p>', '1', 'bpjl8ocywaZsE5rGcsQhyEE6nBncJaI6kTNZRXS8WUIeJtIRPqTDKcuxAoWB', NULL, NULL, '2022-10-27 08:02:08', '2022-10-27 17:16:01'),
(471, 'Hakan Urhan', 'hakanurhan@urhanboya.com', 'user', '1', '63', NULL, NULL, '$2y$10$jU21NYy54B1fsdetWCvSU.qnaNYRI0VUcJwoET/SQUf.Rpr0V/Q2S', NULL, NULL, 24, NULL, 'Urhan Boya Terbiye Tekstil A.Ş.', '1', '5322452753', 'www.urhanboya.com', '<p>Dış Giyim &Ouml;rme ve Ev Tekstiline Y&ouml;nelik Kumaş Baskı Boyama İşlemleri. Baskılı ve boyalı &ouml;rme kumaş satışı.</p>', '<p>&Ouml;rme kumaş ağırlıklı olmak &uuml;zere belirli d&uuml;nya markalarına y&ouml;nelik kumaş dijital baskı, boyama ve satış işlemleri yapmaktayız.</p>', '1', NULL, NULL, NULL, '2022-10-27 08:15:50', '2022-10-27 17:24:27'),
(472, 'Sibel Aysu', 'sibel@aysutekstil.com.tr', 'user', '1', '10', NULL, '2022-10-27 08:33:25', '$2y$10$LWLpjD9VJj5ORDPgIIP85.NIVzxSSpfBe9wjoE/PzrU8poLZqgBNC', NULL, NULL, 24, NULL, 'Aysu tekstil san tic A.Ş', '1', '05532832788', 'Www.aysutekstil.com.tr', '<p>Bebek ve &ccedil;ocuk tekstili</p>', '<p>Aysu tekstil, 20 yılı aşkın tecr&uuml;besiyle , bebek tekstili ve kıyafeti &uuml;retip ihra&ccedil; etmektedir. Oekoteks, GOTS, BSCI, BCI,IS0 9001..m&uuml;şteri memnuniyeti bazlı &ccedil;alışan Aysu Tekstil ,s&uuml;rd&uuml;r&uuml;lebilirlik ve yeşil enerjiyi ana ilke edinmiştir.</p>', '1', 'W13ESagZX6T5y6aPYSsvGRHzi36UEsXkf0pgRwfv72i8zCrq8QQsJHBb8Hdh', NULL, NULL, '2022-10-27 08:16:45', '2022-10-27 17:04:01'),
(473, 'Onur Aysu', 'onur@aysubilisim.com.tr', 'user', '1', '9', NULL, NULL, '$2y$10$NNSNmoze2kgL2vcYwFWG3uEJFJrza5lMDXHet3/lTEBfGEa25mS3K', NULL, NULL, 16, NULL, 'Aysu 3D bilişim teknolojileri san ve tic A.Ş', '1', '+905532754922', 'www.3dteknomarket.com', '<p>3 Boyutlu yazıcı ve sarf malzeme satışı aynı zamanda tersine m&uuml;hendislik hizmetleri</p>', '<p>3 Boyutlu yazıcı ve sarf malzeme satışı aynı zamanda tersine m&uuml;hendislik hizmetleri</p>', '1', NULL, NULL, NULL, '2022-10-27 08:24:38', '2022-10-27 17:03:29'),
(474, 'Ahmet Turan', 'anademir@anademir.com.tr', 'user', '1', '6', NULL, '2022-10-27 08:57:05', '$2y$10$MkgruPULFzAjXDMVoC5KjOUR.IS6vTTFBeGqj94UqnBTvKc9eoOs2', NULL, NULL, 2, NULL, 'Anademir inşaat', '1', '532 799 9970', 'www.anademir.com.tr', '<p>İnşaat Taahh&uuml;t hizmetleri</p>', '<p>Anahtar teslimi başta sanayi yapıları olmakla birlikte,yapı &ccedil;eşitliliği g&ouml;zetmeksizin inşaat taahh&uuml;t işleri</p>', '1', 'SUQVle6hafU13sfu12Awj8heVfStZXYdnEjWah2N4uAeYcMTvaEj7cnnhVYB', NULL, NULL, '2022-10-27 08:56:09', '2022-10-28 07:19:31'),
(476, 'Doğa Korkmaz', 'doga_korkmaz92@hotmail.com', 'user', '1', '24', NULL, NULL, '$2y$10$h3Jl1fV3fT9VDG1hXkrT/ujJ0ahNK8fYWvPzraOX6yJtZE4kgHpjW', NULL, NULL, 10, NULL, 'Ezel Şarapçılık', '1', '05530171712', 'http://www.ezelwines.com/', '<p>Şarap &uuml;retimi</p>', '<p>Şarap &uuml;retimi yapmaktayız.</p>', '1', NULL, NULL, NULL, '2022-10-27 09:01:59', '2022-10-27 17:15:01'),
(477, 'Naile Göçen Cukurova', 'ebru.aycicek@goctur.com.tr', 'user', '1', '31', NULL, NULL, '$2y$10$O.lY4r2B99jYNuye1/tfk.WdjnybYEuMvLYZGWS.EmQGAoSVP/rRK', NULL, NULL, 25, NULL, 'GÖÇTUR TUR. YAT. TİC. A.Ş.', '1', '+905331298158', 'https://pinebay.com/tr/holiday-resort-kusadasi', '<p>N</p>', '<p>N</p>', '1', NULL, NULL, NULL, '2022-10-27 09:04:15', '2022-10-27 17:16:27'),
(478, 'EMİN TERZİOĞLU', 'eminnterzioglu@gmail.com', 'user', '1', '61', NULL, NULL, '$2y$10$9Zm75TPrgNKN.BoSL9rB8Oh5shDSJxukQfS0qvumOx7.0xBPy.i.2', NULL, NULL, 2, NULL, 'TERZİOĞLU MÜHENDİSLİK', '1', '05333526024', 'www.terzioglumuhendislik.com', '<p>DENİZLİ VE B&Ouml;LGEDE İNŞAAT TAAHH&Uuml;T VE YAPSAT, AYRICA BİNA OTOMASYON</p>', '<p>Terzioğlu M&uuml;hendislik Firması; 1978 yılında Şemseddin Terzioğlu tarafından kurulan yaklaşık 45 yıldır Denizli ve &ccedil;evre b&ouml;lgelerde inşaat taahh&uuml;t hizmeti veren bir firma olup şu anda ikinci kuşak olan Emre Terzioğlu ve Emin Terzioğlu y&ouml;netiminde kurumsallaşarak b&uuml;y&uuml;meyi hedefine koymuş bir şirkettir. Bir&ccedil;ok konut projesine imza atmasının yanı sıra &ouml;zel villa, işyeri, hastane inşaatı yapımında da hizmet veren Terzioğlu M&uuml;hendislik, g&uuml;ncel olarak b&uuml;nyesinde 120 &ccedil;alışanıyla beraber odağında g&uuml;ven ile işlerine devam etmektedir. Aynı zamanda yan kuruluşu olan EES Yapı Otomasyon firmasıyla da bina otomasyon alanlarında hem kendi yapılarında hem de diğer firmalara hizmet vermektedir.</p>', '1', NULL, NULL, NULL, '2022-10-27 10:10:18', '2022-10-27 17:24:04'),
(479, 'Can AĞAR', 'cannagarr@gmail.com', 'user', '1', '37', NULL, NULL, '$2y$10$nS28kd8zpJUrQA3euOITQuK6T5qOZdROssMcF7oI0Q/CNadimmE2O', NULL, NULL, 1, NULL, 'İnci Yatirim Gayrimenkul Danişmanlik', '1', '5492362427', 'www.inciyatirimgayrimenkul.com', '<p>Gayrimenkul Danışmanlık Hizmetleri</p>', '<p>Gayrimenkul Proje Geliştirme ve Danışmanlık</p>', '1', NULL, NULL, NULL, '2022-10-27 10:27:06', '2022-10-27 17:18:56'),
(480, 'Burcu Erdemir', 'burcu@miryacharters.com', 'user', '1', '44', NULL, '2022-10-27 10:53:00', '$2y$10$zmylsljstRffqNx5bECbWuyDWae7K8gZZ.Y5TOpr25aYLCOaCT6My', NULL, NULL, 28, NULL, 'Mirya Yatçılık', '1', '05448784852', 'https://yachtsngulets.com', '<p>Yat işletmeciliği, kiralama, satış</p>', '<p>Yat kiralama turizm seyahat acentelik servisi vermekteyiz.</p>', '1', NULL, NULL, NULL, '2022-10-27 10:41:56', '2022-10-27 17:19:53'),
(481, 'Mustafa Gökmen', 'mgokme@hotmail.com', 'user', '1', '11', NULL, NULL, '$2y$10$RblbiCGn4U78nC7.q5vQNuluPFdd1FGYpYy.1OLSToXzUsDIZZ2r6', NULL, NULL, 11, NULL, 'BALCI GÖKMEN', '1', '0 (532) 491 90 13', 'www.balcigokmen.com', '<p>Bal , apiterapi &uuml;r&uuml;nleri , zeytinyağı &uuml;r&uuml;nleri</p>', '<p>Marmaris&rsquo;in bal ve arı &uuml;r&uuml;nleri konusunda markalaşmış aile şirketidir. Sağlıklı beslenen nesiller ilkesiyle T&uuml;rkiye&rsquo;nin her k&ouml;şesinde geniş bir portf&ouml;ye sahiptir. Muğla Marmaris ve Bodrumda şubeleri bulunmaktadır.</p>', '1', NULL, NULL, NULL, '2022-10-27 11:11:30', '2022-10-27 17:04:12'),
(482, 'Serdar Yilmaz', 'serdar.yilmaz@hotelilayda.com', 'user', '1', '35', NULL, NULL, '$2y$10$cHFrF312jNofecVMMQifP.yi6qbBNHhztIDcSjBPy9r3fHu5YxrKG', NULL, NULL, 25, NULL, 'İlayda Tur Tic Ltd Şti', '1', '05330272237', 'www.İlaydaavantgarde.com', '<p>Konaklama</p>', '<p>Kuşadasi kordonunda iki ve d&ouml;rt yıldızlı otel işletmemelerimiz bulunmaktadır.</p>', '1', NULL, NULL, NULL, '2022-10-27 12:27:08', '2022-10-27 17:18:37'),
(483, 'Murat günal', 'mrt_gunal@hotmail.com', 'user', '1', '29', NULL, NULL, '$2y$10$JvCWFVYDmX68ks4pcKsS6ebGp5RAJjQH7snu4pn7SRI/MY8EUtvWm', NULL, NULL, 18, NULL, 'Gnl sigorta', '1', '05064893535', 'Yok', '<p>Elementer branşlı t&uuml;m sigortacılık hizmetleri</p>', '<p>Gen&ccedil; dinamik ve sekt&ouml;rde g&uuml;&ccedil;l&uuml;</p>', '1', NULL, NULL, NULL, '2022-10-27 13:08:31', '2022-10-27 17:16:09'),
(484, 'Engin Kaplan', 'engin@allkaria.com', 'user', '1', '4', NULL, NULL, '$2y$10$zX9gX8BGROk/TCE19SjxauvAFhbuXQW/0ZKuROSjHffV8U3IywYQ.', NULL, NULL, 26, NULL, 'allkaria.com', '1', '05322514647', 'www.allkaria.com', '<p>E ticaret pazar yeri</p>', '<p>Bodrum ve T&uuml;rkiye\'nin her yerine hizmet veren, yerelden globale b&uuml;y&uuml;me modelinde yeni nesil e ticaret pazaryeri.</p>', '1', NULL, NULL, NULL, '2022-10-27 13:14:48', '2022-10-27 16:55:59'),
(485, 'Mert Özsan', 'mert@maredesign.com.tr', 'user', '1', '42', NULL, NULL, '$2y$10$bYTlAidGpCIvdPTh4zKQC.X/toUvtncIG2yYOeIZKyqAsfgMI/D06', NULL, NULL, 2, NULL, 'Mare Design Vitra Bodrum', '1', '05309700387', 'Vitra.com.tr', '<p>Vitra-Artema-H&uuml;ppe-Franke-Smeg</p>', '<p>Eczacıbaşı Vitra b&ouml;lge yetkili satıcısı ana bayi</p>', '1', '4AVYGI2VFOULFcZ90zV4SEEATNj7KCMoaTCCDSTe25KMXdaFSlKKSowTwp5i', NULL, NULL, '2022-10-27 13:15:49', '2022-10-27 17:19:38'),
(486, 'Suphi Yalçın', 's.yalcin@polisankansai.com', 'user', '1', '50', NULL, NULL, '$2y$10$DQaiNONE8VWcCvQehnun..9pxQm2T/l3tpQmQtatDJKGJRLlCbzGa', NULL, NULL, 2, NULL, 'Polisan Kansai Boya San ve Tic AŞ', '1', '05301515262', 'polisan.com.tr', '<p>İnşaat (İ&ccedil; ve Dış Cephe Boyaları,Ahşap-Metal Boya,&Ouml;zel Ama&ccedil;lı &Uuml;r&uuml;n,Sprey ve Hobi Boyaları, Yardımcı &Uuml;r&uuml;nler),End&uuml;striyel,Deniz,Mobilya Boyaları, Yalıtım Sistemleri</p>', '<p>Doğanın t&uuml;m renklerini evlerimize taşıyan, yenilik&ccedil;i, &ccedil;evreye ve insana duyarlı, performansı y&uuml;ksek &uuml;r&uuml;nlerle kaliteli &ccedil;&ouml;z&uuml;mler &uuml;reten, lider boya markasıdır. 2016 yılında Kansai Paint ile yaptığı ortaklık ile g&uuml;c&uuml;ne g&uuml;&ccedil; katmıştır.</p>', '1', NULL, NULL, NULL, '2022-10-27 13:23:35', '2022-10-27 17:20:46'),
(487, 'Cem şenoğlu', 'cem@forsakimya.com', 'user', '1', '26', NULL, NULL, '$2y$10$toa3/kvXnyi2kjDkb.HNQ.SFolK6/vPKFb31bd92eCcBlUniOivuO', NULL, NULL, 20, NULL, 'Forsa kimya inşaat ith.ihr.şti.', '1', '+905322604638', 'www.forsakimya.com', '<p>Y&uuml;zme havuzu, su arıtma, inşaat, mobil ev</p>', '<p>Y&uuml;zme havuzu, temiz su ve atık su arıtma ile ilgili her şey. Butik yap sat inşaat işleri. Tiny house &uuml;retim ve kiralama</p>', '1', '0c9zzXfotjoL4vPq6o0UIo27vwDNJLJLdpBKgrWFazSq8PeQKz2ZpfWHKioN', NULL, NULL, '2022-10-27 13:27:49', '2022-10-27 17:15:18'),
(488, 'Canberk Mersin', 'canberk@fidelisvc.com', 'user', '1', '25', NULL, NULL, '$2y$10$DEdZPNLQvgNjBFqci9zUJut9cVkodqzVBMLser7vTXYRGjswVBfTG', NULL, NULL, 9, NULL, 'Fidelis Ventures', '1', '5335019965', 'www.fidelisvc.com', '<p>Girişim Sermayesi Fonu</p>', '<p>Fidelis Ventures, İstanbul Portf&ouml;y ve Sadık Ventures ortaklığında kurulan, &ccedil;oğunluğu Silikon Vadisi&rsquo;nde olmak &uuml;zere k&uuml;resel &ouml;l&ccedil;ekte yatırım yapan bir girişim sermayesi fonudur.</p>', '1', NULL, NULL, NULL, '2022-10-27 13:39:51', '2022-10-27 17:15:11'),
(489, 'Nedim Korhan Şengün', 'korhansengun@sengunpartners.com', 'user', '1', '58', NULL, '2022-10-27 13:50:16', '$2y$10$H.4xpDXXSF7aatF2.29gC.wGqXDBw1Y.HhEEg97ywmwE/Nzb1yANa', NULL, NULL, 28, NULL, 'Şengün Grup/Şengün&Partners Avukatlık Ortaklığı', '1', '05325531806', 'https://sengungroup.com/', '<p>Hukuk, stratejik y&ouml;netim hizmetleri ve sigorta danışmanlığı ile basın hizmetleri</p>', '<p>Şeng&uuml;n Grup, Şeng&uuml;n Avukatlık Ortaklığı aracılığıyla hukuki hizmet sağlarken edindiği tecr&uuml;beler &ccedil;er&ccedil;evesinde, &ouml;zellikle şirketlerin hukuk dışındaki hizmet alanlarında karşılaştıkları zorlukları dikkate alarak yola &ccedil;ıkmıştır. Şirketlerin stratejik y&ouml;netim, risk y&ouml;netimi ve sigorta alanında ihtiya&ccedil; duyabilecekleri danışmanlık hizmetleri Şeng&uuml;n Stratejik Y&ouml;netim Hizmetleri A.Ş. ve Şeng&uuml;n Risk Y&ouml;netimi ve Sigorta Danışmanlığı A.Ş. tarafından verilmektedir. Şeng&uuml;n Medya reklam ve İletişim hizmetleri kapsamında &uuml;&ccedil; farklı web gazetesi ile bağımsız habercilik faaliyeti s&uuml;rd&uuml;r&uuml;lmektedir</p>', '1', NULL, NULL, NULL, '2022-10-27 13:45:34', '2022-10-27 17:23:31'),
(490, 'Rana Sözkesen', 'rsozkesen@funika.com.tr', 'user', '1', '27', NULL, NULL, '$2y$10$OxsqnHiCXyXtyGLkXTQEBe/0deHN7OC5JZ9eweCKCWShywAxuayRm', NULL, NULL, 24, NULL, 'Funika Holding', '1', '05339391203', 'www.funika.com.tr', '<p>Havlu bornoz pike boyama, oyun yazılımı</p>', '<p>Ev tekstili &uuml;r&uuml;nleri boya terbiye işlemleri yapan bir fabrikamız var. Bunun yanında mobil oyun yazılımı ve metaverse oyun yazılımı yapan firmalarımız bulunuyor.</p>', '1', NULL, NULL, NULL, '2022-10-27 13:49:03', '2022-10-27 17:15:44'),
(491, 'Didem Baydar', 'didembaydar@gmail.com', 'user', '1', '38', NULL, NULL, '$2y$10$dUtXL77UEmd0DgVv3QzTJerKYj3qEBFBzCoqTnhe4FQUK2sRHkjwO', NULL, NULL, 10, NULL, 'Karia Catering & Event', '1', '5325971729', 'www.kariacateringevent.com.tr', '<p>Catering T&uuml;m Organizasyon Hizmetleri</p>', '<p>Bireysel ya da kurumsal &ouml;zel g&uuml;n ve geceleri A&rsquo;dan Z&rsquo;ye organize ediyoruz. A&ccedil;ılış, lansman, şirket toplantısı, bayii toplantısı, gala gecesi vb. &ouml;zel g&uuml;nlerin catering dahil olmak &uuml;zere t&uuml;m organizasyon hizmetlerini bir paket halinde sunabiliyor, sadece ihtiya&ccedil; olan bazı kalemlerde de hizmet verebiliyoruz.</p>', '1', '7vtuRwsptctzkbcqIHCpaqSULL4KbJqtX14dSqYGORX8vUX61C4L0nearHuk', NULL, NULL, '2022-10-27 13:56:06', '2022-10-27 17:19:03'),
(492, 'Raşit Algül', 'rasitalgul@gmail.com', 'user', '1', '53', NULL, '2022-10-27 14:08:28', '$2y$10$cecnE7yL8aaXEH8c8fwW7.B8BGE3IncwdmGajbUdGxwD5eUisxGaS', NULL, NULL, 28, NULL, 'Raşit Algül', '1', '05322318397', 'www.rasitalgul.com', '<p>Reklam, Fotoğraf, Film, Prod&uuml;ksiyon</p>', '<p>Reklam ve tanıtım fotoğraf&ccedil;ılığı, reklam ve tanıtım filmi prod&uuml;ksiyon hizmetleri.</p>', '1', '5kW4CMDZ709VZMIjB9CXHtRPJBEec7B1FKlnSu39YEboJX3eAaEQ4lXIbfXJ', NULL, NULL, '2022-10-27 14:06:59', '2022-10-27 17:21:21'),
(493, 'Onur Çiçekdağ', 'onur.cicekdag@yf.com.tr', 'user', '1', '64', NULL, NULL, '$2y$10$s/LCIZGaD7lsAZBjCJHEgu4FU7MsiRnvDKwwPz5VAGPRK5mW9V/D2', NULL, NULL, 9, NULL, 'Yatırım Finansman Menkul Değerler A.Ş', '1', '05323861294', 'www.yatırımfinansman.com.tr', '<p>Sermaye piyasalarında hisse, tahvil, eurobond, vadeli işlemlere aracılık faaliyetleri ile Portf&ouml;y y&ouml;netimi, fonlar ile varlık y&ouml;netimi hizmeti.</p>', '<p>Şirketimiz 46 yaşında TSKB ve İş Bankası &ouml;nc&uuml;l&uuml;ğ&uuml;nde 13 b&uuml;y&uuml;k bankanın katılımıyla 1976 yılında kuruldu. &Ouml;nemli merkezlerdeki 10 hizmet noktamız ve t&uuml;m&uuml; lisanslı yatırım personelimiz ve işlem platformumuzla varlık y&ouml;netimi konusunda m&uuml;şterilerimize danışmanlık veriyoruz.</p>', '1', 'yueEzbV1k3JD0RWf1k39YQBnSNqUi1qfOpSGYWRm80tn2qgehVRZnUx594ZJ', NULL, NULL, '2022-10-27 14:18:44', '2022-10-27 17:24:36'),
(494, 'TAHİR BULCA', 'tahirbulca@hotmail.com', 'user', '1', '54', NULL, NULL, '$2y$10$.Zbid7YfOYl8.lCPJZTgsOQo69Rt0JyFuol1Iy3anwhgdO3A1Teym', NULL, NULL, 25, NULL, 'ROBİN REKLAM ORG LTD ŞTİ', '1', '5322007420', 'www.blackrockbodrum.com', '<p>YEMEK M&Uuml;ZİK</p>', '<p>Butik bir kokteyl bar anlayışıyla hizmet vermekteyiz.</p>', '1', NULL, NULL, NULL, '2022-10-27 14:27:06', '2022-10-27 17:22:07'),
(495, 'Gültekin', 'demet.gultekin@yf.com.tr', 'user', '1', '17', NULL, NULL, '$2y$10$Wy35W2.WhT6uujDY9xvwF.6OxrvQeVHJrGubEXr/KPo.8egK64Z56', NULL, NULL, 9, NULL, 'Demet', '1', '5078200400', 'www.yf.com.tr', '<p>Sermaye piyasası enstr&uuml;manları, hisse, eurobond, varlık y&ouml;netimi, portf&ouml;y y&ouml;netimi, otc</p>', '<p>T&uuml;rkiye\'nin ilk sermaye piyasası kuruluşu olarak, T&uuml;rkiye İş Bankası ve T&uuml;rkiye Sınai Kalkınma Bankası\'nın (TSKB) &ouml;nc&uuml;l&uuml;ğ&uuml;nde, 13 b&uuml;y&uuml;k bankanın katılımıyla 15 Ekim 1976 tarihinde kurulduk. &Ouml;nemli merkezlerdeki 10 hizmet noktamız, t&uuml;m&uuml; Sermaye Piyasası Kurulu lisanslarına sahip yatırım danışmanlarımız, internet şubemiz (YF.COM.TR) ve işlem platformlarımız hizmet ağımızı oluşturmaktadır. Geniş yetkili aracı kurum olarak, yurt i&ccedil;i, yurt dışı bireysel ve kurumsal yatırımcılarımıza sermaye piyasaları alanında aracılık hizmetlerini, d&uuml;nya standartlarında sunmaktayız.</p>', '1', NULL, NULL, NULL, '2022-10-27 14:31:48', '2022-10-27 17:13:05'),
(496, 'Aslı Bıyıklı Sanuç', 'asli@purainsaat.com', 'user', '1', '51', NULL, '2022-10-27 15:03:07', '$2y$10$38azjzjasGdwdhChw3Oeru5DNyYUh.0luUGF8bb2a1nB3iwkbOfpm', NULL, NULL, 2, NULL, 'Pura İnşaat', '1', '05066863017', 'www.purainsaat.com', '<p>İnşaat, gayrimenkul, renovasyon, dekorasyon , restorasyon, mimari proje, elektrik , statik , mekanik projelendirme</p>', '<p>15 yıllık tecr&uuml;bemizle ve profesyonel ekiplerimiz ile proje ve uygulama alanında hizmet vermekteyiz.. gayrimenkul ve inşaat hizmetlerimizin yanında restorasyon ve renovasyon projelerimiz ile mevcutu en doğru şekilde ihtiya&ccedil;larınıza y&ouml;nelik d&ouml;n&uuml;şt&uuml;r&uuml;yoruz</p>', '1', NULL, NULL, NULL, '2022-10-27 14:31:49', '2022-10-27 17:20:59'),
(497, 'MURAT OĞAN', 'murat_ogan@hotmail.com', 'user', '1', '3', NULL, '2022-10-27 14:46:48', '$2y$10$YG1QE3biKqLwaL8UNk/2iuZ3eR4jmhuxAieLAffZiZhmglE9gfA3i', NULL, NULL, 25, NULL, 'ALA BODRUM ORG LTD ŞTİ', '1', '5324438364', 'https://black7bodrum.com/', '<p>yemek club</p>', '<p>her d&ouml;neme damgasını vurmuş yerli ve yabancı şarkılarla misafirlerine keyifle vakit ge&ccedil;irip, rahatlıkla sohbet edebilecekleri keyifli bir ortam sunmakta.</p>', '1', NULL, NULL, NULL, '2022-10-27 14:33:44', '2022-10-27 16:55:41'),
(498, 'Nisan Göztepe', 'nisanyildiz79@gmail.com', 'user', '1', '46', NULL, NULL, '$2y$10$0s50RdAZuMIFyStJqgaE1OpPVlLkALUt/t0SEox//3BoYnM49KLu.', NULL, NULL, 28, NULL, 'NetBodrum yapı', '1', '05326561720', 'www.networkgayrimenkul.com.tr', '<p>İnşaat ve mimarlık Emlak danışmanlığı Apart otel işletmeciliği Restaurant işletmeciliği</p>', '<p>Firmamız yatırımcılarımız i&ccedil;in imkanlar sunar ve s&uuml;reci başından sonuna kadar inşaat, emlak, hizmet sekt&ouml;r&uuml; vs alanlarda &ccedil;&ouml;z&uuml;m ortağı olarak destekler.</p>', '1', 'ouOXcXPyTJIdTv6XPGqNtiHy7pNJpLQkMKIEBhpydx2RLGUskUmdMtyXjcRW', NULL, NULL, '2022-10-27 14:35:34', '2022-10-28 12:27:46'),
(499, 'özlem oğan', 'ozlemogan@hotmail.com', 'user', '1', '45', NULL, NULL, '$2y$10$XBcLHf1O0Wh2xeDK42M0ku95wTlN124cd.BUSAd8/MGQ/YTcm8hoW', NULL, NULL, 10, NULL, 'müdavim meyhane', '1', '5368660086', 'https://bodrummudavim.com/', '<p>meyhane</p>', '<p>Bodrum&rsquo;a &ouml;zg&uuml; lezzetlerin, Ege Mutfağı ile harmanlandığı bir yemek d&uuml;kk&acirc;nı olarak hizmet vermektedir.</p>', '1', NULL, NULL, NULL, '2022-10-27 14:41:10', '2022-10-27 17:20:00'),
(500, 'ELİF OĞAN', 'elifogan@hotmail.com', 'user', '1', '2', NULL, NULL, '$2y$10$DYWheTfrFevgmPVc.TdIguSyhJB1ia41GlNMnfPpOlu7s4jXR/x72', NULL, NULL, 25, NULL, 'ALA BODRUM LTD ŞTİ', '1', '5436469454', 'https://black7bodrum.com/', '<p>yemek club</p>', '<p>her d&ouml;neme damgasını vurmuş yerli ve yabancı şarkılarla misafirlerine keyifle vakit ge&ccedil;irip, rahatlıkla sohbet edebilecekleri keyifli bir ortam sunmakta.</p>', '1', 'dDOJUzLnmNlWBFXdae6vdR6F0jev0RMZLIUhqOes70FjZ6cxASFAstBY09GD', NULL, NULL, '2022-10-27 14:45:02', '2022-10-28 13:52:00'),
(501, 'Mithat karabiyikoglu', 'mithatkarabiyikoglu@gmail.com', 'user', '1', '52', NULL, '2022-10-28 12:07:19', '$2y$10$J2IxrBJV4oEYvFRW3BG3fegttsKIN4XMa6tYvOGlvJ5xA7IXaMgqO', 'eyJpdiI6ImdidXdxV2t2eHJ6WmJjMUVRQXM5N1E9PSIsInZhbHVlIjoiMTZmQlY4Q2NzOW1TdEh1RzFXaGh1VHdyRzM1ZklSMC9xMmVBYUpwdkdEOD0iLCJtYWMiOiJjODhiM2I3YzZmMjRlZDVlNmJkMjQxOTUwODM0YzAyZmRlNjEwYWJiNGI4NDAxYWVhMzZiMzYwYWU3MDg1MjBmIiwidGFnIjoiIn0=', 'eyJpdiI6IkdIcUtsYXZPSXB3a2RWVmFBbEM3V3c9PSIsInZhbHVlIjoiNDJpclo1YkMwWERyd3JGVUphWE8xanF6Vk5kdXBzaStscXpIVmxJTWV2ekRlOUZ6d24yK1FIaStqSk41a0VRSnNUTzZ4bC9SYlc0MlB1OXB2NEJOYUR0RW50SUxPL2tEbGtuOXhKWk8xc1B3VGd1SHlFbXNqNEtuQVVYUU4vR1NJSEZQclFhYjJla1VHNjlTMkQ2YWF2TVNXOEhnZk9OQXQ3UXpaZ1p0d2hXL3pRb1Q3dU5JaVdZeE9ONVBVQVo4c2ZiUFUraUZPV0dJTWVBQjBHZGk3Nm56WU1WSkNmZFVDaThkZnd2YjF4VFk4dE5qNkc1MW5XeitieFZJaGxyWFNhc0gzZDBEY0tndEt5bkFxbXU4QXc9PSIsIm1hYyI6IjQxOTEwMTQ4NjQwNWU0Yjg4YTMyZmNkOGNhNjc2ODg4OTM1NWYwM2FiMjRmMTI1MDU3YTU1YzY3YmI4NzQ0OGYiLCJ0YWciOiIifQ==', 2, NULL, 'PURA İNŞAAT ENERJİ BİLİŞİM LTD ŞTİ', '1', '+905327243313', 'www.purainsaat.com', '<p>İnşaat, gayrımenkul geliştirme</p>', '<p>Bina inşaatları. Gayrımenkul projeleri. Mimarlık M&uuml;hendislik Hizmetleri</p>', '1', 'd8LNn3VJaMogcuvHMwlvPcP1UrUoiJ1SUFyvCWZtzmswd8YZaQ0mH4MpcS8N', NULL, NULL, '2022-10-27 14:46:38', '2022-10-28 12:40:48'),
(502, 'Rafet Göbekli', 'gobeklirafet@hotmail.com', 'user', '1', '30', NULL, NULL, '$2y$10$2sjDxBoFe0zG9Xc701skpu0oDKEdq9/2JDzOBet6C7jehDPWBpCPa', NULL, NULL, 26, NULL, 'Göbekli Yapı Per. Tic. AŞ', '1', '5330320909', 'www.gobekliyapi.com', '<p>Seramik ve yapı malz.</p>', '<p>Aydın genelinde perakende mağazaları bulunan firmamız, aynı zamanda global ve yerli bir&ccedil;ok firmanın ege b&ouml;lge distribit&ouml;rl&uuml;ğ&uuml;n&uuml; yapmaktadır.</p>', '1', NULL, NULL, NULL, '2022-10-27 15:54:06', '2022-10-27 17:16:17'),
(503, 'Numan Balaban', 'nbalaban@egegrupinsaat.com', 'user', '1', '20', NULL, NULL, '$2y$10$x6hf4CWaFNwZAqy85a..jO3tKYtXABV2Iwjs69H1jACrFrVnL.hoe', NULL, NULL, 2, NULL, 'Ege Grup İnşaat Ktd Şti', '1', '+90 532 5511130', 'www. egegrupinsaat.com', '<p>Konut ve Enerji</p>', '<p>Doğaya ve insana saygılı</p>', '1', NULL, NULL, NULL, '2022-10-27 15:58:27', '2022-10-27 17:13:31'),
(504, 'Numan Balaban', 'nbalaban48@gmail.com', 'user', '1', '21', NULL, NULL, '$2y$10$YC99W/xNdMXfZ/ApwjOIU.e9XFUJ0BunFSYUewpj7wUWI0JK0poBm', NULL, NULL, 2, NULL, 'Ege Grup İnşaat Ltd Şti', '1', '+90 532 5511130', 'www.pukkabodrum.com', '<p>Konut ve Enerji(GES)</p>', '<p>Doğaya ve insana saygılı</p>', '1', NULL, NULL, NULL, '2022-10-27 16:06:54', '2022-10-27 17:13:39'),
(505, 'ali çalıkoğlu', 'asd@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$JOyDCwaBFWQRLgAhoTsbG.yMLXDt5FTCqHjueyD5rhcY.jPyPhj/G', NULL, NULL, 2, NULL, 'ÇALIKOĞLU PVC', '1', '5374274444', 'www.calikoglupvc.com.tr', '<p>asd</p>', '<p>asd</p>', '1', NULL, NULL, NULL, '2022-10-27 16:39:47', '2022-10-27 16:49:12'),
(506, 'ŞEMSİ OZAN', 'semsiozan@hotmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$rEoKsPs4JSXl5vr3HUubbutq0YoPAhKX99dchcM3Mdp.NcSkq1jp.', NULL, NULL, 2, NULL, 'BODRUM BETON AŞ', '1', '05327271708', NULL, '<p>Beton &uuml;retimi</p>', '<p>Beton &uuml;retimi</p>', '1', 'e7cJiDP3iiURZkDOH3CiY2Nu93WurcQyhpxAB9Q634qyz27AjlXuVBbZ1UFa', NULL, NULL, '2022-10-27 16:59:33', '2022-10-27 17:10:48'),
(507, 'Onur Ercan', 'onur@dobrum.com.tr', 'company', '1', NULL, NULL, '2022-10-27 17:14:52', '$2y$10$PLUpe3CfDO5vWPCCImHz.OD677MEeq1mbwt0EY/OH8cKu2t/1Gt9S', NULL, NULL, 1, NULL, 'Dobrum Bilgisayar', '1', '5322005135', 'dobrum.com.tr', '<p>Bilgisayar bakım ve onarım, g&uuml;venlik sistemleri (alarm, kamera sistemleri), telefon santral sistemleri ve network (ağ) sistemleri, kurumsal donanım pc satışı</p>', '<p>2008 yılından beri Bodrum merkez ve il&ccedil;elerinden bilişim hizmetleri alanında hizmet vermekteyiz. B&ouml;lgede Ko&ccedil;sistemin ve Dell Kurumsal &uuml;r&uuml;nlerinin yetkili servisliğini y&uuml;r&uuml;tmekteyiz. Bunun akabinde Yapıkredi, Garanti vb bankaların pos hizmetlerini destek veriyoruz.</p>', '1', NULL, NULL, NULL, '2022-10-27 17:08:24', '2022-10-27 17:14:52'),
(508, 'Serkan Deveci', 'serkan@dizaynlife.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$soELw866qCAkMvtDJQD.OeSXXvO.a9ilsaOduahOVKHzMRav5FQ3m', NULL, NULL, 12, NULL, 'Dizaynlife  Perde Mobilya A.Ş', '1', '532501408', 'dizaynlife.com.tr', '<p>Perde Mobilya Dekorasyon</p>', '<p>Perde ve Koltuk &Uuml;reticisi.</p>', '1', NULL, NULL, NULL, '2022-10-27 17:21:25', '2022-10-27 17:26:13'),
(509, 'Hakan Altunsoy', 'hakan@hauteboards.com', 'company', '1', NULL, NULL, NULL, '$2y$10$gsnMr9XOT1tewYgn95VRM.r6Hx9/gKhFCVfWAWvpAjLg8YOvtTOJe', NULL, NULL, 25, NULL, 'Haute Boards', '1', '+905323545810', 'www.hauteboards.com', '<p>Su sporlari malzemeleri imalat ihracat</p>', '<p>Uluslararasi markalar sahibi spor malzemeleri &uuml;reticisi</p>', '1', 'wrSt16YmyTwzAl4nfv3tOCVux1w9FYD1ZFMpbFc5kZuECaeuVPIIvAnsQpcU', NULL, NULL, '2022-10-27 17:23:15', '2022-10-27 17:26:57'),
(510, 'Arzum kurutaş', 'aozdemir@pca-tr.com', 'company', '1', NULL, NULL, NULL, '$2y$10$7CZ9KJvfosHfnQVE5YntdeqDYaXx6XVgWSHMbgNoJnbzsUUEahn6y', NULL, NULL, 1, NULL, 'Pca sertifikasyon hizmetleri', '1', '05332540008', 'www.Pca-tr.com', NULL, '<p>ISO belgelendirme ,Ce belgelendirme sistem ve &uuml;r&uuml;n belgelendirme eğitim ve belgelendirme</p>', '1', 'GUcY8xQj8Ce2K22enazagVXfqvPOmEbvTJvTMKmFp9sQKZE73oTOUxj9fOnA', NULL, NULL, '2022-10-27 17:33:39', '2022-10-27 18:08:18'),
(511, 'Selçuk HASAR', 'selcukhasar@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$t22SOnC8PWzOJlY69e8SAOmSSy6ZWkMsRcvglQ9EyfECgxe0E7sJu', NULL, NULL, 7, NULL, 'Bodrum Yaşam Özel Eğitim Hiz.A.Ş.', '1', '05323574941', NULL, NULL, NULL, '1', 'JtKkxiDCVUhH9z8C5iWHQVHUEvKyr0Pl9OjiZ5xwdYAkGhzqbiJi6AaFDILO', NULL, NULL, '2022-10-27 17:42:32', '2022-10-27 18:07:52'),
(512, 'Bünyamin Bayhan', 'bunyamin.bayhan@ys.renault.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$XC9Op84VQEN9HJL7vkpjLuv4j4bf8QdbAgxts7uLnEgdqEn0fLd0W', NULL, NULL, 4, NULL, 'Kutay Motorlu Araçlar A.Ş.', '1', '5335665616', 'www.kutayrenault.com.tr', NULL, '<p>Renault ve Dacia otomobil markalarının Muğla ili genelinin yetkili satıcılık ve yetkili servis faaliyetlerini y&uuml;r&uuml;tmektedir. Firmamız, MUĞLA merkez, BODRUM ve FETHİYE de bulunan &uuml;&ccedil; plazası ve MARMARİS irtibat ofisi&rsquo;nde, satış, servis, ikinci el, yedek par&ccedil;a, sigorta, ara&ccedil; kiralama ve ekspertiz faaliyet kollarında, 170 adet eğitimli personeli ile hizmet vermektedir.</p>', '1', NULL, NULL, NULL, '2022-10-27 17:44:26', '2022-10-27 18:08:10'),
(513, 'Nimet AKBAŞ', 'nimetakbas@hotmail.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$MEB.BZqbAeDtEo1qaCBaJuGXIBZL0KZ6yOaOZPEYVGhrspnk1ccsu', NULL, NULL, 26, NULL, 'MiLA MEET  GAYRİMENKUL OTOMOTİV TURiZM TEKSTİL LTD ŞTİ', '1', '05464654040', 'milameet.com.tr', '<p>Gayrimenkul Otomotiv</p>', '<p>Gayrimenkul ve yatırım Danışmanlık</p>', '1', 'ipncSmTH2RGiH04iFT0ujtmmgwjWCwuCmJzbygIPwpoXEx96Cm1jQY88TLUM', NULL, NULL, '2022-10-27 17:47:38', '2022-10-28 13:04:31'),
(514, 'Erdal BALCI', 'erdal.balci@alumni.metu.edu.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$H5uLYehNU.1i8waVdQqB6.sgOqyRZOnvCerW9JtCSH0LoCeMZ5EQO', NULL, NULL, 11, NULL, 'ELİŞİFA BODRUM GIDA TURIZM SANAYİ TİCARET LİMİTED ŞİRKETİ', '1', '(505) 475-8325', 'https://elisifa.com/', '<p>Organik yaş meyve sebze &uuml;retimi, organik sirke &uuml;retimi, ihracat</p>', '<p>G&ouml;ller b&ouml;lgesinde şirketlerimize ait &ouml;zel tarım alanlarında organik olarak yetiştirilen yaş meyve ve sebze &uuml;r&uuml;nlerimizi kendi tesislerimizde işleyerek organik sirke &ccedil;eşitleri halinde i&ccedil; ve dış pazarlarda toptan veya perakende satış yapmak i&ccedil;in Bodrumda kurulmuş l&uuml;ks turizm segmentine ve ihracatına odaklanmış firmamızdır.</p>', '1', NULL, NULL, NULL, '2022-10-27 17:53:15', '2022-10-27 18:08:01'),
(515, 'Ümit Parıltan', 'umit.pariltan@winsa.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$Fsh0g5HXesYN8NDFvoZoTepqVxrG3syFF1Fif.yBQ7ZhL.hXhveDS', NULL, NULL, 2, NULL, 'Winsa Pvc Pencere ve Kapı Sistemleri', '1', '05307811070', 'www.winsa.com', '<p>Pvc pencere,kapı,panjur ve kepenk sistemleri</p>', '<p>Winsa Pvc pencere ve kapı sistemleri; &uuml;r&uuml;n gamında geliştirdiğin her yeni &uuml;r&uuml;nde odağına enerjiyi verimli kullanmaya,s&uuml;rd&uuml;r&uuml;lebilirliğe ve t&uuml;m &uuml;retim s&uuml;re&ccedil;lerinde d&uuml;ş&uuml;k karbon ayakizi bırakılmasını hedefleyen sekt&ouml;r&uuml;n&uuml;n &ouml;nc&uuml; firmasıdır.</p>', '1', NULL, NULL, NULL, '2022-10-27 17:57:55', '2022-10-27 18:07:40'),
(516, 'Bijen muhit', 'bodrum@dentgroup.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$OAbdEkf28EgtOXM7LPHaGev1JqujpjUTsmq3mipt9xdxFN9fs5Gje', NULL, NULL, 13, NULL, 'Mavi idea sağlık hiz. DENTGROUP', '1', '05337301742', 'dentgroup.com.tr', '<p>Diş hekimliği şubeleşme danışmanlık sağlık turizminde tatırım / yat yelken yarışlarına reklam ama&ccedil;lı sponsor</p>', '<p>Sekt&ouml;rde &ouml;nc&uuml; ve standartları belirleyici ilklere imza atan T&uuml;rkiyenin en yaygın ve kurumsal diş hekimliği markası.. / bireysel olarak her yarışta kupa kaldıran yelken yarış ekibi &uuml;yesi (2. Kaptan)</p>', '1', NULL, NULL, NULL, '2022-10-27 18:35:00', '2022-10-27 18:54:49'),
(517, 'Hakan ÖZGÜN', 'info@bodrumvillakiralama.com', 'company', '1', NULL, NULL, NULL, '$2y$10$HG5x8n09P6u9IcdQOsA2oOPkGHwIlO.UVCgxrO4LW72ApH.vyI0Li', NULL, NULL, 25, NULL, 'bodrumvillakiralama.com', '1', '05542425878', 'bodrumvillakiralama.com', '<p>Villa turizimine y&ouml;nelik Kiralık &Ouml;zel havuzlu villalar</p>', '<p>2005 yılında kurulan firmamız yaklaşık 18 yıldan beri Bodrum yarımadasında 400 den fazla tatil evinin, haftalık aylık sezonluk kiralamasını T&Uuml;RSAB g&uuml;vencesi altında ger&ccedil;ekleştirmektedir.</p>', '1', 'WrLTs6myzlsdr2XtyHXf6AwGX8XHuXxwhtBfpphiTVLzNSxqN2Pq7PPdibx3', NULL, NULL, '2022-10-27 18:37:42', '2022-10-27 18:54:56'),
(518, 'Nazlı Aydoğan', 'nazliaydogan@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$Il9.tnI6I0xypVDRWTItLeO1vu1ppsRjbVBkQFbLHl95grE8NusyS', NULL, NULL, 28, NULL, 'AN Consulting A.Ş', '1', '05336573718', 'www.ansolutionconsulting.com', '<p>İhracaat</p>', '<p>Y&ouml;netim danışmanlığı ve &ouml;zellikle yurtdışında &ouml;zellikle ihracat&ccedil;ı firmalara y&ouml;nelik alacak y&ouml;netimi &uuml;zerine danışmanlık hizmetleri.</p>', '1', NULL, NULL, NULL, '2022-10-27 18:49:56', '2022-10-27 18:55:04'),
(519, 'Mustafa Kemal Huz', 'kemalhuz@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$zbQFj/e0DVZpAG1z3d.GPuBygTpWG6yoq2woRPO/Vqx/qFI7FgPFe', NULL, NULL, 2, NULL, 'Solmaz yapı mühendislik', '1', '05321605520', 'www.huzgrup.com', '<p>Konut</p>', '<p>İnşaat</p>', '1', NULL, NULL, NULL, '2022-10-27 18:58:03', '2022-10-28 13:05:36'),
(520, 'Belgüzar aksıt aydar', 'belkis@bodrumcikolata.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$Dr.PJLKyzFI8cncsiZhvDuAogbQrvBhjKkgQMfVthA3ra.zqeD0VS', NULL, NULL, 11, NULL, 'Bodrum Çikolata', '1', '5326033071', 'www.bodrumcikolata.com.tr', '<p>&Ccedil;ikolata organizasyon Catering</p>', '<p>2012 de kuruldu &ccedil;ikolata ve pasta &uuml;zerine &uuml;retim ve organizasyon catering</p>', '1', 'dVidQQ9hIZwGsX5zie5hNSEU5tPpSKlWvzzUKCzQcNqPgZeOSzBhdMxnbVcj', NULL, NULL, '2022-10-27 19:05:34', '2022-10-28 14:20:58'),
(521, 'TEVFİK KOÇ', 'tevfikkoc06@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$MotPo6O6pIvPIGamGVoJ1eRg1hqePTL0/LAu5LGq83tv7FEo3PjJa', NULL, NULL, 12, NULL, 'SETTE GARDEN / BODRUM ANKA MOBILYA IMALAT İNŞAAT', '1', '05325119946', 'www.settegarden.com', '<p>OTEL, RESTORANT VE BAH&Ccedil;E İLE ILGILI OLAN TUM SEKT&Ouml;RLER</p>', '<p>T&uuml;rkiye\'nin bah&ccedil;e mobilyasi konusunda en b&uuml;y&uuml;k ithalat&ccedil;ısı ve &uuml;reticisiyiz.Mobilya &uuml;retimini T&uuml;rkiyede yapmaktayız.</p>', '1', NULL, NULL, NULL, '2022-10-27 19:10:05', '2022-10-27 19:14:45'),
(522, 'Hilal Çalıkoğlu Ağar', 'hilal@calikoglupvc.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$cWK/XyD4yHHnYYwLbYP0eOURNKLlT0EueKes/GU1UHCnIgrbzcaLW', NULL, NULL, 2, NULL, 'Çalıkoğlu Pvc Doğ. İnş. Ltd. Şti.', '1', '05323164039', 'www.calikoglupvc.com.tr', '<p>Al&uuml;minyum ve Pvc Doğrama Sistemleri</p>', '<p>Pvc ve al&uuml;minyum doğrama sekt&ouml;r&uuml;nde 25 yılı aşan tecr&uuml;be ve birikimi ile &Ccedil;alıkoğlu; teknolojik gelişme ve yenilikleri yakından takip ederek t&uuml;m projelerinde, &uuml;st kalite malzeme ve &uuml;st&uuml;n vasıflı işg&uuml;c&uuml;n&uuml; kullanmaktadır. Sekt&ouml;rdeki &ouml;nc&uuml; rol&uuml;n&uuml;, kaliteden taviz vermeden m&uuml;şteri ihtiya&ccedil; ve beklentilerini dikkate alarak kalıcı &ccedil;&ouml;z&uuml;mler &uuml;retmeye bor&ccedil;lu olan &Ccedil;alıkoğlu, 2016 yılından bu yana inşaat sekt&ouml;r&uuml;nde de başarılı projelerle adından s&ouml;z ettirmektedir.</p>', '1', NULL, NULL, NULL, '2022-10-27 19:32:03', '2022-10-27 19:34:40'),
(523, 'Erdem Ağar', 'mim.erdemagar@gmail.com', 'company', '1', NULL, NULL, '2022-10-28 11:05:38', '$2y$10$TlE9EK2LvHgBNPNP40/LiOJz8F7NLG3cpwU8uCp8L9LgSdsbny8ry', NULL, NULL, 2, NULL, 'Çalıkoğlu Pvc Doğ. İnş. Ltd. Şti', '1', '05057350573', 'www.calikoglupvc.com.tr', '<p>Al&uuml;minyum ve Pvc doğrama sistemleri</p>', '<p>Pvc ve al&uuml;minyum doğrama sekt&ouml;r&uuml;nde 25 yılı aşan tecr&uuml;be ve birikimi ile &Ccedil;alıkoğlu; teknolojik gelişme ve yenilikleri yakından takip ederek t&uuml;m projelerinde, &uuml;st kalite malzeme ve &uuml;st&uuml;n vasıflı işg&uuml;c&uuml;n&uuml; kullanmaktadır. Sekt&ouml;rdeki &ouml;nc&uuml; rol&uuml;n&uuml;, kaliteden taviz vermeden m&uuml;şteri ihtiya&ccedil; ve beklentilerini dikkate alarak kalıcı &ccedil;&ouml;z&uuml;mler &uuml;retmeye bor&ccedil;lu olan &Ccedil;alıkoğlu, 2016 yılından bu yana inşaat sekt&ouml;r&uuml;nde de başarılı projelerle adından s&ouml;z ettirmektedir.</p>', '1', NULL, NULL, NULL, '2022-10-27 19:32:09', '2022-10-28 11:05:38'),
(524, 'Elvan Bilgin', 'elvanbilgin@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$xMRXSXIIrxD7zQYDHYCfKubDfEG./rbvKgI.da.6TX8negze8r/ee', NULL, NULL, 7, NULL, 'Kartanesi Eğitim Kurumları', '1', '05323720272', NULL, NULL, '<p>Okul &ouml;ncesi d&ouml;nem olan 0-6 yaş arasına hizmet veren iki ayrı bakanlığa bağlı iki kurumumuz bulunmaktadır.</p>', '1', NULL, NULL, NULL, '2022-10-27 19:42:15', '2022-10-27 19:43:50');
INSERT INTO `users` (`id`, `name`, `email`, `type`, `status`, `masano`, `barkod`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `sector`, `company_profile`, `companyname`, `country`, `phone`, `website`, `productandservices`, `companydesciption`, `randevuonay`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(525, 'Daimi Kaybar', 'daimikaynar14@gnail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$IrUuWiFb4hHXCHcsj7D8HO3wtrKW4OXTAD0Z6RkamljKzZhMPACsG', NULL, NULL, 12, NULL, 'DKARACA AHŞAP', '1', '532 5501524', 'www.dkaraca.com', '<p>Ahşap ve mobilya &uuml;retimi Mutfak banyo kapı pergole ve proje hizmetleri</p>', '<p>8 yıllık firma ge&ccedil;mişi,40 yıllık meslek bilgi birikimi ,m&uuml;şteri memnuniyetini ve zaman fakt&ouml;r&uuml;ne &ouml;nem veren, tecr&uuml;beli kadro ile bodrum pazarında yerini koruyan ve y&uuml;celten bir firma olmak hedefimizdir.</p>', '1', NULL, NULL, NULL, '2022-10-27 20:25:06', '2022-10-27 20:29:10'),
(526, 'Bülent Dizi', 'bulentdizi@espridekorasyon.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$wt1sbTvTnDKVOnXPvvnDweP9cLe4RmdEr0o69VDoqDZCfG9kMGwVm', NULL, NULL, 2, NULL, 'Espri alüminyum', '1', '532 631 6407', 'www.espridekorasyon.com.tr', '<p>Al&uuml;minyumDoğrama, pvc doğrama, kayar ve katlanır cam, panjurve &ccedil;ephe uygulama ve &uuml;</p>', '<p>Al&uuml;minyum doğrama sekt&ouml;r&uuml;nde 20 yıldır Bodrum sekt&ouml;r&uuml;nde hizmet vermekteyiz</p>', '1', NULL, NULL, NULL, '2022-10-28 04:36:40', '2022-10-28 12:41:50'),
(527, 'Türker kökhan', 'turker.kokhan@astasalu.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$U3f/mT6o4h4iufC9JQqvMee0z6SjduAtefEWoa04uSnaTMPNphgiK', NULL, NULL, 28, NULL, 'Astaş alüminyum', '1', '05327310383', 'Astasalu.com.tr', '<p>Al&uuml;minyum</p>', '<p>Al&uuml;minyum profil</p>', '1', NULL, NULL, NULL, '2022-10-28 05:03:01', '2022-10-28 12:40:34'),
(528, 'Yücel Kaşıkara', 'ykasikara@terminalmuhendislik.com', 'company', '1', NULL, NULL, NULL, '$2y$10$T9l5YuM6rH8vS62pXPlfx.incj8ENjngK6sS/RGDdNgN5XIvi4H0a', NULL, NULL, 2, NULL, 'Terminal Mühendislik', '1', '+905334116996', 'www.terminalmuhendislik.com', '<p>B&ouml;lgede yatırım yapacak olan yeni inşaat projeleri.</p>', '<p>Yaklaşık 20 yıllık birikim neticesinde 2017 yılında Bodrum&rsquo;da kurulan firmamız bireysel, ticari ve end&uuml;striyel yapıların ısıtma, soğutma ve mekanik tesisat alanında faaliyet g&ouml;stermektedir. Konut, villa, alışveriş merkezi, hastane, otel, mağaza gibi yapıların ulusal ve uluslararası standartlar &ccedil;er&ccedil;evesinde, mekanik tesisatlarının projelendirme ve uygulamaları konularında hizmet veren bir firmayız. &Ouml;zellikle mekanik tesisat sistemleri konusunda uzmanlaşma yolunu se&ccedil;en şirketimiz 20 yıllık birikim tecr&uuml;be ve uzman kadrosuyla hizmetinizdedir. Bug&uuml;ne kadar on binlerce metrekare alanda, turizm tesisleri, konutlar, mağazalar, sanayi kuruluşları, resmi hizmet kurumları gibi alanlarda sistemlerimiz g&uuml;ven ve konforu bir arada yaşatmaktadır. Teknik altyapı ve deneyimli kadromuz ile kısa zamanda &ouml;nemli projelere imza atan kuruluşumuz &ccedil;&ouml;z&uuml;m odaklı yaklaşımımız ile işverenlerine ısıtma- soğutma, havalandırma, yangın tesisatı başta olmak &uuml;zere t&uuml;m mekanik tesisat işlerinde hizmet vermektedir.</p>', '1', '8VOhdyubfnvgc1tgNFDlH6MpuvnUqXqy5eZH31J1NhaOfBAI62qozH6ATFws', NULL, NULL, '2022-10-28 05:31:52', '2022-10-28 06:08:14'),
(529, 'Süleyman Doğan', 'aseyonetim@gmail.com', 'company', '1', NULL, NULL, '2022-10-28 06:03:04', '$2y$10$OW10o3/gZMNrB13lgjHD/etknjwDpiN2HzY4A9DX5TuVY//4pfLo6', NULL, NULL, 16, NULL, 'ASE YAZILIM VE BİLİŞİM ÇÖZÜMLERİ SAN TİC LTD ŞTİ', '1', '05378486957', 'www.adadigital.com.tr', '<p>T&uuml;rkiye</p>', NULL, '1', 'IffNev1i0MTDhi6yRdjbolZX5zX5fDVdnU2pDzE540s9anILSSlznvPGU19F', NULL, NULL, '2022-10-28 06:00:50', '2022-10-28 10:32:29'),
(530, 'Daimi Kaynar', 'daimikaynar14@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$n6nuxVqiSuEnXFm7hUjOhuNoJire9Ca27Y9HkEQ.HFbMOgL3yDIca', NULL, NULL, 12, NULL, 'DKARACA AHŞAP', '1', '5325501524', 'www.dkaraca.com', '<p>Mutfak mobilya ahşap &uuml;r&uuml;nler imalatı Proje tasarım uygulama hizmetleri</p>', '<p>40 yıllık tecr&uuml;be ve bilgi birikimiyle kurulan 8 yıllık firma Bu zamanda bu ahşap sanatını devam ettirebilmek hedefimizdir</p>', '1', 'w5ni578iNB7mzRz8kJa3WHJozg62vudx5hZPQQLuMVtTg0zzoTB4hop9keHi', NULL, NULL, '2022-10-28 06:19:51', '2022-10-28 06:26:02'),
(531, 'İsaTamer Çelik', 'isa@celmak.com', 'company', '1', NULL, NULL, NULL, '$2y$10$/U5fNFST5khbzX//VK.3WOkamjlIWdnMRX2MXL1wioL/XEFuyRIiO', NULL, NULL, 5, NULL, 'Çelmak Tarım makineleri', '1', '05332802313', 'www.celmak.com', '<p>Tarım makineleri imalat</p>', '<p>Tarım makineleri</p>', '1', NULL, NULL, NULL, '2022-10-28 10:53:15', '2022-10-28 12:41:06'),
(532, 'Mert inanmisik', 'mert.inanmisik@borusanoto.com', 'company', '1', NULL, NULL, NULL, '$2y$10$gB0NKCa10l8R4EQipIabMeSzHaiNt0fvQXqCxy2xIn44Z6mTo2XNW', NULL, NULL, 4, NULL, 'Borusan Oto Bodrum', '1', '5322049545', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2022-10-28 10:54:14', '2022-10-28 11:18:48'),
(533, 'Seha Ergene', 'sehaergene@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$ytZe1wLWPdycxJSAPWvYT.w/kWT3zXP9r7d46Dcc5XbcmggPKMzlm', NULL, NULL, 9, NULL, 'Sha gayrimenkul inşaat danışmanlık', '1', '5320505048', 'www.shagayrimenkul.com', '<p>Gayrimenkul ve inşaat</p>', '<p>Gayrimenkul sekt&ouml;r&uuml;nde yatırım ve inşaat</p>', '1', NULL, NULL, NULL, '2022-10-28 11:16:45', '2022-10-28 12:42:10'),
(534, 'KIVANC ZEYTINCI', 'kzeytinci@erikogluenerji.com', 'company', '1', NULL, NULL, '2022-10-28 11:21:15', '$2y$10$ZFyGzBXvpW11MpuCPBEzM.NjtBpalHStUfZw/RFu.2FxyUwj29DWi', NULL, NULL, 8, NULL, 'ERIKOGLU SUNSYSTEM ENERGY', '1', '5334323071', 'www.erikoglusunsystem.com', '<p>&Ccedil;atı &uuml;st&uuml; ve arazi g&uuml;neş enerji santrali kurulumu</p>', '<p>2006 yılından bug&uuml;ne, 100mw &uuml;st&uuml; kurulum tecr&uuml;bemizle, enerjinizi g&uuml;neşten almanıza yardımcı oluyoruz</p>', '1', NULL, NULL, NULL, '2022-10-28 11:19:43', '2022-10-28 12:41:27'),
(535, 'Fulya Kılıç', 'fkilic@erikoglu.com', 'company', '1', NULL, NULL, '2022-10-28 11:24:26', '$2y$10$2JzZ/v8NQnuhkIQI4q0wFOAKB68yNVF8fId1FF03/jDWM51Qr5fLe', NULL, NULL, 13, NULL, 'Gözakademi', '1', '05358662675', 'https://www.gozakademi.com.tr/tr', '<p>G&ouml;z hastalıkları teşhis ve tedavi</p>', '<p>G&ouml;z hastalıkları teşhis ve tedavi</p>', '1', NULL, NULL, NULL, '2022-10-28 11:20:17', '2022-10-28 12:41:57'),
(536, 'Nilay Çelik', 'info@nilyum.com', 'company', '1', NULL, NULL, NULL, '$2y$10$mbyCYqNyYnc4.E3ZDI4MRunRoPfq/Xm5Uo7dseYd6jEujr8KdjQz2', NULL, NULL, 25, NULL, 'Nilyum Event Desing & Wedding Planner', '1', '05327708270', 'www.nilyum.com', '<p>Destinasyon d&uuml;ğ&uuml;n planlama y&ouml;netim ve koordinasyon , kurulum Kurumsal organizasyon planlama ve y&ouml;netim D&uuml;ğ&uuml;n ve eventler i&ccedil;in mekan &ouml;nerileri Transfer, ses ışık sistemleri Kişileştirilmiş hizmetler</p>', '<p>13 yıldır hizmet sekt&ouml;r&uuml;nde faaliyet g&ouml;steren Nilyum EventDesing &amp;Wedding Planner Bodrum merkezli profesyonel &ouml;nc&uuml; firmadır . &Ouml;zel davetler , kutlamalar , kurumsal davetler , destinasyon d&uuml;ğ&uuml;n organizasyonlarını planlama ve y&ouml;netimini kişiye &ouml;zel ger&ccedil;ekleştirmeye devam etmektedir.</p>', '1', NULL, NULL, NULL, '2022-10-28 11:46:37', '2022-10-28 12:39:07'),
(537, 'Kübra Eyyüpoğlu', 'keyyupoglu@erikogluenerji.com', 'company', '1', NULL, NULL, '2022-10-28 12:01:11', '$2y$10$0Hom4BBj/poC3/BvNmlWDetO6OCJZ2npWM41XjEsAGg2/0KQBq0O2', NULL, NULL, 8, NULL, 'Erikoğlu Sunsystem', '1', '5456755969', 'https://www.google.com.tr/aclk?sa=l&ai=DChcSEwizwZby7oL7AhVGqNUKHTxaAS8YABAAGgJ3cw&ae=2&sig=AOD64_1Z0h_x-85BS0cE6DZ6-MrZ32DFtw&q&adurl&ved=2ahUKEwjn6Y_y7oL7AhVMXvEDHe8-CXEQ0Qx6BAgHEAE', '<p>Enerji ihtiyacını karşılamaya y&ouml;nelik kaynakların yakın gelecekte t&uuml;kenecek olması ger&ccedil;eğiyle, &ldquo;s&uuml;rd&uuml;r&uuml;lebilir/yenilenebilir&rdquo; enerjiyi \"kullanılabilir\" kaynaklarımız arasında en &uuml;st sıraya taşımak ve gelecek kuşaklara yaşanabilir bir d&uuml;nya bırakabilmek adına 2006 yılından beri t&uuml;m g&uuml;c&uuml;m&uuml;zle &ccedil;alışıyoruz. &Ccedil;atınıza, tek seferlik bir yatırım ile elektirik faturasına veda edebilirsiniz. Yenilenebilir enerji kaynaklarıyla enerji &uuml;reterek t&uuml;kenmeye y&uuml;z tutan enerji kaynaklarına yardımcı olursunuz.</p>', '<p>&Ccedil;atınıza, tek seferlik bir yatırım ile elektirik faturasına veda edebilirsiniz. Yenilenebilir enerji kaynaklarıyla enerji &uuml;reterek t&uuml;kenmeye y&uuml;z tutan enerji kaynaklarına yardımcı olursunuz.</p>', '2', NULL, NULL, NULL, '2022-10-28 11:57:43', '2022-10-28 12:41:15'),
(539, 'Abdullah bekki', 'abdullah@bekkiler.com', 'company', '1', NULL, NULL, NULL, '$2y$10$lRX9HJ9FMUFGil92SNsxWuYrX2vnrU.1HJsD6C30f7DS5nkdm3b/m', NULL, NULL, 19, NULL, 'Bekkiler metal aş', '1', '05323827025', 'www.bekkiler.com', '<p>Demir &ccedil;elik &uuml;rinlri satışı &ccedil;ivi tel &uuml;retimi ithalat ihracat lojistik</p>', '<p>Lazer sac ve profil kesimi</p>', '1', NULL, NULL, NULL, '2022-10-28 12:27:44', '2022-10-28 12:40:56'),
(540, 'MURAT ÖZKAYA', 'murat@aksubodrum.com', 'company', '1', NULL, NULL, NULL, '$2y$10$wV/AEluNIZAl2QOeaUuP2O.pfc.TTSiLUhnPSPjMTsR382usse08C', NULL, NULL, 27, NULL, 'AKSU', '1', '5336600939', 'WWW.AKSUBODRUM.COM', NULL, '<p>Su arıtım ve nakliyesi</p>', '1', NULL, NULL, NULL, '2022-10-28 12:55:19', '2022-10-28 13:03:51'),
(541, 'TARIK DONAT', 'tarik@dostcam.net', 'company', '1', NULL, NULL, '2022-10-28 13:00:01', '$2y$10$rzkH7F9LU1nkW3b9gMEBm.cFg.zZxYqz.r9GcGEF/lcOP0iMHQOL2', NULL, NULL, 28, NULL, 'DOSTCAM', '1', '05326253787', 'www.dostcam.net', NULL, '<p>1988 yılından itibaren ısıya ve darbeye dayanıklı cam &uuml;retmekteyiz. Bu camlar mobilya,inşaat, aydınlatma sekt&ouml;rlerinde kullanılmaktadır.</p>', '2', NULL, NULL, NULL, '2022-10-28 12:57:31', '2022-10-28 13:03:59'),
(542, 'Cahide Şengül', 'cahide.sengul@izka.com.tr', 'company', '1', NULL, NULL, '2022-10-28 13:41:18', '$2y$10$TD.CoD5eV2xumKh/Km.AaOT8WaBdQkNgai5bSNr8GNsyBDWLIWFhe', NULL, NULL, 2, NULL, 'İZKA İNŞAAT', '1', '5062757307', 'https://izka.com.tr/', '<p>PARK YAŞAM BORNOVA İZKA LİNE MERKEZ YAŞAM KONAK URLA KALABAK İZKA</p>', '<p>1995 yılında İnşaat sekt&ouml;r&uuml;nde orta ve b&uuml;y&uuml;k &ouml;l&ccedil;ekli projelerin geliştirilmesi, &uuml;lkemize yeni inşaat teknolojilerinin getirilmesi ve teknolojideki son yenilikleri takip ederek inşaat sekt&ouml;r&uuml;m&uuml;z&uuml;n &ccedil;ağdaş d&uuml;zeye ulaşmasına katkı sunmak amacıyla Ankara&rsquo;da kurulmuş olan İzka İnşaat, kuruluşundan beri s&uuml;regelen profesyonellik, yaratıcılık, d&uuml;r&uuml;stl&uuml;k ve pazarı geliştirme &ouml;zellikleriyle istikrarlı bir b&uuml;y&uuml;me g&ouml;stererek inşaat d&uuml;nyasında saygın bir yer edinmiştir.</p>', '1', 'vImd57cM6quUyxb0hZrtyRuZSfYWeCCLEYrP3ZqVNaYuJiXu0qyAsxAmijGK', NULL, NULL, '2022-10-28 13:20:52', '2022-10-28 13:41:18'),
(543, 'Murat Kutlar', 'murat.kutlar@muskmedikal.com', 'company', '1', NULL, NULL, NULL, '$2y$10$GZPyqIBfpeG5GulAIitHBu1QkU3j6sT1KafeQ/l/1EUdDSgWnVvn6', NULL, NULL, 6, NULL, 'Musk Medikal', '1', '5318201174', 'www.muskmedikal.com', NULL, '<p>Hasta bezi, ıslak mendil, maske</p>', '2', NULL, NULL, NULL, '2022-10-28 13:27:02', '2022-10-28 13:37:58'),
(544, 'Bülent Demirci', 'info@biogeta.com.tr', 'company', '1', NULL, NULL, '2022-10-28 13:35:11', '$2y$10$HHGPhJBMKBCvnIqLKt10vutlzASu25nbCIv5niCvv28tdQkHxK0FW', NULL, NULL, 13, NULL, 'BİOGETA', '1', '05324799144', 'www.biogeta.com.tr', '<p>elektromanyetik alan ve radyasyon &ouml;nleyici cihazlar</p>', '<p>sağlıklı yaşam</p>', '1', NULL, NULL, NULL, '2022-10-28 13:33:20', '2022-10-28 13:38:51'),
(545, 'Nihan İlhan', 'nihan.ilhan@naveyapi.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$ycCF0AIcQDNA0Mme3ueHB.jFmwCxz5Bf6ueD3au.cgg7rOHwdnMje', NULL, NULL, 26, NULL, 'Sandeco', '1', '5359254980', 'sandeko.com.tr', '<p>Boya &uuml;retim ve ticareti</p>', '<p>T&uuml;rkiye&rsquo;deki dekoratif boyada ilk ve tek &ouml;nc&uuml; firma</p>', '1', NULL, NULL, NULL, '2022-10-28 13:35:02', '2022-10-28 13:49:51'),
(546, 'Vahit keleş', 'vahit@vkdesign.com.tr', 'company', '1', NULL, NULL, '2022-10-28 13:42:24', '$2y$10$309OneAXZzQbYRRpB0TiZ.IZJyd9PXgyeE1.G4ie3IDt6AjTk1e1e', NULL, NULL, 28, NULL, 'Vk design iç mimarlık', '1', '05337199321', 'www.vkdesign.com.tr', '<p>İ&ccedil; mimarlık proje ve uygulama</p>', '<p>İ&ccedil; mimarlık</p>', '1', NULL, NULL, NULL, '2022-10-28 13:39:38', '2022-10-28 13:50:07'),
(547, 'Feyza Narlı', 'feyza.narli@manpower.com.tr', 'company', '1', NULL, NULL, NULL, '$2y$10$UazbJjW2jgpAw85WSx7Rmuj9Us8mBqhddtomtcUeb4JXm245h/3BG', NULL, NULL, 7, NULL, 'ManpowerGroup', '1', '5532806282', 'www.manpower.com.tr', '<p>İK, se&ccedil;me yerleştirme, IT dijital, ge&ccedil;ici personel temini, bordro</p>', '<p>Kurumlara ihtiya&ccedil; duydukları yetenekleri se&ccedil;me yerleştirme ge&ccedil;ici personel sağlama, esnek iş g&uuml;c&uuml; &ccedil;&ouml;z&uuml;mleriyle sunmaktadır</p>', '1', NULL, NULL, NULL, '2022-10-28 13:47:33', '2022-10-28 13:48:38'),
(548, 'Şehval Öztürk', 'info@clovergroupinternational.com', 'company', '1', NULL, NULL, '2022-10-28 13:50:57', '$2y$10$hGfAZ507XAk/DcF8fOmviOyiDkGZ.TxbJnjwQClS9.dwQNl85ypb.', NULL, NULL, 28, NULL, 'Clover Group International', '1', '05334826249', 'İnfo@clovergroupinternatiınal.com', '<p>Emlak pazarlama</p>', '<p>Emlak ğazarlama</p>', '1', 'qcxyJZvKfDXQ7GrhdHhMuL1nhXBdWhaF2jzpMNnSxqAzvdORAw1cYd3TSftX', NULL, NULL, '2022-10-28 13:50:07', '2022-10-28 13:50:57'),
(549, 'Ece Özveren', 'ozverenece@gmail.com', 'company', '1', NULL, NULL, NULL, '$2y$10$VvtmPrIPoK09W8EawLn/qOfoAGCqC9r6RezrDqMBBVF56gh1xjolm', NULL, NULL, 26, NULL, 'Özveren aş', '1', '5324331363', 'www.ozveren.com.tr', '<p>Akaryakıt</p>', '<p>Akaryakıt</p>', '2', NULL, NULL, NULL, '2022-10-28 13:50:24', '2022-10-28 13:50:51');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `company_profils`
--
ALTER TABLE `company_profils`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Tablo için indeksler `randevulars`
--
ALTER TABLE `randevulars`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `saatlers`
--
ALTER TABLE `saatlers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `sektorler`
--
ALTER TABLE `sektorler`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `ulkelers`
--
ALTER TABLE `ulkelers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `company_profils`
--
ALTER TABLE `company_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `randevulars`
--
ALTER TABLE `randevulars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- Tablo için AUTO_INCREMENT değeri `saatlers`
--
ALTER TABLE `saatlers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `sektorler`
--
ALTER TABLE `sektorler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ulkelers`
--
ALTER TABLE `ulkelers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
