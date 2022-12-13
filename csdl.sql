-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2021 at 02:37 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore`
--
DROP DATABASE IF EXISTS `estore`;
CREATE DATABASE IF NOT EXISTS `estore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `estore`;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `theme_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email đăng ký',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'TG xác nhận email',
  `activated` tinyint(1) DEFAULT '0' COMMENT 'Đã kích hoạt',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
-- Password chung: PHPNhom8!

INSERT INTO `users` (`id`, `username`, `password`, `email`, `email_verified_at`, `activated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vhdang', '$2y$12$od9O/R0D1pak5MUsJF0HWOlfpbhYtb8hGny9LWZvYGgFINJbjKU8u', 'vhdang@ctu.edu.vn', NULL, 0, '2021-10-29 19:44:55', NULL, NULL),
(2, 'sadie51', '$2y$12$CSgh9wegQYB2G7jy8xE4PeGdpQKpsDuQMJNWpUrRrUeNeLbJlBt4G', 'lturcotte@example.net', NULL, 0, '2022-12-08 07:33:54', '2022-12-08 07:33:54', NULL),
(3, 'fanny85', '$2y$12$83J2t8fGx4Xj34C7eCBvmOcT1Ec8x1lNzom9y1tse3W6pb7KAJDza', 'maybelle16@example.net', NULL, 0, '2022-12-08 07:35:48', '2022-12-08 07:35:48', NULL),
(4, 'brody31', '$2y$12$e9WCXqItoC4W7yXNkLBFSuE06tkgp5FaOUV8/7D2JOE8eZCOCnl2e', 'nitzsche.kailey@example.net', NULL, 0, '2022-12-08 07:36:23', '2022-12-08 07:36:23', NULL),
(5, 'rwalker', '$2y$12$6e71N39JItWH4pxSIsI4r.s5z0SD1fYyJBW0RYK3CXXsWU6x7ok/e', 'veronica67@example.com', NULL, 0, '2022-12-08 07:36:50', '2022-12-08 07:36:50', NULL),
(6, 'jpouros', '$2y$12$0MfQYZBHScGnthhxKzWm5.who3Qqu8shbhLb/xaIgb5crPJCUW3mq', 'yasmeen31@example.org', NULL, 0, '2022-12-08 07:37:52', '2022-12-08 07:37:52', NULL),
(7, 'fbernhard', '$2y$12$h4LkEunYlVZ62xsVivEW5ufXrgirxzMZjaWB8VfU.uzYdi.GK/9UC', 'beahan.terence@example.com', NULL, 0, '2022-12-08 07:38:19', '2022-12-08 07:38:19', NULL),
(8, 'pasquale17', '$2y$12$Pm0F4pJg0Gmk82/YenAjkujcn3DsWlNxTKd.oEEl26WEtJ2t9kaAq', 'coralie.willms@example.org', NULL, 0, '2022-12-08 07:38:42', '2022-12-08 07:38:42', NULL),
(9, 'zwiegand', '$2y$12$eM4ItlxTfedrzF2V26umT.qrCp/1ftKUF.QAi2ynqhuhcVgH97txS', 'marlon57@example.net', NULL, 0, '2022-12-08 07:39:11', '2022-12-08 07:39:11', NULL),
(10, 'hwalker', '$2y$12$cwDDPSEHTDWpgp68KwZVFejjNUyOrgVrFbZux5HeBbWEURWDPKMzW', 'mann.ella@example.org', NULL, 0, '2022-12-08 07:39:43', '2022-12-08 07:39:43', NULL),
(11, 'maufderhar', '$2y$12$8aUqGunD/zH3dIHViDnuUeHzs0ULT7vQqcaOw1xUNviOSTnwHnd6O', 'wyman.jadyn@example.com', NULL, 0, '2022-12-08 07:40:05', '2022-12-08 07:40:05', NULL),
(12, 'mabel80', '$2y$12$Sn/gT2r.tfC9eRi1QX9UyeJNKHq4FLKOfYLxdlHIbaJYGRwErjJ8W', 'maci84@example.org', NULL, 0, '2022-12-08 07:40:28', '2022-12-08 07:40:28', NULL),
(13, 'xgleason', '$2y$12$.r0Xa3YQthF7Sqi4AhLSEet.M0SZF5imyTPiWvyEoNN9Yu9qxJ3EC', 'xtorp@example.com', NULL, 0, '2022-12-08 07:40:51', '2022-12-08 07:40:51', NULL),
(14, 'santiago00', '$2y$12$zXyA6GnY73ACyZ6NFoROl.PmlE0zH5Ifz/5Ly3zrql/ef0TcuOyoe', 'tressa06@example.com', NULL, 0, '2022-12-08 07:41:31', '2022-12-08 07:41:31', NULL),
(15, 'fgulgowski', '$2y$12$bNkuMotgSGOFKzrV47nyC.H.Cn/660qvaXR3V6jHaKMppqPYwlLka', 'boyd.haley@example.org', NULL, 0, '2022-12-08 07:41:54', '2022-12-08 07:41:54', NULL),
(16, 'kennedi40', '$2y$12$qwJzAyIc5pku4h40jggkpePG5PhO10BBSaRKDdwc3Yrd79r5Eb..m', 'tony60@example.com', NULL, 0, '2022-12-08 07:42:19', '2022-12-08 07:42:19', NULL),
(17, 'ezekiel99', '$2y$12$Kz.k7dBahQiGaPQ801aI7elAs36AiAiVHmjjdhZ6RNRhaOx/.juHG', 'chadd75@example.org', NULL, 0, '2022-12-08 07:42:41', '2022-12-08 07:42:41', NULL),
(18, 'aebert', '$2y$12$tw3VjoHqrFtDkNZ6eG.igeJOGs5aRh.6LWNuRVLvGXiVwwdXo4s.u', 'bailey93@example.net', NULL, 0, '2022-12-08 07:43:15', '2022-12-08 07:43:15', NULL),
(19, 'edwina32', '$2y$12$SPOUI/cm9vd9NbHt97vyZ.ik2swQm1CQzjIqLRZ0z3Y24Xqd6lq0q', 'streich.afton@example.org', NULL, 0, '2022-12-08 07:43:50', '2022-12-08 07:43:50', NULL),
(20, 'hbuckridge', '$2y$12$stZzDP4CTyZ5NDdJQEMSW.vWHXX9V.zdhO7U5NqwLQfTAAciovjrm', 'qkuhlman@example.org', NULL, 0, '2022-12-08 07:44:09', '2022-12-08 07:44:09', NULL),
(21, 'hgerlach', '$2y$12$dSzk/MNp9B.k2PaCSdzTpeTvCokpLzfqMQG9BIsTVzce3ZfXyNKSe', 'thiel.lexus@example.net', NULL, 0, '2022-12-08 07:44:31', '2022-12-08 07:44:31', NULL),
(22, 'mackenzie20', '$2y$12$2Z59b/ViSl9dSMmK4e/Ls.vMpVkbdTJSLbgh2dSRkdNVxIvkW4n6C', 'alda.yost@example.com', NULL, 0, '2022-12-08 07:44:52', '2022-12-08 07:44:52', NULL);

-- --------------------------------------------------------



-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



--
-- AUTO_INCREMENT for table `contacts`
--
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=43;

--
-- Constraints for dumped tables


--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--


/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : msoftcom

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/05/2022 15:44:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint unsigned NOT NULL DEFAULT 1000000,
  `quantity` int unsigned NOT NULL DEFAULT 0,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
BEGIN;
-- KID SHOES
INSERT INTO `products` VALUES (1, 'kid', 'Kids Aldas Shoes', 1449000, 41, 'assets/images/1.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (2, 'kid', 'Kids PEPE Shoes', 1474000, 72, 'assets/images/2.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (3, 'kid', 'Kids PITR Shoes', 1709000, 80, 'assets/images/3.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (4, 'kid', 'Kids OIOF Shoes', 1329000, 65, 'assets/images/4.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (5, 'kid', 'Kids Sneakers Shoes', 1440000, 96, 'assets/images/5.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (6, 'kid', 'Girls Running Shoes', 1117000, 49, 'assets/images/6.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (7, 'kid', 'Kids Hiking Boots', 1811000, 51, 'assets/images/7.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (8, 'kid', 'Trainers Athletic Shoes', 1491000, 63, 'assets/images/8.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
-- WOMAN SHOES
INSERT INTO `products` VALUES (9, 'woman', 'Letter Graphic Shoes', 1449000, 41, 'assets/images/9.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (10, 'woman', 'Chunky Sneakers', 1474000, 72, 'assets/images/10.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (11, 'woman', 'Leyla Shoes', 1709000, 80, 'assets/images/11.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (12, 'woman', 'Pulse Shoess', 1329000, 65, 'assets/images/12.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (13, 'woman', 'Rainbow Lsp1903 Shoes', 1440000, 96, 'assets/images/13.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (14, 'woman', 'Sunset PO90 Shoes', 1117000, 49, 'assets/images/14.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (15, 'woman', 'Dawn OP8Y Shoes', 1811000, 51, 'assets/images/15.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (16, 'woman', 'Blue Sky KF Shoes', 1491000, 63, 'assets/images/16.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (17, 'woman', 'Dark Night ZF Shoes', 1931000, 66, 'assets/images/17.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (18, 'woman', 'Hoagy ZV Shoes', 1431000, 80, 'assets/images/18.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
-- MEN SHOES
INSERT INTO `products` VALUES (19, 'man', 'DarkGrey Flux Shoes', 1449000, 41, 'assets/images/19.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (20, 'man', 'Empower 02 Black Shoes', 1474000, 72, 'assets/images/20.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (21, 'man', 'Grey Mandala Shoes', 1709000, 80, 'assets/images/21.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (22, 'man', 'FF Power Energy', 1329000, 65, 'assets/images/22.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (23, 'man', 'BlackWhite Empower Shoes', 1440000, 96, 'assets/images/23.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (24, 'man', 'King FDDK Shoes', 1117000, 49, 'assets/images/24.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (25, 'man', 'Lord TYU Shoes', 1811000, 51, 'assets/images/25.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);


COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : msoftcom

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/05/2022 15:44:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned NOT NULL,
  `id_user` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`),
  FOREIGN KEY (`id_user`) REFERENCES users(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : msoftcom

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/05/2022 15:44:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailproduct
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned NOT NULL,
  `link_image_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image_4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

BEGIN;
INSERT INTO `detail` VALUES (1, 1, 'assets/images/1.webp','assets/images/1.2.webp','assets/images/1.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (2, 2, 'assets/images/2.webp','assets/images/2.2.webp','assets/images/2.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (3, 3, 'assets/images/3.png','assets/images/3.2.png','assets/images/3.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (4, 4, 'assets/images/4.png','assets/images/4.2.png','assets/images/4.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (5, 5, 'assets/images/5.png','assets/images/5.2.png','assets/images/5.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (6, 6, 'assets/images/6.png','assets/images/6.2.png','assets/images/6.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (7, 7, 'assets/images/7.webp','assets/images/7.2.webp','assets/images/7.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (8, 8, 'assets/images/8.webp','assets/images/8.2.webp','assets/images/8.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (9, 9, 'assets/images/9.jpg','assets/images/9.2.jpg','assets/images/9.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (10, 10, 'assets/images/10.jpg','assets/images/10.2.jpg','assets/images/10.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (11, 11, 'assets/images/11.png','assets/images/11.2.png','assets/images/11.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (12, 12, 'assets/images/12.png','assets/images/12.2.png','assets/images/12.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (13, 13, 'assets/images/13.jpg','assets/images/13.2.jpg','assets/images/13.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (14, 14, 'assets/images/14.jpg','assets/images/14.2.jpg','assets/images/14.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (15, 15, 'assets/images/15.jpg','assets/images/15.2.jpg','assets/images/15.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (16, 16, 'assets/images/16.webp','assets/images/16.2.webp','assets/images/16.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (17, 17, 'assets/images/17.webp','assets/images/17.2.webp','assets/images/17.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (18, 18, 'assets/images/18.jpg','assets/images/18.2.jpg','assets/images/18.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (19, 19, 'assets/images/19.webp','assets/images/19.2.webp','assets/images/19.3.webp', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (20, 20, 'assets/images/20.jpg','assets/images/20.2.jpg','assets/images/20.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (21, 21, 'assets/images/21.jpg','assets/images/21.2.jpg','assets/images/21.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (22, 22, 'assets/images/22.png','assets/images/22.2.png','assets/images/22.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (23, 23, 'assets/images/23.png','assets/images/23.2.png','assets/images/23.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (24, 24, 'assets/images/24.png','assets/images/24.2.png','assets/images/24.3.png', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `detail` VALUES (25, 25, 'assets/images/25.jpg','assets/images/25.2.jpg','assets/images/25.3.jpg', 'assets/images/sizegiay.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2022 lúc 01:21 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `estore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Address',
  `message` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Message',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
