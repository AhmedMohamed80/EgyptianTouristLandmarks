-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 30 يونيو 2025 الساعة 13:08
-- إصدار الخادم: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u760115461_pharaohslegacy`
--

-- --------------------------------------------------------

--
-- بنية الجدول `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airport_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `terminal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `airlines`
--

INSERT INTO `airlines` (`id`, `airport_id`, `name`, `terminal`, `email`, `phone`, `website_link`, `created_at`, `updated_at`) VALUES
(82, 38, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(83, 38, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(84, 38, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(85, 38, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(86, 38, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(87, 38, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(88, 38, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(89, 38, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(90, 38, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(91, 38, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(92, 38, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(93, 38, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(94, 38, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(95, 38, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(96, 38, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(97, 39, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(98, 39, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(99, 39, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(100, 39, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(101, 39, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(102, 39, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(103, 39, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(104, 39, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(105, 39, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(106, 39, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(107, 39, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(108, 39, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(109, 39, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(110, 39, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(111, 39, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(112, 40, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(113, 40, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(114, 40, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(115, 40, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(116, 40, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(117, 40, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(118, 40, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(119, 40, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(120, 40, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(121, 40, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(122, 40, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(123, 40, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(124, 40, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(125, 40, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(126, 40, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(127, 41, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(128, 41, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(129, 41, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(130, 41, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(131, 41, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(132, 41, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(133, 41, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(134, 41, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(135, 41, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(136, 41, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(137, 41, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(138, 41, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(139, 41, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(140, 41, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(141, 41, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(142, 42, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(143, 42, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(144, 42, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(145, 42, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(146, 42, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(147, 42, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(148, 42, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(149, 42, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(150, 42, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(151, 42, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(152, 42, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(153, 42, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(154, 42, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(155, 42, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(156, 42, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(157, 43, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(158, 43, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(159, 43, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(160, 43, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(161, 43, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(162, 43, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(163, 43, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(164, 43, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(165, 43, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(166, 43, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(167, 43, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(168, 43, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(169, 43, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(170, 43, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(171, 43, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(172, 44, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(173, 44, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(174, 44, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(175, 44, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(176, 44, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(177, 44, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(178, 44, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(179, 44, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(180, 44, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(181, 44, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(182, 44, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(183, 44, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(184, 44, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(185, 44, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(186, 44, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(187, 45, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(188, 45, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(189, 45, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(190, 45, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(191, 45, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(192, 45, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(193, 45, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(194, 45, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(195, 45, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(196, 45, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(197, 45, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(198, 45, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(199, 45, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(200, 45, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(201, 45, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(202, 46, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(203, 46, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(204, 46, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(205, 46, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(206, 46, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(207, 46, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(208, 46, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(209, 46, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(210, 46, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(211, 46, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(212, 46, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(213, 46, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(214, 46, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(215, 46, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(216, 46, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(232, 48, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(233, 48, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(234, 48, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(235, 48, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(236, 48, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(237, 48, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(238, 48, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(239, 48, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(240, 48, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(241, 48, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(242, 48, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(243, 48, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(244, 48, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(245, 48, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(246, 48, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(247, 49, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(248, 49, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(249, 49, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(250, 49, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(251, 49, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(252, 49, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(253, 49, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(254, 49, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(255, 49, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(256, 49, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(257, 49, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(258, 49, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(259, 49, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(260, 49, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(261, 49, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(262, 50, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(263, 50, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(264, 50, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(265, 50, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(266, 50, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(267, 50, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(268, 50, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(269, 50, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(270, 50, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(271, 50, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(272, 50, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(273, 50, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(274, 50, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(275, 50, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(276, 50, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(277, 51, 'EgyptAir', 'Terminal 3', 'customeraff@egyptair.com', '090070000', 'https://www.egyptair.com', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(278, 51, 'Emirates', 'Terminal 3', 'security@emirates.com', '+20 2 33320555', 'https://www.emirates.com/eg/english/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(279, 51, 'Air Algerie', 'Terminal 1', 'contact@airalgerie.dz', '+213 21 98 63 63', 'https://airalgerie.dz/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(280, 51, 'AlMasria Universal Airlines', 'Terminal 1', 'info@almasriaairlines.com', '19945', 'https://almasriaairlines.com/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(281, 51, 'Air Cairo', 'Terminal 1', 'info@aircairo.com', '090072727', 'https://aircairo.com/en-eg/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(282, 51, 'Air Serbia', 'Terminal 1', 'callcenter@airserbia.com', '0800 111 528', 'https://www.airserbia.com/en', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(283, 51, 'British Airways', 'Terminal 1', 'customer.relations@ba.com', '08000060300', 'https://www.britishairways.com/travel/home/public/en_eg/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(284, 51, 'Cyprus Airways', 'Terminal 1', 'info@cyprusairways.com', '+357 24 00 00 53', 'https://www.cyprusairways.com/en-GB', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(285, 51, 'Flynas', 'Terminal 1', 'support@flynas.com', '+966114349000', 'https://www.flynas.com/en', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(286, 51, 'Gulf Air', 'Terminal 1', 'customer.service@gulfair.com', '(+973) 1737 3737', 'https://www.gulfair.com/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(287, 51, 'Turkish Airlines', 'Terminal 3', 'customer@thy.com', '0800 000 9145', 'https://www.turkishairlines.com/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(288, 51, 'fly baghdad', 'Terminal 1', 'MOREINFO@FLYBAGHDAD.NET', '+9647827835506', 'http://www.flybaghdad.com/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(289, 51, 'Eritrean Airways', 'Terminal 1', 'frgn_carr@egyptair.com', '+201008873293', 'http://www.eriairlines.com/', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(290, 51, 'Lufthansa Airlines', 'Terminal 3', 'customer.relations@lufthansa.com', '+222694560', 'https://www.lufthansa.com/eg/en/homepage', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(291, 51, 'Swiss International Air Lines', 'Terminal 3', 'swiss-mac@swiss.com', '+222694560', 'https://www.swiss.com/eg/en/homepage', '2025-04-25 21:39:49', '2025-04-25 21:39:49');

-- --------------------------------------------------------

--
-- بنية الجدول `airports`
--

CREATE TABLE `airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `airports`
--

INSERT INTO `airports` (`id`, `Item_ID`, `website_link`, `phone`) VALUES
(38, 126, 'https://www.cairo-airport.com/', '16708'),
(39, 127, 'http://www.sphinxairport.com/', '02 35316900'),
(40, 128, 'https://borgelarabairport.com/', '03 4631010'),
(41, 129, 'http://www.shaa.gov.eg/', '069 3623304'),
(42, 130, 'http://www.tabaairport.com/', '0683363730'),
(43, 131, 'https://www.hugedomains.com/domain_profile.cfm?d=hurghadaairport.com', '065 3414213'),
(44, 132, 'http://www.asyutairport.com/', '088 2301644'),
(45, 133, 'http://www.luxorairport.com/', '095 2324455'),
(46, 134, 'http://www.aswanairport.com/', '097 3482440'),
(48, 136, 'http://www.sohagairport.com/', '093 2372005'),
(49, 137, 'http://www.cairoairport.com/', '02 28580434'),
(50, 140, 'https://www.marsaalamairport.com/lander', '065 3700029'),
(51, 142, 'https://www.civilaviation.gov.eg/Airport/getAirport/16', '222677611');

-- --------------------------------------------------------

--
-- بنية الجدول `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `number_of_people` int(11) NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `stripe_session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `trip_id`, `booking_date`, `number_of_people`, `payment_status`, `stripe_session_id`, `created_at`, `updated_at`) VALUES
(54, 58, 28, '2025-04-27 01:54:26', 2, 'pending', NULL, '2025-04-27 01:54:26', '2025-04-27 01:54:26'),
(55, 58, 31, '2025-04-27 01:56:07', 1, 'pending', NULL, '2025-04-27 01:56:07', '2025-04-27 01:56:07'),
(56, 59, 29, '2025-04-27 02:14:41', 1, 'completed', NULL, '2025-04-27 02:14:16', '2025-04-27 02:14:41'),
(57, 59, 28, '2025-04-27 02:17:24', 4, 'completed', NULL, '2025-04-27 02:16:43', '2025-04-27 02:17:24'),
(58, 58, 27, '2025-04-27 02:24:53', 1, 'pending', NULL, '2025-04-27 02:24:53', '2025-04-27 02:24:53'),
(59, 60, 28, '2025-04-27 02:28:56', 1, 'pending', NULL, '2025-04-27 02:28:56', '2025-04-27 02:28:56'),
(60, 58, 29, '2025-04-27 02:34:05', 1, 'pending', NULL, '2025-04-27 02:34:05', '2025-04-27 02:34:05'),
(61, 58, 29, '2025-04-27 02:43:29', 1, 'pending', NULL, '2025-04-27 02:43:29', '2025-04-27 02:43:29'),
(62, 58, 29, '2025-04-27 02:45:14', 1, 'pending', NULL, '2025-04-27 02:45:14', '2025-04-27 02:45:14'),
(63, 58, 29, '2025-04-27 02:46:57', 1, 'pending', NULL, '2025-04-27 02:46:57', '2025-04-27 02:46:57'),
(64, 59, 29, '2025-04-27 02:48:54', 1, 'pending', NULL, '2025-04-27 02:48:54', '2025-04-27 02:48:54'),
(65, 58, 27, '2025-04-27 03:04:18', 10, 'pending', NULL, '2025-04-27 03:04:18', '2025-04-27 03:04:18'),
(66, 58, 34, '2025-04-28 07:46:20', 1, 'completed', NULL, '2025-04-28 07:45:34', '2025-04-28 07:46:20'),
(67, 66, 27, '2025-04-28 22:48:45', 1, 'completed', NULL, '2025-04-28 22:46:33', '2025-04-28 22:48:45'),
(68, 58, 27, '2025-04-30 22:09:26', 1, 'pending', NULL, '2025-04-30 22:09:26', '2025-04-30 22:09:26'),
(69, 58, 28, '2025-05-06 17:25:05', 2, 'pending', NULL, '2025-05-06 17:25:05', '2025-05-06 17:25:05'),
(70, 58, 29, '2025-05-06 17:25:59', 3, 'pending', NULL, '2025-05-06 17:25:59', '2025-05-06 17:25:59'),
(71, 58, 29, '2025-05-06 17:26:59', 4, 'completed', NULL, '2025-05-06 17:26:14', '2025-05-06 17:26:59'),
(72, 58, 29, '2025-05-09 18:44:24', 1, 'completed', NULL, '2025-05-09 18:37:44', '2025-05-09 18:44:24'),
(73, 58, 31, '2025-05-11 09:44:10', 1, 'pending', NULL, '2025-05-11 09:44:10', '2025-05-11 09:44:10'),
(74, 57, 27, '2025-05-11 22:13:28', 1, 'pending', NULL, '2025-05-11 22:13:28', '2025-05-11 22:13:28'),
(75, 73, 28, '2025-05-11 22:28:02', 1, 'pending', NULL, '2025-05-11 22:28:02', '2025-05-11 22:28:02'),
(76, 73, 28, '2025-05-11 22:28:14', 1, 'pending', NULL, '2025-05-11 22:28:14', '2025-05-11 22:28:14'),
(77, 73, 28, '2025-05-11 22:28:27', 1, 'pending', NULL, '2025-05-11 22:28:27', '2025-05-11 22:28:27'),
(78, 73, 28, '2025-05-11 22:28:41', 5, 'pending', NULL, '2025-05-11 22:28:41', '2025-05-11 22:28:41'),
(79, 73, 32, '2025-05-11 22:29:16', 6, 'pending', NULL, '2025-05-11 22:29:16', '2025-05-11 22:29:16'),
(80, 73, 31, '2025-05-11 22:29:36', 4, 'pending', NULL, '2025-05-11 22:29:36', '2025-05-11 22:29:36'),
(81, 73, 32, '2025-05-11 22:30:01', 1, 'pending', NULL, '2025-05-11 22:30:01', '2025-05-11 22:30:01'),
(82, 73, 30, '2025-05-11 22:30:17', 1, 'pending', NULL, '2025-05-11 22:30:17', '2025-05-11 22:30:17'),
(83, 73, 31, '2025-05-11 22:33:46', 1, 'pending', NULL, '2025-05-11 22:33:46', '2025-05-11 22:33:46'),
(84, 73, 32, '2025-05-11 22:34:12', 2, 'pending', NULL, '2025-05-11 22:34:12', '2025-05-11 22:34:12'),
(85, 73, 32, '2025-05-11 22:34:35', 1, 'pending', NULL, '2025-05-11 22:34:35', '2025-05-11 22:34:35'),
(86, 73, 31, '2025-05-11 22:34:45', 1, 'pending', NULL, '2025-05-11 22:34:45', '2025-05-11 22:34:45'),
(87, 73, 32, '2025-05-11 22:35:55', 1, 'pending', NULL, '2025-05-11 22:35:55', '2025-05-11 22:35:55'),
(88, 73, 31, '2025-05-11 22:36:13', 1, 'pending', NULL, '2025-05-11 22:36:13', '2025-05-11 22:36:13'),
(89, 73, 33, '2025-05-11 22:36:32', 1, 'pending', NULL, '2025-05-11 22:36:32', '2025-05-11 22:36:32'),
(90, 73, 28, '2025-05-11 22:37:37', 1, 'pending', NULL, '2025-05-11 22:37:37', '2025-05-11 22:37:37'),
(91, 73, 28, '2025-05-11 22:37:50', 1, 'pending', NULL, '2025-05-11 22:37:50', '2025-05-11 22:37:50'),
(92, 73, 31, '2025-05-11 22:38:43', 1, 'pending', NULL, '2025-05-11 22:38:43', '2025-05-11 22:38:43'),
(93, 73, 32, '2025-05-11 22:38:58', 2, 'pending', NULL, '2025-05-11 22:38:58', '2025-05-11 22:38:58'),
(94, 73, 35, '2025-05-11 22:39:17', 1, 'pending', NULL, '2025-05-11 22:39:17', '2025-05-11 22:39:17'),
(95, 73, 34, '2025-05-11 22:39:40', 1, 'pending', NULL, '2025-05-11 22:39:40', '2025-05-11 22:39:40'),
(96, 73, 29, '2025-05-11 22:57:02', 1, 'pending', NULL, '2025-05-11 22:57:02', '2025-05-11 22:57:02'),
(97, 73, 30, '2025-05-11 22:57:17', 1, 'pending', NULL, '2025-05-11 22:57:17', '2025-05-11 22:57:17'),
(98, 73, 35, '2025-05-11 22:57:33', 1, 'pending', NULL, '2025-05-11 22:57:33', '2025-05-11 22:57:33'),
(99, 73, 35, '2025-05-11 22:57:49', 1, 'pending', NULL, '2025-05-11 22:57:49', '2025-05-11 22:57:49'),
(100, 73, 33, '2025-05-11 22:57:59', 1, 'pending', NULL, '2025-05-11 22:57:59', '2025-05-11 22:57:59'),
(101, 73, 31, '2025-05-11 22:58:10', 1, 'pending', NULL, '2025-05-11 22:58:10', '2025-05-11 22:58:10'),
(102, 73, 32, '2025-05-11 22:58:22', 1, 'pending', NULL, '2025-05-11 22:58:22', '2025-05-11 22:58:22'),
(103, 73, 32, '2025-05-11 23:01:43', 1, 'pending', NULL, '2025-05-11 23:01:43', '2025-05-11 23:01:43'),
(104, 73, 29, '2025-05-11 23:03:32', 1, 'completed', NULL, '2025-05-11 23:03:14', '2025-05-11 23:03:32'),
(105, 73, 28, '2025-05-11 23:06:05', 1, 'pending', NULL, '2025-05-11 23:06:05', '2025-05-11 23:06:05'),
(106, 73, 28, '2025-05-11 23:06:17', 2, 'pending', NULL, '2025-05-11 23:06:17', '2025-05-11 23:06:17'),
(107, 73, 28, '2025-05-11 23:06:33', 3, 'pending', NULL, '2025-05-11 23:06:33', '2025-05-11 23:06:33'),
(108, 73, 28, '2025-05-11 23:08:18', 1, 'pending', NULL, '2025-05-11 23:08:18', '2025-05-11 23:08:18'),
(109, 73, 31, '2025-05-11 23:08:49', 4, 'pending', NULL, '2025-05-11 23:08:49', '2025-05-11 23:08:49'),
(110, 73, 31, '2025-05-11 23:09:04', 5, 'pending', NULL, '2025-05-11 23:09:04', '2025-05-11 23:09:04'),
(111, 73, 34, '2025-05-11 23:10:38', 1, 'pending', NULL, '2025-05-11 23:10:38', '2025-05-11 23:10:38'),
(112, 73, 31, '2025-05-11 23:21:26', 1, 'pending', NULL, '2025-05-11 23:21:26', '2025-05-11 23:21:26'),
(113, 57, 28, '2025-05-11 23:21:36', 3, 'pending', NULL, '2025-05-11 23:21:36', '2025-05-11 23:21:36'),
(114, 73, 32, '2025-05-11 23:21:39', 1, 'pending', NULL, '2025-05-11 23:21:39', '2025-05-11 23:21:39'),
(115, 73, 30, '2025-05-11 23:21:51', 1, 'pending', NULL, '2025-05-11 23:21:51', '2025-05-11 23:21:51'),
(116, 57, 27, '2025-06-10 14:03:32', 3, 'completed', NULL, '2025-06-10 14:03:07', '2025-06-10 14:03:32'),
(117, 57, 34, '2025-06-10 14:04:54', 1, 'completed', NULL, '2025-06-10 14:04:27', '2025-06-10 14:04:54'),
(118, 73, 29, '2025-06-10 21:06:46', 5, 'completed', NULL, '2025-06-10 21:06:01', '2025-06-10 21:06:46'),
(119, 58, 32, '2025-06-15 16:10:01', 4, 'completed', NULL, '2025-06-15 16:09:36', '2025-06-15 16:10:01'),
(120, 64, 28, '2025-06-25 08:41:57', 1, 'pending', NULL, '2025-06-25 08:41:57', '2025-06-25 08:41:57'),
(121, 73, 27, '2025-06-25 11:47:26', 4, 'completed', NULL, '2025-06-25 11:46:58', '2025-06-25 11:47:26'),
(122, 58, 27, '2025-06-25 11:58:08', 4, 'pending', NULL, '2025-06-25 11:58:08', '2025-06-25 11:58:08');

-- --------------------------------------------------------

--
-- بنية الجدول `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shopping_center_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `brands`
--

INSERT INTO `brands` (`id`, `name`, `shopping_center_id`, `created_at`, `updated_at`) VALUES
(9, 'H&M', 9, '2025-04-27 12:37:44', '2025-04-27 12:37:44'),
(10, 'Zara', 9, '2025-04-27 12:37:44', '2025-04-27 12:37:44'),
(11, 'Nike', 9, '2025-04-27 12:37:44', '2025-04-27 12:37:44'),
(12, 'Adidas', 9, '2025-04-27 12:37:44', '2025-04-27 12:37:44'),
(17, 'Apple', 11, '2025-04-27 12:48:37', '2025-04-27 12:48:37'),
(18, 'Gucci', 11, '2025-04-27 12:48:37', '2025-04-27 12:48:37'),
(19, 'IKEA', 11, '2025-04-27 12:48:37', '2025-04-27 12:48:37'),
(20, 'Mango', 11, '2025-04-27 12:48:37', '2025-04-27 12:48:37'),
(21, 'Starbucks', 12, '2025-04-27 12:58:17', '2025-04-27 12:58:17'),
(22, 'Bershka', 12, '2025-04-27 12:58:17', '2025-04-27 12:58:17'),
(23, 'IKEA', 12, '2025-04-27 12:58:17', '2025-04-27 12:58:17'),
(24, 'Zara', 12, '2025-04-27 12:58:17', '2025-04-27 12:58:17'),
(25, 'Victoria’s Secret', 13, '2025-04-27 13:03:58', '2025-04-27 13:03:58'),
(26, 'Michael Kors', 13, '2025-04-27 13:03:58', '2025-04-27 13:03:58'),
(27, 'Virgin Megastore', 13, '2025-04-27 13:03:58', '2025-04-27 13:03:58'),
(28, 'Adidas', 14, '2025-04-27 13:26:13', '2025-04-27 13:26:13'),
(29, 'Nike', 14, '2025-04-27 13:26:13', '2025-04-27 13:26:13'),
(30, 'Town Team', 14, '2025-04-27 13:26:13', '2025-04-27 13:26:13'),
(31, 'Zara', 15, '2025-04-27 13:38:27', '2025-04-27 13:38:27'),
(32, 'H&M', 15, '2025-04-27 13:38:27', '2025-04-27 13:38:27'),
(33, 'Samsung', 15, '2025-04-27 13:38:27', '2025-04-27 13:38:27'),
(34, 'KFC', 15, '2025-04-27 13:38:27', '2025-04-27 13:38:27'),
(35, 'Victoria’s Secret', 16, '2025-04-27 14:13:04', '2025-04-27 14:13:04'),
(36, 'H&M', 16, '2025-04-27 14:13:04', '2025-04-27 14:13:04'),
(37, 'VOX Cinemas', 16, '2025-04-27 14:13:04', '2025-04-27 14:13:04'),
(38, 'Starbucks', 16, '2025-04-27 14:13:04', '2025-04-27 14:13:04'),
(39, 'Gucci', 17, '2025-04-27 14:26:17', '2025-04-27 14:26:17'),
(40, 'Louis Vuitton', 17, '2025-04-27 14:26:17', '2025-04-27 14:26:17'),
(41, 'Hugo Boss', 17, '2025-04-27 14:26:17', '2025-04-27 14:26:17'),
(42, 'Cartier', 17, '2025-04-27 14:26:17', '2025-04-27 14:26:17'),
(43, 'Carrefour', 18, '2025-04-27 14:48:44', '2025-04-27 14:48:44'),
(44, 'H&M', 18, '2025-04-27 14:48:44', '2025-04-27 14:48:44'),
(45, 'Zara', 18, '2025-04-27 14:48:44', '2025-04-27 14:48:44'),
(46, 'Virgin Megastore', 18, '2025-04-27 14:48:44', '2025-04-27 14:48:44'),
(47, 'Carrefour', 19, '2025-04-27 15:07:40', '2025-04-27 15:07:40'),
(48, 'H&M', 19, '2025-04-27 15:07:40', '2025-04-27 15:07:40'),
(49, 'Nike', 19, '2025-04-27 15:07:40', '2025-04-27 15:07:40'),
(50, 'Tommy', 19, '2025-04-27 15:07:40', '2025-04-27 15:07:40');

-- --------------------------------------------------------

--
-- بنية الجدول `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_3fOKcype8KxlrfDg', 'a:1:{s:11:\"valid_until\";i:1746033702;}', 1749633522),
('laravel_cache_4GA9bJNc7yGVQ4ok', 'a:1:{s:11:\"valid_until\";i:1749589864;}', 1753189744),
('laravel_cache_bVuwm3bYAOL93JPS', 'a:1:{s:11:\"valid_until\";i:1746711543;}', 1750311543),
('laravel_cache_cPn9qqp7EZr0UgCI', 'a:1:{s:11:\"valid_until\";i:1746032899;}', 1749632839),
('laravel_cache_da9jitnBrzNJZ963', 'a:1:{s:11:\"valid_until\";i:1746034872;}', 1749634872),
('laravel_cache_Ek3RLgkv4nm5g478', 'a:1:{s:11:\"valid_until\";i:1745430946;}', 1749016606),
('laravel_cache_EkrgVWOfbOd13FP8', 'a:1:{s:11:\"valid_until\";i:1746711594;}', 1750311654),
('laravel_cache_iohwoSgPiVs9IEHY', 'a:1:{s:11:\"valid_until\";i:1746034561;}', 1749634081),
('laravel_cache_Iz8n7SG4QsJY6gjh', 'a:1:{s:11:\"valid_until\";i:1746033971;}', 1749633971),
('laravel_cache_l71jtC9AGQhsHP6f', 'a:1:{s:11:\"valid_until\";i:1746031173;}', 1749631053),
('laravel_cache_meR8DoeWytlm903P', 'a:1:{s:11:\"valid_until\";i:1746817349;}', 1750416689),
('laravel_cache_MsEh55dWGVCcMpoO', 'a:1:{s:11:\"valid_until\";i:1745051586;}', 1748651586),
('laravel_cache_nb520oxpq83I1Vce', 'a:1:{s:11:\"valid_until\";i:1747001299;}', 1750601239),
('laravel_cache_NIMHaUSQJNrR6eHn', 'a:1:{s:11:\"valid_until\";i:1745880888;}', 1749480828),
('laravel_cache_oUddGDTqdibnCbW6', 'a:1:{s:11:\"valid_until\";i:1746971327;}', 1750570127),
('laravel_cache_P2XjRH85qWoZGEfy', 'a:1:{s:11:\"valid_until\";i:1750852161;}', 1754452041),
('laravel_cache_QI9fATKidwyHkwEL', 'a:1:{s:11:\"valid_until\";i:1745828186;}', 1749419966),
('laravel_cache_R85R3zM5TPedingk', 'a:1:{s:11:\"valid_until\";i:1746994594;}', 1750594174),
('laravel_cache_RaGWARTuvP6haMtg', 'a:1:{s:11:\"valid_until\";i:1746033411;}', 1749633291),
('laravel_cache_rdHcpuV3tccMvKQg', 'a:1:{s:11:\"valid_until\";i:1746023262;}', 1749618642),
('laravel_cache_rJNCgheCaJ9rFGU1', 'a:1:{s:11:\"valid_until\";i:1745053887;}', 1748653947),
('laravel_cache_W8F34Xdhhjm31q6K', 'a:1:{s:11:\"valid_until\";i:1746716415;}', 1750313115),
('laravel_cache_xfxHm30tgpDyKXUN', 'a:1:{s:11:\"valid_until\";i:1746710130;}', 1750308570),
('laravel_cache_XQY3CfDLjQyQP2Wg', 'a:1:{s:11:\"valid_until\";i:1746552618;}', 1750152318),
('laravel_cache_XYjhBxFcknEYEkyQ', 'a:1:{s:11:\"valid_until\";i:1745054084;}', 1748654144),
('laravel_cache_ynQvSxiajCXOc5sJ', 'a:1:{s:11:\"valid_until\";i:1746995229;}', 1750592769);

-- --------------------------------------------------------

--
-- بنية الجدول `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `excludes`
--

CREATE TABLE `excludes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `point` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `excludes`
--

INSERT INTO `excludes` (`id`, `trip_id`, `point`, `created_at`, `updated_at`) VALUES
(55, 27, 'Drones', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(56, 27, 'Flash photography inside temples', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(57, 27, 'Unaccompanied minors (without an adult guardian)', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(58, 27, 'Large luggage inside the cruise', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(59, 27, 'Smoking in vehicles', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(60, 27, 'Pets', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(61, 28, 'Alcohol consumption in or near religious sites (including during hiking)', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(62, 28, 'Unauthorized off-road driving (without guide)', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(63, 28, 'Drones (without special permission)', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(64, 28, 'Smoking in non-designated areas (especially in desert camps)', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(65, 28, 'Smoking in vehicles', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(66, 28, 'Loud or disruptive behavior at night', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(67, 29, 'Large video equipment without permission from the resort', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(68, 29, 'Loud music or disruptive behavior in natural settings', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(69, 29, 'Drones (without special permission)', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(70, 29, 'Alcohol consumption on boats (unless served by the cruise)', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(71, 29, 'Flash photography underwater (to avoid disturbing marine life)', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(72, 29, 'Smoking in non-designated areas (especially near the beach and in the pool area)', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(73, 30, 'Flashlights or heavy lighting equipment for photography', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(74, 30, 'Disruptive behavior or loud noises inside museums', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(75, 30, 'Unauthorized or unlicensed tour guides', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(76, 30, 'Alcohol at religious sites (including in the Citadel)', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(77, 30, 'Littering at historical sites', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(78, 30, 'Large luggage inside museums and historical sites', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(79, 30, 'Smoking inside vehicles and monuments', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(80, 30, 'Drones (especially near the Citadel and Alexandria\'s coastline)', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(81, 31, 'Unattended minors during the camel ride (must be accompanied by an adult)', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(82, 31, 'Tripods and large cameras inside museums (without prior approval)', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(83, 31, 'Unauthorized or unlicensed tour guides', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(84, 31, 'Alcohol in sacred sites (including mosques and temples)', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(85, 31, 'Littering at historical sites', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(86, 31, 'Large luggage inside museums and historical sites', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(87, 31, 'Smoking inside vehicles or at monuments', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(88, 31, 'Drones at archaeological sites', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(89, 32, 'Alcohol consumption during camping', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(90, 32, 'Drones without permits', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(91, 32, 'Loud noises at night', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(92, 32, 'Littering in the desert', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(93, 32, 'Open fires outside designated areas', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(94, 32, 'Smoking near tents or inside vehicles', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(95, 33, 'Alcohol consumption during camping', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(96, 33, 'Drones without permits', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(97, 33, 'Loud noises at night', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(98, 33, 'Littering in the desert', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(99, 33, 'Open fires outside designated areas', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(100, 33, 'Smoking near tents or inside vehicles', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(101, 34, 'Littering beaches or historical sites', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(102, 34, 'Swimming in restricted area', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(103, 34, 'Flash photography inside temples', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(104, 34, 'Drone flying without permits', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(105, 34, 'Touching historical artifacts', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(106, 34, 'Smoking near tents or inside vehicles', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(107, 35, 'Climbing monuments', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(108, 35, 'Flash photography inside museums', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(109, 35, 'Dangerous swimming outside permitted zones', '2025-04-27 13:22:12', '2025-04-27 13:22:12');

-- --------------------------------------------------------

--
-- بنية الجدول `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED NOT NULL,
  `facility_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `facilities`
--

INSERT INTO `facilities` (`id`, `hotel_id`, `facility_name`) VALUES
(11, 13, 'Spa and Wellness Center'),
(12, 13, '3 Swimming Pool'),
(13, 13, 'Fitness Center'),
(14, 13, 'Fine Dining Restaurants'),
(15, 13, 'Business Meeting Rooms'),
(16, 13, 'Free WiFi'),
(17, 14, 'Spa and wellness centre'),
(18, 14, '2 Swimming Pool'),
(19, 14, 'Airport shuttle'),
(20, 14, '5 restaurants'),
(21, 14, 'Family rooms'),
(22, 14, 'Free WiFi'),
(23, 15, 'Private Beach Area'),
(24, 15, 'Kids Club'),
(25, 15, 'Diving and Snorkeling Center'),
(26, 15, 'Outdoor Pools'),
(27, 15, 'Tennis Court'),
(28, 15, 'Fitness centre'),
(29, 16, 'Spa and wellness centre'),
(30, 16, 'Free WiFi'),
(31, 16, '14 swimming pools'),
(32, 16, 'Free on-site parking'),
(33, 16, '13 restaurants'),
(34, 16, 'Superb breakfast'),
(35, 17, 'Spa and wellness centre'),
(36, 17, 'Free WiFi'),
(37, 17, '2 swimming pools'),
(38, 17, 'Private parking'),
(39, 17, '3 restaurants'),
(40, 17, 'Exceptional breakfast'),
(41, 18, 'Spa and wellness centre'),
(42, 18, 'Bar'),
(43, 18, '5 restaurants'),
(44, 18, 'Private parking'),
(45, 18, '5 restaurants'),
(46, 18, 'Fitness centre'),
(47, 19, 'Spa and wellness centre'),
(48, 19, 'Private beach area'),
(49, 19, '3 swimming pools'),
(50, 19, 'Airport shuttle'),
(51, 19, '4 restaurants'),
(52, 19, 'Bar'),
(53, 20, 'Air conditioning'),
(54, 20, 'BBQ facilities'),
(55, 20, 'Outdoor swimming pool'),
(56, 20, 'Superb breakfast'),
(57, 20, 'Restaurant'),
(58, 20, 'Free WiFi'),
(59, 21, 'Spa and wellness centre'),
(60, 21, 'Airport shuttle'),
(61, 21, '7 swimming pools'),
(62, 21, 'Superb breakfast'),
(63, 21, '3 restaurants'),
(64, 21, 'Non-smoking rooms'),
(65, 22, 'Spa and wellness centre'),
(66, 22, 'Airport shuttle'),
(67, 22, 'Outdoor swimming pool'),
(68, 22, 'Sea view'),
(69, 22, '7 restaurants (6 open)'),
(70, 22, 'Good breakfast');

-- --------------------------------------------------------

--
-- بنية الجدول `facilities_airports`
--

CREATE TABLE `facilities_airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airport_id` bigint(20) UNSIGNED NOT NULL,
  `facility_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `facilities_airports`
--

INSERT INTO `facilities_airports` (`id`, `airport_id`, `facility_name`) VALUES
(50, 38, 'Modern terminals'),
(51, 38, 'Free Wi-Fi'),
(52, 38, 'Shops & restaurants'),
(53, 38, 'ATMs & currency exchange'),
(54, 38, 'Events'),
(55, 38, 'media center'),
(56, 38, 'car parking'),
(57, 38, 'Auto train'),
(58, 38, 'Hotels'),
(59, 38, 'move from/to airport'),
(60, 38, 'medical facilities'),
(61, 39, 'Modern terminals'),
(62, 39, 'Free Wi-Fi'),
(63, 39, 'Shops & restaurants'),
(64, 39, 'ATMs & currency exchange'),
(65, 39, 'car parking'),
(66, 39, 'move from/to airport'),
(67, 39, 'medical facilities'),
(68, 40, 'Modern terminals'),
(69, 40, 'Free Wi-Fi'),
(70, 40, 'Shops & restaurants'),
(71, 40, 'ATMs & currency exchange'),
(72, 40, 'car parking'),
(73, 40, 'move from/to airport'),
(74, 40, 'medical facilities'),
(75, 41, 'Modern terminals'),
(76, 41, 'Free Wi-Fi'),
(77, 41, 'Shops & restaurants'),
(78, 41, 'ATMs & currency exchange'),
(79, 41, 'car parking'),
(80, 41, 'move from/to airport'),
(81, 41, 'medical facilities'),
(82, 42, 'Modern terminals'),
(83, 42, 'Free Wi-Fi'),
(84, 42, 'Shops & restaurants'),
(85, 42, 'ATMs & currency exchange'),
(86, 42, 'car parking'),
(87, 42, 'move from/to airport'),
(88, 42, 'medical facilities'),
(89, 43, 'Modern terminals'),
(90, 43, 'Free Wi-Fi'),
(91, 43, 'Shops & restaurants'),
(92, 43, 'ATMs & currency exchange'),
(93, 43, 'car parking'),
(94, 43, 'move from/to airport'),
(95, 43, 'medical facilities'),
(96, 44, 'Modern terminals'),
(97, 44, 'Free Wi-Fi'),
(98, 44, 'Shops & restaurants'),
(99, 44, 'ATMs & currency exchange'),
(100, 44, 'car parking'),
(101, 44, 'move from/to airport'),
(102, 44, 'medical facilities'),
(103, 45, 'Modern terminals'),
(104, 45, 'Free Wi-Fi'),
(105, 45, 'Shops & restaurants'),
(106, 45, 'ATMs & currency exchange'),
(107, 45, 'car parking'),
(108, 45, 'move from/to airport'),
(109, 45, 'medical facilities'),
(110, 46, 'Modern terminals'),
(111, 46, 'Free Wi-Fi'),
(112, 46, 'Shops & restaurants'),
(113, 46, 'ATMs & currency exchange'),
(114, 46, 'car parking'),
(115, 46, 'move from/to airport'),
(116, 46, 'medical facilities'),
(124, 48, 'Modern terminals'),
(125, 48, 'Free Wi-Fi'),
(126, 48, 'Shops & restaurants'),
(127, 48, 'ATMs & currency exchange'),
(128, 48, 'car parking'),
(129, 48, 'move from/to airport'),
(130, 48, 'medical facilities'),
(131, 49, 'Modern terminals'),
(132, 49, 'Free Wi-Fi'),
(133, 49, 'Shops & restaurants'),
(134, 49, 'ATMs & currency exchange'),
(135, 49, 'car parking'),
(136, 49, 'move from/to airport'),
(137, 49, 'medical facilities'),
(138, 50, 'Modern terminals'),
(139, 50, 'Free Wi-Fi'),
(140, 50, 'Shops & restaurants'),
(141, 50, 'ATMs & currency exchange'),
(142, 50, 'car parking'),
(143, 50, 'move from/to airport'),
(144, 50, 'medical facilities'),
(145, 51, 'Modern terminals'),
(146, 51, 'Free Wi-Fi'),
(147, 51, 'Shops & restaurants'),
(148, 51, 'ATMs & currency exchange'),
(149, 51, 'car parking'),
(150, 51, 'move from/to airport'),
(151, 51, 'medical facilities');

-- --------------------------------------------------------

--
-- بنية الجدول `facilities_restaurants`
--

CREATE TABLE `facilities_restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `facility_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `facilities_restaurants`
--

INSERT INTO `facilities_restaurants` (`id`, `restaurant_id`, `facility_name`) VALUES
(67, 31, 'valet_parking'),
(68, 31, 'free_wifi'),
(69, 31, 'outdoor_seating'),
(70, 31, 'private_dining_rooms'),
(71, 31, 'waterfront_view'),
(77, 33, 'valet_parking'),
(78, 33, 'free_wifi'),
(79, 33, 'outdoor_seating'),
(80, 33, 'family_friendly'),
(81, 33, 'reservations_available'),
(82, 34, 'valet_parking'),
(83, 34, 'free_wifi'),
(84, 34, 'outdoor_seating'),
(85, 34, 'family_friendly'),
(86, 34, 'reservations_available'),
(87, 35, 'valet_parking'),
(88, 35, 'free_wifi'),
(89, 35, 'outdoor_seating'),
(90, 35, 'family_friendly'),
(91, 35, 'reservations_available'),
(92, 36, 'valet_parking'),
(93, 36, 'free_wifi'),
(94, 36, 'outdoor_seating'),
(95, 36, 'family_friendly'),
(96, 36, 'reservations_available'),
(102, 38, 'valet_parking'),
(103, 38, 'free_wifi'),
(104, 38, 'fast_service'),
(105, 38, 'indoor_seating'),
(106, 38, 'takeaway_available'),
(107, 39, 'drive_thru'),
(108, 39, 'free_wifi'),
(109, 39, 'delivery_available'),
(110, 39, 'kids_play_area'),
(111, 39, 'takeaway_available'),
(112, 40, 'drive_thru'),
(113, 40, 'free_wifi'),
(114, 40, 'delivery_available'),
(115, 40, 'kids_play_area'),
(116, 40, 'takeaway_available'),
(117, 41, 'drive_thru'),
(118, 41, 'free_wifi'),
(119, 41, 'delivery_available'),
(120, 41, 'kids_play_area'),
(121, 41, 'takeaway_available'),
(122, 42, 'drive_thru'),
(123, 42, 'free_wifi'),
(124, 42, 'delivery_available'),
(125, 42, 'kids_play_area'),
(126, 42, 'takeaway_available'),
(127, 43, 'drive_thru'),
(128, 43, 'free_wifi'),
(129, 43, 'delivery_available'),
(130, 43, 'kids_play_area'),
(131, 43, 'takeaway_available'),
(132, 44, 'family_friendly'),
(133, 44, 'delivery_available'),
(134, 44, 'takeaway_available'),
(135, 44, 'indoor_seating'),
(136, 45, 'valet_parking'),
(137, 45, 'reservation_required'),
(138, 45, 'outdoor_seating'),
(139, 45, 'indoor_seating');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `favorite_list`
--

CREATE TABLE `favorite_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `favorite_list`
--

INSERT INTO `favorite_list` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(204, 66, 154, '2025-04-28 22:52:35', '2025-04-28 22:52:35'),
(205, 66, 153, '2025-04-28 22:52:36', '2025-04-28 22:52:36'),
(210, 58, 163, '2025-05-06 17:30:01', '2025-05-06 17:30:01'),
(211, 58, 162, '2025-05-06 17:30:03', '2025-05-06 17:30:03'),
(212, 58, 161, '2025-05-06 17:30:04', '2025-05-06 17:30:04'),
(213, 58, 173, '2025-05-06 17:30:07', '2025-05-06 17:30:07'),
(214, 58, 175, '2025-05-06 17:30:09', '2025-05-06 17:30:09'),
(215, 58, 171, '2025-05-06 17:30:11', '2025-05-06 17:30:11'),
(218, 73, 153, '2025-05-08 14:04:39', '2025-05-08 14:04:39'),
(226, 73, 203, '2025-05-09 19:04:21', '2025-05-09 19:04:21'),
(227, 73, 128, '2025-05-09 19:04:25', '2025-05-09 19:04:25'),
(228, 58, 154, '2025-05-11 13:02:13', '2025-05-11 13:02:13'),
(231, 58, 155, '2025-06-15 16:09:13', '2025-06-15 16:09:13'),
(232, 77, 227, '2025-06-22 10:14:39', '2025-06-22 10:14:39');

-- --------------------------------------------------------

--
-- بنية الجدول `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `booking_link` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `hotels`
--

INSERT INTO `hotels` (`id`, `Item_ID`, `website_link`, `contact_number`, `booking_link`, `email`, `level`) VALUES
(13, 227, 'https://www.fourseasons.com/caironp', '+20 2 27917000', 'https://www.booking.com/Share-jTqlpIO', 'reservations.cai@fourseasons.com', 5),
(14, 228, 'https://hrewards.com/en/steigenberger-hotels-resorts', '+20 95 2366999', 'https://www.booking.com/Share-h9lwGl', 'info@steigenbergernilepalace.com', 5),
(15, 229, 'https://www.jazhotels.com/?currency=EGP&travellers=25-1_25-2&travellersRoom=1-2&dd=2025-05-31&rd=2025-06-04', '+20 65 3590020', 'https://www.booking.com/Share-iiE6cQ', 'reservations@jazmakadioasis.com', 4),
(16, 230, 'https://allinclusive-collection.com/en', '+20 69 3710333', 'https://www.booking.com/Share-LdNmKA', 'reservation@rixos.com', 5),
(17, 231, 'https://all.accor.com/a/en.html', '+20 97 2316000', 'https://www.booking.com/Share-flLfxy', 'h1666@sofitel.com', 5),
(18, 232, 'https://tolipgroup.com/tolip-hotel-royal-alexandria/', '+20 3 5465600', 'https://www.booking.com/Share-flLfxy', 'reservation@tolipalexandria.com', 5),
(19, 233, 'https://baronhotels.com/baron-resort-sharm-el-sheikh/', '+20 69 3670170', 'https://www.booking.com/Share-TaoAXbr', 'reservation@baronhotels.com', 5),
(20, 234, 'https://www.jazhotels.com/hoteldetail/14-egypt-luxor-iberotel-luxor?dd=2025-05-31&rd=2025-06-04&currency=EGP&travellers=25-1_25-2&travellersRoom=1-2&utm_source=google&utm_medium=meta&utm_campaign=derbysoft&dsclid=69632782623588352', '+20 95 2374851', 'https://www.booking.com/Share-yyOhEZ', 'reservation@iberotel-luxor.com', 4),
(21, 235, 'https://www.cleopatraluxuryhotels.com/hotel/cleopatra-luxury-resort-makadi-bay/', '+20 65 3590440', 'https://www.booking.com/Share-31fwM5', 'info@cleopatraluxurymakadi.com', 5),
(22, 236, 'https://www.hilton.com/en/book/reservation/rooms/?ctyhocn=ALYAC&arrivalDate=2025-05-31&departureDate=2025-06-04&room1NumAdults=2&displayCurrency=EGP', '+20 3 5818000', 'https://www.booking.com/Share-3vl9aEW', 'ALHCH_GM@hilton.com', 5);

-- --------------------------------------------------------

--
-- بنية الجدول `items`
--

CREATE TABLE `items` (
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `items`
--

INSERT INTO `items` (`Item_ID`, `name`, `description`, `city`, `location`, `image_path`, `created_at`, `updated_at`) VALUES
(126, 'Cairo International Airport', 'Cairo International Airport is the main international gateway to Egypt and one of the busiest airports in Africa. It serves as a major hub for EgyptAir, Nile Air, and other international carriers. Its strategic position connects Africa, Asia, and Europe, making it an essential stop for both regional and long-haul flights.', 'Cairo', 'https://maps.app.goo.gl/BXodM7f1DK2YFp2aA', 'https://pharaohslegacy.cloud/image/Airport/17455995844155.jpg', '2025-04-25 16:46:24', '2025-04-25 16:46:24'),
(127, 'Sphinx International Airport', 'Sphinx International Airport is a modern, state-of-the-art airport offering seamless travel experiences. It serves as a gateway to the historic wonders of Egypt, with convenient access to key destinations like the Pyramids of Giza.', 'Giza', 'https://maps.app.goo.gl/MRaZMqq2tUxcC5EF9', 'https://pharaohslegacy.cloud/image/Airport/17456013301100.jpg', '2025-04-25 17:15:30', '2025-04-25 17:15:30'),
(128, 'Borg El Arab International Airport', 'Borg El Arab International Airport is a modern, well-equipped airport serving Egypt\'s northern region. It offers seamless travel with easy access to Alexandria and the Mediterranean coast, providing both comfort and efficiency for passengers.', 'Alexandria', 'https://maps.app.goo.gl/uzdz56JRX5xoBBx4A', 'https://pharaohslegacy.cloud/image/Airport/17456025081656.jpg', '2025-04-25 17:35:08', '2025-04-25 17:35:08'),
(129, 'Sharm El Sheikh International Airport', 'Sharm El Sheikh International Airport is an international airport located in Sharm El Sheikh, Egypt. It is the third-busiest airport in Egypt after Cairo International Airport and Hurghada International Airport and one of the busiest airports in the Middle East.', 'Sharm El Sheikh', 'https://maps.app.goo.gl/cip8D23HPAg71QS16', 'https://pharaohslegacy.cloud/image/Airport/17456038014717.jpg', '2025-04-25 17:56:41', '2025-04-25 17:56:41'),
(130, 'Taba International Airport', 'Taba International Airport is an international airport located on the Sinai Plateau, with an elevation of 2,470 ft, and serves Taba, Egypt. It has only one gate from which mainly charter flights operate', 'Taba', 'https://maps.app.goo.gl/yVdSqX9XwbA3yRv16', 'https://pharaohslegacy.cloud/image/Airport/17456054458189.jpg', '2025-04-25 18:24:05', '2025-04-25 18:24:05'),
(131, 'Hurghada International Airport', 'Hurghada International Airport is the international airport of Hurghada in Egypt. It is located inland, 5 km southwest of El Dahar, the city centre of Hurghada', 'Hurghada', 'https://maps.app.goo.gl/VyH83wbsPQn2uMtm9', 'https://pharaohslegacy.cloud/image/Airport/17456066316376.jpg', '2025-04-25 18:43:51', '2025-04-25 18:43:51'),
(132, 'Assiut International Airport', 'Asyut International Airport serves Egypt’s Upper Egypt region, providing convenient access for travelers to the historical city of Asyut and surrounding areas. It offers efficient services and a smooth travel experience.', 'Asyut', 'https://maps.app.goo.gl/TX8SYvgdU5AJHTZv5', 'https://pharaohslegacy.cloud/image/Airport/17456074576017.jpg', '2025-04-25 18:57:37', '2025-04-25 18:57:37'),
(133, 'Luxor International Airport', 'Luxor International Airport is the main airport serving the city of Luxor, Egypt. It is located 6 km east of the city. Many charter airlines use the airport, as it is a popular tourist destination for those visiting the River Nile and the Valley of the Kings', 'Luxor', 'https://maps.app.goo.gl/wybNvcUmbqQpngCd6', 'https://pharaohslegacy.cloud/image/Airport/17456083454995.jpg', '2025-04-25 19:12:25', '2025-04-25 19:12:25'),
(134, 'Aswan International Airport', 'Aswan International Airport is a key gateway to Egypt’s southernmost city, offering easy access to the breathtaking temples, Nile cruises, and historical sites in and around Aswan. The airport ensures a smooth and comfortable travel experience.', 'Aswan', 'https://maps.app.goo.gl/BWBYgdjYZvZZZ7z77', 'https://pharaohslegacy.cloud/image/Airport/17456093979287.jpg', '2025-04-25 19:29:57', '2025-04-25 19:29:57'),
(136, 'Sohag International Airport', 'Sohag International Airport serves Egypt\'s Upper Egypt region, providing easy access to the historic city of Sohag and nearby attractions. The airport offers modern facilities for a convenient travel experience.', 'Sohag', 'https://maps.app.goo.gl/XUPqj7Jguc2BhLxt6', 'https://pharaohslegacy.cloud/image/Airport/17456111055876.jpg', '2025-04-25 19:58:25', '2025-04-25 19:58:25'),
(137, 'Capital International Airport', 'Capital International Airport is the primary international airport serving the new capital of Egypt, which is yet to be given a name. It is located approximately 45 km east of Cairo and was built at the same time as the Sphinx International Airport, west of Cairo.', 'Cairo', 'https://maps.app.goo.gl/EMUMv7vEYWGjV7Sw8', 'https://pharaohslegacy.cloud/image/Airport/17456139385936.jpg', '2025-04-25 20:45:38', '2025-04-25 20:45:38'),
(140, 'Marsa Alam International Airport', 'Marsa Alam International Airport is a modern airport located near the Red Sea, serving the popular resort town of Marsa Alam. It provides easy access to some of Egypt\'s best diving spots, beaches, and coastal resorts.', 'Marsa Alam', 'https://maps.app.goo.gl/37oiwiCQR664gKrd9', 'https://pharaohslegacy.cloud/image/Airport/17456149443540.jpg', '2025-04-25 21:02:24', '2025-04-25 21:02:24'),
(142, 'Marsa Matruh International Airport', 'Marsa Matruh International Airport (IATA: MUH, ICAO: HEMM) is an international airport serving the coastal city of Marsa Matruh in Egypt. The airport is approximately 2 km southwest of the city center. It features a 3,000-meter-long main runway and a 3,000-meter-long taxiway, both equipped with night lighting.', 'Marsa Matruh', 'https://maps.app.goo.gl/93RhhhSSzhjHsrQL9', 'https://pharaohslegacy.cloud/image/Airport/17456171892613.jpg', '2025-04-25 21:39:49', '2025-04-25 21:39:49'),
(153, 'Pyramids of Giza', 'The Pyramids of Giza, one of the Seven Wonders of the Ancient World, are ancient pyramid structures built during the Fourth Dynasty of Egypt\'s Old Kingdom. They include the Great Pyramid of Khufu, the Pyramid of Khafre, and the Pyramid of Menkaure, alongside the iconic Sphinx.', 'Giza', 'https://maps.app.goo.gl/qFtkvZZqWZh3kfac7', 'https://pharaohslegacy.cloud/image/Landmark/17456561426791.jpg', '2025-04-26 08:29:02', '2025-04-26 08:29:02'),
(154, 'Karnak Temple', 'The Karnak Temple is one of the greatest and most famous ancient Egyptian temples, located in the city of Luxor on the eastern bank of the Nile River. It is considered the largest religious site in Egypt and was built over several centuries, primarily during the New Kingdom period. The temple is dedicated to the worship of the god Amun and stands as a monumental symbol of the ancient Egyptian civilization.', 'Luxor', 'https://maps.app.goo.gl/AeNpfkGKXTr4sxRD8', 'https://pharaohslegacy.cloud/image/Landmark/17456568932794.jpg', '2025-04-26 08:41:33', '2025-04-26 08:41:33'),
(155, 'Abu Simbel Temple', 'Abu Simbel Temple is one of the most famous and impressive ancient Egyptian temples, located in southern Egypt, near the city of Aswan on the western bank of the Nile River. The temple complex was constructed during the reign of Pharaoh Ramses II (the 19th Dynasty) in the 13th century BCE and is regarded as one of the greatest achievements in ancient Egyptian architecture.', 'Aswan', 'https://maps.app.goo.gl/yLtK3Td84F7WvARE7', 'https://pharaohslegacy.cloud/image/Landmark/17456574617087.jpg', '2025-04-26 08:51:01', '2025-04-26 08:51:01'),
(156, 'Luxor Temple', 'Luxor Temple is one of the most famous and important ancient Egyptian temples, located in Luxor, on the eastern bank of the Nile River. It is considered one of the greatest temples ever built in Egypt, and it stands out due to its grand architecture and its proximity to other famous temples, such as Karnak Temple. The two temples are connected by the Avenue of Sphinxes, which was used for religious processions.', 'Luxor', 'https://maps.app.goo.gl/aqbfWDkwkV4KgQu69', 'https://pharaohslegacy.cloud/image/Landmark/17456581205303.jpg', '2025-04-26 09:02:00', '2025-04-26 09:02:00'),
(157, 'Temple of Hatshepsut', 'The Temple of Hatshepsut is one of the most famous and impressive ancient Egyptian temples, located in Deir el-Bahari on the west bank of the Nile near Luxor. It was built during the reign of Queen Hatshepsut (18th Dynasty) in the 15th century BCE, and it is considered one of the finest examples of ancient Egyptian architecture. The temple stands out for its unique design and historical significance.', 'Luxor', 'https://maps.app.goo.gl/q4ZuapqZM9t6Up4h9', 'https://pharaohslegacy.cloud/image/Landmark/17456593139597.jpg', '2025-04-26 09:21:53', '2025-04-26 09:21:53'),
(158, 'Grand Egyptian Museum', 'The Grand Egyptian Museum (GEM), also known as Giza Museum, is an upcoming landmark museum located near the Pyramids of Giza, just outside Cairo. It is set to be one of the largest archaeological museums in the world and is designed to house the most extensive collection of ancient Egyptian artifacts ever assembled. The museum aims to present Egypt\'s rich cultural heritage to the world in a modern, state-of-the-art facility.', 'Giza', 'https://maps.app.goo.gl/WwfgQhkPpdfReGi5A', 'https://pharaohslegacy.cloud/image/Landmark/17456602501754.jpg', '2025-04-26 09:37:30', '2025-04-26 09:37:30'),
(159, 'Dendera Temple of Hathor', 'The Temple of Dendera is one of the best-preserved temples from ancient Egypt, located in the Dendera region, about 2.5 kilometers from the Nile River in Upper Egypt. The temple complex is dedicated to the goddess Hathor, the Egyptian goddess of love, music, joy, dance, fertility, and motherhood. It is part of the Ptolemaic period but was constructed and modified over several centuries, with the main temple building dating from the Late Period and the Ptolemaic Dynasty (around 100 BCE).', 'Qena', 'https://maps.app.goo.gl/VB2U3qoZ3aU23RCL7', 'https://pharaohslegacy.cloud/image/Landmark/17456611491973.jpg', '2025-04-26 09:52:29', '2025-04-26 09:52:29'),
(161, 'Al-Azhar Mosque', 'Al-Azhar Mosque, located in Cairo, Egypt, is one of the oldest and most famous Islamic institutions in the world. Founded in 970 AD, it serves as both a mosque and a prestigious university. Known for its beautiful architecture, the mosque features intricate designs, stunning courtyards, and towering minarets that dominate the Cairo skyline. Al-Azhar has been a center of Islamic learning for centuries, shaping religious thought and attracting scholars from around the world. Today, it remains a key symbol of Islamic culture and education.', 'Cairo', 'https://maps.app.goo.gl/yeK4tCSb5AM1nnWU8', 'https://pharaohslegacy.cloud/image/Landmark/17456632081696.jpg', '2025-04-26 10:26:48', '2025-04-26 10:26:48'),
(162, 'Cairo Tower', 'The Cairo Tower is a prominent landmark in Cairo, Egypt. Standing at 187 meters, it was completed in 1961 and was the tallest structure in Africa until 1971. Located on Gezira Island in the Nile River, the tower offers stunning panoramic views of the city and its surroundings.\r\n\r\nThe tower\'s design is inspired by the ancient Egyptian lotus flower, with a unique cylindrical shape and a lattice pattern on its exterior. At the top, there is an observation deck and a revolving restaurant where visitors can enjoy meals while taking in the breathtaking views of Cairo, including landmarks like the Pyramids of Giza and the Nile River.\r\n\r\nToday, the Cairo Tower remains one of Egypt\'s most iconic modern structures, attracting both locals and tourists.', 'Cairo', 'https://maps.app.goo.gl/9z5A2xpUb77BaTht5', 'https://pharaohslegacy.cloud/image/Landmark/17456639546998.jpg', '2025-04-26 10:39:14', '2025-04-26 10:39:14'),
(163, 'Citadel of Saladin', 'The Citadel of Saladin , also known as the Cairo Citadel, is a historic Islamic stronghold located on a hilltop in Cairo, Egypt. Built in the 12th century by the famous Muslim leader Salah ad-Din (Saladin), it was originally designed to protect the city from Crusader invasions. The citadel offers spectacular views of Cairo, including the nearby mosques and the Nile River.', 'Cairo', 'https://maps.app.goo.gl/UgwjzzKN49ccRWpz7', 'https://pharaohslegacy.cloud/image/Landmark/17456645895196.jpg', '2025-04-26 10:49:49', '2025-04-26 10:49:49'),
(164, 'Qaitbay Citadel', 'The Qaitbay Citadel is a historic fortress located in Alexandria, Egypt, on the Mediterranean Sea. Built in 1477 by Sultan Qaitbay, it stands on the site of the ancient Lighthouse of Alexandria, one of the Seven Wonders of the Ancient World.', 'Alexandria', 'https://maps.app.goo.gl/8GzMed3S2bfE8UhK9', 'https://pharaohslegacy.cloud/image/Landmark/17456650276248.jpg', '2025-04-26 10:57:07', '2025-04-26 10:57:07'),
(165, 'Library of Alexandria', 'The Library of Alexandria, or Bibliotheca Alexandrina, is a modern library in Alexandria, Egypt, built to revive the spirit of the ancient Library of Alexandria, one of the greatest libraries of the ancient world. Opened in 2002, the new library is an architectural marvel, featuring a unique, circular design with a slanted glass roof that resembles the sun rising over the sea.', 'Alexandria', 'https://maps.app.goo.gl/WDoYNXKZ9QU8pJb4A', 'https://pharaohslegacy.cloud/image/Landmark/17456658534011.jpg', '2025-04-26 11:10:53', '2025-04-26 11:10:53'),
(166, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456666308524.jpg', '2025-04-26 11:23:50', '2025-04-26 11:23:50'),
(167, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456666634834.jpg', '2025-04-26 11:24:23', '2025-04-26 11:24:23'),
(168, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456667564668.jpg', '2025-04-26 11:25:56', '2025-04-26 11:25:56'),
(169, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456667682341.jpg', '2025-04-26 11:26:08', '2025-04-26 11:26:08'),
(170, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456671736648.jpg', '2025-04-26 11:32:53', '2025-04-26 11:32:53'),
(171, 'The Hanging Church', 'The Hanging Church, located in Old Cairo, is one of Egypt\'s oldest Christian churches. Built above the Roman Babylon Fortress, it gets its name from its elevated position. The church is known for its beautiful Coptic architecture, wooden ceilings, and stunning icons. It remains an important place of worship for Coptic Christians and a significant historical site in Cairo.', 'Cairo', 'https://maps.app.goo.gl/fQgLfqATaJ8T7Gor8', 'https://pharaohslegacy.cloud/image/Landmark/17456672194698.jpg', '2025-04-26 11:33:39', '2025-04-26 11:33:39'),
(172, 'Saint Catherine\'s Monastery', 'Saint Catherine\'s Monastery, located at the foot of Mount Sinai in Egypt, is one of the oldest Christian monasteries in the world, dating back to the 6th century. It was built by Emperor Justinian I and is dedicated to Saint Catherine of Alexandria. The monastery is renowned for its historical and religious significance, as well as its stunning location amidst dramatic mountain landscapes.', 'Sinai', 'https://maps.app.goo.gl/xdv7sPSunVGiWiWG9', 'https://pharaohslegacy.cloud/image/Landmark/17456687985135.jpg', '2025-04-26 11:59:58', '2025-04-26 11:59:58'),
(173, 'Coptic Museum', 'The Coptic Museum is located in Cairo, Egypt, and is dedicated to preserving and showcasing the rich history and heritage of Egypt\'s Coptic Christian community. Established in 1908, the museum houses one of the most extensive collections of Coptic artifacts, spanning over 2,000 years of history.', 'Cairo', 'https://maps.app.goo.gl/CicPAiEKrqpHLfH46', 'https://pharaohslegacy.cloud/image/Landmark/17456693177793.jpg', '2025-04-26 12:08:37', '2025-04-26 12:08:37'),
(174, 'Monastery of Saint Anthony the great', 'The Monastery of Saint Anthony the Great is one of the oldest and most significant Coptic monasteries in Egypt, located in the Eastern Desert near the Red Sea. Founded in the 4th century AD, it is dedicated to Saint Anthony, considered the father of Christian monasticism. Saint Anthony spent much of his life in solitude in this desert region, seeking a life of asceticism and devotion.', 'Red Sea', 'https://maps.app.goo.gl/JoXqQtUGXeQVB9RP7', 'https://pharaohslegacy.cloud/image/Landmark/17456702107971.jpg', '2025-04-26 12:23:30', '2025-04-26 12:23:30'),
(175, 'St. George\'s church', 'St. George\'s Church is a prominent Coptic Orthodox church located in the heart of Cairo, Egypt. It is dedicated to Saint George, one of Christianity\'s most beloved martyrs. The church is known for its rich history, stunning architecture, and its location in the Coptic Cairo area, which is home to several important Christian sites.', 'Cairo', 'https://maps.app.goo.gl/fgJRzjQ8cqXFfDBb6', 'https://pharaohslegacy.cloud/image/Landmark/17456710991634.jpg', '2025-04-26 12:38:19', '2025-04-26 12:38:19'),
(176, 'Ramesseum Temple', 'The Ramesseum is a massive mortuary temple built by Pharaoh Ramesses II (also known as Ramesses the Great) in the early 13th century BCE. Located on the west bank of the Nile near Luxor, Egypt, the temple is dedicated to the memory of the pharaoh and the god Amun.', 'Luxor', 'https://maps.app.goo.gl/KF3tXLQ41CkmLnzNA', 'https://pharaohslegacy.cloud/image/Landmark/17456717068348.jpg', '2025-04-26 12:48:26', '2025-04-26 12:48:26'),
(177, 'Ibn Tulun Mosque', 'The Ibn Tulun Mosque is one of the oldest and most significant mosques in Cairo, Egypt. Built between 876 and 879 CE by the Abbasid governor Ahmad ibn Tulun, it is one of the few surviving examples of early Islamic architecture in the city.', 'Cairo', 'https://maps.app.goo.gl/wer7f5irsQUti2LX6', 'https://pharaohslegacy.cloud/image/Landmark/17456725158966.jpg', '2025-04-26 13:01:55', '2025-04-26 13:01:55'),
(178, 'Mosque-Madrasa of Sultan Hassan', 'The Mosque-Madrasa of Sultan Hassan is one of Cairo\'s most impressive and monumental Islamic structures. Built between 1356 and 1363 by Sultan Hassan, a Mamluk ruler, this mosque and madrasa (Islamic school) was intended to be a grand project to demonstrate his power and devotion to Islam.', 'Cairo', 'https://maps.app.goo.gl/hVkatr2LVS61YFj87', 'https://pharaohslegacy.cloud/image/Landmark/17456730725253.jpg', '2025-04-26 13:11:12', '2025-04-26 13:11:12'),
(179, 'Bab Zuwayla', 'Bab Zuwayla (باب زويلة) is one of the most famous and historic gates of Cairo, Egypt. Built in the 11th century during the Fatimid Caliphate, it was part of the city\'s defensive walls and is one of the few remaining gates from Cairo\'s medieval fortifications.', 'Cairo', 'https://maps.app.goo.gl/DsSwSxL2myne11Cz8', 'https://pharaohslegacy.cloud/image/Landmark/17456741894552.jpg', '2025-04-26 13:29:49', '2025-04-26 13:29:49'),
(180, 'Museum of Islamic Art', 'The Museum of Islamic Art in Cairo is a renowned cultural institution that houses one of the most impressive collections of Islamic artifacts in the world. Located in the heart of Cairo, it showcases a rich variety of Islamic art, including calligraphy, textiles, ceramics, woodwork, and metalwork from different periods of Islamic history. The museum\'s architecture is a beautiful example of Islamic style, and its exhibits offer a fascinating glimpse into the artistic and cultural achievements of the Islamic world.', 'Cairo', 'https://maps.app.goo.gl/zVVvjq3YiHK7fsn68', 'https://pharaohslegacy.cloud/image/Landmark/17456754421544.jpg', '2025-04-26 13:50:42', '2025-04-26 13:50:42'),
(181, 'Al Moez Ldin Allah Al Fatmi', 'Al-Muizz Street is one of the oldest and most famous streets in Cairo, Egypt. It is located in the heart of the Islamic Cairo district and is known for its rich historical significance. The street is lined with stunning Islamic architecture, including mosques, madrasas, and historical buildings, many of which date back to the Fatimid and Mamluk periods. Al-Muizz Street is a popular destination for tourists and locals alike, offering a glimpse into Cairo\'s vibrant history and culture. It is a pedestrian-friendly area, with bustling markets, street vendors, and a lively atmosphere.', 'Cairo', 'https://maps.app.goo.gl/uFrEuZ5nTm44GoPX9', 'https://pharaohslegacy.cloud/image/Landmark/17456759802945.jpg', '2025-04-26 13:59:40', '2025-04-26 13:59:40'),
(182, 'Valley of the Kings', 'The Valley of the Kings is an ancient burial site located on the west bank of the Nile, near Luxor, Egypt. It is home to the tombs of many Pharaohs and powerful nobles from the New Kingdom period (16th to 11th century BCE). The valley is surrounded by majestic desert mountains and contains over 60 tombs, including those of famous rulers like Tutankhamun, Ramses the Great, and Seti I. The tombs are cut deep into the rock and adorned with intricate paintings and hieroglyphs, depicting scenes from Egyptian mythology and the afterlife. The site remains one of Egypt\'s most significant archaeological wonders.', 'Luxor', 'https://maps.app.goo.gl/FFGP7mPbkRYTtKv68', 'https://pharaohslegacy.cloud/image/Landmark/17456806499251.jpg', '2025-04-26 15:17:29', '2025-04-26 15:17:29'),
(183, 'Valley of the Queens', 'The Valley of the Queens is a burial site in Egypt, located on the west bank of the Nile, near Luxor, just south of the Valley of the Kings. It served as the final resting place for the queens, royal children, and some high-ranking women of the New Kingdom period. The most famous tomb in the valley is that of Queen Nefertari, the beloved wife of Ramses II, known for its stunningly well-preserved paintings and decorations.', 'Luxor', 'https://maps.app.goo.gl/pbv7GM3oem7mg1ut7', 'https://pharaohslegacy.cloud/image/Landmark/17456811042395.jpg', '2025-04-26 15:25:04', '2025-04-26 15:25:04'),
(184, 'Edfu Temple', 'The Temple of Edfu is an ancient Egyptian temple dedicated to the god Horus, located on the west bank of the Nile River in Edfu, between Luxor and Aswan. It is one of the best-preserved temples in Egypt and was built during the Ptolemaic period, around 237-57 BCE. The temple is famous for its massive, well-preserved structure and detailed reliefs that depict scenes from Egyptian mythology, particularly the story of Horus\'s battle with the god Set.', 'Aswan', 'https://maps.app.goo.gl/LdpyLJxdzkWzwwwZ6', 'https://pharaohslegacy.cloud/image/Landmark/17456816512618.jpg', '2025-04-26 15:34:11', '2025-04-26 15:34:11'),
(185, 'Kom Ombo Temple', 'The Temple of Kom Ombo is an ancient Egyptian temple located on the banks of the Nile River, about 50 kilometers north of Aswan. It was built during the Ptolemaic dynasty, around the 2nd century BCE, and is unique because it is dedicated to two gods: Horus the Elder and Sobek.', 'Aswan', 'https://maps.app.goo.gl/yfx6pfAxenw9Mq8X8', 'https://pharaohslegacy.cloud/image/Landmark/17456821661507.jpg', '2025-04-26 15:42:46', '2025-04-26 15:42:46'),
(186, 'Philae Temple', 'The Temple of Philae is an ancient Egyptian temple complex located on Philae Island in the Nile River, near Aswan. It was primarily dedicated to the goddess Isis, who was revered as the goddess of love, magic, and healing. The temple was constructed during the Ptolemaic period (around 380-362 BCE) and later completed during the Roman period.', 'Aswan', 'https://maps.app.goo.gl/XL69NmGmYZrFxUzg7', 'https://pharaohslegacy.cloud/image/Landmark/17456832339893.jpg', '2025-04-26 16:00:33', '2025-04-26 16:00:33'),
(187, 'AbydosTemple', 'Abydos is one of the most significant and ancient religious sites in Egypt, located in the desert west of the Nile, about 170 kilometers north of Luxor. It was considered the home of Osiris, the god of the afterlife, resurrection, and agriculture. As such, Abydos became a major pilgrimage destination for ancient Egyptians, who believed that those buried there would have a better chance of entering the afterlife.', 'Sohag', 'https://maps.app.goo.gl/8ccBGFNxHbufGi157', 'https://pharaohslegacy.cloud/image/Landmark/17456837334222.jpg', '2025-04-26 16:08:53', '2025-04-26 16:08:53'),
(188, 'Qarun Lake', 'Lake Qarun (also known as Birket Qarun) is a large saltwater lake located in the Faiyum Oasis in Egypt, southwest of Cairo. It is one of Egypt\'s oldest lakes and has significant historical and environmental importance. The lake is believed to have been formed from the ancient Bahr Youssef canal, which was originally part of the Nile River system.', 'Faiyum', 'https://maps.app.goo.gl/oNkwkp19rNBqS4KX8', 'https://pharaohslegacy.cloud/image/Landmark/17456847141659.jpg', '2025-04-26 16:25:14', '2025-04-26 16:25:14'),
(189, 'Jabal Mousa', 'Mount Sinai, also known as Jebel Musa, is a prominent mountain located in the southern part of the Sinai Peninsula in Egypt. It rises to a height of about 2,285 meters (7,497 feet) above sea level and is one of the most important religious sites in the world, known for its association with the biblical story of Moses.', 'Sinai', 'https://maps.app.goo.gl/pRj75wmBNAjnaLHFA', 'https://pharaohslegacy.cloud/image/Landmark/17456853341345.jpg', '2025-04-26 16:35:34', '2025-04-26 16:35:34'),
(190, 'Baron Empain Palace', 'Baron Empain Palace, also known as El-Montaza Palace or The Baron Palace, is a historic palace located in Heliopolis, a district in northeastern Cairo, Egypt. The palace is one of the most striking examples of early 20th-century architecture in Egypt and is a blend of various architectural styles, including Indian, European, and Oriental influences.', 'Cairo', 'https://maps.app.goo.gl/fWw8rhKj4CR1se5Y9', 'https://pharaohslegacy.cloud/image/Landmark/17456861424323.jpg', '2025-04-26 16:49:02', '2025-04-26 16:49:02'),
(191, 'Prince Mohamed Ali Palace', 'Prince Mohamed Ali Palace (also known as Qubbat al-Khedive or Manial Palace) is a stunning historical palace located on Manial Island in the Nile River, near central Cairo, Egypt. It was built during the early 20th century and is one of the most magnificent examples of Islamic, Ottoman, and European architectural styles blended together. The palace was the residence of Prince Mohamed Ali Tewfik, the son of Khedive Tewfik, and the younger brother of Khedive Abbas II, the last ruling Khedive of Egypt.', 'Cairo', 'https://maps.app.goo.gl/y1B1XkHFVjptiTP29', 'https://pharaohslegacy.cloud/image/Landmark/17456867493705.jpg', '2025-04-26 16:59:09', '2025-04-26 16:59:09'),
(192, 'Al-Rifa\'i Mosque', 'Al-Rifa\'i Mosque is a stunning mosque located in Cairo, Egypt, near the Sultan Hassan Mosque and overlooking Midan al-Qalaa (Citadel Square). The mosque is an excellent example of Islamic architecture from the late Ottoman period, and it holds great historical and religious significance.', 'Cairo', 'https://maps.app.goo.gl/YkTBEeRHoYeM1D3s6', 'https://pharaohslegacy.cloud/image/Landmark/17456878218364.jpg', '2025-04-26 17:17:01', '2025-04-26 17:17:01'),
(193, 'New Alamein', 'New Alamein is a modern city located on the Mediterranean coast in Northwest Egypt, approximately 106 kilometers west of Alexandria. The city is part of Egypt’s larger development strategy to expand urban areas and boost economic growth in the region, particularly focusing on tourism, real estate, and coastal development.', 'Alamein', 'https://maps.app.goo.gl/kA8vyY4mFUadYBHe7', 'https://pharaohslegacy.cloud/image/Landmark/17456886373661.jpg', '2025-04-26 17:30:37', '2025-04-26 17:30:37'),
(194, 'Sharm El-Sheikh', 'Sharm El-Sheikh is a renowned resort city located on the southern tip of the Sinai Peninsula in Egypt, along the shores of the Red Sea. Famous for its stunning beaches, vibrant coral reefs, and crystal-clear waters, Sharm El-Sheikh is one of the most popular tourist destinations in Egypt and the Middle East, attracting millions of visitors each year. It is also a prominent destination for diving, water sports, and luxury tourism.', 'Sharm El-Sheikh', 'https://maps.app.goo.gl/UkEYYRWYjGHSLCiE9', 'https://pharaohslegacy.cloud/image/Landmark/17456890877209.jpg', '2025-04-26 17:38:07', '2025-04-26 17:38:07'),
(196, 'Tell el-Amarna', 'Amarna (also known as Tell el-Amarna) is an ancient city located in Middle Egypt, on the east bank of the Nile River, between the modern cities of Minya and Asyut. It was the short-lived capital of Pharaoh Akhenaten, one of ancient Egypt\'s most controversial and revolutionary rulers.', 'Minya', 'https://maps.app.goo.gl/vRUaosGEkQp8VcR66', 'https://pharaohslegacy.cloud/image/Landmark/17456925485225.jpg', '2025-04-26 18:35:48', '2025-04-26 18:35:48'),
(197, 'Amr ibn al-As Mosque', 'Amr ibn al-As Mosque is the first mosque ever built in Egypt and one of the oldest in all of Africa. It is located in Old Cairo (Fustat), and was originally constructed in 641–642 AD by Amr ibn al-As, the commander of the Muslim army that conquered Egypt during the Islamic expansion under Caliph Umar ibn al-Khattab.', 'Cairo', 'https://maps.app.goo.gl/XWqeJCCGpuFxTAaL6', 'https://pharaohslegacy.cloud/image/Landmark/17456933368537.jpg', '2025-04-26 18:48:56', '2025-04-26 18:48:56'),
(198, 'Abdeen Palace Museum', 'Abdeen Palace Museum is one of the most historic and magnificent palaces in Cairo, Egypt. It was originally constructed as a royal palace for the Khedival family (the rulers of Egypt during the 19th and early 20th centuries) and is now a museum that showcases Egypt’s royal history and heritage.', 'Cairo', 'https://maps.app.goo.gl/rMTcjKKosGBWah54A', 'https://pharaohslegacy.cloud/image/Landmark/17456939301982.jpg', '2025-04-26 18:58:50', '2025-04-26 18:58:50'),
(200, 'Le Pacha 1901', 'aboard a historic Nile boat. Located in the upscale Zamalek district, it hosts multiple award-winning restaurants serving international cuisines, from French and Italian to Asian and Middle Eastern. Known for its elegant atmosphere, impeccable service, and stunning Nile views, Le Pacha 1901 is a must-visit for those seeking an unforgettable dining experience in Cairo.', 'Cairo', 'https://maps.app.goo.gl/ZCbWbDVxKbMvbje9A', 'https://pharaohslegacy.cloud/image/restaurants/1745698579.jpg', '2025-04-26 20:16:19', '2025-04-26 20:16:19'),
(202, 'The waterwheels of Faiyum', 'The waterwheels of Faiyum, known locally as \"norias,\" are an iconic feature of the region\'s agricultural history. These large, traditional machines are used to lift water from the Nile River or canals to irrigate the fertile lands of the Faiyum Depression, a region located southwest of Cairo, Egypt. The waterwheel system has been an essential part of Faiyum\'s irrigation for centuries and continues to be a symbol of its rich agricultural heritage.', 'Faiyum', 'https://maps.app.goo.gl/cnU35CCqjJsE6fP66', 'https://pharaohslegacy.cloud/image/Landmark/17457007813163.jpg', '2025-04-26 20:53:01', '2025-04-26 20:53:01'),
(203, 'Ted\'s - New Cairo', 'Ted’s is a modern and stylish restaurant located in New Cairo, known for its vibrant atmosphere and diverse international menu. Offering a wide range of dishes from American, Italian, and Mediterranean cuisines, Ted’s provides a high-end casual dining experience. With its chic interiors, outdoor seating options, professional service, and consistently delicious food, Ted’s is a perfect choice for gatherings, business lunches, and family outings.', 'Cairo', 'https://maps.app.goo.gl/x44FfXMD96CHq3jP7', 'https://pharaohslegacy.cloud/image/restaurants/1745701454.jpg', '2025-04-26 21:04:14', '2025-04-26 21:04:14'),
(204, 'Paul - Maadi', 'Paul is a renowned French bakery and café located in Maadi, Cairo. Famous for its artisanal breads, freshly baked pastries, and classic French cuisine, Paul offers an elegant and cozy dining experience. With its authentic Parisian atmosphere, outdoor seating area, and a variety of gourmet dishes and beverages, Paul Maadi is the perfect destination for breakfast, brunch, or a relaxed evening with friends and family.', 'Cairo', 'https://maps.app.goo.gl/7YPAqf9WczwZxKuC7', 'https://pharaohslegacy.cloud/image/restaurants/1745704591.jpg', '2025-04-26 21:56:31', '2025-04-26 21:56:31'),
(205, 'Kazoku - New Cairo', 'Kazoku is an award-winning contemporary Japanese restaurant located in New Cairo, Egypt. Known for its elegant atmosphere, creative fine dining experience, and exceptional service, Kazoku offers an exquisite menu featuring sushi, robata grill, and a variety of innovative Japanese dishes. Perfect for special occasions, business dinners, or a luxurious night out, Kazoku combines culinary artistry with a stylish, upscale setting', 'Cairo', 'https://maps.app.goo.gl/8m3DMcSxeK76UGVaA', 'https://pharaohslegacy.cloud/image/restaurants/1745706524.jpg', '2025-04-26 22:28:44', '2025-04-26 22:28:44'),
(206, 'Sachi - New Cairo', 'Sachi is an upscale Mediterranean and Asian fusion restaurant located in New Cairo. Known for its luxurious ambiance, sophisticated cuisine, and outstanding service, Sachi offers a refined dining experience combining creative cocktails, premium seafood, prime meats, and sushi. The elegant interior, lively atmosphere, and gourmet dishes make Sachi a top choice for fine dining lovers in Cairo.', 'Cairo', 'https://maps.app.goo.gl/D9HuEFSX2WgpXFNy5', 'https://pharaohslegacy.cloud/image/restaurants/1745707511.jpg', '2025-04-26 22:45:11', '2025-04-26 22:45:11'),
(208, 'Koshary Abu Tarek', 'Koshary Abu Tarek is a legendary Egyptian restaurant, famous for serving one of the best koshary dishes in Cairo. Founded in 1950, Abu Tarek has become an essential culinary destination for locals and tourists seeking authentic Egyptian street food. Known for its hearty portions, quick service, and unbeatable flavors, Abu Tarek offers a traditional experience with layers of rice, lentils, pasta, chickpeas, crispy onions, and tangy tomato sauce—all served in a lively, bustling environment.', 'Cairo', 'https://maps.app.goo.gl/mjKCi7ynSpmt86K86', 'https://pharaohslegacy.cloud/image/restaurants/1745756436.jpg', '2025-04-27 12:20:36', '2025-04-27 12:20:36'),
(209, 'McDonald\'s - Cairo', 'McDonald\'s is one of the world\'s largest and most popular fast-food chains, offering a wide range of burgers, fries, desserts, and beverages. In Egypt, McDonald\'s is known for its consistently high standards of quality, quick service, family-friendly atmosphere, and convenient locations. Whether for a quick meal, delivery, or a casual outing, McDonald\'s Cairo provides an experience that blends international fast-food excellence with a local Egyptian twist.', 'Cairo', 'https://maps.app.goo.gl/KGtDHveXjmj25mMbA', 'https://pharaohslegacy.cloud/image/restaurants/1745757391.jpg', '2025-04-27 12:36:31', '2025-04-27 12:36:31'),
(210, 'Mall of Arabia', 'One of the largest malls in Egypt, offering a wide range of international and local brands, entertainment options, and dining experiences.', 'Giza', 'https://maps.app.goo.gl/JrjZUpr3pnAc9QYo8', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457574643816.jpg', '2025-04-27 12:37:44', '2025-04-27 12:37:44'),
(212, 'City Stars Mall', 'A luxury shopping mall featuring various fashion brands, a large food court, a cinema, and an indoor amusement park.', 'Cairo', 'https://maps.app.goo.gl/HeE6xbFF4jhW5AYB6', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457581172811.jpg', '2025-04-27 12:48:37', '2025-04-27 12:48:37'),
(213, 'KFC - Egypt', 'KFC (Kentucky Fried Chicken) is one of the most popular fast-food chains in Egypt, renowned for its crispy fried chicken, zinger sandwiches, and family meals. With numerous branches across Cairo and other cities, KFC offers quick service, consistent quality, and a variety of combo meals suitable for individuals and groups.', 'Cairo', 'https://maps.app.goo.gl/3Xpp3LWw6zu1D3zHA', 'https://pharaohslegacy.cloud/image/restaurants/1745758314.jpg', '2025-04-27 12:51:54', '2025-04-27 12:51:54'),
(214, 'Cairo Festival City Mall', 'A high-end shopping and entertainment destination, with various international brands, dining options, and an open-air cinema.', 'Cairo', 'https://maps.app.goo.gl/8RGmEtNkvXNgKtBv5', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457586976195.jpg', '2025-04-27 12:58:17', '2025-04-27 12:58:17'),
(215, 'Burger King - Egypt', 'Burger King is a globally recognized fast-food chain famous for its flame-grilled Whopper sandwiches, fresh ingredients, and satisfying meals. In Egypt, Burger King offers a variety of burgers, chicken meals, sides, and desserts, providing a high-quality fast-food experience with a focus on flame-grilled perfection and quick service in a casual dining atmosphere.', 'Cairo', 'https://maps.app.goo.gl/fM9FrRCx4h3DTpyv8', 'https://pharaohslegacy.cloud/image/restaurants/1745758952.jpg', '2025-04-27 13:02:32', '2025-04-27 13:02:32'),
(216, 'Arkan Mall', 'A sophisticated shopping mall offering a blend of luxury brands, trendy stores, and fine dining options.', 'Giza', 'https://maps.app.goo.gl/oinqAGm9JftkD5ih6', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457590382486.jpg', '2025-04-27 13:03:58', '2025-04-27 13:03:58'),
(217, 'Pizza Hut - Egypt', 'Pizza Hut is a global leader in the pizza industry, known for its signature pan pizzas, delicious pasta dishes, appetizers, and desserts. In Egypt, Pizza Hut combines American-style pizza making with local flavors to cater to a wide audience. Whether dining in, ordering takeaway, or home delivery, Pizza Hut offers a comfortable family-friendly experience with consistent taste and quality.', 'Cairo', 'https://maps.app.goo.gl/3zmzcJGiufA7vJdk8', 'https://pharaohslegacy.cloud/image/restaurants/1745759739.jpg', '2025-04-27 13:15:39', '2025-04-27 13:15:39'),
(218, 'The Genina Mall', 'Known for its vibrant atmosphere, Genina Mall offers both shopping and entertainment, with a variety of local and international brands.', 'Cairo', 'https://maps.app.goo.gl/kjPnTHZSbsshUAjF8', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457603739276.jpg', '2025-04-27 13:26:13', '2025-04-27 13:26:13'),
(219, 'Starbucks - Egypt', 'Starbucks is a world-famous coffeehouse chain known for its high-quality coffee, specialty drinks, and cozy atmosphere. In Egypt, Starbucks serves a wide variety of hot and cold beverages, pastries, and snacks in a modern and welcoming setting, making it a popular spot for social gatherings, study sessions, and quick coffee breaks.', 'Cairo', 'https://maps.app.goo.gl/VKwPv2GBAme5Qsvu9', 'https://pharaohslegacy.cloud/image/restaurants/1745760507.jpg', '2025-04-27 13:28:27', '2025-04-27 13:28:27'),
(220, 'Mall of Egypt', 'A giant shopping mall with a wide range of international and local brands, an indoor ski park, and an extensive food court.', 'Giza', 'https://maps.app.goo.gl/7RjuNWKti3wjYhHM6', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457611072545.jpg', '2025-04-27 13:38:27', '2025-04-27 13:38:27'),
(221, 'City Centre Almaza', 'A vibrant shopping and lifestyle hub offering a wide selection of international and local brands, diverse dining experiences, and family entertainment options including VOX Cinemas.', 'Cairo', 'https://maps.app.goo.gl/Cj7CNvDuTKxSyd5s9', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457631844587.jpg', '2025-04-27 14:13:04', '2025-04-27 14:13:04'),
(222, 'The First Mall', 'A luxury shopping mall located in the heart of Cairo, featuring high-end international brands, restaurants, and a premium shopping experience.', 'Giza', 'https://maps.app.goo.gl/dpnYXG3EUP97PmHQA', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457639774603.jpg', '2025-04-27 14:26:17', '2025-04-27 14:26:17'),
(223, 'Sun City Mall', 'A popular shopping mall in Sheraton Al Matar with a variety of stores, a cinema, and an extensive selection of dining options.', 'Cairo', 'https://maps.app.goo.gl/NrJ9nQsiZb1LT8vh9', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457653247498.jpg', '2025-04-27 14:48:44', '2025-04-27 14:48:44'),
(224, 'City Center Alexandria', 'A modern shopping center located in Alexandria, offering a mix of international and local brands, dining, and a cinema.', 'Alexandria', 'https://maps.app.goo.gl/ep3UeBj5r7rU7AAR8', 'https://pharaohslegacy.cloud/image/ShoppingCenter/17457664609932.jpg', '2025-04-27 15:07:40', '2025-04-27 15:07:40'),
(225, 'Koshary El Tahrir', 'Koshary El Tahrir is one of Egypt’s most popular koshary chains, famous for offering authentic Egyptian street food with consistent quality and flavor. Founded near Tahrir Square in downtown Cairo, it has expanded across the country. The restaurant is known for its quick service, clean environment, affordable prices, and generous portions of koshary — a hearty mix of lentils, rice, pasta, chickpeas, crispy onions, and rich tomato sauce.', 'Cairo', 'https://g.co/kgs/81mjPof', 'https://pharaohslegacy.cloud/image/restaurants/1745785656.jpg', '2025-04-27 20:27:36', '2025-04-27 20:27:36'),
(226, 'Nişantaşi', 'Nişantaşi is a high-end Turkish restaurant offering a luxurious dining experience inspired by the famous Nişantaşi district of Istanbul. Located in New Cairo, it serves authentic Turkish dishes with a modern touch, combining rich flavors and a stylish atmosphere.', 'Cairo', 'https://maps.app.goo.gl/9MtU6xqeDQRQp3V18', 'https://pharaohslegacy.cloud/image/restaurants/1745786709.jpg', '2025-04-27 20:45:09', '2025-04-27 20:45:09'),
(227, 'Four Seasons Hotel Cairo at Nile Plaza', 'A luxurious 5-star hotel offering panoramic views of the Nile, with elegant rooms, spa, and fine dining.', 'Cairo', 'https://maps.app.goo.gl/fZMmxseH3qK9tZDu8', 'https://pharaohslegacy.cloud/image/Hotel/17457898752314.jpeg', '2025-04-27 21:37:55', '2025-04-27 21:37:55'),
(228, 'Steigenberger Nile Palace Luxor', 'Overlooking the Nile, this 5-star hotel combines history and comfort, with a pool and spa facilities.', 'Luxor', 'https://maps.app.goo.gl/hrYJyNNTbfmFSr6D7', 'https://pharaohslegacy.cloud/image/Hotel/17457908475648.jpg', '2025-04-27 21:54:07', '2025-04-27 21:54:07'),
(229, 'Jaz Makadi Oasis Resort', 'Family-friendly 4-star beach resort offering all-inclusive packages, pools, and water sports activities.', 'Hurghada', 'https://maps.app.goo.gl/mxBAGx31dipSNQ1R9', 'https://pharaohslegacy.cloud/image/Hotel/17457914909110.jpg', '2025-04-27 22:04:50', '2025-04-27 22:04:50'),
(230, 'Rixos Premium Seagate', 'A luxurious all-inclusive 5-star resort in Sharm El Sheikh with private beaches and world-class entertainment.', 'Sharm El Sheikh', 'https://maps.app.goo.gl/mxBAGx31dipSNQ1R9', 'https://pharaohslegacy.cloud/image/Hotel/17457924068444.jpg', '2025-04-27 22:20:06', '2025-04-27 22:20:06'),
(231, 'Sofitel Legend Old Cataract Aswan', 'Iconic 5-star hotel by the Nile, blending history and luxury with a magnificent view.\n\ncity: Aswan', 'Aswan', 'https://maps.app.goo.gl/UU8rfTFXz2xbn1x56', 'https://pharaohslegacy.cloud/image/Hotel/17457930464395.jpg', '2025-04-27 22:30:46', '2025-04-27 22:30:46'),
(232, 'Tolip Hotel Alexandria', 'Modern 5-star hotel overlooking the Mediterranean Sea with a prime Corniche location.\n\ncity: Alexandria\ncity: Aswan', 'Alexandria', 'https://maps.app.goo.gl/x4odqV6PXPk6kTfn6', 'https://pharaohslegacy.cloud/image/Hotel/17457936589768.jpg', '2025-04-27 22:40:58', '2025-04-27 22:40:58'),
(233, 'Baron Resort Sharm El Sheikh', '5-star beachfront resort offering diving activities and lush gardens.', 'Sharm El Sheikh', 'https://maps.app.goo.gl/gHGn9ixvrnT9xjhp7', 'https://pharaohslegacy.cloud/image/Hotel/17457943013695.jpg', '2025-04-27 22:51:41', '2025-04-27 22:51:41'),
(234, 'Iberotel Luxor', 'A charming 4-star hotel with a floating pool over the Nile and proximity to Luxor Temple.\n\ncity: Luxor', 'Luxor', 'https://maps.app.goo.gl/BGba79D5PLnrugzT9', 'https://pharaohslegacy.cloud/image/Hotel/17457949657897.jpg', '2025-04-27 23:02:45', '2025-04-27 23:02:45'),
(235, 'Cleopatra Luxury Resort Makadi Bay', '5-star beachfront resort ideal for families and couples with diving and golf nearby.\ncity: Hurghada', 'Hurghada', 'https://maps.app.goo.gl/Apexhmqn4j3V9JCt8', 'https://pharaohslegacy.cloud/image/Hotel/17457956593811.jpg', '2025-04-27 23:14:19', '2025-04-27 23:14:19'),
(236, 'Hilton Alexandria Corniche', 'Stylish 5-star hotel with a private beach and panoramic views of the Mediterranean Sea.\n\ncity: Alexandria', 'Alexandria', 'https://maps.app.goo.gl/TopSJPXymoomPUYM8', 'https://pharaohslegacy.cloud/image/Hotel/17457962038051.jpg', '2025-04-27 23:23:23', '2025-04-27 23:23:23');

-- --------------------------------------------------------

--
-- بنية الجدول `jobs`
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
-- بنية الجدول `job_batches`
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
-- بنية الجدول `landmarks`
--

CREATE TABLE `landmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `type` enum('Pharaonic','Islamic','Christian','modern') NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `egyptian_adult_price` varchar(50) NOT NULL,
  `egyptian_kid_price` varchar(50) NOT NULL,
  `egyptian_student_price` varchar(50) NOT NULL,
  `foreigner_adult_price` varchar(50) NOT NULL,
  `foreigner_kid_price` varchar(50) NOT NULL,
  `foreigner_student_price` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `landmarks`
--

INSERT INTO `landmarks` (`id`, `Item_ID`, `type`, `open_time`, `close_time`, `egyptian_adult_price`, `egyptian_kid_price`, `egyptian_student_price`, `foreigner_adult_price`, `foreigner_kid_price`, `foreigner_student_price`, `created_at`, `updated_at`) VALUES
(45, 153, 'Pharaonic', '07:00:00', '04:00:00', '60', '30', '30', '700', '350', '350', '2025-04-26 08:29:02', '2025-04-26 08:29:02'),
(46, 154, 'Pharaonic', '06:00:00', '04:00:00', '40', '20', '20', '600', '300', '300', '2025-04-26 08:41:33', '2025-04-26 08:41:33'),
(47, 155, 'Pharaonic', '06:00:00', '04:00:00', '30', '10', '10', '750', '375', '375', '2025-04-26 08:51:01', '2025-04-26 08:51:01'),
(48, 156, 'Pharaonic', '06:00:00', '07:00:00', '40', '20', '20', '500', '250', '250', '2025-04-26 09:02:00', '2025-04-26 09:02:00'),
(49, 157, 'Pharaonic', '06:00:00', '05:00:00', '40', '20', '20', '440', '220', '220', '2025-04-26 09:21:53', '2025-04-26 09:21:53'),
(50, 158, 'Pharaonic', '08:30:00', '06:00:00', '200', '100', '100', '1200', '750', '750', '2025-04-26 09:37:30', '2025-04-26 09:37:30'),
(51, 159, 'Pharaonic', '07:00:00', '04:00:00', '20', '10', '10', '300', '150', '150', '2025-04-26 09:52:29', '2025-04-26 09:52:29'),
(53, 161, 'Islamic', '09:00:00', '05:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 10:26:48', '2025-04-26 10:26:48'),
(54, 162, 'modern', '09:00:00', '12:00:00', '100', '0', '100', '350', '350', '350', '2025-04-26 10:39:14', '2025-04-26 10:39:14'),
(55, 163, 'Islamic', '09:00:00', '04:00:00', '60', '30', '30', '550', '275', '275', '2025-04-26 10:49:49', '2025-04-26 10:49:49'),
(56, 164, 'Islamic', '09:00:00', '06:00:00', '60', '30', '30', '200', '100', '100', '2025-04-26 10:57:07', '2025-04-26 10:57:07'),
(57, 165, 'modern', '10:00:00', '07:00:00', '10', '5', '5', '150', '20', '20', '2025-04-26 11:10:53', '2025-04-26 11:10:53'),
(58, 171, 'Christian', '09:00:00', '05:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 11:33:39', '2025-04-26 11:33:39'),
(59, 172, 'Christian', '07:00:00', '06:00:00', '25', '25', '25', '250', '250', '250', '2025-04-26 11:59:58', '2025-04-26 11:59:58'),
(60, 173, 'Christian', '09:00:00', '04:00:00', '20', '10', '10', '280', '140', '140', '2025-04-26 12:08:37', '2025-04-26 12:08:37'),
(61, 174, 'Christian', '04:00:00', '06:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 12:23:30', '2025-04-26 12:23:30'),
(62, 175, 'Christian', '09:00:00', '03:00:00', '2', '2', '2', '0', '0', '0', '2025-04-26 12:38:19', '2025-04-26 12:38:19'),
(63, 176, 'Pharaonic', '06:00:00', '05:00:00', '20', '10', '10', '220', '110', '110', '2025-04-26 12:48:26', '2025-04-26 12:48:26'),
(64, 177, 'Islamic', '08:00:00', '04:00:00', '0', '0', '0', '60', '60', '60', '2025-04-26 13:01:55', '2025-04-26 13:01:55'),
(65, 178, 'Islamic', '09:00:00', '04:00:00', '0', '0', '0', '220', '110', '110', '2025-04-26 13:11:12', '2025-04-26 13:11:12'),
(66, 179, 'Islamic', '09:00:00', '04:00:00', '20', '10', '0', '100', '50', '50', '2025-04-26 13:29:49', '2025-04-26 13:29:49'),
(67, 180, 'Islamic', '09:00:00', '04:00:00', '20', '10', '10', '340', '170', '170', '2025-04-26 13:50:42', '2025-04-26 13:50:42'),
(68, 181, 'Islamic', '12:00:00', '12:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 13:59:40', '2025-04-26 13:59:40'),
(69, 182, 'Pharaonic', '06:00:00', '05:00:00', '60', '30', '30', '750', '375', '375', '2025-04-26 15:17:29', '2025-04-26 15:17:29'),
(70, 183, 'Pharaonic', '06:00:00', '05:00:00', '30', '10', '10', '220', '110', '110', '2025-04-26 15:25:04', '2025-04-26 15:25:04'),
(71, 184, 'Pharaonic', '07:00:00', '04:00:00', '40', '20', '20', '550', '275', '275', '2025-04-26 15:34:11', '2025-04-26 15:34:11'),
(72, 185, 'Pharaonic', '07:00:00', '08:00:00', '40', '20', '20', '450', '225', '225', '2025-04-26 15:42:46', '2025-04-26 15:42:46'),
(73, 186, 'Pharaonic', '07:00:00', '03:00:00', '40', '20', '20', '550', '275', '275', '2025-04-26 16:00:33', '2025-04-26 16:00:33'),
(74, 187, 'Pharaonic', '07:00:00', '04:00:00', '10', '5', '5', '260', '130', '130', '2025-04-26 16:08:53', '2025-04-26 16:08:53'),
(75, 188, 'Pharaonic', '08:00:00', '04:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 16:25:14', '2025-04-26 16:25:14'),
(76, 189, 'Islamic', '07:00:00', '06:00:00', '10', '5', '5', '60', '30', '30', '2025-04-26 16:35:34', '2025-04-26 16:35:34'),
(77, 190, 'modern', '09:00:00', '05:00:00', '60', '30', '30', '220', '110', '110', '2025-04-26 16:49:02', '2025-04-26 16:49:02'),
(78, 191, 'modern', '09:00:00', '04:00:00', '20', '5', '5', '220', '110', '110', '2025-04-26 16:59:09', '2025-04-26 16:59:09'),
(79, 192, 'Islamic', '08:00:00', '04:30:00', '0', '0', '0', '80', '40', '40', '2025-04-26 17:17:01', '2025-04-26 17:17:01'),
(80, 193, 'modern', '12:00:00', '12:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 17:30:37', '2025-04-26 17:30:37'),
(81, 194, 'modern', '12:00:00', '12:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 17:38:07', '2025-04-26 17:38:07'),
(83, 196, 'Pharaonic', '09:00:00', '05:00:00', '10', '5', '5', '100', '50', '50', '2025-04-26 18:35:48', '2025-04-26 18:35:48'),
(84, 197, 'Islamic', '09:00:00', '04:00:00', '0', '0', '0', '0', '0', '0', '2025-04-26 18:48:56', '2025-04-26 18:48:56'),
(85, 198, 'modern', '09:00:00', '03:00:00', '20', '0', '10', '150', '0', '75', '2025-04-26 18:58:50', '2025-04-26 18:58:50'),
(86, 202, 'modern', '12:00:00', '12:00:00', '50', '0', '0', '0', '0', '0', '2025-04-26 20:53:01', '2025-04-26 20:53:01');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_02_015739_create_personal_access_tokens_table', 1),
(5, '2025_03_02_020908_stories', 1),
(6, '2025_03_02_021058_add_profile_image', 1),
(7, '2025_03_05_013327_items', 1),
(8, '2025_03_05_013602_reviews', 1),
(9, '2025_03_05_033201_restaurants', 1),
(10, '2025_03_05_033735_hotels', 1),
(11, '2025_03_05_034301_airports', 1),
(12, '2025_03_05_034449_landmarks', 1),
(13, '2025_03_05_034530_shoping_centers', 1),
(14, '2025_04_11_225548_create_brands_table', 1),
(15, '2025_04_12_002213_create_airlines_table', 1),
(16, '2025_04_12_003725_create_facilities_airports_table', 1),
(17, '2025_04_12_003735_create_facilities_table', 1),
(18, '2025_04_12_003755_create_facilities_restaurants_table', 1),
(19, '2025_04_12_003815_create_trips_table', 1),
(20, '2025_04_12_003824_create_trip_includes_table', 1),
(21, '2025_04_13_203207_create_steps_table', 1),
(22, '2025_03_06_015336_create_photos_table', 2),
(23, '2025_04_12_002512_create_bookings_table', 3),
(24, '2025_04_12_002513_create_excludes_table', 3),
(25, '2025_04_15_091734_create_vertual_images_table', 4),
(26, '2025_04_16_165556_create_favorite_list_table', 5),
(27, '2025_04_16_224649_create_favorite_list_table', 6),
(28, '2025_04_16_233441_create_story_images_table', 7);

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nonomedo3000@gmail.com', '941353', '2025-04-27 17:40:06'),
('oshamomo2000@gmail.com', '977150', '2025-05-11 12:13:23'),
('ym8592865@gmail.com', '204568', '2025-06-25 11:48:55'),
('yousefmohsen11010023@gmail.com', '857392', '2025-04-19 09:16:35');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `photos`
--

CREATE TABLE `photos` (
  `photo_id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `trip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `photos`
--

INSERT INTO `photos` (`photo_id`, `Item_ID`, `trip_id`, `image_path`) VALUES
(476, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995847177.jpg'),
(477, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995845488.jpg'),
(478, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995847023.jpg'),
(479, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995847253.jpg'),
(480, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995848373.jpg'),
(481, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995841349.jpg'),
(482, 126, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17455995844285.jpg'),
(483, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013305395.jpg'),
(484, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013307953.jpg'),
(485, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013306872.jpg'),
(486, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013302628.jpg'),
(487, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013301095.jpg'),
(488, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013307475.jpg'),
(489, 127, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456013305004.jpg'),
(490, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025085444.jpg'),
(491, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025081796.jpg'),
(492, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025089467.jpg'),
(493, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025088528.jpg'),
(494, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025085813.jpg'),
(495, 128, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456025081388.jpg'),
(496, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038018705.jpg'),
(497, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038015482.jpg'),
(498, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038011422.jpg'),
(499, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038014728.jpg'),
(500, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038018563.jpg'),
(501, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038011023.jpg'),
(502, 129, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456038013009.jpg'),
(503, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054454413.jpg'),
(504, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054451211.jpg'),
(505, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054459373.jpg'),
(506, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054458231.jpg'),
(507, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054458531.jpg'),
(508, 130, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456054459906.jpg'),
(509, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066312269.jpg'),
(510, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066319488.jpg'),
(511, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066314182.jpg'),
(512, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066311880.jpg'),
(513, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066315830.jpg'),
(514, 131, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456066313019.jpg'),
(515, 132, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456074576176.jpg'),
(516, 132, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456074573495.jpg'),
(517, 132, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456074571213.jpg'),
(518, 132, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456074579456.jpg'),
(519, 132, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456074571601.jpg'),
(520, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083451366.jpg'),
(521, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083459981.jpg'),
(522, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083458523.jpg'),
(523, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083458020.jpg'),
(524, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083455560.jpg'),
(525, 133, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456083452673.jpg'),
(526, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093977486.jpg'),
(527, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093978854.jpg'),
(528, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093978824.jpg'),
(529, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093977864.jpg'),
(530, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093971804.jpg'),
(531, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093975238.jpg'),
(532, 134, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456093978712.jpg'),
(540, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111058321.jpg'),
(541, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111056453.jpg'),
(542, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111051008.jpg'),
(543, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111053344.jpg'),
(544, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111055662.jpg'),
(545, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111056138.jpg'),
(546, 136, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456111059657.jpg'),
(547, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139387123.jpg'),
(548, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139387568.jpg'),
(549, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139388647.jpg'),
(550, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139382676.jpg'),
(551, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139386545.jpg'),
(552, 137, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456139386537.jpg'),
(554, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149445211.jpg'),
(555, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149444805.jpg'),
(556, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149449702.jpg'),
(557, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149442198.jpg'),
(558, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149447643.jpg'),
(559, 140, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456149445139.jpg'),
(561, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171891768.jpg'),
(562, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171899542.jpg'),
(563, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171893957.jpg'),
(564, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171896654.jpg'),
(565, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171892492.jpg'),
(566, 142, NULL, 'https://pharaohslegacy.cloud/image/Airport/photos/17456171893762.jpg'),
(600, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561421191.jpg'),
(601, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561425038.jpg'),
(602, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561426021.jpg'),
(603, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561422754.jpg'),
(604, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561426792.jpg'),
(605, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561426018.jpg'),
(606, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561424522.jpg'),
(607, 153, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456561429930.jpg'),
(608, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568932875.jpg'),
(609, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568937764.jpg'),
(610, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568932196.jpg'),
(611, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568939045.jpg'),
(612, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568931467.jpg'),
(613, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568938013.jpg'),
(614, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568931082.jpg'),
(615, 154, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456568931257.jpg'),
(616, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574615383.jpg'),
(617, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574616265.jpg'),
(618, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574615010.jpg'),
(619, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574614481.jpg'),
(620, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574611524.jpg'),
(621, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574613273.jpg'),
(622, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574616659.jpg'),
(623, 155, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456574615006.jpg'),
(624, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581203817.jpg'),
(625, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581207151.jpg'),
(626, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581203049.jpg'),
(627, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581205137.jpg'),
(628, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581209838.jpg'),
(629, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581203998.jpg'),
(630, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581201217.jpg'),
(631, 156, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456581204124.jpg'),
(632, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593131336.jpg'),
(633, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593134223.jpg'),
(634, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593138062.jpg'),
(635, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593133777.jpg'),
(636, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593137591.jpg'),
(637, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593131048.jpg'),
(638, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593134625.jpg'),
(639, 157, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456593138377.jpg'),
(640, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602506244.jpg'),
(641, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602504690.jpg'),
(642, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602502007.jpg'),
(643, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602506478.jpg'),
(644, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602505578.jpg'),
(645, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602505172.jpg'),
(646, 158, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456602507395.jpg'),
(647, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611498449.jpg'),
(648, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611493289.jpg'),
(649, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611499376.jpg'),
(650, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611498439.jpg'),
(651, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611492027.jpg'),
(652, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611499356.jpg'),
(653, 159, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456611491451.jpg'),
(661, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632082898.jpg'),
(662, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632087559.jpg'),
(663, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632084007.jpg'),
(664, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632083189.jpg'),
(665, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632085739.jpg'),
(666, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632085586.jpg'),
(667, 161, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456632084190.jpg'),
(668, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639549110.jpg'),
(669, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639541690.jpg'),
(670, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639541971.jpg'),
(671, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639546041.jpg'),
(672, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639544033.jpg'),
(673, 162, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456639541943.jpg'),
(674, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645892435.jpg'),
(675, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645893869.jpg'),
(676, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645891747.jpg'),
(677, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645892725.jpg'),
(678, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645899841.jpg'),
(679, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645892755.jpg'),
(680, 163, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456645896060.jpg'),
(681, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650277512.jpg'),
(682, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650278431.jpg'),
(683, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650277963.jpg'),
(684, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650277084.jpg'),
(685, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650271340.jpg'),
(686, 164, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456650278941.jpg'),
(687, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658534255.jpg'),
(688, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658532401.jpg'),
(689, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658534220.jpg'),
(690, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658531868.jpg'),
(691, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658537608.jpg'),
(692, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658537586.jpg'),
(693, 165, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456658539042.jpg'),
(694, 171, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456672198014.jpg'),
(695, 171, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456672199267.jpg'),
(696, 171, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456672194665.jpg'),
(697, 171, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456672195933.jpg'),
(698, 171, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456672192256.jpg'),
(699, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687982326.jpg'),
(700, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687982530.jpg'),
(701, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687987523.jpg'),
(702, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687983372.jpg'),
(703, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687987789.jpg'),
(704, 172, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456687984516.jpg'),
(705, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693178300.jpg'),
(706, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693174916.jpg'),
(707, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693172321.jpg'),
(708, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693173627.jpg'),
(709, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693173435.jpg'),
(710, 173, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456693174916.jpg'),
(711, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702109366.jpg'),
(712, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702109938.jpg'),
(713, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702109751.jpg'),
(714, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702106902.jpg'),
(715, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702105797.jpg'),
(716, 174, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456702103261.jpg'),
(717, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710993147.jpg'),
(718, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710994921.jpg'),
(719, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710998667.jpg'),
(720, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710993254.jpg'),
(721, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710991647.jpg'),
(722, 175, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456710995851.jpg'),
(723, 176, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456717067394.jpg'),
(724, 176, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456717068416.jpg'),
(725, 176, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456717062953.jpg'),
(726, 176, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456717066342.jpg'),
(727, 176, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456717062042.jpg'),
(728, 177, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456725159898.jpg'),
(729, 177, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456725153914.jpg'),
(730, 177, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456725156431.jpg'),
(731, 177, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456725158014.jpg'),
(732, 177, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456725154515.jpg'),
(733, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730727443.jpg'),
(734, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730727461.jpg'),
(735, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730723458.jpg'),
(736, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730725485.jpg'),
(737, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730726758.jpg'),
(738, 178, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456730727024.jpg'),
(739, 179, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456741894144.jpg'),
(740, 179, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456741899091.jpg'),
(741, 179, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456741891030.jpg'),
(742, 179, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456741899630.jpg'),
(743, 179, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456741892476.jpg'),
(744, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754424503.jpg'),
(745, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754421494.jpg'),
(746, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754429173.jpg'),
(747, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754425199.jpg'),
(748, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754425520.jpg'),
(749, 180, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456754426114.jpg'),
(750, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759806578.jpg'),
(751, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759805394.jpg'),
(752, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759807283.jpg'),
(753, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759802908.jpg'),
(754, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759804944.jpg'),
(755, 181, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456759806230.jpg'),
(756, 182, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456806492994.jpg'),
(757, 182, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456806492626.jpg'),
(758, 182, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456806491309.jpg'),
(759, 182, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456806498667.jpg'),
(760, 182, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456806498482.jpg'),
(761, 183, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456811046655.jpg'),
(762, 183, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456811043244.jpg'),
(763, 183, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456811045352.jpg'),
(764, 183, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456811047322.jpg'),
(765, 183, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456811044645.jpg'),
(766, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816511362.jpg'),
(767, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816512719.jpg'),
(768, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816515294.jpg'),
(769, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816511426.jpg'),
(770, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816524204.jpg'),
(771, 184, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456816529720.jpg'),
(772, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821668993.jpg'),
(773, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821665921.jpg'),
(774, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821668000.jpg'),
(775, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821661435.jpg'),
(776, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821664720.jpg'),
(777, 185, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456821669245.jpg'),
(778, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832331597.jpg'),
(779, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832335060.jpg'),
(780, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832332516.jpg'),
(781, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832336880.jpg'),
(782, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832335419.jpg'),
(783, 186, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456832337952.jpg'),
(784, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837333879.jpg'),
(785, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837337912.jpg'),
(786, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837339481.jpg'),
(787, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837337540.jpg'),
(788, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837337601.jpg'),
(789, 187, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456837335726.jpg'),
(790, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847144738.jpg'),
(791, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847142539.jpg'),
(792, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847146833.jpg'),
(793, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847145869.jpg'),
(794, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847141531.jpg'),
(795, 188, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456847142156.jpg'),
(796, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853348316.jpg'),
(797, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853341533.jpg'),
(798, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853345545.jpg'),
(799, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853342133.jpg'),
(800, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853341348.jpg'),
(801, 189, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456853344237.jpg'),
(802, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861422821.jpg'),
(803, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861421736.jpg'),
(804, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861427159.jpg'),
(805, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861427515.jpg'),
(806, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861422701.jpg'),
(807, 190, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456861424809.jpg'),
(808, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867492574.jpg'),
(809, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867493299.jpg'),
(810, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867499887.jpg'),
(811, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867492349.jpg'),
(812, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867494740.jpg'),
(813, 191, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456867498388.jpg'),
(814, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878218032.jpg'),
(815, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878214390.jpg'),
(816, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878215054.jpg'),
(817, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878219001.jpg'),
(818, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878217239.jpg'),
(819, 192, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456878216008.jpg'),
(820, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886379347.jpg'),
(821, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886378150.jpg'),
(822, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886378085.jpg'),
(823, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886374812.jpg'),
(824, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886375336.jpg'),
(825, 193, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456886376287.jpg'),
(826, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890876934.jpg'),
(827, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890878847.jpg'),
(828, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890876634.jpg'),
(829, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890875800.jpg'),
(830, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890871526.jpg'),
(831, 194, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456890873092.jpg'),
(836, 196, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456925486148.jpg'),
(837, 196, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456925486725.jpg'),
(838, 196, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456925489501.jpg'),
(839, 196, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456925481663.jpg'),
(840, 196, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456925488242.jpg'),
(841, 197, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456933362920.jpg'),
(842, 197, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456933364183.jpg'),
(843, 197, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456933363722.jpg'),
(844, 197, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456933367838.jpg'),
(845, 197, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456933363395.jpg'),
(846, 198, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456939302228.jpg'),
(847, 198, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456939302133.jpg'),
(848, 198, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456939302271.jpg'),
(849, 198, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456939303067.jpg'),
(850, 198, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17456939303482.jpg'),
(861, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985797162.jpg'),
(862, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985791360.jpg'),
(863, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985796129.jpg'),
(864, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985791421.jpg'),
(865, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985792491.jpg'),
(866, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985799049.jpg'),
(867, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985792648.jpg'),
(868, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985794877.jpg'),
(869, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985791824.jpeg'),
(870, 200, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17456985793086.jpeg'),
(881, 202, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17457007814799.jpg'),
(882, 202, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17457007815932.jpg'),
(883, 202, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17457007819555.jpg'),
(884, 202, NULL, 'https://pharaohslegacy.cloud/image/Landmark/photos/17457007817020.jpg'),
(885, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014542053.jpg'),
(886, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014549029.jpg'),
(887, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014543287.jpg'),
(888, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014543286.jpg'),
(889, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014544434.jpg'),
(890, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014542189.jpg'),
(891, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014541925.jpg'),
(892, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014545880.jpg'),
(893, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014542492.jpg'),
(894, 203, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457014544750.jpg'),
(895, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045915484.jpg'),
(896, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045919994.jpg'),
(897, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045912341.jpg'),
(898, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045918771.jpg'),
(899, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045916757.png'),
(900, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045916671.jpg'),
(901, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045913081.png'),
(902, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045919409.jpg'),
(903, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045914139.jpg'),
(904, 204, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457045917222.jpg'),
(905, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065249282.jpg'),
(906, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065241715.jpg'),
(907, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065246279.jpg'),
(908, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065242020.jpg'),
(909, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065249431.jpg'),
(910, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065243386.jpg'),
(911, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065241900.jpg'),
(912, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065246965.jpg'),
(913, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065246929.jpg'),
(914, 205, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457065248272.jpg'),
(915, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075113544.jpg'),
(916, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075117488.jpg'),
(917, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075118371.jpg'),
(918, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075114662.jpg'),
(919, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075115198.jpg'),
(920, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075115337.jpg'),
(921, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075117970.jpg'),
(922, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075116394.jpg'),
(923, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075117264.jpg'),
(924, 206, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457075119424.jpg'),
(935, NULL, 27, 'https://pharaohslegacy.cloud/image/trips/17457120524640.webp'),
(936, NULL, 27, 'https://pharaohslegacy.cloud/image/trips/17457120529079.webp'),
(937, NULL, 27, 'https://pharaohslegacy.cloud/image/trips/17457120528951.webp'),
(938, NULL, 27, 'https://pharaohslegacy.cloud/image/trips/17457120523596.webp'),
(939, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150026059.webp'),
(940, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150022571.webp'),
(941, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150028726.webp'),
(942, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150021814.webp'),
(943, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150022203.webp'),
(944, NULL, 28, 'https://pharaohslegacy.cloud/image/trips/17457150025102.webp'),
(945, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157943538.webp'),
(946, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157944677.webp'),
(947, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157945091.webp'),
(948, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157947577.webp'),
(949, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157949620.webp'),
(950, NULL, 29, 'https://pharaohslegacy.cloud/image/trips/17457157942476.webp'),
(951, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170269848.webp'),
(952, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170261391.webp'),
(953, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170268487.webp'),
(954, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170263973.webp'),
(955, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170266802.webp'),
(956, NULL, 30, 'https://pharaohslegacy.cloud/image/trips/17457170262150.webp'),
(957, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181985338.webp'),
(958, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181987967.webp'),
(959, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181982667.webp'),
(960, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181988496.webp'),
(961, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181985477.webp'),
(962, NULL, 31, 'https://pharaohslegacy.cloud/image/trips/17457181987951.webp'),
(970, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564361671.jpg'),
(971, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564362152.jpg'),
(972, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564368824.jpg'),
(973, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564369632.jpg'),
(974, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564363786.jpg'),
(975, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564361299.jpg'),
(976, 208, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457564368752.jpg'),
(977, NULL, 32, 'https://pharaohslegacy.cloud/image/trips/17457566156881.webp'),
(978, NULL, 32, 'https://pharaohslegacy.cloud/image/trips/17457566152607.webp'),
(979, NULL, 32, 'https://pharaohslegacy.cloud/image/trips/17457566153623.webp'),
(980, NULL, 32, 'https://pharaohslegacy.cloud/image/trips/17457566157987.webp'),
(981, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573918002.jpg'),
(982, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573914048.jpg'),
(983, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573917419.jpg'),
(984, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573919777.jpg'),
(985, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573916892.jpg'),
(986, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573914434.jpg'),
(987, 209, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457573916637.jpg'),
(988, NULL, 33, 'https://pharaohslegacy.cloud/image/trips/17457574048343.webp'),
(989, NULL, 33, 'https://pharaohslegacy.cloud/image/trips/17457574044013.webp'),
(990, NULL, 33, 'https://pharaohslegacy.cloud/image/trips/17457574048341.webp'),
(991, NULL, 33, 'https://pharaohslegacy.cloud/image/trips/17457574044961.webp'),
(992, NULL, 33, 'https://pharaohslegacy.cloud/image/trips/17457574042744.webp'),
(993, 210, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457574643438.jpg'),
(994, 210, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457574649559.jpg'),
(995, 210, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457574644160.jpg'),
(996, 210, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457574648782.jpg'),
(997, 210, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457574648321.jpg'),
(1003, 212, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457581178655.jpg'),
(1004, 212, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457581171679.jpg'),
(1005, 212, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457581179338.jpg'),
(1006, 212, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457581175973.jpg'),
(1007, 212, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457581171172.jpg'),
(1008, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583148958.jpg'),
(1009, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583141382.jpg'),
(1010, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583149038.jpg'),
(1011, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583141665.jpg'),
(1012, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583145068.jpg'),
(1013, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583148154.png'),
(1014, 213, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457583146777.jpg'),
(1015, 214, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457586978099.jpg'),
(1016, 214, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457586977876.jpg'),
(1017, 214, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457586975559.jpg'),
(1018, 214, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457586978424.jpg'),
(1019, 214, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457586973875.jpg'),
(1020, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589527504.jpg'),
(1021, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589526828.jpg'),
(1022, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589524693.jpg'),
(1023, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589523094.jpg'),
(1024, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589527437.jpg'),
(1025, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589526332.jpg'),
(1026, 215, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457589522984.jpg'),
(1027, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590145375.webp'),
(1028, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590144982.webp'),
(1029, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590146900.webp'),
(1030, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590147057.webp'),
(1031, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590147783.webp'),
(1032, NULL, 34, 'https://pharaohslegacy.cloud/image/trips/17457590147810.webp'),
(1033, 216, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457590385284.jpg'),
(1034, 216, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457590385189.jpg'),
(1035, 216, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457590387107.jpg'),
(1036, 216, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457590389771.jpg'),
(1037, 216, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457590384287.jpg'),
(1038, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597398903.jpg'),
(1039, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597395002.jpg'),
(1040, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597392550.jpg'),
(1041, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597394721.jpg'),
(1042, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597391329.jpg'),
(1043, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597396099.jpg'),
(1044, 217, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457597392556.jpg'),
(1045, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601327291.webp'),
(1046, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601324508.webp'),
(1047, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601324173.webp'),
(1048, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601322177.webp'),
(1049, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601321421.webp'),
(1050, NULL, 35, 'https://pharaohslegacy.cloud/image/trips/17457601329447.webp'),
(1051, 218, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457603734903.jpg'),
(1052, 218, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457603738132.jpg'),
(1053, 218, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457603731861.jpg'),
(1054, 218, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457603732739.jpg'),
(1055, 218, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457603733249.jpg'),
(1056, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605079659.jpg'),
(1057, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605077902.jpg'),
(1058, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605077959.jpg'),
(1059, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605075186.jpg'),
(1060, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605076323.jpg'),
(1061, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605071608.jpg'),
(1062, 219, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457605078505.jpg'),
(1063, 220, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457611076571.jpg'),
(1064, 220, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457611075236.jpg'),
(1065, 220, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457611078806.jpg'),
(1066, 220, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457611078760.jpg'),
(1067, 220, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457611071120.jpg'),
(1068, 221, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457631848220.jpg'),
(1069, 221, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457631847541.jpg'),
(1070, 221, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457631841645.jpg'),
(1071, 221, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457631843360.jpg'),
(1072, 221, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457631845029.jpg'),
(1073, 222, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457639771832.jpg'),
(1074, 222, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457639779090.jpg'),
(1075, 222, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457639774386.jpg'),
(1076, 222, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457639773197.jpg'),
(1077, 222, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457639778226.jpg'),
(1078, 223, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457653248231.jpg'),
(1079, 223, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457653248786.jpg'),
(1080, 223, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457653244190.jpg'),
(1081, 223, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457653245795.jpg'),
(1082, 223, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457653243630.jpg'),
(1083, 224, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457664601356.jpg'),
(1084, 224, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457664609466.jpg'),
(1085, 224, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457664607059.jpg'),
(1086, 224, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457664604150.jpg'),
(1087, 224, NULL, 'https://pharaohslegacy.cloud/image/ShoppingCenter/photos/17457664606463.jpg'),
(1088, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856562467.jpg'),
(1089, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856568629.jpg'),
(1090, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856568299.jpg'),
(1091, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856566215.jpg'),
(1092, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856561807.jpg'),
(1093, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856568974.jpg'),
(1094, 225, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457856566689.jpg'),
(1095, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867098101.png'),
(1096, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867093084.jpg'),
(1097, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867092558.jpg'),
(1098, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867091485.jpg'),
(1099, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867094977.jpg'),
(1100, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867096095.jpg'),
(1101, 226, NULL, 'https://pharaohslegacy.cloud/image/restaurants/photos/17457867095929.jpg'),
(1102, 227, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457898756022.jpg'),
(1103, 227, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457898759849.jpg'),
(1104, 227, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457898752527.jpg'),
(1105, 227, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457898751140.jpg'),
(1106, 227, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457898752157.jpg'),
(1107, 228, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457908476567.jpg'),
(1108, 228, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457908472010.jpg'),
(1109, 228, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457908474950.jpg'),
(1110, 228, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457908473531.jpg'),
(1111, 228, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457908472474.jpg'),
(1112, 229, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457914906578.jpg'),
(1113, 229, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457914902908.jpg'),
(1114, 229, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457914906314.jpg'),
(1115, 229, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457914903700.jpg'),
(1116, 229, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457914901966.jpg'),
(1117, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924064414.jpg'),
(1118, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924063194.jpg'),
(1119, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924065900.jpg'),
(1120, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924062132.jpg'),
(1121, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924061198.jpg'),
(1122, 230, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457924065686.jpg'),
(1123, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930467648.jpg'),
(1124, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930464948.jpg'),
(1125, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930462102.jpg'),
(1126, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930464531.jpg'),
(1127, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930462262.jpg'),
(1128, 231, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457930462207.jpg'),
(1129, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936585830.jpg');
INSERT INTO `photos` (`photo_id`, `Item_ID`, `trip_id`, `image_path`) VALUES
(1130, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936582074.jpg'),
(1131, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936586374.jpg'),
(1132, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936582259.jpg'),
(1133, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936585604.jpg'),
(1134, 232, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457936587742.jpg'),
(1135, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943017563.jpg'),
(1136, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943015953.jpg'),
(1137, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943017751.jpg'),
(1138, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943012717.jpg'),
(1139, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943019747.jpg'),
(1140, 233, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457943012625.jpg'),
(1141, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949658871.jpg'),
(1142, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949656195.jpg'),
(1143, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949652942.jpg'),
(1144, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949658185.jpg'),
(1145, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949651842.jpg'),
(1146, 234, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457949657070.jpg'),
(1147, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956598381.jpg'),
(1148, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956598553.jpg'),
(1149, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956597196.jpg'),
(1150, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956599630.jpg'),
(1151, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956595830.jpg'),
(1152, 235, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457956592522.jpg'),
(1153, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962035525.jpg'),
(1154, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962032040.jpg'),
(1155, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962033851.jpg'),
(1156, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962032145.jpg'),
(1157, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962036690.jpg'),
(1158, 236, NULL, 'https://pharaohslegacy.cloud/image/Hotel/photos/17457962038428.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `profile_update_tokens`
--

CREATE TABLE `profile_update_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `cuisine_type` varchar(100) NOT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `phone` varchar(200) NOT NULL,
  `menu_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `restaurants`
--

INSERT INTO `restaurants` (`id`, `Item_ID`, `cuisine_type`, `website_link`, `facebook_link`, `phone`, `menu_link`) VALUES
(31, 200, 'International Fine Dining', 'https://www.lepacha.com/', 'https://www.facebook.com/LePacha1901/', '0227356730', 'https://www.lepacha.com/restaurants/'),
(33, 203, 'International Cuisine', 'https://www.tripadvisor.com/Restaurant_Review-g294201-d8052661-Reviews-Ted_s-Cairo_Cairo_Governorate.html', 'https://www.facebook.com/TedsEgypt/', '01206660120', 'https://www.elmenus.com/cairo/teds-87wg'),
(34, 204, 'French Bakery & Café', 'https://www.paularabia.com/english/egypt/menu/breakfast', 'https://www.facebook.com/PAUL1889.arabia/about_contact_and_basic_info?locale=ar_AR', '01211221911', 'https://www.elmenus.com/cairo/paul-3vk7/mohandessin-kr73'),
(35, 205, 'Japanese Fine Dining', 'https://www.kazokuegypt.com/', 'https://www.facebook.com/kazokuEgypt/?locale=ar_AR', '01270066600', 'https://www.kazokuegypt.com/_files/ugd/f3847d_80a0e0e418714ccca64dd09555b65d74.pdf'),
(36, 206, 'Mediterranean & Asian Fusion', 'https://www.sachirestaurant.com/sachi-heliopolis', 'https://www.facebook.com/sachirestaurantsegypt/', '01274444777', 'https://www.sachirestaurant.com/'),
(38, 208, 'Egyptian Street Food', 'https://abu-tarek.com/menu', 'https://www.facebook.com/koshariabotarek/?locale=ar_AR', '01200099980', 'https://menuegypt.com/ar/%D9%83%D8%B4%D8%B1%D9%89-%D8%A7%D8%A8%D9%88-%D8%B7%D8%A7%D8%B1%D9%82'),
(39, 209, 'Fast Food', 'https://mcdonalds.eg/', 'https://www.facebook.com/McDonaldsEgypt/', '19991', 'https://menuegypt.com/ar/%D9%85%D8%A7%D9%83%D8%AF%D9%88%D9%86%D8%A7%D9%84%D8%AF%D8%B2'),
(40, 213, 'Fast Food', 'https://egypt.kfc.me/en/home', 'https://www.facebook.com/KFCMasr/', '19019', 'https://menuegypt.com/ar/%D9%83%D9%86%D8%AA%D8%A7%D9%83%D9%89#google_vignette'),
(41, 215, 'Fast Food', 'https://egypt.burgerking.delivery/', 'https://www.facebook.com/BK.EGYPT/?locale=ar_AR', '16977', 'https://menuegypt.com/burger-king'),
(42, 217, 'Pizza / Fast Food', 'https://uae.pizzahut.me/en/home', 'https://www.facebook.com/PizzaHutEgy/?locale=ar_AR', '19000', 'https://menuegypt.com/pizza-hut'),
(43, 219, 'Coffee / Cafe', 'https://www.starbucks.com/', 'https://www.facebook.com/Starbucks/?locale=ar_AR', '19666', 'https://menuegypt.com/starbucks#google_vignette'),
(44, 225, 'Egyptian Street Food', 'https://www.koshary-eltahrir.com/ar', 'https://www.facebook.com/ElTahrirEG/?locale=ar_AR', '01112473124', 'https://menuegypt.com/koshary-eltahrir'),
(45, 226, 'Turkish Cuisine', 'https://www.nisantasi-int.com/', 'https://www.facebook.com/nisantasi.eg/?locale=ar_AR', '01281111222', 'https://www.elmenus.com/cairo/nisantasi-958x6');

-- --------------------------------------------------------

--
-- بنية الجدول `reviews`
--

CREATE TABLE `reviews` (
  `Rev_ID` bigint(20) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `date` date NOT NULL,
  `rating_value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `reviews`
--

INSERT INTO `reviews` (`Rev_ID`, `id`, `Item_ID`, `content`, `date`, `rating_value`, `created_at`, `updated_at`) VALUES
(149, 62, 153, NULL, '2025-04-27', 5, NULL, NULL),
(150, 62, 154, NULL, '2025-04-27', 5, NULL, NULL),
(151, 62, 158, NULL, '2025-04-27', 5, NULL, NULL),
(152, 62, 161, NULL, '2025-04-27', 5, NULL, NULL),
(153, 62, 163, NULL, '2025-04-27', 5, NULL, NULL),
(154, 62, 176, NULL, '2025-04-27', 5, NULL, NULL),
(155, 62, 126, NULL, '2025-04-27', 5, NULL, NULL),
(156, 62, 131, NULL, '2025-04-27', 5, NULL, NULL),
(157, 62, 137, NULL, '2025-04-27', 5, NULL, NULL),
(158, 62, 200, NULL, '2025-04-27', 5, NULL, NULL),
(159, 62, 209, NULL, '2025-04-27', 5, NULL, NULL),
(160, 62, 219, NULL, '2025-04-27', 5, NULL, NULL),
(161, 62, 215, NULL, '2025-04-27', 5, NULL, NULL),
(162, 62, 214, NULL, '2025-04-27', 5, NULL, NULL),
(163, 62, 221, NULL, '2025-04-27', 5, NULL, NULL),
(164, 62, 223, NULL, '2025-04-27', 5, NULL, NULL),
(165, 57, 153, NULL, '2025-04-28', 5, NULL, NULL),
(166, 57, 154, NULL, '2025-04-28', 4, NULL, NULL),
(167, 57, 156, NULL, '2025-04-28', 3, NULL, NULL),
(168, 57, 157, NULL, '2025-04-28', 4, NULL, NULL),
(169, 57, 158, NULL, '2025-04-28', 5, NULL, NULL),
(170, 58, 153, 'good', '2025-04-28', 4, NULL, NULL),
(171, 66, 154, 'Good place', '2025-04-29', 5, NULL, NULL),
(172, 71, 229, 'Beautiful', '2025-04-29', 5, NULL, NULL),
(173, 72, 155, 'very impressive', '2025-04-30', 5, NULL, NULL),
(174, 72, 155, 'very good place', '2025-04-30', 4, NULL, NULL),
(175, 72, 200, 'very delicious', '2025-04-30', 5, NULL, NULL),
(176, 72, 214, 'highly recommended', '2025-04-30', 4, NULL, NULL),
(177, 72, 131, 'good airport', '2025-04-30', 5, NULL, NULL),
(178, 72, 229, 'good and vey beautiful hotel', '2025-04-30', 4, NULL, NULL),
(179, 57, 206, NULL, '2025-06-10', 4, NULL, NULL),
(180, 58, 229, 'good', '2025-06-15', 5, NULL, NULL),
(181, 77, 227, NULL, '2025-06-22', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `sessions`
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
-- إرجاع أو استيراد بيانات الجدول `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0M7P5bwaCNcEpzjUWoglEREaGZ8h4dZODZXHKjz1', NULL, '213.180.203.164', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXJjazd2OXNLdW9CRDlnT3psOXIxUmdtSDNPdkdzeGNZbE5KVkE2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751214277),
('0yDhAoimgk23UfACv0Ebwd6i3vhH7bP43XEJzYT3', NULL, '51.68.111.238', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.2; http://mj12bot.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME5ua3E3STNzdU82OUMwSnlGbXJBakJRWGduMXZ5TzJQa1ZjdHVMUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751283192),
('1bH7cbAVbJ586GcTXHdfuJhlfO89pYGtCHYHKMnn', NULL, '165.227.229.163', 'Mozilla/5.0 (X11; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmt3dHE0Z3k0SXhZWHlwQlJwYnpzZGJRQUpNcXBkeGpFQ1BmQkhMbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751107806),
('1TgzshtOYTrYMbfnGLaLhO0GYXuV0nfmri7VdGxH', NULL, '156.178.242.168', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmRmbDlUbmg2bEo5R1Znc3lmaUlYMEJ0eDRmT09PUjNGd285eHE3WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750849974),
('30bTj70BZ2Nk6j87F78l5SFX0mxZ80PLFaEY9UOl', NULL, '2a02:4780:40:c0de::6', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUk2RU1PR3pjNTBYTUtGY1pNRTBlZng5SkVxY2tJR1FjV29BMkVJVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751083711),
('4HvAsEZkYFM3bAcjlRj9xy7TD5Wl7vPGxuNhm7ss', NULL, '2a02:4780:40:c0de::6', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzJodnI0d2NtRkVSVHJ5R3MzNE5HM2VmUWNNVVBncVpxOG1HRk50ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750921234),
('4UUutRpTD41BO4EzZxbJSOSf5z0w9MR7rWyR93Wn', NULL, '34.41.124.182', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVgzMFdjQndnbFNNRFdPU2lqcEF3Y0x3YmxBWjhYYlhhcnkzMTNJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750958596),
('5ECyHxCJjp3tI0vsPCcF3FAZv5w7ihcvJ6hzS69K', NULL, '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2Y1eTF5REhHSnVlbjhTRkJvNjF6T1NXdnJBMHRQanVYWGVFMVo3MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751257580),
('5P1Pk5DKuWsQ969sF7f8SCYOpXD0jH7PqHlpy5pG', NULL, '144.76.67.169', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUloMW1DZWdram1kZk9Ud2IxQWZxQXVpcVgzYnJ3azM2QnFRcXkydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751196010),
('608Kfrx3H8abWOCEGKKROUQJueb1NDRe3TP31Hkc', NULL, '110.40.186.63', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmtMUDZQUWFhNEtpdHNVVjVDMFYyVkVKOVNjTE1CaFBER3doc2tZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751176178),
('6TG0mbWvr8TR0ZrnEW9qmztwpv38Z5waSKmXxmpx', NULL, '49.51.203.164', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWkyMTliRVRwRjZ0elpJZ2l3QmhvRmdHWGU2UnBmNDkzVUJJSUhBaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751138296),
('7GDMiJjva8THoPeDiqPNQNrzzXDhKGxpN6dGx7An', NULL, '66.249.70.132', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.103 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakpGRVhWYk1pSjdmNldWUlp4YVd4TmpacHZQdEJqSVp5dVZzZFFwRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751085018),
('7l2OHYjk9LBHN4ZAWu0kdDBHaOn8K78Fx3CkhNtw', NULL, '43.153.107.22', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlk3VnVxQUhqbjdzUnpST3Zud1ppT2xrc1dCNUZqanVSQWg1SUdFMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751241676),
('9qVj0JJ6RmBINoFT3vyfZjulqbBiQpLpw01ZmFdo', NULL, '3.88.154.241', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1doVVhIMFI0RFZndGc1VGNxc3Nuc1BGdFZzdlRsZWZDYWlJT1JxUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751070372),
('9tAG5gmPVU25rV9z36JQPrnLh8I3rSc7BlgvOSbH', NULL, '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDJYc3J0RW41a2pVY2puaksyOTlJcEpjbGJjTjU0VTF4NzlVZldybSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750996194),
('ai1XlM1mA3kMkiNcfOgiMqfDAfmrHOuUlLBkdcLw', NULL, '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYWFxeE9KTmJSS1FBdjRXeHRuWWxwOVJjMUI1N0xQRWg5aEZKYWR6NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750922222),
('AOaNQS7iRmFey3CdeePI0SL5R1vNCFzYKtoallfx', NULL, '159.203.9.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjJZZUo5bEtiVEtMZFlSZTJNN2dxMnNhRHhhMEQwNEwxT0NPUmdlRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751027891),
('aWHkZv42HAeYTEo7GBJEzC9cnmNrpRUOXjpepAnT', NULL, '3.88.154.241', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDlzRTd0OWVjTU5ic1pDMHUzeWZ5bzU2ajVkT3N3NlFHN1lhbUhUeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751070703),
('baP9z5djEhWQmrSOrX38a5ke8OvgqfeZ5H1zL6ZO', NULL, '114.96.103.33', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2xHdGpCcmJqYTZ3aVdsWDBQRnRnZnRrUVhYcUpQSWJCdkE1Y1ZBSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750997502),
('bEmVxGmEZW2kDRVA1QXVgzEgO4WgBqcDPrr8FUzR', NULL, '42.236.17.252', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiempZNGVRb3BRRXJwR3hhQ2E1eHM2eGNmWGtldW5EeUVCVXZwelp3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751203738),
('BePyu8O4ignDfFyftOxptmEVIkUDMyIgNcF94hSM', NULL, '132.232.165.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOW4wZmN0ekh4enRVMW5IS2VjcHhRQUNhMTNla3Z2OXZ5RHBTTTVnaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750986488),
('c8Is37sqWZPrSfcH1eF2DLcBwfDns5FnQRYXPCNt', NULL, '40.77.167.76', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2lLY2MxT3NvbHZWV3djaEFBM0RoRWE5OHlLYjQ2THRVakZQdE1nZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751058597),
('DcN7b2vjD5JHSk5zd6kuVPc2qknYBeXq0zKbPYbe', NULL, '119.45.20.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTlPRUptc0ZjMFFxdmdoVGYyOWR5WVIwd21vc2p1U0lTUXlsR2s4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751264775),
('DFa9OgDstG66Ofz8JOX8AnewGnCkYAoQXRPVczxm', NULL, '41.46.33.252', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3dlbnhNcWRVVUlpMEZNR1VFSjlMTjQzUHVCUUM2SWR1YXBnT3dwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751275703),
('E2LDlqK5nfKjtMOd3vRiiWgAda9ThNsAVlmbf0d3', NULL, '54.191.111.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXdseW1rN0tyemRja1g4TU5RdnE0bTM4MmFVemRPa0tDYnduS3ZLRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751195254),
('eAx3nMJiDBZtiEEhcRrPWV1nMFNFcQCxyyNNOMqC', NULL, '156.222.80.126', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0RmZ1RWTzhra1B5MDJqRXREQ3ZCM095T0R3Z2tJOXZ6Y1QwWUVZTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751150575),
('eYFwvaIw3JtNvAZcDU0XYMF7Gn9cqpRZ3kVzp0cz', NULL, '82.156.68.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjRVSThvVkUzVkpTeDBBR0JTVkdrbGUzNjE5NzhKRUFvWmVTekFKdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750930345),
('f17zbCmDWPTWeRsYkCqQDWbM5iBylPMxRkLRfQkA', NULL, '140.143.98.18', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hEUkNWY0QwNUtJZG44VWF0NGhBVHFYcWdZU2tuT3Z4bFE5MURxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751143521),
('FdC36jZu6Ep3R09w0Bl1I4UR6gP9ZxsbWZ42ixp8', NULL, '122.51.104.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnpacFNnVVJDdDdpbDZ3aWNYS05SU0pWSnBxNkZjQnllUHBERFVRTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750941788),
('fEYRLvW83ULCNo4GMw94hhmVYrJKXp4eeDWdSjWw', NULL, '46.105.42.135', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.2; http://mj12bot.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVgwelNUWTZCNUZWbDAzc29MZmZ5YXlzejkwQWZRYWRNUjZUWHdOdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751013596),
('G0oicoajchKF4mG31TWfQWPg3yhuP2CCJxsjN8to', NULL, '18.237.51.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDNuZzJKeGkwZjJLeFZsR083M0NXSWdkWG11UWdLZzFBS09Na080TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751013517),
('GayWaof1zxuXesH4vQML5YmeCddnPsQdGYuhHrWl', NULL, '95.108.213.148', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicldjbmw0ODF3SWNPOVVKSk5ySWMySHBzbkI4dU9RSXppRmJyb241cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751122866),
('gIgJEIIxCaWi1ucAXfNsRs9EOSqFCgNtgdu0qtFI', NULL, '74.125.210.133', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVBXVFRlSVpuemNyNDJ5ZTJKdklvYWp6ek1MbGtQZmJzYUF5ejlNSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751275708),
('GWYrW2IRcBbHrg201XptEYfq0YATGzFhqpOOJyWh', NULL, '34.127.68.46', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXhwUzBwbDBtc0RBaGd5TWFyZ1lyT2t0QUZ4enA5dUJrWnBEaVpHRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751046759),
('gXXEAq0br6Y1Z3bVKNMRyiyYgwo81TMwLtjP9E1X', NULL, '93.159.230.85', 'Mozilla/5.0 (Linux; arm_64; Android 12; CPH2205) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.86.00 SA/3 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVF4UUpROTdsVUI1SVhYRXNBdnp6WHVWYmJZaThYRzRLdm5hM0ZDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751224476),
('h9MD7N4kemACjwtUDxfldHUMXKCBVZnuQsoSlT9n', NULL, '27.115.124.49', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk5jUFJwc0NhNEMxRHFQSFRwdkRxRHl5N2RJQ3RsWThjd3NJY04xYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751153736),
('HkbAS4OAxL30xc1NoI5xndK1nadSFyhPoPISzX3F', NULL, '44.203.252.127', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXhOZFB0SU51clZoNzI5Ylp6Z1piSk1IV3ZROWhTbVVyYVIwamt4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751073275),
('hmCbZlj9uRvHCL4NgFnjKOb3l9CALV0ou3CMeaLi', NULL, '51.68.236.114', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.2; http://mj12bot.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDBuSVBFZFNxMDhaa1R5SzZNUTdabkxMb2RnRFJaa0NraGVKcHVQaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751013771),
('hYOoOwTB9BFWQmmVDZcld4BCYw68snwrrwdPBdY8', NULL, '66.249.70.131', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.103 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOENaNGJIaEh1Q2Y0N1kzTjYwQmY5NWRoQmVNUGdoZDk5eXhCdVMzSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751261947),
('I93OMsQhek3Lqr0gYZ4ouHGFQEvwRljOx3xapxOA', NULL, '93.158.90.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmJob21EZDV1VzZ0RzN0dmFPcVlsSjlFaE44bTk5Z0FsNXdPdTdUTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751148057),
('IfUpbDedGmVR3bQ7KvFNU1SYefJZLAgORyIGIDpu', NULL, '2a03:2880:f804:10::', 'meta-externalagent/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXBiRFRCMDlrVTQ2dG8wZkk5dVByQnFVQUtSMlF3YlFpZFhERDBTUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751179216),
('ioh8qQLgHh2w6QeVXUqHCMergdf1q1Nr3g3IovgS', NULL, '54.184.214.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3FLZUxCZjEwcmY5RE9wZ3V2R2ZsUW14dXFENWpnVGE4eUZNZ1liaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750852398),
('JH2A7EZ16XVAZdKSSIZbiwcIUlcEy8pNlxx1vbk7', NULL, '54.191.111.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1RDbDRkU1FVSWNkQXkyY3UxRWxReDdNS0U0bGtBYWsxUmtySXI0RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751195253),
('Ji9Ef29fDYIIrluuoCQsdp055zVg7ChWlvaWX1j4', NULL, '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidFE0bENTcDY2Z3kxSUptMlpaSDh6NWhHbmNqTDNteFFOZThhYVhwSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751185435),
('KJbw0jsxPX7OzEMwNejmetD5l4IFVlhDY21fRSwu', NULL, '2a02:4780:40:c0de::6', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSDc5UmE0dmpuSEtkeEowd0NucnB0VHpTaEhZMlVSbDBRRG9KVFhCTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750987667),
('KNHMoApsfcTK7weQ4iuN3xMP0dJSJLCg7vxrQNcE', NULL, '138.246.253.7', 'quic-go-HTTP/3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVktrTUI4VGlLYWx6SWx6ZFJQcTViVURsRU5Od3luU3hRazdRY1djNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751171481),
('KwwShxnWKKeSSdvfrPsIZfZp2e3C9zNjuA7PowKQ', NULL, '2a02:4780:40:c0de::2a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQnY4Y0Jwd245OTNqODNzRXlZNjRsNjVKdTFBTWhNOHV1Mzc3RzczRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751101628),
('lL9gvoXsWduIhidpKavFpZ4wSqMA02fGdGMYEedU', NULL, '165.232.154.209', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVM2bzNPQmpPbVBIQlJFNXpFU0ZHcTJzdG5PVldZWkNaNGN1c3JkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750855409),
('LyC5rrntLTgPB8MsHa8gd2ZgjkFkx2TOneuw4dzt', NULL, '154.184.1.42', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTJacE4yTDlNc2hhbFJiZ2hWM1hhVGxyTnh6RTZEVzZvcXl4bURqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750849829),
('mL1PqEs6bSBFtGzEYQ015FF0Jg1KVavjSsN7lQzg', NULL, '41.46.33.252', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlhJaGplWDQ0RVlDSjd5MnlONjdPNjJLNWV0ajJtSHZXcmNKSVFiZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751275708),
('MLA0VxwfmLzfkGoRDfA7SSKivovGbTMUeNbZ1gFm', NULL, '51.68.111.238', 'Mozilla/5.0 (compatible; MJ12bot/v2.0.2; http://mj12bot.com/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkc5RjhFSThjcGxnamU0UW8yMTBvUzYxd1R2dldhNGZmeEtRZ0lCdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751283193),
('NJ7JHK8rBhhNzdIn23Un6X8FdZOxK44q2wPKZ2ac', NULL, '118.195.165.218', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkNPckRnVVFNWGxIak1veTVXYm1uRERMMllpcFlGNXNsbDcyelJlSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751020059),
('OIctRjMbyhQHi7Uz52ylZnio0j7MhcGbbfaTw3CA', NULL, '82.156.68.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianc4ZDFCdUplUG94VUZmQThsaWFVS0VkODM3SmZqdXlTNzI5OVJrSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750953547),
('osdTX7SDGXbLU5VuO4V49d0KMELPqXz5kT4DGxgU', NULL, '66.249.70.131', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.103 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGg2NGMyUW5yNnlNUUtjU2Vvc0ZLUnExYkU2VFl4ZjdhUVNVNUdydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751012079),
('Ou7TJfYO83z0mz9rSwDdH1lQE0iVT95W5d1I029N', NULL, '74.125.210.131', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkxSQnY0SjNLc3ZoN2c1QWRJQ3ZOZ0ZSWnMzeVpkUFdDR0FXT2FxYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751275708),
('OZC1Yt2SMIqxCdOOFs1KEB0QHbV7lwMgHB2Janc2', NULL, '44.203.252.127', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME9teHVkbG1HdUg0UGVQSGluYnI3QXNMZGZmd2o4eG5Id1lkUGJvSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751072947),
('Px72cI9fRQr7kDSxpaQx7fk01MZx51ugJO04bYfR', NULL, '144.126.203.24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnZiMWpVQnI0MkQxYmIwTU5iclRzamNsWkxXbVZ5aDg2b2dLS1JqcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751210052),
('QatitsacZXrLBrTLrk6unFC2HFJ6bjFXNg3HqoI6', NULL, '41.40.170.153', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXN1czNDelNGYTRLbnJoTTZZZFdwM2trSXZKV010MGFrbkVNc0hGMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751086572),
('qd7jbTJ6t8jrB2zlQY4C4c10eau9LHplGkp8FhjF', NULL, '74.125.210.131', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjJPTjlpaWd0WnNkeHhSek9RV2dyQU51OEtCQXFkWkpMeVg4cjk4TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751042177),
('Qnk3zpE4aXOzDsQRNGLTxglqpnI5phewkejlsjH7', NULL, '207.46.13.155', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlNPbW9oaTBXRTc1R25CYmhDeWVqbkNmU0lKV3NUOGhZMHA2OXVKVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750942179),
('qz71RqXNDcGoJD3DFCJJALQdEbuEOq8Y09b521Zz', NULL, '74.125.210.133', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWJvUjZEU2NIMlhoTGpFVFFxa3ZMWVp5TTVRSU9UeE10VUl6OWI2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751042178),
('RmejWP18QAinqU8kU8QOn4mFWHtWp1eKhNVL422U', NULL, '154.187.156.67', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmFoWHFCclJvV05raUZxYlgzUFhPVTFzdDdOR1ZhUEJBdFpxd3FoaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751042172),
('slcg7wTp1bzjqXTyyYh7hFL5S9ky8TBu80hgbCzp', NULL, '52.167.144.173', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHZrUGVOdDNoekR6NFFyUGlUMkl6dURad0hKanpLVmx2RjBJUXVvYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750912991),
('SLs9dThHN33mzP7inAKTzfvJ50SFXUTfCHqEge6Z', NULL, '132.232.203.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzRrTW91Y0c5SWo4NHlnWVdTR0RHMmYxT25Ma1d5c1hndWcyZnNRbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751064965),
('SMqQpTfufAIVEeoJU5WfaLnvvYzNSz7sWDgMXvlr', NULL, '20.171.207.44', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUxJRjEybDUwMUpaOHA2SUM0bXBGczlBak9adXR6ekZoQ2NoenNRbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751080202),
('Sr2sqWWWub4miirn3I7GdsrgijfeS8sLSmjZe3P7', NULL, '2a02:4780:40:c0de::6', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1BYQVNnQXV3MUtraE1VcGZGT2xmcTVsYVVwd1R6NWhGcm1waFp4diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751247854),
('swNi73bMgPfKrpYBXJKG1DEZ5cog2grysbZnoKk0', NULL, '82.156.68.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWw1ajR6eElGaW9LT3ZQNzRCbWNFRVdVUlRMU1lyMGJhNU43S0pQSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751198514),
('Tb4j7MxlW5jCuv0w7DTJEPmGeYT9PQTHju0oPePs', NULL, '95.108.213.179', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1V2NURIbGZpTXowN2lzbDNOcVlpTTI4bDM5Y0RWVEpsZDNFWjVVSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751029897),
('tWpjN9MVIEWQ7pKNA6g7QYL6j1s0HqXQFgrffuA0', NULL, '2a05:d018:1d9d:e700:1fdd:f8c3:59e6:5149', 'Pandalytics/2.0 (https://domainsbot.com/pandalytics/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzg1Q09MOFlWTjN4S0ZqSDBWNVFCNFJwY2tlcUIzdWs1Q01ndlpXZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751128817),
('uGxrCdpYseCCX4w2ND0QvIizWITkeDIdA73lkzYU', NULL, '154.184.1.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3A4bHpRUDdTbFBWNjNYRkczRW5UNzBwblhEQ3V3M2haMVpUVTJ4MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO319', 1750852049),
('uKep6cNdVA6fmW6YxNtBC6CV0lrYbWRRrYILtPQg', NULL, '119.45.20.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3czanN2TWhKNVZYZW9Rd25CRUlndFdLaThzNWNabjJ2b1lMcEJNRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751165064),
('uVAuwsEfkX1RaXqFvag8BSjJw4OqmzOwmG8EGiQn', NULL, '2a02:4780:40:c0de::6', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNTBMUXRnVTNHRTJKVTUxTWphYTJYTlVUWXRNbzczRUtzYldUSHJjTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751168045),
('VA46EUM9yBAFJTLv8wvrovEO9m4Rk9JnhfnF2ttL', NULL, '23.226.16.163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmprVEw2amQxblRBMmdscjE3RzE3STN5cmFxSEpSY2N3NVRSSDZYNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LnBoYXJhb2hzbGVnYWN5LmNsb3VkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751031077),
('Vq8yq8wWKuT9wZa46AMBkxWrl5VwK0qcOs6bLt9i', NULL, '44.243.116.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnlGZzVieDlHbUlkRmVSMldtWG9XYk1VbU0zdGJ5RkUxeUw3STB2YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751015571),
('VQpYl8ID5lqaCDnCl6hltAW5LgKVjdfAdAHOpo6W', NULL, '41.46.33.252', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmNEcnBJdU81djhRazh5ajhIdzJCSFRsS3dmcnA3RWFnaEtsVjdFRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751275708),
('vw1DmJ1yoD66y6os19MsEshmtDM61cuhyC7vTDjm', NULL, '118.89.233.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVFOSGdjS1R0RTdkZGFDMFJoZXpvQ09yWm9tOWhZdEp5dmRpRTdxRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750918897),
('WdCjqkMde6LTOAlOuqwNGwHnq4UOyYsXThHmfrY9', NULL, '44.243.116.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTU4MFQ5UHNnalpGczViMERjZzZkd01Cb0NkdkhFMFNVRm05V3RQayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751015569),
('Wi1G2etjMW5bqRXnBQ0oEeploZUvmyRhtgrLkmwg', NULL, '223.85.42.87', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFVsNmNqdnQwbGxMTVV2bVdXY2dMSDhVYXBmd2l0R2hJSjhyRExCMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751153733),
('XW2CI1QiMTSpx0SHZkUW6xwgEgB1PICR8Z8OQZA9', NULL, '196.221.251.79', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3lGbTlxblFiRkVHUDUxSWI0Y2o1ZnZ5dmMydExXUXlDUG14MGtUdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751279162),
('y81CCr4GktqZQGr0bS7xAkyWztYpwIGNwTWAgHd8', NULL, '52.167.144.217', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkd4eGg3emVLbkltZks3TUtuYlIzYVBoWHhJbG5xaWlrQUI0bkJRWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751276559),
('yfmsGsShAtBBO4Ys2FcR6HYiYirJ7sD23alJ82jS', NULL, '87.250.224.126', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGVGTHN4eVNXZHNUcEpJR0pxa21wWW9ndGJsRDY5UXdYQm52V0tSUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750893406),
('YvK2z9GKKyFpi87SVJ9bVdgkad3V5v53KUUj2UHA', NULL, '183.36.35.201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3phQ3dQUlJwWjZDRjNTOEduUlhNaTRVcVhJMVV3ZFgzOEpsMmNDTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751150000),
('YWZPgkBJEbv3GYpWKtRS06PBWTI10bXTFRz4VldG', NULL, '156.222.80.126', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk5IMEFGYlUzYUNqcDJHOUg5WHFUQnVEajNnWUQ3d0w0V2xSU2hyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751150571),
('Z0hG9At6xil0ztaXltr14cQ970MQY7TFPSDmDNWn', NULL, '154.184.1.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUpkNmhtekFXM2lsdkV3VzN5N1hYNGlubXE5VzA2Vzc2SXJndU5HOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750849182),
('zAP3IwKUaN6u6DGfPNj2p7q1nnaCY7rVg5E86vWt', NULL, '156.222.80.126', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieHZGZlBjY0RuWnBwckNNb3llY25WU2xWYUd4QXhPYk1LeFk4Vlp0SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751150558),
('zkhkyPTZWC7QIQzOro3MDMksQ5d3lenPvxrdvJy1', NULL, '154.184.1.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkFIZFRPc3BNTk5jc3hQbUd3Qmo0bVEyTnhPS3Q0R0JUc1Q4SWxwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750850098),
('ZkTyiAfKGtP1b9nIiDsoVsVaq8rjmtSsTb1f6MkP', NULL, '66.249.70.133', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.7151.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickpGYXVrOWZqRFBjNTlEM3U2bE1GTjdoaktxcTU0ZHJRcjhMM2ROcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751286059),
('ZMjAhk3ZYSLUzLmAHnPruz5tr5bYnjcYUEtB2V6t', NULL, '42.236.12.240', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36; 360Spider', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1pGQTdRdjc3WEE4YlN3bENPNFJvTkRwR2gwczVQTVBJTlozZ29CTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750930956),
('zud44AWsLUWvANd5RdZ01MD57A79UwRtgIT4TYfA', NULL, '27.115.124.33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzQ1YzlCUFNZUEhUczZtTW1ScVdKbGNyV01WaHNHQ1J1QnZSNWV3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcGhhcmFvaHNsZWdhY3kuY2xvdWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1751153743);

-- --------------------------------------------------------

--
-- بنية الجدول `shopping_centers`
--

CREATE TABLE `shopping_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Item_ID` bigint(20) UNSIGNED NOT NULL,
  `website_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `shopping_centers`
--

INSERT INTO `shopping_centers` (`id`, `Item_ID`, `website_link`) VALUES
(9, 210, 'http://mallofarabiacairo.com/'),
(11, 212, 'https://www.citystars-heliopolis.com.eg/en'),
(12, 214, 'https://www.festivalcitymallcairo.com/home'),
(13, 216, 'https://arkanplaza.com/'),
(14, 218, 'https://genena.com/'),
(15, 220, 'https://www.mallofegypt.com/?utm_source=google&utm_medium=organic&utm_campaign=google_my_business'),
(16, 221, 'https://www.citycentrealmaza.com/?utm_source=google&utm_medium=organic&utm_campaign=google_my_business'),
(17, 222, 'https://firstmallcairo.com/'),
(18, 223, 'https://web.facebook.com/SunCityMalleg/?_rdc=1&_rdr#'),
(19, 224, 'https://www.citycentrealexandria.com/?utm_source=google&utm_medium=organic&utm_campaign=Google_My_Business');

-- --------------------------------------------------------

--
-- بنية الجدول `steps`
--

CREATE TABLE `steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `step` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `steps`
--

INSERT INTO `steps` (`id`, `trip_id`, `step`, `created_at`, `updated_at`) VALUES
(83, 27, 'Day 1: Depart from Cairo to Luxor by flight. Visit Karnak Temple, Luxor Temple, and the Valley of the Kings. Overnight in Luxor.', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(84, 27, 'Day 2: Explore the Temple of Queen Hatshepsut, the Colossi of Memnon, and the Valley of the Queens. Embark on a luxury Nile cruise to Edfu. Overnight onboard.', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(85, 27, 'Day 3: Visit Edfu Temple, dedicated to Horus. Continue to Kom Ombo Temple. Arrive in Aswan and overnight in Aswan.', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(86, 27, 'Day 4: Visit Philae Temple, the High Dam, and the Unfinished Obelisk. Evening Nubian culture show on board. Overnight in Aswan.', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(87, 27, 'Day 5: Return to Luxor. Disembark and fly back to Cairo.', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(88, 28, 'Day 1: Depart from Sharm El Sheikh to St. Catherine’s Monastery. Enjoy a camel ride and visit the Monastery, a UNESCO World Heritage site.', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(89, 28, 'Day 2: Continue to Mount Sinai and hike to the summit to catch a stunning sunrise. Explore the desert landscapes, visit Bedouin camps, and enjoy a traditional meal.', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(90, 28, 'Day 3: Visit the Colored Canyon and return to Sharm El Sheikh.', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(91, 29, 'Day 1: Arrival in Hurghada from Cairo. Relax at a beachfront resort. Evening free for leisure.', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(92, 29, 'Day 2: Full-day snorkeling and diving trip to Giftun Island, one of the top diving spots in Egypt. Swim with colorful marine life and explore coral reefs.', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(93, 29, 'Day 3: Visit the Hurghada Marina, enjoy water sports, or explore local markets. Evening free for shopping or relaxation.', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(94, 29, 'Day 4: Return to Cairo.', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(95, 30, 'Morning: Depart from Cairo and head to Alexandria. Visit the Catacombs of Kom El Shoqafa, the Alexandria National Museum, and the Montaza Palace Gardens.', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(96, 30, 'Afternoon: Explore the Citadel of Qaitbay, located on the Mediterranean Sea. Visit the Bibliotheca Alexandrina, a modern library inspired by the ancient Library of Alexandria.', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(97, 30, 'Evening: Enjoy a seafood dinner at a restaurant overlooking the Mediterranean before returning to Cairo.', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(98, 31, 'Morning: Pickup from your hotel in Cairo. Visit the Giza Pyramids Complex: Great Pyramid of Giza, Sphinx, and the Valley Temple. Ride a camel or horse (optional).', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(99, 31, 'Afternoon: Visit the Egyptian Museum of Antiquities, home to over 120,000 ancient artifacts, including King Tutankhamun’s treasures.', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(100, 31, 'Evening: Enjoy a traditional Egyptian lunch at a local restaurant, followed by a visit to the Cairo Citadel and the Sultan Hassan Mosque.', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(101, 32, 'Day 1: Depart Cairo, explore Black Desert and Crystal Mountain, camp overnight in White Desert.', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(102, 32, 'Day 2: Visit Bahariya Oasis, hot springs, return to Cairo.', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(103, 33, 'Morning: Depart from Cairo to Fayoum Oasis. Visit Wadi El Rayan waterfalls.', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(104, 33, 'Midday: Sandboarding activities in the dunes.', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(105, 33, 'Afternoon: Visit Wadi El Hitan (Valley of the Whales) UNESCO site.', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(106, 33, 'Evening: Return to Cairo.', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(107, 34, 'Day 1: Arrival in Cairo. Airport transfer. Hotel check-in.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(108, 34, 'Day 2: Full-day Cairo tour: Pyramids of Giza, Sphinx, Saqqara.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(109, 34, 'Day 3: Egyptian Museum and Old Cairo (Coptic Cairo & Islamic Cairo).', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(110, 34, 'Day 4: Flight to Luxor. Visit Karnak and Luxor Temples.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(111, 34, 'Day 5: Valley of the Kings, Hatshepsut Temple, Colossi of Memnon.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(112, 34, 'Day 6: Nile Cruise to Edfu and Kom Ombo Temples.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(113, 34, 'Day 7: Aswan sightseeing: Philae Temple, High Dam.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(114, 34, 'Day 8: Early trip to Abu Simbel. Return to Aswan.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(115, 34, 'Day 9: Transfer to Hurghada by road.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(116, 34, 'Day 10: Free beach day in Hurghada.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(117, 34, 'Day 11: Snorkeling trip to Giftun Island.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(118, 34, 'Day 12: Optional diving or desert safari in Hurghada.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(119, 34, 'Day 13: Relaxation day at hotel.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(120, 34, 'Day 14: Return to Cairo. Departure.', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(121, 35, 'Day 1: Arrival in Cairo.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(122, 35, 'Day 2: Giza Pyramids and Egyptian Museum family tour.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(123, 35, 'Day 3: Sound and Light Show at Giza.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(124, 35, 'Day 4: Flight to Aswan. Visit Nubian Village.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(125, 35, 'Day 5: Nile cruise begins. Kom Ombo visit.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(126, 35, 'Day 6: Edfu Temple visit. Sail to Luxor.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(127, 35, 'Day 7: Karnak Temple visit with children’s discovery guide.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(128, 35, 'Day 8: Travel to Hurghada.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(129, 35, 'Day 9: Full beach day with waterpark.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(130, 35, 'Day 10: Glass-bottom boat tour.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(131, 35, 'Day 11: Leisure day.', '2025-04-27 13:22:12', '2025-04-27 13:22:12'),
(132, 35, 'Day 12: Return to Cairo. Departure.', '2025-04-27 13:22:12', '2025-04-27 13:22:12');

-- --------------------------------------------------------

--
-- بنية الجدول `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `stories`
--

INSERT INTO `stories` (`id`, `description`, `date`, `user_id`, `created_at`, `updated_at`) VALUES
(54, '\"The pyramids are breathtaking! A dream come true!', '2025-04-28', 58, '2025-04-28 05:38:22', '2025-04-28 05:38:22'),
(55, 'Good place highly recommended', '2025-04-28', 64, '2025-04-28 07:17:18', '2025-04-28 07:17:18'),
(56, 'Good place', '2025-04-28', 65, '2025-04-28 08:18:04', '2025-04-28 08:18:04'),
(57, 'Good', '2025-04-29', 66, '2025-04-28 22:49:47', '2025-04-28 22:49:47'),
(58, 'Good morning', '2025-04-29', 67, '2025-04-28 22:57:40', '2025-04-28 22:57:40'),
(60, 'If you haven\'t yet, definitely check out the Virtual Tour page on this site, the creators of this site are truly talented!', '2025-04-30', 69, '2025-04-29 21:25:54', '2025-04-29 21:25:54'),
(63, 'very nice place', '2025-05-08', 74, '2025-05-08 15:01:53', '2025-05-08 15:01:53'),
(64, 'Wow, what a beautiful museum! So much to see and enjoy', '2025-06-10', 57, '2025-06-10 13:47:12', '2025-06-10 13:47:12'),
(67, 'test', '2025-06-25', 58, '2025-06-25 11:51:00', '2025-06-25 11:51:00');

-- --------------------------------------------------------

--
-- بنية الجدول `story_images`
--

CREATE TABLE `story_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `story_images`
--

INSERT INTO `story_images` (`id`, `story_id`, `image_path`, `created_at`, `updated_at`) VALUES
(97, 54, 'https://pharaohslegacy.cloud/image/stories/17458187023845.jpg', '2025-04-28 05:38:22', '2025-04-28 05:38:22'),
(98, 54, 'https://pharaohslegacy.cloud/image/stories/17458187027068.jpeg', '2025-04-28 05:38:22', '2025-04-28 05:38:22'),
(99, 55, 'https://pharaohslegacy.cloud/image/stories/17458246383911.jpeg', '2025-04-28 07:17:18', '2025-04-28 07:17:18'),
(100, 56, 'https://pharaohslegacy.cloud/image/stories/17458282841328.jpg', '2025-04-28 08:18:04', '2025-04-28 08:18:04'),
(101, 57, 'https://pharaohslegacy.cloud/image/stories/17458805875490.jpg', '2025-04-28 22:49:47', '2025-04-28 22:49:47'),
(102, 58, 'https://pharaohslegacy.cloud/image/stories/17458810606082.jpg', '2025-04-28 22:57:40', '2025-04-28 22:57:40'),
(104, 60, 'https://pharaohslegacy.cloud/image/stories/17459619549340.jpg', '2025-04-29 21:25:54', '2025-04-29 21:25:54'),
(105, 60, 'https://pharaohslegacy.cloud/image/stories/17459619542904.jpg', '2025-04-29 21:25:54', '2025-04-29 21:25:54'),
(108, 63, 'https://pharaohslegacy.cloud/image/stories/17467165133860.jpg', '2025-05-08 15:01:53', '2025-05-08 15:01:53'),
(109, 64, 'https://pharaohslegacy.cloud/image/stories/17495632321995.jpg', '2025-06-10 13:47:12', '2025-06-10 13:47:12'),
(113, 67, 'https://pharaohslegacy.cloud/image/stories/17508522608710.png', '2025-06-25 11:51:00', '2025-06-25 11:51:00');

-- --------------------------------------------------------

--
-- بنية الجدول `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `from_location` varchar(255) NOT NULL,
  `to_location` varchar(255) NOT NULL,
  `trip_date` date NOT NULL,
  `trip_status` varchar(255) NOT NULL DEFAULT '''pending''',
  `offers` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `bayment_bersent` decimal(5,2) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `trips`
--

INSERT INTO `trips` (`id`, `name`, `description`, `from_location`, `to_location`, `trip_date`, `trip_status`, `offers`, `price`, `bayment_bersent`, `main_image`, `created_at`, `updated_at`) VALUES
(27, 'Luxor and Aswan Nile Cruise - 5 Days / 4 Nights', 'A luxurious 5-day journey through the heart of Egypt along the Nile River, visiting iconic landmarks including the Valley of the Kings, Luxor Temple, Philae Temple, and more, with stops in Luxor, Edfu, Kom Ombo, and Aswan.', 'Cairo', 'Luxor, Aswan', '2025-06-15', '1', 595.00, 700.00, 15.00, 'https://pharaohslegacy.cloud/image/Trips/17457120528357.webp', '2025-04-27 00:00:52', '2025-04-27 00:00:52'),
(28, 'Sinai Desert Adventure - 3 Days / 2 Nights', 'A thrilling 3-day adventure in the Sinai Desert, with hiking, desert camping, and visits to historical sites like St. Catherine’s Monastery and Mount Sinai.', 'Sharm El Sheikh', 'Sinai Peninsula', '2025-08-10', '1', 0.00, 250.00, NULL, 'https://pharaohslegacy.cloud/image/Trips/17457150022255.webp', '2025-04-27 00:50:02', '2025-04-27 00:50:02'),
(29, 'Red Sea Beach and Snorkeling in Hurghada - 4 Days / 3 Nights', 'A 4-day escape to the Red Sea, ideal for those looking to relax on beautiful beaches, enjoy water activities like snorkeling and diving, and explore Hurghada’s lively marina.', 'Cairo', 'Hurghada', '2025-07-01', '1', 300.00, 400.00, 25.00, 'https://pharaohslegacy.cloud/image/Trips/17457157943482.webp', '2025-04-27 01:03:14', '2025-04-27 01:03:14'),
(30, 'Alexandria Day Tour from Cairo', 'A full-day tour to the coastal city of Alexandria, visiting historical sites such as the Catacombs, Qaitbay Citadel, and the Alexandria Library, with a beautiful Mediterranean view.', 'Cairo', 'Alexandria', '2025-06-05', '1', 0.00, 150.00, NULL, 'https://pharaohslegacy.cloud/image/Trips/17457170261791.webp', '2025-04-27 01:23:46', '2025-04-27 01:23:46'),
(31, 'Cairo and Pyramids Full-Day Tour', 'Discover Cairo’s most famous ancient wonders with this full-day tour, including the Pyramids of Giza, the Sphinx, the Egyptian Museum, and more.', 'Luxor', 'Cairo', '2025-05-09', '1', 0.00, 120.00, NULL, 'https://pharaohslegacy.cloud/image/Trips/17457181985782.webp', '2025-04-27 01:43:18', '2025-04-27 01:43:18'),
(32, 'White Desert & Bahariya Oasis Adventure', 'Experience the magic of Egypt’s White Desert, with surreal limestone formations, and relax in the natural hot springs of Bahariya Oasis. A perfect getaway for nature and adventure lovers.', 'Cairo', 'White Desert, Bahariya Oasis', '2025-07-12', '1', 198.00, 220.00, 10.00, 'https://pharaohslegacy.cloud/image/Trips/17457566156214.webp', '2025-04-27 12:23:35', '2025-04-27 12:23:35'),
(33, 'Fayoum Oasis & Wadi El Rayan Waterfalls Day Trip', 'Discover the hidden beauty of Fayoum\'s desert oasis, Egypt’s largest waterfalls, and the ancient whale fossils at Wadi El Hitan — a UNESCO World Heritage Site.', 'Cairo', 'Fayoum Oasis, Wadi El Rayan', '2025-06-30', '1', 0.00, 95.00, NULL, 'https://pharaohslegacy.cloud/image/Trips/17457574049511.webp', '2025-04-27 12:36:44', '2025-04-27 12:36:44'),
(34, 'Grand Egypt Discovery: Cairo, Luxor, Aswan, Abu Simbel, and Red Sea', 'This ultimate Egyptian journey offers a deep dive into ancient wonders and a refreshing Red Sea escape, ideal for adventure lovers and history seekers.', 'Cairo', 'Cairo, Luxor, Aswan, Abu Simbel, Hurghada', '2025-10-01', '1', 2205.00, 3150.00, 30.00, 'https://pharaohslegacy.cloud/image/Trips/17457590144718.webp', '2025-04-27 13:03:34', '2025-04-27 13:03:34'),
(35, 'Family Fun Egypt: Cairo, Aswan, Luxor & Red Sea', 'A perfect balance of history, adventure, and seaside relaxation tailored specially for families traveling with kids.', 'Cairo', 'Cairo, Aswan, Luxor, Hurghada', '2025-08-05', '1', 2100.00, 2800.00, 25.00, 'https://pharaohslegacy.cloud/image/Trips/17457601327173.webp', '2025-04-27 13:22:12', '2025-04-27 13:22:12');

-- --------------------------------------------------------

--
-- بنية الجدول `trip_includes`
--

CREATE TABLE `trip_includes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `trip_includes`
--

INSERT INTO `trip_includes` (`id`, `trip_id`, `point`) VALUES
(81, 27, 'Photography enthusiasts'),
(82, 27, 'Groups'),
(83, 27, 'Solo Travelers'),
(84, 27, 'Wheelchair Accessible'),
(85, 27, 'Elderly'),
(86, 27, 'Children'),
(87, 27, 'Adults'),
(88, 28, 'Snacks and bottled water (provided during excursions)'),
(89, 28, 'Light, modest clothing (for desert conditions)'),
(90, 28, 'Sunscreen, hats, and sunglasses'),
(91, 28, 'Comfortable, durable shoes (for desert hiking)'),
(92, 28, 'Hiking and camel rides (with appropriate clothing and gear)'),
(93, 28, 'Photography (for personal use, with permission at Bedouin camps)'),
(94, 28, 'Campfire activities and star gazing'),
(95, 29, 'Souvenirs from local shops and markets'),
(96, 29, 'Tipping service staff at resorts and on boats'),
(97, 29, 'Personal electronics (smartphones, cameras)'),
(98, 29, 'Beach towels and equipment (provided by resort)'),
(99, 29, 'Underwater cameras (permitted with waterproof gear)'),
(100, 29, 'Snorkeling and diving (with appropriate certification for diving)'),
(101, 29, 'Photography (for personal use, excluding marine life photography in some areas)'),
(102, 30, 'Souvenirs from local shops and markets'),
(103, 30, 'Comfortable walking shoes (for exploring archaeological sites)'),
(104, 30, 'Water and light snacks (during the tour)'),
(105, 30, 'Photography (excluding inside museums and specific monuments with flash restrictions)'),
(106, 30, 'Light, modest clothing (when visiting historical or religious sites)'),
(107, 30, 'Tipping guides and restaurant staff'),
(108, 30, 'Small bags for personal items (snacks, water, camera)'),
(109, 31, 'Souvenirs from local shops and markets'),
(110, 31, 'Comfortable walking shoes (for exploring archaeological sites)'),
(111, 31, 'Water and light snacks (during the tour)'),
(112, 31, 'Photography (excluding inside museums and specific monuments with flash restrictions)'),
(113, 31, 'Light, modest clothing (when visiting historical or religious sites)'),
(114, 31, 'Sunscreen, hats, and sunglasses'),
(115, 31, 'Small bags for personal items (snacks, water, camera)'),
(116, 32, 'Sleeping bags and tents'),
(117, 32, 'Snacks and water'),
(118, 32, 'Sunscreen and sunglasses'),
(119, 32, 'Comfortable hiking boots'),
(120, 32, 'Light hiking'),
(121, 32, 'Camping gear'),
(122, 33, 'Binoculars for bird watching'),
(123, 33, 'Picnic meals'),
(124, 33, 'Hats and sunglasses'),
(125, 33, 'Waterproof shoes'),
(126, 33, 'Swimming in designated areas'),
(127, 33, 'Light hiking'),
(128, 33, 'Photography'),
(129, 34, 'Bottled water during excursions'),
(130, 34, 'Sun hats, sunglasses, and sunscreen'),
(131, 34, 'Religious site respectful attire'),
(132, 34, 'Comfortable, breathable clothing'),
(133, 34, 'Guided snorkeling and diving'),
(134, 34, 'Photography (except inside tombs)'),
(135, 35, 'Cultural shows attendance'),
(136, 35, 'Swimming in hotel pools and sea'),
(137, 35, 'Kids\' participation in workshops'),
(138, 35, 'Family-friendly activities');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '0000000000',
  `address` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `address`, `profile_image`, `password`, `remember_token`, `created_at`, `updated_at`, `google_token`) VALUES
(57, 'AHmed Mohamed', 'alikhalila80@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745521639.jpg', '$2y$12$vnuwf5eY/lVShrSm/7Jute8nxPabR9aW4gj7TLLIodkDVRQAWW0cu', NULL, '2025-04-24 19:07:19', '2025-05-11 14:57:01', 'ya29.a0AZYkNZjeR6FWis6oEIepa2QGFPOFkq6ElWoxlGaiGEPQWLbyvc-mZyUN0V6MNBazD8jerQWZDeQou-rU3H7HtLwKNCDUWz2LFr8xYA7hpMgVfTssdW3Qmxd_3JrZlB3nqOI9ibrU8yAE-1yKqrev5ltS9yxMhl_svMCam1T1aCgYKAQASARMSFQHGX2Mieo7MPVOJUwIgD0-hsQVX2g0175'),
(58, 'Yousef Mohsen rajab', 'yousefmohsen1102003@gmail.com', NULL, '01066989501', 'Egypt', 'https://pharaohslegacy.cloud/../image/User/1747001199.jpg', '$2y$12$gYbT1gvEIcyOhEndkWj.p.gT9DTzHRCxrXZfPDkx8tDcmiuoY7IZ6', NULL, '2025-04-24 19:15:27', '2025-06-25 11:50:07', 'ya29.a0AZYkNZipCFbsn9HZRM1R1LqzQK9aKZWNJ46wlG3UqxixsIVt9FePofujHF3UjK9YI50QOWG7KJlJWxu5FCywEBUdKjG_-3FnIcQHhCgbqSwO0yYEb3Y7uE4DPdk-crxE4op1616R9i78mFpHmQCro6V10-o872_nqGy1fDMmaCgYKAZISARISFQHGX2Mi2Lcr3Afj-2nlFpKuDQ3rpw0175'),
(59, 'Rhiannon Potts', 'niqopohyxu@mailinator.com', NULL, '+1 426-624-1225', 'United States', NULL, '$2y$12$XAcBs7oiASNSg6GpvtgqtOhro1ioNk1aFue8iczQHKiAhVgG2zUUu', NULL, '2025-04-27 02:13:14', '2025-04-27 02:13:14', NULL),
(60, 'Pharaohs Legacy', 'pharaohs.legacy.eg@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745720905.jpg', '$2y$12$LMJtODkCKtQwsZmEddLgjeTz0pbaDBXJ0wAvgRvbtW2dePLd.5fuC', NULL, '2025-04-27 02:28:25', '2025-04-27 02:28:25', 'ya29.a0AZYkNZhyhcK7ClM8e2dADAgqeI982PvFXAjWbH1ql-YVfQbxnkGK9T-8RAHYpv_gz3J8gwhexIs-oNZJ-ew4HopIsrP-S7ahmV1o_cdapsgwq62V5S1u82-29rXbSsp27rdbedgp3lxD13eWPS59to_XkZnDS-mOJXl1iIa0aCgYKAYQSARMSFQHGX2MiJFBg4r960IzNyiLgNmUgoQ0175'),
(61, 'Dark Storm 3', 'darkstrm73@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745760776.jpg', '$2y$12$.qF6IMrF5bRRoad0vjQt4OJm2T0T4r3xwYYtYnjWP.iKfd9v2NzJW', NULL, '2025-04-27 13:32:56', '2025-04-27 13:32:56', 'ya29.a0AZYkNZhObSyNtRvda23o5s1VJyI44UrOSceK4muWl83VmxiiVlvE_yeOvXaR5zJRsGpE5ZfhG-XS7hZDkfe8_variOUlIxtzSsoPK1a3HDT-47GEXS-uMvb7yZxo9vQgNpM8R7ufYPnZHyJ4bdjaTSYPu5Kq__Lzzp6YC3ogaCgYKAaoSARISFQHGX2MiKzT8c81QxjwAlkK_0uVTqw0175'),
(62, 'Shrouk Mohamed', 'oshamomo2000@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745775098.jpg', '$2y$12$A4cveueT1jOr8Vag2RMna.oM8x149BjmKBBj.osRJaykxSZ2UeApa', NULL, '2025-04-27 17:31:38', '2025-04-27 17:31:38', 'ya29.a0AZYkNZhtgA7N_ghHWoOv3Kw_uoKm3I4ZXVNKdzSAT6fe5V02WUVZcLhc24IJwp0vUNExKVQfPgG0kSvH3wpVbwfkByRIlKGwU11gnOWdXFp6iOfxkHAkNhiL-g_Gkg-VbyrDO5rNsnqQIqLS2Hd1L8QTHVjkwNjI1B2ZQgqcaCgYKASASARESFQHGX2MiRDFbLT8n9tZdA8WBA0Bdmg0175'),
(63, 'Nouur Mohamed', 'nonomedo3000@gmail.com', NULL, '11 10235933', 'Egypt', NULL, '$2y$12$SyF8QHLl.7YAqx909pqH6.OWNc1RmI8GWQWb0zTgHy51YecrYKWVq', NULL, '2025-04-27 17:38:44', '2025-04-27 17:38:44', NULL),
(64, 'Abdalla Ali', 'abdallaali12720025@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745824509.jpg', '$2y$12$mTkt6hj2rmowc7TmybHFdO5UHsl0L43LX7dhWsxIJaFUYDVFHZTsq', NULL, '2025-04-28 07:15:09', '2025-04-28 07:15:09', 'ya29.a0AZYkNZhFwKXTmD_R8xjNWmdnbiBh-AiVVI-Wggheh1baB8RU1EOUOMyyVGNUU9pMc5duMB8hoQ0ByW5gjilZUG_maC81BTIx34xg1VNk6WHPx0bdZ9HLzA7Zjk3rbAdl7WOk6BHZLEqDK5ZZiSUimeu6CtyMYifHGOYhmgomaCgYKAYISARUSFQHGX2MiTPlA4HN9LUt4xcbKrUk8Fg0175'),
(65, 'Yousef', 'ym@gmail.com', NULL, '01066989501', 'Egypt', NULL, '$2y$12$tiN0dlDeZ7wC93MK8GiwP.pO83JqMdDwto.ej7HREa8AeAj9Jyk.6', NULL, '2025-04-28 08:17:07', '2025-04-28 08:17:07', NULL),
(66, 'Mahmoud Shika', 'mahshika121911@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745880361.jpg', '$2y$12$LkU3Gn09rNivcGdUtAbDceRLtPJqOczdBMu19/94t8vBCE.Eyumje', NULL, '2025-04-28 22:46:01', '2025-04-28 22:46:01', 'ya29.a0AZYkNZjiy9RFdrmj51RI-GQZj0-1whAu8AsuLj7IfbggQRLhOXZ_pYGdRp_sSQipqwTZ5VIblswVCOmnsqk4AGDvQlDDMiqxpst_LJ5WPBW2JcJZX2E8iHpx_L7fKyTbD0XQXwPI-Eji2nsaXFX5MZ3zuLuxO6rw_lgKV_sMaCgYKAX8SARMSFQHGX2MiJq2LEP4AoFZmnhTfUSawGw0175'),
(67, 'Shika', 'ahmedelmaghraby963@gmail.com', NULL, '01122850369', 'Egypt', 'https://pharaohslegacy.cloud/image/User/17458809991168.jpg', '$2y$12$ocbp9hBxj6pfgAnmt3dHqeXVgZFrFrsuiDwOVsf5SzrECvwvmV7/6', NULL, '2025-04-28 22:55:52', '2025-04-28 22:56:39', NULL),
(68, 'Ahmed Mohamed', 'a7medmhamed41@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745934761.jpg', '$2y$12$k6sCPVEVjDs/r8yCqHvWze39iHaZvfFgCxtC57Gt5oHasWrfVgzfO', NULL, '2025-04-29 13:52:42', '2025-04-29 13:52:42', 'ya29.a0AZYkNZh-p2yjVmwJkt9LnqYGa_cZ82A2NiIWfDjbcvvr-1eMeS0Mfy_4b6pgWeqGv-VvvC4-uHX5cgils_DoEKmI0om_xbD7l4_LV7OpEvfOoqBSbGRJjaFV3wg3uRd-Qf2G1jtrFmU6IgmdPGd7Xrwuz80PA2_ppduo9KKdaCgYKAcESARUSFQHGX2MiIQrQfr5X4n8SK86Tq3GW9A0175'),
(69, 'Mohammed Saleh', 'c0p7opu5@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745961124.jpg', '$2y$12$raChv0VRFgn0hcT74.Zu2OuY6pbbSE1qI2w/vxMCjjmydbxhAZ/Uu', NULL, '2025-04-29 21:12:04', '2025-04-29 21:12:04', 'ya29.a0AZYkNZjvujP3pHsgf8DMda3tgyQKvavgwoXX5FeG_xVCiJyDoCxuH0CXwO2iR22n4FpLGuWrdsOTsrMbsAfuwtJVErjfkSXUIwFSxtBrf4bRMMOO7TyDPkjt7Xij13sJBcCu-jUVkNGnfJ1meFW66i4lRlqabXv8pA9uYlvYaCgYKATwSARESFQHGX2MiHk7790rlrsR-JggKqjK_ZQ0175'),
(70, 'Dark Storm 1', 'ds2774132@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1745970980.jpg', '$2y$12$ev.Z5XUAqocei2rE4.l5R.wB223whc1yDlpE6LjW.0RYGOLaVyIJ.', NULL, '2025-04-29 23:56:20', '2025-04-29 23:56:20', 'ya29.a0AZYkNZgLs7zwpAUkjaG0Dct4a_OQREl3jIkUjbj5Ou5Uxqvckj0L6ltapNWsBUkal908--Ra9O_UhJSpKzJ_CHfVMC8qVI8m1pTsNn1jTSQjCAN-afFKrJRdGYXKYaKKc8LGsXhmejye8fVKnBdzK1U4V_roUugliSniij98aCgYKAeQSARcSFQHGX2MixFgoUDZBd104l0z4bIb8hg0175'),
(71, 'without n', 'icem41180@gmail.com', NULL, '10 00141769', 'Egypt', NULL, '$2y$12$C6t4oeheIiQXX6A9RpdPvO0pH4NcLdRV6eDtvYu09DeyUYuX/wIi.', NULL, '2025-04-30 00:00:34', '2025-04-30 00:39:47', NULL),
(72, 'joe', 'test@gmail.com', NULL, '01066989501', 'Egypt', NULL, '$2y$12$yNYt4OpXwPuX8Jq0Lgpu2OEi5TujJBn2j6FDTHad4yRFfcO//Ykt.', NULL, '2025-04-30 13:09:39', '2025-04-30 13:09:39', NULL),
(73, 'Yousef Mohsen', 'ym8592865@gmail.com', NULL, '01066989501', 'Egypt', 'https://pharaohslegacy.cloud/../image/User/1749589678.png', '$2y$12$eN7lrLIgaixMvFP01DA4yOo8Y4gBAloYJZHMxmbqYAJe5hbeP/M2i', NULL, '2025-04-30 16:35:48', '2025-06-10 21:07:58', NULL),
(74, 'Christine Mercado', 'xenykipyv@mailinator.com', NULL, '+1 655-819-1962', 'United States', NULL, '$2y$12$ALsHXyDbeNXoUlVlrgsyS.YNSOVNcB3Z10MsjpC.Aukowlx0C7Ir.', NULL, '2025-05-08 15:00:45', '2025-05-08 15:00:45', NULL),
(75, 'Ahmed Mohamed', 'alikhalila50@gmail.com', NULL, '01124731241', 'giza', NULL, '$2y$12$G7Rol2rpSUo22XzlcdlP4O1/1fZ.iOWenBEEtPP3tNPVvoPMCxOQG', NULL, '2025-05-11 13:15:11', '2025-05-11 13:15:11', NULL),
(76, 'joe', 'yousefmohsen@gmail.com', NULL, '01066989801', 'Egypt', NULL, '$2y$12$Frhjv/LQ5d1pUTx4FQMROOtnchodcAXOYu9QmSIkVPUZKditpIS/G', NULL, '2025-05-11 20:25:44', '2025-05-11 20:25:44', NULL),
(77, 'Mohamed Wael', 'mohamedwael2332@gmail.com', NULL, '0000000000', NULL, 'https://pharaohslegacy.cloud/image/users/1750587265.jpg', '$2y$12$CT9M5fmeoc5BqpmTHD8ZOe7sp4YMwzR9QcRe6xqF8lDVu6JAaBZ/.', NULL, '2025-06-22 10:14:25', '2025-06-22 10:14:25', 'ya29.a0AW4Xtxj16Qmt-x7oXq3K7qpCWqCdW7WJEl5py_LFlcR-0eNANTtuI1sHY_O4JGGQbGL0Tcu7BuWv4d6rPxtp4XyixIWjb6O2cSBDWNa2wGFAwl7gWegN4X1Ku3vZo-84IHLEhA5yYu49M4UQM8SnBYf9I5tug6rnhYpO-1gfaCgYKAQwSARASFQHGX2Mi5ER6UARwSSv81Hyv6MsawQ0175');

-- --------------------------------------------------------

--
-- بنية الجدول `vertual_images`
--

CREATE TABLE `vertual_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `main_image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `vertual_images`
--

INSERT INTO `vertual_images` (`id`, `name`, `link`, `main_image_path`, `created_at`, `updated_at`) VALUES
(7, 'great pyramid of giza ( Khufu )', 'https://mused.com/tours/266/go-inside-the-great-pyramid-of-giza/', 'https://pharaohslegacy.cloud/image/VertualImage/17457985575827.jpg', '2025-04-28 00:02:37', '2025-04-28 00:02:37'),
(8, 'Tomb of Queen Meresankh III', 'https://mused.com/tours/4/tomb-of-queen-meresankh-iii-g-7530-7540/', 'https://pharaohslegacy.cloud/image/VertualImage/17457991509704.jpg', '2025-04-28 00:12:30', '2025-04-28 00:12:30'),
(9, 'sphinx', 'https://mused.com/tours/438/great-sphinx/', 'https://pharaohslegacy.cloud/image/VertualImage/17457992541293.jpg', '2025-04-28 00:14:14', '2025-04-28 00:14:14'),
(10, 'Luxor Temple', 'https://mused.com/tours/178/introduction-to-luxor-temple/', 'https://pharaohslegacy.cloud/image/VertualImage/17457996879311.jpg', '2025-04-28 00:21:27', '2025-04-28 00:21:27'),
(11, 'The Monastery Museum', 'https://mused.com/tours/2/the-monastery-museum/', 'https://pharaohslegacy.cloud/image/VertualImage/17458001314559.jpg', '2025-04-28 00:28:51', '2025-04-28 00:28:51'),
(12, 'The Monastery and Chapel of the Holy Bush', 'https://mused.com/tours/110/the-monastery-and-chapel-of-the-holy-bush/', 'https://pharaohslegacy.cloud/image/VertualImage/17458003311899.jpg', '2025-04-28 00:32:11', '2025-04-28 00:32:11'),
(13, 'Mount Sinai Holy Summit', 'https://mused.com/tours/111/mount-sinai-holy-summit/', 'https://pharaohslegacy.cloud/image/VertualImage/17458004449706.jpg', '2025-04-28 00:34:04', '2025-04-28 00:34:04'),
(14, 'Qaitbay Citadel, Alexandria', 'https://mused.com/tours/236/qaitbay-citadel-alexandria/', 'https://pharaohslegacy.cloud/image/VertualImage/17458007076778.jpeg', '2025-04-28 00:38:27', '2025-04-28 00:38:27'),
(15, 'Interior of the pyramid of Unas at Saqqara', 'https://my.matterport.com/show/?m=o5Ex5Xo7UkE', 'https://pharaohslegacy.cloud/image/VertualImage/17458009458001.jpg', '2025-04-28 00:42:25', '2025-04-28 00:42:25'),
(16, 'Colonnade of the pyramid complex of Djoser at Saqqara', 'https://my.matterport.com/show/?m=zBpDdPqxTKz', 'https://pharaohslegacy.cloud/image/VertualImage/17458010978876.jpeg', '2025-04-28 00:44:57', '2025-04-28 00:44:57'),
(17, 'Amada', 'https://my.matterport.com/show/?m=wpdMtL8MgHG', 'https://pharaohslegacy.cloud/image/VertualImage/17458013413491.jpg', '2025-04-28 00:49:01', '2025-04-28 00:49:01'),
(18, 'Mastaba of Ti at Saqqara', 'https://my.matterport.com/show/?m=yc1fJfrKnBP', 'https://pharaohslegacy.cloud/image/VertualImage/17458015804730.jpg', '2025-04-28 00:53:00', '2025-04-28 00:53:00'),
(19, 'Mastaba of Wahty at Saqqara', 'https://my.matterport.com/show/?m=BsXpwTSYSyN', 'https://pharaohslegacy.cloud/image/VertualImage/17458018182439.jpg', '2025-04-28 00:56:58', '2025-04-28 00:56:58'),
(20, 'Mastaba of Niankhkhnum and Khnumhotep at Saqqara', 'https://my.matterport.com/show/?m=PKxweZaPG3P', 'https://pharaohslegacy.cloud/image/VertualImage/17458019241231.jpg', '2025-04-28 00:58:44', '2025-04-28 00:58:44'),
(21, 'Mastaba of Mehu at Saqqara', 'https://my.matterport.com/show/?m=xmDbt2rfa82', 'https://pharaohslegacy.cloud/image/VertualImage/17458020093627.jpg', '2025-04-28 01:00:09', '2025-04-28 01:00:09'),
(22, 'Tomb of Menna (TT69) at Sheikh Abd el-Qurna', 'https://my.matterport.com/show/?m=vLYoS66CWpk', 'https://pharaohslegacy.cloud/image/VertualImage/17458021452352.jpg', '2025-04-28 01:02:25', '2025-04-28 01:02:25'),
(23, 'Tutankhamun at the Egyptian Museum in Cairo', 'https://my.matterport.com/show/?m=85n8j312Ur4', 'https://pharaohslegacy.cloud/image/VertualImage/17458022931547.jpg', '2025-04-28 01:04:53', '2025-04-28 01:04:53'),
(24, 'Coptic Museum in Cairo', 'https://mpembed.com/show/?m=yMMHWqMJZbY', 'https://pharaohslegacy.cloud/image/VertualImage/17458024035755.jpg', '2025-04-28 01:06:43', '2025-04-28 01:06:43'),
(25, 'Gayer-Anderson Museum in Cairo', 'https://mpembed.com/show/?m=LCyv1zFUxiq', 'https://pharaohslegacy.cloud/image/VertualImage/17458025114510.jpg', '2025-04-28 01:08:31', '2025-04-28 01:08:31'),
(26, 'Bab Zuwayla in Cairo', 'https://my.matterport.com/show/?m=YZXMPtiuR9D', 'https://pharaohslegacy.cloud/image/VertualImage/17458026052260.jpeg', '2025-04-28 01:10:05', '2025-04-28 01:10:05'),
(27, 'Monastery of St. Anthony Museum', 'https://my.matterport.com/show/?m=FBdkHbQzzVJ&brand=0', 'https://pharaohslegacy.cloud/image/VertualImage/17458027981242.jpg', '2025-04-28 01:13:18', '2025-04-28 01:13:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airlines_airport_id_foreign` (`airport_id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airports_item_id_foreign` (`Item_ID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_shopping_center_id_foreign` (`shopping_center_id`);

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
-- Indexes for table `excludes`
--
ALTER TABLE `excludes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `excludes_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `facilities_airports`
--
ALTER TABLE `facilities_airports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_airports_airport_id_foreign` (`airport_id`);

--
-- Indexes for table `facilities_restaurants`
--
ALTER TABLE `facilities_restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_list`
--
ALTER TABLE `favorite_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorite_list_user_id_item_id_unique` (`user_id`,`item_id`),
  ADD KEY `favorite_list_item_id_foreign` (`item_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_item_id_foreign` (`Item_ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`);

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
-- Indexes for table `landmarks`
--
ALTER TABLE `landmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `landmarks_item_id_foreign` (`Item_ID`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `photos_item_id_foreign` (`Item_ID`),
  ADD KEY `photos_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `profile_update_tokens`
--
ALTER TABLE `profile_update_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_item_id_foreign` (`Item_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Rev_ID`),
  ADD KEY `reviews_id_foreign` (`id`),
  ADD KEY `reviews_item_id_foreign` (`Item_ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shopping_centers`
--
ALTER TABLE `shopping_centers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_centers_item_id_foreign` (`Item_ID`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_foreign` (`user_id`);

--
-- Indexes for table `story_images`
--
ALTER TABLE `story_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_images_story_id_foreign` (`story_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_includes`
--
ALTER TABLE `trip_includes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_includes_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vertual_images`
--
ALTER TABLE `vertual_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `excludes`
--
ALTER TABLE `excludes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `facilities_airports`
--
ALTER TABLE `facilities_airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `facilities_restaurants`
--
ALTER TABLE `facilities_restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_list`
--
ALTER TABLE `favorite_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landmarks`
--
ALTER TABLE `landmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1159;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Rev_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `shopping_centers`
--
ALTER TABLE `shopping_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `story_images`
--
ALTER TABLE `story_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `trip_includes`
--
ALTER TABLE `trip_includes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `vertual_images`
--
ALTER TABLE `vertual_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `airlines`
--
ALTER TABLE `airlines`
  ADD CONSTRAINT `airlines_airport_id_foreign` FOREIGN KEY (`airport_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_shopping_center_id_foreign` FOREIGN KEY (`shopping_center_id`) REFERENCES `shopping_centers` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `excludes`
--
ALTER TABLE `excludes`
  ADD CONSTRAINT `excludes_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `facilities_airports`
--
ALTER TABLE `facilities_airports`
  ADD CONSTRAINT `facilities_airports_airport_id_foreign` FOREIGN KEY (`airport_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `facilities_restaurants`
--
ALTER TABLE `facilities_restaurants`
  ADD CONSTRAINT `facilities_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `favorite_list`
--
ALTER TABLE `favorite_list`
  ADD CONSTRAINT `favorite_list_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_list_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `landmarks`
--
ALTER TABLE `landmarks`
  ADD CONSTRAINT `landmarks_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `photos_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `shopping_centers`
--
ALTER TABLE `shopping_centers`
  ADD CONSTRAINT `shopping_centers_item_id_foreign` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE;

--
-- قيود الجداول `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `story_images`
--
ALTER TABLE `story_images`
  ADD CONSTRAINT `story_images_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `trip_includes`
--
ALTER TABLE `trip_includes`
  ADD CONSTRAINT `trip_includes_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
