-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for eloquent_relationship
CREATE DATABASE IF NOT EXISTS `eloquent_relationship` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `eloquent_relationship`;

-- Dumping structure for table eloquent_relationship.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mechanic_id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.cars: ~2 rows (approximately)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` (`id`, `mechanic_id`, `model`, `created_at`, `updated_at`) VALUES
	(1, 1, 'BMW-001', '2022-08-20 14:28:22', '2022-08-20 14:28:23'),
	(2, 2, 'Toyota-001', '2022-08-20 14:28:22', '2022-08-20 14:28:23'),
	(3, 3, 'Prado-001', '2022-08-20 14:28:22', '2022-08-20 14:28:23');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Category One', '2022-08-20 10:34:01', '2022-08-20 10:34:03'),
	(2, 'Category Two', '2022-08-20 10:34:01', '2022-08-20 10:34:03'),
	(3, 'Category Three', '2022-08-20 11:22:17', '2022-08-20 11:22:19');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.category_post
CREATE TABLE IF NOT EXISTS `category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.category_post: ~4 rows (approximately)
/*!40000 ALTER TABLE `category_post` DISABLE KEYS */;
INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-08-20 10:35:11', '2022-08-20 10:35:13'),
	(2, 1, 2, '2022-08-20 10:35:11', '2022-08-20 10:35:13'),
	(3, 1, 3, '2022-08-20 10:35:11', '2022-08-20 10:35:13'),
	(4, 2, 2, '2022-08-20 10:35:11', '2022-08-20 10:35:13'),
	(5, 2, 3, '2022-08-20 10:35:11', '2022-08-20 10:35:13');
/*!40000 ALTER TABLE `category_post` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.comments: ~4 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `message`, `post_id`, `created_at`, `updated_at`) VALUES
	(1, 'Comment one', 1, '2022-08-19 22:22:09', '2022-08-19 22:22:10'),
	(2, 'Comment two', 1, '2022-08-19 22:22:09', '2022-08-19 22:22:10'),
	(3, 'Comment three', 1, '2022-08-19 22:22:09', '2022-08-19 22:22:10'),
	(4, 'Comment four', 2, '2022-08-19 22:22:09', '2022-08-19 22:22:10'),
	(5, 'Comment five', 2, '2022-08-19 22:22:09', '2022-08-19 22:22:10');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.countries: ~2 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Bangladesh', '2022-08-21 12:02:28', '2022-08-21 12:02:29'),
	(2, 'Japan', '2022-08-21 12:02:28', '2022-08-21 12:02:29');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.mechanics
CREATE TABLE IF NOT EXISTS `mechanics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.mechanics: ~2 rows (approximately)
/*!40000 ALTER TABLE `mechanics` DISABLE KEYS */;
INSERT INTO `mechanics` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Mechanic One', '2022-08-20 14:32:06', '2022-08-20 14:32:07'),
	(2, 'Mechanic Two', '2022-08-20 14:32:06', '2022-08-20 14:32:07'),
	(3, 'Mechanic Three', '2022-08-20 14:32:06', '2022-08-20 14:32:07');
/*!40000 ALTER TABLE `mechanics` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.migrations: ~12 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_08_19_091934_create_phones_table', 1),
	(6, '2022_08_19_150519_create_posts_table', 2),
	(7, '2022_08_19_153057_create_comments_table', 2),
	(8, '2022_08_20_042848_create_categories_table', 3),
	(9, '2022_08_20_043045_create_category_post', 3),
	(10, '2022_08_20_082316_create_cars_table', 4),
	(11, '2022_08_20_082400_create_mechanics_table', 4),
	(12, '2022_08_20_082423_create_owners_table', 4),
	(13, '2022_08_20_152158_create_countries_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.owners
CREATE TABLE IF NOT EXISTS `owners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `car_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.owners: ~2 rows (approximately)
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` (`id`, `car_id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Owner One', '2022-08-20 14:30:35', '2022-08-20 14:30:36'),
	(2, 2, 'Owner Two', '2022-08-20 14:30:35', '2022-08-20 14:30:36'),
	(3, 3, 'Owner Three', '2022-08-20 14:30:35', '2022-08-20 14:30:36');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.phones
CREATE TABLE IF NOT EXISTS `phones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Oppo F5',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.phones: ~3 rows (approximately)
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'iPhone Pro Max', '1', '2022-08-19 15:26:53', '2022-08-19 15:26:54'),
	(2, 'Samsung G5', '2', '2022-08-19 15:26:53', '2022-08-19 15:26:54'),
	(3, 'Oppo F5', '3', '2022-08-23 19:18:21', '2022-08-23 19:18:22');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.posts: ~7 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Post One', '2022-08-19 22:20:33', '2022-08-19 22:20:34'),
	(2, 2, 'Post Two', '2022-08-19 22:20:33', '2022-08-19 22:20:34'),
	(3, 1, 'Post Three', '2022-08-19 22:20:33', '2022-08-19 22:20:34'),
	(4, 1, 'Post Four', '2022-08-19 22:20:33', '2022-08-19 22:20:34'),
	(5, 2, 'Post Five', '2022-08-19 22:20:33', '2022-08-19 22:20:34'),
	(6, 3, 'Post Six', '2022-08-19 22:20:33', '2022-08-19 22:20:34');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table eloquent_relationship.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eloquent_relationship.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `country_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'User One', 1, 'user1@gmail.com', '2022-08-19 15:25:04', '12345', NULL, '2022-08-19 15:25:17', '2022-08-19 15:25:18'),
	(2, 'User Two', 2, 'user2@gmail.com', '2022-08-19 15:25:04', '12345', NULL, '2022-08-19 15:25:17', '2022-08-19 15:25:18'),
	(3, 'User Three', 1, 'user3@gmail.com', '2022-08-19 15:25:04', '12345', NULL, '2022-08-19 15:25:17', '2022-08-19 15:25:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
