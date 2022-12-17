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
INSERT INTO `products` VALUES (1, 'kid', 'Kids Aldas Shoes', 1449000, 'assets/images/1.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (2, 'kid', 'Kids PEPE Shoes', 1474000, 'assets/images/2.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (3, 'kid', 'Kids PITR Shoes', 1709000, 'assets/images/3.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (4, 'kid', 'Kids OIOF Shoes', 1329000, 'assets/images/4.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (5, 'kid', 'Kids Sneakers Shoes', 1440000, 'assets/images/5.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (6, 'kid', 'Girls Running Shoes', 1117000, 'assets/images/6.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (7, 'kid', 'Kids Hiking Boots', 1811000, 'assets/images/7.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (8, 'kid', 'Trainers Athletic Shoes', 1491000, 'assets/images/8.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
-- WOMAN SHOES
INSERT INTO `products` VALUES (9, 'woman', 'Letter Graphic Shoes', 1449000, 'assets/images/9.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (10, 'woman', 'Chunky Sneakers', 1474000, 'assets/images/10.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (11, 'woman', 'Leyla Shoes', 1709000, 'assets/images/11.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (12, 'woman', 'Pulse Shoess', 1329000, 'assets/images/12.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (13, 'woman', 'Rainbow Lsp1903 Shoes', 1440000, 'assets/images/13.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (14, 'woman', 'Sunset PO90 Shoes', 1117000, 'assets/images/14.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (15, 'woman', 'Dawn OP8Y Shoes', 1811000, 'assets/images/15.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (16, 'woman', 'Blue Sky KF Shoes', 1491000, 'assets/images/16.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (17, 'woman', 'Dark Night ZF Shoes', 1931000, 'assets/images/17.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (18, 'woman', 'Hoagy ZV Shoes', 1431000, 'assets/images/18.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
-- MEN SHOES
INSERT INTO `products` VALUES (19, 'man', 'DarkGrey Flux Shoes', 1449000, 'assets/images/19.webp', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (20, 'man', 'Empower 02 Black Shoes', 1474000, 'assets/images/20.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (21, 'man', 'Grey Mandala Shoes', 1709000, 'assets/images/21.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (22, 'man', 'FF Power Energy', 1329000, 'assets/images/22.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (23, 'man', 'BlackWhite Empower Shoes', 1440000, 'assets/images/23.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (24, 'man', 'King FDDK Shoes', 1117000, 'assets/images/24.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);
INSERT INTO `products` VALUES (25, 'man', 'Lord TYU Shoes', 1811000, 'assets/images/25.jpg', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);


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
  `size` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`),
  FOREIGN KEY (`id_user`) REFERENCES users(`id`),
  FOREIGN KEY (`size`) REFERENCES size(`id`)
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
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `quantity`;
CREATE TABLE `quantity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned NOT NULL,
  `size` bigint unsigned NOT NULL DEFAULT 0,
  `quantity` bigint unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

BEGIN;
-- size for kid
INSERT INTO `quantity` VALUES (1, 1, 1, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (2, 1, 2, 85, '2022-05-11 08:36:57', NULL, NULL);                       
INSERT INTO `quantity` VALUES (3, 1, 3, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (4, 1, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (5, 1, 5, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (6, 1, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (7, 1, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (8, 1, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (9, 1, 9, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10, 2, 1, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (11, 2, 2, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (12, 2, 3, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (13, 2, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (14, 2, 5, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (15, 2, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (16, 2, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (17, 2, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (18, 2, 9, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (19, 3, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20, 3, 2, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (21, 3, 3, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (22, 3, 4, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (23, 3, 5, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (24, 3, 6, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (25, 3, 7, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (26, 3, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (27, 3, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (28, 4, 1, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (29, 4, 2, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30, 4, 3, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (31, 4, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (32, 4, 5, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (33, 4, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (34, 4, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (35, 4, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (36, 4, 9, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (37, 5, 1, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (38, 5, 2, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (39, 5, 3, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40, 5, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (41, 5, 5, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (42, 5, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (43, 5, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (44, 5, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (45, 5, 9, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (46, 6, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (47, 6, 2, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (48, 6, 3, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (49, 6, 4, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50, 6, 5, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (51, 6, 6, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (52, 6, 7, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (53, 6, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (54, 6, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (55, 7, 1, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (56, 7, 2, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (57, 7, 3, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (58, 7, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (59, 7, 5, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60, 7, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (61, 7, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (62, 7, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (63, 7, 9, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (64, 8, 1, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (65, 8, 2, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (66, 8, 3, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (67, 8, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (68, 8, 5, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (69, 8, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70, 8, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (71, 8, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (72, 8, 9, 24, '2022-05-11 08:36:57', NULL, NULL);
-- size for woman
INSERT INTO `quantity` VALUES (73, 9, 10, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (74, 9, 11, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (75, 9, 12, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (76, 9, 13, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (77, 9, 14, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (78, 10, 10, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (79, 10, 11, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80, 10, 12, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (81, 10, 13, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (82, 10, 14, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (83, 11, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (84, 11, 11, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (85, 11, 12, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (86, 11, 13, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (87, 11, 14, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (88, 12, 10, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (89, 12, 11, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (90, 12, 12, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91, 12, 13, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (92, 12, 14, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (93, 13, 10, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (94, 13, 11, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (95, 13, 12, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (96, 13, 13, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (97, 13, 14, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (98, 14, 10, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (99, 14, 11, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (100, 14, 12, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101, 14, 13, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (102, 14, 14, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (103, 15, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (104, 15, 11, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (105, 15, 12, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (106, 15, 13, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (107, 15, 14, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (108, 16, 10, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (109, 16, 11, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (110, 16, 12, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111, 16, 13, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (112, 16, 14, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (113, 17, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (114, 17, 11, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (115, 17, 12, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (116, 17, 13, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (117, 17, 14, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (118, 18, 10, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (119, 18, 11, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (120, 18, 12, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121, 18, 13, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (122, 18, 14, 80, '2022-05-11 08:36:57', NULL, NULL);
-- size for man
INSERT INTO `quantity` VALUES (123, 19, 14, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (124, 19, 15, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (125, 19, 16, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (126, 19, 17, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (127, 19, 18, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (128, 19, 19, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (129, 19, 20, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (130, 20, 14, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131, 20, 15, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (132, 20, 16, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (133, 20, 17, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (134, 20, 18, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (135, 20, 19, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (136, 20, 20, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (137, 21, 14, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (138, 21, 15, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (139, 21, 16, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (140, 21, 17, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141, 21, 18, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (142, 21, 19, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (143, 21, 20, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (144, 22, 14, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (145, 22, 15, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (146, 22, 16, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (147, 22, 17, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (148, 22, 18, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (149, 22, 19, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (150, 22, 20, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151, 23, 14, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (152, 23, 15, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (153, 23, 16, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (154, 23, 17, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (155, 23, 18, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (156, 23, 19, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (157, 23, 20, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (158, 24, 14, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (159, 24, 15, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (160, 24, 16, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161, 24, 17, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (162, 24, 18, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (163, 24, 19, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (164, 24, 20, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (165, 25, 14, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (166, 25, 15, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (167, 25, 16, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (168, 25, 17, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (169, 25, 18, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (170, 25, 19, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171, 25, 20, 65, '2022-05-11 08:36:57', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailproduct
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `size` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `size` VALUES (1, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (2, 26, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (3, 27, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (4, 28, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (5, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (6, 30, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (7, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (8, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (9, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (10, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (11, 36, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (12, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (13, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (14, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (15, 40, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (16, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (17, 42, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (18, 43, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (19, 44, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `size` VALUES (20, 45, '2022-05-11 08:36:57', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `products`
ADD CONSTRAINT FOREIGN KEY (`id`) REFERENCES quantity(`id_product`);

ALTER TABLE `quantity`
ADD CONSTRAINT FOREIGN KEY (`size`) REFERENCES size(`id`);

