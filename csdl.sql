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
  `color` bigint unsigned NOT NULL,
  `quantity` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`),
  FOREIGN KEY (`id_user`) REFERENCES users(`id`),
  FOREIGN KEY (`size`) REFERENCES size(`id`),
  FOREIGN KEY (`color`) REFERENCES color(`id`)
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
  `color` bigint unsigned NOT NULL DEFAULT 0,
  `quantity` bigint unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

BEGIN;
-- size for kid
INSERT INTO `quantity` VALUES (1, 1, 1, 2, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (2, 1, 1, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (3, 1, 1, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (4, 1, 2, 2, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (5, 1, 2, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (6, 1, 2, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (7, 1, 3, 2, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (8, 1, 3, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (9, 1, 3, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10, 1, 4, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (11, 1, 4, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (12, 1, 4, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (13, 1, 5, 2, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (14, 1, 5, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (15, 1, 5, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (16, 1, 6, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (17, 1, 6, 8, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (18, 1, 6, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (19, 1, 7, 2, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20, 1, 7, 8, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (21, 1, 7, 5, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (22, 1, 8, 2, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (23, 1, 8, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (24, 1, 8, 5, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (25, 1, 9, 2, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (26, 1, 9, 8, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (27, 1, 9, 5, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (28, 2, 1, 2, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (29, 2, 1, 7, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30, 2, 1, 8, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (31, 2, 2, 2, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (32, 2, 2, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (33, 2, 2, 8, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (34, 2, 3, 2, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (35, 2, 3, 7, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (36, 2, 3, 8, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (37, 2, 4, 2, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (38, 2, 4, 7, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (39, 2, 4, 8, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40, 2, 5, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (41, 2, 5, 7, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (42, 2, 5, 8, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (43, 2, 6, 2, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (44, 2, 6, 7, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (45, 2, 6, 8, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (46, 2, 7, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (47, 2, 7, 7, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (48, 2, 7, 8, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (49, 2, 8, 2, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50, 2, 8, 7, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (51, 2, 8, 8, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (52, 2, 9, 2, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (53, 2, 9, 7, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (54, 2, 9, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (55, 3, 1, 3, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (56, 3, 1, 6, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (57, 3, 1, 4, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (58, 3, 2, 3, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (59, 3, 2, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60, 3, 2, 4, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (61, 3, 3, 3, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (62, 3, 3, 6, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (63, 3, 3, 4, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (64, 3, 4, 3, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (65, 3, 4, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (66, 3, 4, 4, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (67, 3, 5, 3, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (68, 3, 5, 6, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (69, 3, 5, 4, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70, 3, 6, 3, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (71, 3, 6, 6, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (72, 3, 6, 4, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (73, 3, 7, 3, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (74, 3, 7, 6, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (75, 3, 7, 4, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (76, 3, 8, 3, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (77, 3, 8, 6, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (78, 3, 8, 4, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (79, 3, 9, 3, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80, 3, 9, 6, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (81, 3, 9, 4, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (82, 4, 1, 4, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (83, 4, 1, 7, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (84, 4, 1, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (85, 4, 2, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (86, 4, 2, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (87, 4, 2, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (88, 4, 3, 4, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (89, 4, 3, 7, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (90, 4, 3, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91, 4, 4, 4, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (92, 4, 4, 7, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (93, 4, 4, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (94, 4, 5, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (95, 4, 5, 7, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (96, 4, 5, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (97, 4, 6, 4, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (98, 4, 6, 7, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (99, 4, 6, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (100, 4, 7, 4, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101, 4, 7, 7, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (102, 4, 7, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (103, 4, 8, 4, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (104, 4, 8, 7, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (105, 4, 8, 5, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (106, 4, 9, 4, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (107, 4, 9, 7, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (108, 4, 9, 5, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (109, 5, 1, 5, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (110, 5, 1, 8, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111, 5, 1, 6, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (112, 5, 2, 5, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (113, 5, 2, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (114, 5, 2, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (115, 5, 3, 5, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (116, 5, 3, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (117, 5, 3, 6, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (118, 5, 4, 5, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (119, 5, 4, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (120, 5, 4, 6, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121, 5, 5, 5, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (122, 5, 5, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (123, 5, 5, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (124, 5, 6, 5, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (125, 5, 6, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (126, 5, 6, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (127, 5, 7, 5, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (128, 5, 7, 8, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (129, 5, 7, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (130, 5, 8, 5, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131, 5, 8, 8, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (132, 5, 8, 6, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (133, 5, 9, 5, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (134, 5, 9, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (135, 5, 9, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (136, 6, 1, 6, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (137, 6, 1, 9, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (139, 6, 2, 6, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (140, 6, 2, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141, 6, 2, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (142, 6, 3, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (143, 6, 3, 9, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (144, 6, 3, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (145, 6, 4, 6, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (146, 6, 4, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (147, 6, 4, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (148, 6, 5, 6, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (149, 6, 5, 9, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (150, 6, 5, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151, 6, 6, 6, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (152, 6, 6, 9, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (153, 6, 6, 7, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (154, 6, 7, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (155, 6, 7, 9, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (156, 6, 7, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (157, 6, 8, 6, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (158, 6, 8, 9, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (159, 6, 8, 7, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (160, 6, 9, 6, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161, 6, 9, 9, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (162, 6, 9, 7, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (163, 7, 1, 7, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (164, 7, 1, 10, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (165, 7, 1, 8, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (166, 7, 2, 7, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (167, 7, 2, 10, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (168, 7, 2, 8, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (169, 7, 3, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (170, 7, 3, 10, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171, 7, 3, 8, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (172, 7, 4, 7, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (173, 7, 4, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (174, 7, 4, 8, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (175, 7, 5, 7, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (176, 7, 5, 10, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (177, 7, 5, 8, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (178, 7, 6, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (179, 7, 6, 10, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (180, 7, 6, 8, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181, 7, 7, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (182, 7, 7, 10, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (183, 7, 7, 8, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (184, 7, 8, 7, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (185, 7, 8, 10, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (186, 7, 8, 8, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (187, 7, 9, 7, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (188, 7, 9, 10, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (189, 7, 9, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (190, 8, 1, 8, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191, 8, 1, 1, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (192, 8, 1, 9, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (193, 8, 2, 8, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (194, 8, 2, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (195, 8, 2, 9, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (196, 8, 3, 8, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (197, 8, 3, 1, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (198, 8, 3, 9, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (199, 8, 4, 8, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (200, 8, 4, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201, 8, 4, 9, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (202, 8, 5, 8, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (203, 8, 5, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (204, 8, 5, 9, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (205, 8, 6, 8, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (206, 8, 6, 1, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (207, 8, 6, 9, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (208, 8, 7, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (209, 8, 7, 1, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (210, 8, 7, 9, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211, 8, 8, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (212, 8, 8, 1, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (213, 8, 8, 9, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (214, 8, 9, 8, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (215, 8, 9, 1, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (216, 8, 9, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
-- size for woman
INSERT INTO `quantity` VALUES (217, 9, 10, 5, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (218, 9, 10, 3, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (219, 9, 10, 1, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (220, 9, 11, 5, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221, 9, 11, 3, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (222, 9, 11, 1, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (223, 9, 12, 5, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (224, 9, 12, 3, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (225, 9, 12, 1, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (226, 9, 13, 5, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (227, 9, 13, 3, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (228, 9, 13, 1, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (229, 9, 14, 5, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (230, 9, 14, 3, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231, 9, 14, 1, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (232, 10, 10, 6, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (233, 10, 10, 4, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (234, 10, 10, 2, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (235, 10, 11, 6, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (236, 10, 11, 4, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (237, 10, 11, 2, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (238, 10, 12, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (239, 10, 12, 4, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (240, 10, 12, 2, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241, 10, 13, 6, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (242, 10, 13, 4, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (243, 10, 13, 2, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (244, 10, 14, 6, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (245, 10, 14, 4, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (246, 10, 14, 2, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (247, 11, 10, 7, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (248, 11, 10, 8, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (249, 11, 10, 1, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (250, 11, 11, 7, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251, 11, 11, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (252, 11, 11, 1, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (253, 11, 12, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (254, 11, 12, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (255, 11, 12, 1, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (256, 11, 13, 7, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (257, 11, 13, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (258, 11, 13, 1, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (259, 11, 14, 7, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (260, 11, 14, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (261, 11, 14, 1, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (262, 12, 10, 10, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (263, 12, 10, 9, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (264, 12, 10, 4, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (265, 12, 11, 10, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (266, 12, 11, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (267, 12, 11, 4, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (268, 12, 12, 10, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (269, 12, 12, 9, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (270, 12, 12, 4, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (271, 12, 13, 10, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (272, 12, 13, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (273, 12, 13, 4, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (274, 12, 14, 10, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (275, 12, 14, 9, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (276, 12, 14, 4, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (277, 13, 10, 2, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (278, 13, 10, 6, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (279, 13, 10, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (280, 13, 11, 2, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (281, 13, 11, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (282, 13, 11, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (283, 13, 12, 2, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (284, 13, 12, 6, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (285, 13, 12, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (286, 13, 13, 2, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (287, 13, 13, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (288, 13, 13, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (289, 13, 14, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (290, 13, 14, 6, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (291, 13, 14, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (292, 14, 10, 3, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (293, 14, 10, 1, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (294, 14, 10, 10, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (295, 14, 11, 3, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (296, 14, 11, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (297, 14, 11, 10, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (298, 14, 12, 3, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (299, 14, 12, 1, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (300, 14, 12, 10, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (301, 14, 13, 3, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (302, 14, 13, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (303, 14, 13, 10, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (304, 14, 14, 3, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (305, 14, 14, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (306, 14, 14, 10, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (307, 15, 10, 6, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (308, 15, 10, 8, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (309, 15, 10, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (310, 15, 11, 6, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (311, 15, 11, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (312, 15, 11, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (313, 15, 12, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (314, 15, 12, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (315, 15, 12, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (316, 15, 13, 6, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (317, 15, 13, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (318, 15, 13, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (319, 15, 14, 6, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (320, 15, 14, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (321, 15, 14, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (322, 16, 10, 5, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (323, 16, 10, 9, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (324, 16, 10, 3, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (325, 16, 11, 5, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (326, 16, 11, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (327, 16, 11, 3, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (328, 16, 12, 5, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (329, 16, 12, 9, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (330, 16, 12, 3, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (331, 16, 13, 5, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (332, 16, 13, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (333, 16, 13, 3, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (334, 16, 14, 5, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (335, 16, 14, 9, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (336, 16, 14, 3, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (337, 17, 10, 8, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (338, 17, 10, 10, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (339, 17, 10, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (340, 17, 11, 8, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (341, 17, 11, 10, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (342, 17, 11, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (343, 17, 12, 8, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (344, 17, 12, 10, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (345, 17, 12, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (346, 17, 13, 8, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (347, 17, 13, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (348, 17, 13, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (349, 17, 14, 8, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (350, 17, 14, 10, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (351, 17, 14, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (352, 18, 10, 1, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (353, 18, 10, 8, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (354, 18, 10, 4, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (355, 18, 11, 1, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (356, 18, 11, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (357, 18, 11, 4, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (358, 18, 12, 1, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (359, 18, 12, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (360, 18, 12, 4, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (361, 18, 13, 1, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (362, 18, 13, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (363, 18, 13, 4, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (364, 18, 14, 1, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (365, 18, 14, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (366, 18, 14, 4, 63, '2022-05-11 08:36:57', NULL, NULL);
-- size for man
INSERT INTO `quantity` VALUES (367, 19, 14, 9, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (368, 19, 14, 2, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (369, 19, 14, 6, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (370, 19, 15, 9, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (371, 19, 15, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (372, 19, 15, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (373, 19, 16, 9, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (374, 19, 16, 2, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (375, 19, 16, 6, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (376, 19, 17, 9, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (377, 19, 17, 2, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (378, 19, 17, 6, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (379, 19, 18, 9, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (380, 19, 18, 2, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (381, 19, 18, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (382, 19, 19, 9, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (383, 19, 19, 2, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (384, 19, 19, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (385, 19, 20, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (386, 19, 20, 2, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (387, 19, 20, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (388, 20, 14, 9, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (389, 20, 14, 6, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (390, 20, 14, 10, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (391, 20, 15, 9, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (392, 20, 15, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (393, 20, 15, 10, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (394, 20, 16, 9, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (395, 20, 16, 6, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (396, 20, 16, 10, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (397, 20, 17, 9, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (398, 20, 17, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (399, 20, 17, 10, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (400, 20, 18, 9, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (401, 20, 18, 6, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (402, 20, 18, 10, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (403, 20, 19, 9, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (404, 20, 19, 6, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (405, 20, 19, 10, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (406, 20, 20, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (407, 20, 20, 6, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (408, 20, 20, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (409, 21, 14, 4, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (410, 21, 14, 10, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (411, 21, 14, 9, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (412, 21, 15, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (413, 21, 15, 10, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (414, 21, 15, 9, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (415, 21, 16, 4, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (416, 21, 16, 10, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (417, 21, 16, 9, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (418, 21, 17, 4, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (419, 21, 17, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (420, 21, 17, 9, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (421, 21, 18, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (422, 21, 18, 10, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (423, 21, 18, 9, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (424, 21, 19, 4, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (425, 21, 19, 10, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (426, 21, 19, 9, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (427, 21, 20, 4, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (428, 21, 20, 10, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (429, 21, 20, 9, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (430, 22, 14, 7, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (431, 22, 14, 1, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (432, 22, 14, 2, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (433, 22, 15, 7, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (434, 22, 15, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (435, 22, 15, 2, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (436, 22, 16, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (437, 22, 16, 1, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (438, 22, 16, 2, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (439, 22, 17, 7, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (440, 22, 17, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (441, 22, 17, 2, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (442, 22, 18, 7, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (443, 22, 18, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (444, 22, 18, 2, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (445, 22, 19, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (446, 22, 19, 1, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (447, 22, 19, 2, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (448, 22, 20, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (449, 22, 20, 1, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (450, 22, 20, 2, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (451, 23, 14, 3, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (452, 23, 14, 4, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (453, 23, 14, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (454, 23, 15, 3, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (455, 23, 15, 4, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (456, 23, 15, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (457, 23, 16, 3, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (458, 23, 16, 4, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (459, 23, 16, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (460, 23, 17, 3, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (461, 23, 17, 4, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (462, 23, 17, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (463, 23, 18, 3, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (464, 23, 18, 4, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (465, 23, 18, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (466, 23, 19, 3, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (467, 23, 19, 4, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (468, 23, 19, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (469, 23, 20, 3, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (470, 23, 20, 4, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (471, 23, 20, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (472, 24, 14, 6, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (473, 24, 14, 8, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (474, 24, 14, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (475, 24, 15, 6, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (476, 24, 15, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (477, 24, 15, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (478, 24, 16, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (479, 24, 16, 8, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (480, 24, 16, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (481, 24, 17, 6, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (482, 24, 17, 8, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (483, 24, 17, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (484, 24, 18, 6, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (485, 24, 18, 8, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (486, 24, 18, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (487, 24, 19, 6, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (488, 24, 19, 8, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (489, 24, 19, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (490, 24, 20, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (491, 24, 20, 8, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (492, 24, 20, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (493, 25, 14, 9, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (494, 25, 14, 2, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (495, 25, 14, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (496, 25, 15, 9, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (497, 25, 15, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (498, 25, 15, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (499, 25, 16, 9, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (500, 25, 16, 2, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (501, 25, 16, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (502, 25, 17, 9, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (503, 25, 17, 2, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (504, 25, 17, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (505, 25, 18, 9, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (506, 25, 18, 2, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (507, 25, 18, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (508, 25, 19, 9, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (509, 25, 19, 2, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (510, 25, 19, 7, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (511, 25, 20, 9, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (512, 25, 20, 2, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (513, 25, 20, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
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

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailproduct
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rgba_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `color` VALUES (1, 'purple', 'rgb(165, 85, 236)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (2, 'blue', 'rgb(0, 20, 255)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (3, 'green', 'rgb(56, 229, 77)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (4, 'yellow', 'rgb(240, 255, 66)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (5, 'orange', 'rgb(253, 132, 31)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (6, 'red', 'rgb(255, 30, 0)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (7, 'pink', 'rgb(255, 141, 199)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (8, 'black', 'rgb(0, 0, 0)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (9, 'gray', 'rgb(67, 66, 66)', '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `color` VALUES (10, 'white', 'rgb(254, 252, 243)', '2022-05-11 08:36:57', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `products`
ADD CONSTRAINT FOREIGN KEY (`id`) REFERENCES quantity(`id_product`);

ALTER TABLE `quantity`
ADD CONSTRAINT FOREIGN KEY (`size`) REFERENCES size(`id`);
ALTER TABLE `quantity`
ADD CONSTRAINT FOREIGN KEY (`color`) REFERENCES color(`id`);

