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
  `quantity-left` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_product`) REFERENCES products(`id`),
  FOREIGN KEY (`id_user`) REFERENCES users(`id`),
  FOREIGN KEY (`size`) REFERENCES size(`id`),
  FOREIGN KEY (`color`) REFERENCES color(`id`),
  FOREIGN KEY (`quantity-left`) REFERENCES quantity(`id`)
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
INSERT INTO `quantity` VALUES (10107, 1, 1, 7, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10110, 1, 1, 10, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10105, 1, 1, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10207, 1, 2, 7, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10210, 1, 2, 10, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10205, 1, 2, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10307, 1, 3, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10310, 1, 3, 10, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10305, 1, 3, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10407, 1, 4, 7, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10410, 1, 4, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10405, 1, 4, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10507, 1, 5, 7, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10510, 1, 5, 10, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10505, 1, 5, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10607, 1, 6, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10610, 1, 6, 10, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10605, 1, 6, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10707, 1, 7, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10710, 1, 7, 10, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10705, 1, 7, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10807, 1, 8, 7, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10810, 1, 8, 10, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10805, 1, 8, 5, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10907, 1, 9, 7, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10910, 1, 9, 10, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (10905, 1, 9, 5, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20106, 2, 1, 6, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20102, 2, 1, 2, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20110, 2, 1, 10, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20206, 2, 2, 6, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20202, 2, 2, 2, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20210, 2, 2, 10, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20306, 2, 3, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20302, 2, 3, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20310, 2, 3, 10, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20406, 2, 4, 6, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20402, 2, 4, 2, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20410, 2, 4, 10, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20506, 2, 5, 6, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20502, 2, 5, 2, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20510, 2, 5, 10, 76, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20606, 2, 6, 6, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20602, 2, 6, 2, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20610, 2, 6, 10, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20706, 2, 7, 6, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20702, 2, 7, 2, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20710, 2, 7, 10, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20806, 2, 8, 6, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20802, 2, 8, 2, 0, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20810, 2, 8, 10, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20906, 2, 9, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20902, 2, 9, 2, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (20910, 2, 9, 10, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30101, 3, 1, 1, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30102, 3, 1, 2, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30107, 3, 1, 7, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30201, 3, 2, 1, 45, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30202, 3, 2, 2, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30207, 3, 2, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30301, 3, 3, 1, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30302, 3, 3, 2, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30307, 3, 3, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30401, 3, 4, 1, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30402, 3, 4, 2, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30407, 3, 4, 7, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30501, 3, 5, 1, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30502, 3, 5, 2, 54, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30507, 3, 5, 7, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30601, 3, 6, 1, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30602, 3, 6, 2, 75, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30607, 3, 6, 7, 70, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30701, 3, 7, 1, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30702, 3, 7, 2, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30707, 3, 7, 7, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30801, 3, 8, 1, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30802, 3, 8, 2, 58, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30807, 3, 8, 7, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30901, 3, 9, 1, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30902, 3, 9, 2, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (30907, 3, 9, 7, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40103, 4, 1, 3, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40104, 4, 1, 4, 46, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40108, 4, 1, 8, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40203, 4, 2, 3, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40204, 4, 2, 4, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40208, 4, 2, 8, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40303, 4, 3, 3, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40304, 4, 3, 4, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40308, 4, 3, 8, 48, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40403, 4, 4, 3, 77, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40404, 4, 4, 4, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40408, 4, 4, 8, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40503, 4, 5, 3, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40504, 4, 5, 4, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40508, 4, 5, 8, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40603, 4, 6, 3, 59, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40604, 4, 6, 4, 62, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40608, 4, 6, 8, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40703, 4, 7, 3, 78, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40704, 4, 7, 4, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40708, 4, 7, 8, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40803, 4, 8, 3, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40804, 4, 8, 4, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40808, 4, 8, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40903, 4, 9, 3, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40904, 4, 9, 4, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (40908, 4, 9, 8, 84, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50105, 5, 1, 5, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50106, 5, 1, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50109, 5, 1, 9, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50205, 5, 2, 5, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50206, 5, 2, 6, 58, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50209, 5, 2, 9, 84, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50305, 5, 3, 5, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50306, 5, 3, 6, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50309, 5, 3, 9, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50405, 5, 4, 5, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50406, 5, 4, 6, 47, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50409, 5, 4, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50505, 5, 5, 5, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50506, 5, 5, 6, 59, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50509, 5, 5, 9, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50605, 5, 6, 5, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50606, 5, 6, 6, 34, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50609, 5, 6, 9, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50705, 5, 7, 5, 21, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50706, 5, 7, 6, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50709, 5, 7, 9, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50805, 5, 8, 5, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50806, 5, 8, 6, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50809, 5, 8, 9, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50905, 5, 9, 5, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50906, 5, 9, 6, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (50909, 5, 9, 9, 28, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60108, 6, 1, 8, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60101, 6, 1, 1, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60106, 6, 1, 6, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60208, 6, 2, 8, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60201, 6, 2, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60206, 6, 2, 6, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60308, 6, 3, 8, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60301, 6, 3, 1, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60306, 6, 3, 6, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60408, 6, 4, 8, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60401, 6, 4, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60406, 6, 4, 6, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60508, 6, 5, 8, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60501, 6, 5, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60506, 6, 5, 6, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60608, 6, 6, 8, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60601, 6, 6, 1, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60606, 6, 6, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60708, 6, 7, 8, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60701, 6, 7, 1, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60706, 6, 7, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60808, 6, 8, 8, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60801, 6, 8, 1, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60806, 6, 8, 6, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60908, 6, 9, 8, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60901, 6, 9, 1, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (60906, 6, 9, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70107, 7, 1, 7, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70103, 7, 1, 3, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70101, 7, 1, 1, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70207, 7, 2, 7, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70203, 7, 2, 3, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70201, 7, 2, 1, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70307, 7, 3, 7, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70303, 7, 3, 3, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70301, 7, 3, 1, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70407, 7, 4, 7, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70403, 7, 4, 3, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70401, 7, 4, 1, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70507, 7, 5, 7, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70503, 7, 5, 3, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70501, 7, 5, 1, 76, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70607, 7, 6, 7, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70603, 7, 6, 3, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70601, 7, 6, 1, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70707, 7, 7, 7, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70703, 7, 7, 3, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70701, 7, 7, 1, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70807, 7, 8, 7, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70803, 7, 8, 3, 0, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70801, 7, 8, 1, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70907, 7, 9, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70903, 7, 9, 3, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (70901, 7, 9, 1, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80105, 8, 1, 5, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80104, 8, 1, 4, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80108, 8, 1, 8, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80205, 8, 2, 5, 45, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80204, 8, 2, 4, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80208, 8, 2, 8, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80305, 8, 3, 5, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80304, 8, 3, 4, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80308, 8, 3, 8, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80405, 8, 4, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80404, 8, 4, 4, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80408, 8, 4, 8, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80505, 8, 5, 5, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80504, 8, 5, 4, 54, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80508, 8, 5, 8, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80605, 8, 6, 5, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80604, 8, 6, 4, 75, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80608, 8, 6, 8, 70, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80705, 8, 7, 5, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80704, 8, 7, 4, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80708, 8, 7, 8, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80805, 8, 8, 5, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80804, 8, 8, 4, 58, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80808, 8, 8, 8, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80905, 8, 9, 5, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80904, 8, 9, 4, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (80908, 8, 9, 8, 35, '2022-05-11 08:36:57', NULL, NULL);
-- size for woman
INSERT INTO `quantity` VALUES (91006, 9, 10, 6, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91007, 9, 10, 7, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91008, 9, 10, 8, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91106, 9, 11, 6, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91107, 9, 11, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91108, 9, 11, 8, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91206, 9, 12, 6, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91207, 9, 12, 7, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91208, 9, 12, 8, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91306, 9, 13, 6, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91307, 9, 13, 7, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91308, 9, 13, 8, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91406, 9, 14, 6, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91407, 9, 14, 7, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (91408, 9, 14, 8, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101001, 10, 10, 1, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101003, 10, 10, 3, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101005, 10, 10, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101101, 10, 11, 1, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101103, 10, 11, 3, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101105, 10, 11, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101201, 10, 12, 1, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101203, 10, 12, 3, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101205, 10, 12, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101301, 10, 13, 1, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101303, 10, 13, 3, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101305, 10, 13, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101401, 10, 14, 1, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101403, 10, 14, 3, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (101405, 10, 14, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111002, 11, 10, 2, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111004, 11, 10, 4, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111006, 11, 10, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111102, 11, 11, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111104, 11, 11, 4, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111106, 11, 11, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111202, 11, 12, 2, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111204, 11, 12, 4, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111206, 11, 12, 6, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111302, 11, 13, 2, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111304, 11, 13, 4, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111306, 11, 13, 6, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111402, 11, 14, 2, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111404, 11, 14, 4, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (111406, 11, 14, 6, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121007, 12, 10, 7, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121009, 12, 10, 9, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121001, 12, 10, 1, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121107, 12, 11, 7, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121109, 12, 11, 9, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121101, 12, 11, 1, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121207, 12, 12, 7, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121209, 12, 12, 9, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121201, 12, 12, 1, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121307, 12, 13, 7, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121309, 12, 13, 9, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121301, 12, 13, 1, 76, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121407, 12, 14, 7, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121409, 12, 14, 9, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (121401, 12, 14, 1, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131006, 13, 10, 6, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131008, 13, 10, 8, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131010, 13, 10, 10, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131106, 13, 11, 6, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131108, 13, 11, 8, 0, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131110, 13, 11, 10, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131206, 13, 12, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131208, 13, 12, 8, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131210, 13, 12, 10, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131306, 13, 13, 6, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131308, 13, 13, 8, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131310, 13, 13, 10, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131406, 13, 14, 6, 45, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131408, 13, 14, 8, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (131410, 13, 14, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141002, 14, 10, 2, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141007, 14, 10, 7, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141003, 14, 10, 3, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141102, 14, 11, 2, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141107, 14, 11, 7, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141103, 14, 11, 3, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141202, 14, 12, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141207, 14, 12, 7, 54, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141203, 14, 12, 3, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141302, 14, 13, 2, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141307, 14, 13, 7, 75, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141303, 14, 13, 3, 70, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141402, 14, 14, 2, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141407, 14, 14, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (141403, 14, 14, 3, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151004, 15, 10, 4, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151003, 15, 10, 3, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151005, 15, 10, 5, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151104, 15, 11, 4, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151103, 15, 11, 3, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151105, 15, 11, 5, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151204, 15, 12, 4, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151203, 15, 12, 3, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151205, 15, 12, 5, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151304, 15, 13, 4, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151303, 15, 13, 3, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151305, 15, 13, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151404, 15, 14, 4, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151403, 15, 14, 3, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (151405, 15, 14, 5, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161007, 16, 10, 7, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161001, 16, 10, 1, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161010, 16, 10, 10, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161107, 16, 11, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161101, 16, 11, 1, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161110, 16, 11, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161207, 16, 12, 7, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161201, 16, 12, 1, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161210, 16, 12, 10, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161307, 16, 13, 7, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161301, 16, 13, 1, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161310, 16, 13, 10, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161407, 16, 14, 7, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161401, 16, 14, 1, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (161410, 16, 14, 10, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171008, 17, 10, 8, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171009, 17, 10, 9, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171005, 17, 10, 5, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171108, 17, 11, 8, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171109, 17, 11, 9, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171105, 17, 11, 5, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171208, 17, 12, 8, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171209, 17, 12, 9, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171205, 17, 12, 5, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171308, 17, 13, 8, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171309, 17, 13, 9, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171305, 17, 13, 5, 76, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171408, 17, 14, 8, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171409, 17, 14, 9, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (171405, 17, 14, 5, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181005, 18, 10, 5, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181003, 18, 10, 3, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181006, 18, 10, 6, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181105, 18, 11, 5, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181103, 18, 11, 3, 0, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181106, 18, 11, 6, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181205, 18, 12, 5, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181203, 18, 12, 3, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181206, 18, 12, 6, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181305, 18, 13, 5, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181303, 18, 13, 3, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181306, 18, 13, 6, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181405, 18, 14, 5, 45, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181403, 18, 14, 3, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (181406, 18, 14, 6, 71, '2022-05-11 08:36:57', NULL, NULL);
-- size for man
INSERT INTO `quantity` VALUES (191402, 19, 14, 2, 41, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191401, 19, 14, 1, 85, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191407, 19, 14, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191502, 19, 15, 2, 38, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191501, 19, 15, 1, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191507, 19, 15, 7, 69, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191602, 19, 16, 2, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191601, 19, 16, 1, 68, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191607, 19, 16, 7, 96, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191702, 19, 17, 2, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191701, 19, 17, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191707, 19, 17, 7, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191802, 19, 18, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191801, 19, 18, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191807, 19, 18, 7, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191902, 19, 19, 2, 87, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191901, 19, 19, 1, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (191907, 19, 19, 7, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (192002, 19, 20, 2, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (192001, 19, 20, 1, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (192007, 19, 20, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201406, 20, 14, 6, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201402, 20, 14, 2, 64, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201409, 20, 14, 9, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201506, 20, 15, 6, 90, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201502, 20, 15, 2, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201509, 20, 15, 9, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201606, 20, 16, 6, 31, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201602, 20, 16, 2, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201609, 20, 16, 9, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201706, 20, 17, 6, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201702, 20, 17, 2, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201709, 20, 17, 9, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201806, 20, 18, 6, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201802, 20, 18, 2, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201809, 20, 18, 9, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201906, 20, 19, 6, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201902, 20, 19, 2, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (201909, 20, 19, 9, 67, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (202006, 20, 20, 6, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (202002, 20, 20, 2, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (202009, 20, 20, 9, 76, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211404, 21, 14, 4, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211406, 21, 14, 6, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211410, 21, 14, 10, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211504, 21, 15, 4, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211506, 21, 15, 6, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211510, 21, 15, 10, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211604, 21, 16, 4, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211606, 21, 16, 6, 0, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211610, 21, 16, 10, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211704, 21, 17, 4, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211706, 21, 17, 6, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211710, 21, 17, 10, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211804, 21, 18, 4, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211806, 21, 18, 6, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211810, 21, 18, 10, 37, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211904, 21, 19, 4, 45, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211906, 21, 19, 6, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (211910, 21, 19, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (212004, 21, 20, 4, 95, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (212006, 21, 20, 6, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (212010, 21, 20, 10, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221403, 22, 14, 3, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221401, 22, 14, 1, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221410, 22, 14, 10, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221503, 22, 15, 3, 51, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221501, 22, 15, 1, 54, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221510, 22, 15, 10, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221603, 22, 16, 3, 24, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221601, 22, 16, 1, 75, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221610, 22, 16, 10, 70, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221703, 22, 17, 3, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221701, 22, 17, 1, 63, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221710, 22, 17, 10, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221803, 22, 18, 3, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221801, 22, 18, 1, 58, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221810, 22, 18, 10, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221903, 22, 19, 3, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221901, 22, 19, 1, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (221910, 22, 19, 10, 35, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (222003, 22, 20, 3, 99, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (222001, 22, 20, 1, 46, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (222010, 22, 20, 10, 57, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231408, 23, 14, 8, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231407, 23, 14, 7, 23, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231405, 23, 14, 5, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231508, 23, 15, 8, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231507, 23, 15, 7, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231505, 23, 15, 5, 48, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231608, 23, 16, 8, 77, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231607, 23, 16, 7, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231605, 23, 16, 5, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231708, 23, 17, 8, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231707, 23, 17, 7, 83, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231705, 23, 17, 5, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231808, 23, 18, 8, 59, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231807, 23, 18, 7, 62, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231805, 23, 18, 5, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231908, 23, 19, 8, 78, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231907, 23, 19, 7, 86, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (231905, 23, 19, 5, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (232008, 23, 20, 8, 94, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (232007, 23, 20, 7, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (232005, 23, 20, 5, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241401, 24, 14, 1, 32, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241404, 24, 14, 4, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241407, 24, 14, 7, 84, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241501, 24, 15, 1, 60, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241504, 24, 15, 4, 65, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241507, 24, 15, 7, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241601, 24, 16, 1, 61, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241604, 24, 16, 4, 58, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241607, 24, 16, 7, 84, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241701, 24, 17, 1, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241704, 24, 17, 4, 72, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241707, 24, 17, 7, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241801, 24, 18, 1, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241804, 24, 18, 4, 47, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241807, 24, 18, 7, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241901, 24, 19, 1, 49, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241904, 24, 19, 4, 59, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (241907, 24, 19, 7, 71, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (242001, 24, 20, 1, 52, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (242004, 24, 20, 4, 34, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (242007, 24, 20, 7, 22, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251406, 25, 14, 6, 21, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251407, 25, 14, 7, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251408, 25, 14, 8, 92, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251506, 25, 15, 6, 33, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251507, 25, 15, 7, 80, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251508, 25, 15, 8, 39, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251606, 25, 16, 6, 74, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251607, 25, 16, 7, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251608, 25, 16, 8, 28, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251706, 25, 17, 6, 97, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251707, 25, 17, 7, 100, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251708, 25, 17, 8, 93, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251806, 25, 18, 6, 29, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251807, 25, 18, 7, 25, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251808, 25, 18, 8, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251906, 25, 19, 6, 66, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251907, 25, 19, 7, 79, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (251908, 25, 19, 8, 81, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (252006, 25, 20, 6, 98, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (252007, 25, 20, 7, 21, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `quantity` VALUES (252008, 25, 20, 8, 91, '2022-05-11 08:36:57', NULL, NULL);
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
DROP TABLE IF EXISTS `sizeProduct`;
CREATE TABLE `sizeProduct` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned NOT NULL,
  `id_size` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_size`) REFERENCES size(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `sizeProduct` VALUES (1, 1, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (2, 1, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (3, 1, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (4, 1, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (5, 1, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (6, 1, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (7, 1, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (8, 1, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (9, 1, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (10, 2, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (11, 2, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (12, 2, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (13, 2, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (14, 2, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (15, 2, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (16, 2, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (17, 2, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (18, 2, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (19, 3, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (20, 3, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (21, 3, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (22, 3, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (23, 3, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (24, 3, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (25, 3, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (26, 3, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (27, 3, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (28, 4, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (29, 4, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (30, 4, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (31, 4, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (32, 4, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (33, 4, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (34, 4, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (35, 4, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (36, 4, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (37, 5, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (38, 5, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (39, 5, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (40, 5, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (41, 5, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (42, 5, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (43, 5, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (44, 5, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (45, 5, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (46, 6, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (47, 6, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (48, 6, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (49, 6, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (50, 6, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (51, 6, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (52, 6, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (53, 6, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (54, 6, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (55, 7, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (56, 7, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (57, 7, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (58, 7, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (59, 7, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (60, 7, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (61, 7, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (62, 7, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (63, 7, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (64, 8, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (65, 8, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (66, 8, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (67, 8, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (68, 8, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (69, 8, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (70, 8, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (71, 8, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (72, 8, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (73, 9, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (74, 9, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (75, 9, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (76, 9, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (77, 9, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (78, 10, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (79, 10, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (80, 10, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (81, 10, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (82, 10, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (83, 11, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (84, 11, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (85, 11, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (86, 11, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (87, 11, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (88, 12, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (89, 12, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (90, 12, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (91, 12, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (92, 12, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (93, 13, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (94, 13, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (95, 13, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (96, 13, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (97, 13, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (98, 14, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (99, 14, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (100, 14, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (101, 14, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (102, 14, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (103, 15, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (104, 15, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (105, 15, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (106, 15, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (107, 15, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (108, 16, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (109, 16, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (110, 16, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (111, 16, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (112, 16, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (113, 17, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (114, 17, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (115, 17, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (116, 17, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (117, 17, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (118, 18, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (119, 18, 11, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (120, 18, 12, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (121, 18, 13, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (122, 18, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (123, 18, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (124, 18, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (125, 18, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (126, 18, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (127, 18, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (128, 18, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (129, 18, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (130, 19, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (131, 19, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (132, 19, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (133, 19, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (134, 19, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (135, 19, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (136, 19, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (137, 20, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (138, 20, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (139, 20, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (140, 20, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (141, 20, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (142, 20, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (143, 20, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (144, 21, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (145, 21, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (146, 21, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (147, 21, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (148, 21, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (149, 21, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (150, 21, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (151, 22, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (152, 22, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (153, 22, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (154, 22, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (155, 22, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (156, 22, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (157, 22, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (158, 23, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (159, 23, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (160, 23, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (161, 23, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (162, 23, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (163, 23, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (164, 23, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (165, 24, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (166, 24, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (167, 24, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (168, 24, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (169, 24, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (170, 24, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (171, 24, 20, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (172, 25, 14, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (173, 25, 15, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (174, 25, 16, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (175, 25, 17, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (176, 25, 18, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (177, 25, 19, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `sizeProduct` VALUES (178, 25, 20, '2022-05-11 08:36:57', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailproduct
-- ----------------------------
DROP TABLE IF EXISTS `colorProduct`;
CREATE TABLE `colorProduct` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned NOT NULL,
  `id_color` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_color`) REFERENCES color(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `colorProduct` VALUES (1, 1, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (2, 1, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (3, 1, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (4, 2, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (5, 2, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (6, 2, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (7, 3, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (8, 3, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (9, 3, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (10, 4, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (11, 4, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (12, 4, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (13, 5, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (14, 5, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (15, 5, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (16, 6, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (17, 6, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (18, 6, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (19, 7, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (20, 7, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (21, 7, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (22, 8, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (23, 8, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (24, 8, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (25, 9, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (26, 9, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (27, 9, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (28, 10, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (29, 10, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (30, 10, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (31, 11, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (32, 11, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (33, 11, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (34, 12, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (35, 12, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (36, 12, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (37, 13, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (38, 13, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (39, 13, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (40, 14, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (41, 14, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (42, 14, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (43, 15, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (44, 15, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (45, 15, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (46, 16, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (47, 16, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (48, 16, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (49, 17, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (50, 17, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (51, 17, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (52, 18, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (53, 18, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (54, 18, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (55, 19, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (56, 19, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (57, 19, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (58, 20, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (59, 20, 2, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (60, 20, 9, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (61, 21, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (62, 21, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (63, 21, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (64, 22, 3, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (65, 22, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (66, 22, 10, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (67, 23, 8, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (68, 23, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (69, 23, 5, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (70, 24, 1, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (71, 24, 4, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (72, 24, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (73, 25, 6, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (74, 25, 7, '2022-05-11 08:36:57', NULL, NULL);
INSERT INTO `colorProduct` VALUES (75, 25, 8, '2022-05-11 08:36:57', NULL, NULL);
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

