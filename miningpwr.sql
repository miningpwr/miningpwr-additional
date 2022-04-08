-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 10:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miningpwr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `access`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', 'superadmin', NULL, '5ff1c3531ed3f1609679699.jpg', NULL, '$2y$10$Z7ifEDvfu5QNI0HpDI1EeuxtokN0BBrQ75jariAYOFGuwKZ2w0iOO', NULL, '2021-01-04 03:57:14'),
(3, 'Nazmul Hasan', 'naz.24h@gmail.com', 'nazmul', NULL, '5ff1c3531ed3f1609679699.jpg', NULL, '$2y$10$Z7ifEDvfu5QNI0HpDI1EeuxtokN0BBrQ75jariAYOFGuwKZ2w0iOO', NULL, '2021-01-04 03:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 226, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/226', '2022-04-06 21:39:07', '2022-04-06 21:39:07'),
(2, 227, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/227', '2022-04-06 21:41:33', '2022-04-06 21:41:33'),
(3, 228, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/228', '2022-04-06 21:42:47', '2022-04-06 21:42:47'),
(4, 229, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/229', '2022-04-06 21:44:42', '2022-04-06 21:44:42'),
(5, 229, 'Deposit request from laking', 0, 'https://coinpro.ebidya.com/admin/deposit/details/12', '2022-04-06 21:45:09', '2022-04-06 21:45:09'),
(6, 227, 'Deposit request from jewel0904', 0, 'https://coinpro.ebidya.com/admin/deposit/details/13', '2022-04-06 21:45:56', '2022-04-06 21:45:56'),
(7, 228, 'Deposit request from baiworld', 0, 'https://coinpro.ebidya.com/admin/deposit/details/14', '2022-04-06 21:49:36', '2022-04-06 21:49:36'),
(8, 230, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/230', '2022-04-06 21:54:15', '2022-04-06 21:54:15'),
(9, 230, 'Deposit request from rajat09', 0, 'https://coinpro.ebidya.com/admin/deposit/details/15', '2022-04-06 21:54:28', '2022-04-06 21:54:28'),
(10, 231, 'New member registered', 0, 'https://coinpro.ebidya.com/admin/user/detail/231', '2022-04-06 21:57:00', '2022-04-06 21:57:00'),
(11, 231, 'Deposit request from saiful09', 1, 'https://coinpro.ebidya.com/admin/deposit/details/16', '2022-04-06 21:57:13', '2022-04-07 11:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bv_logs`
--

CREATE TABLE `bv_logs` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `position` int(10) DEFAULT NULL COMMENT '1=L,2=R',
  `amount` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(50) DEFAULT NULL,
  `details` varchar(191) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bv_logs`
--

INSERT INTO `bv_logs` (`id`, `user_id`, `position`, `amount`, `trx_type`, `details`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '10.00000000', '+', 'testb1 Subscribed to BASIC plan.', '2022-01-19 22:12:15', '2022-01-19 22:12:15'),
(2, 1, 2, '10.00000000', '+', 'testb2 Subscribed to BASIC plan.', '2022-01-19 22:12:53', '2022-01-19 22:12:53'),
(3, 1, 1, '10.00000000', '-', 'Paid 10 USD For 10.00000000 BV.', '2022-01-19 22:13:03', '2022-01-19 22:13:03'),
(4, 1, 2, '10.00000000', '-', 'Paid 10 USD For 10.00000000 BV.', '2022-01-19 22:13:03', '2022-01-19 22:13:03'),
(5, 2, 1, '10.00000000', '+', 'test105236 Subscribed to BASIC plan.', '2022-01-19 22:14:56', '2022-01-19 22:14:56'),
(6, 1, 1, '10.00000000', '+', 'test105236 Subscribed to BASIC plan.', '2022-01-19 22:14:56', '2022-01-19 22:14:56'),
(7, 10, 1, '10.00000000', '+', 'akashbd Subscribed to BASIC plan.', '2022-01-20 20:21:00', '2022-01-20 20:21:00'),
(8, 4, 1, '10.00000000', '+', 'akashbd Subscribed to BASIC plan.', '2022-01-20 20:21:01', '2022-01-20 20:21:01'),
(9, 2, 1, '10.00000000', '+', 'akashbd Subscribed to BASIC plan.', '2022-01-20 20:21:01', '2022-01-20 20:21:01'),
(10, 1, 1, '10.00000000', '+', 'akashbd Subscribed to BASIC plan.', '2022-01-20 20:21:01', '2022-01-20 20:21:01'),
(11, 11, 1, '10.00000000', '+', 'Deepl1 Subscribed to BASIC plan.', '2022-01-23 18:08:31', '2022-01-23 18:08:31'),
(12, 10, 1, '10.00000000', '+', 'Deepl1 Subscribed to BASIC plan.', '2022-01-23 18:08:31', '2022-01-23 18:08:31'),
(13, 4, 1, '10.00000000', '+', 'Deepl1 Subscribed to BASIC plan.', '2022-01-23 18:08:31', '2022-01-23 18:08:31'),
(14, 2, 1, '10.00000000', '+', 'Deepl1 Subscribed to BASIC plan.', '2022-01-23 18:08:31', '2022-01-23 18:08:31'),
(15, 1, 1, '10.00000000', '+', 'Deepl1 Subscribed to BASIC plan.', '2022-01-23 18:08:31', '2022-01-23 18:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `admin_feedback` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `try`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(12, 229, 1001, '10.00000000', 'USD', '0.00000000', '1.00000000', '10.00000000', NULL, '0', '', 'DA7NGDOZXAHU', 0, 1, NULL, '2022-04-06 21:45:05', '2022-04-06 21:45:23'),
(13, 227, 1001, '10.00000000', 'USD', '0.00000000', '1.00000000', '10.00000000', NULL, '0', '', 'U2UEPQF51JYY', 0, 1, NULL, '2022-04-06 21:45:53', '2022-04-06 21:46:10'),
(14, 228, 1001, '10.00000000', 'USD', '0.00000000', '1.00000000', '10.00000000', NULL, '0', '', 'SO7KBQQEFPV4', 0, 1, NULL, '2022-04-06 21:49:33', '2022-04-06 21:49:49'),
(15, 230, 1001, '50.00000000', 'USD', '0.00000000', '1.00000000', '50.00000000', NULL, '0', '', 'K4OSZM5EEJH7', 0, 1, NULL, '2022-04-06 21:54:24', '2022-04-06 21:56:58'),
(16, 231, 1001, '50.00000000', 'USD', '0.00000000', '1.00000000', '50.00000000', NULL, '0', '', '51OXFT98SXKG', 0, 1, NULL, '2022-04-06 21:57:10', '2022-04-06 21:57:54'),
(17, 1, 1001, '30.00000000', 'USD', '0.00000000', '1.00000000', '30.00000000', NULL, '0', '', '3X8VHJS92F69', 0, 0, NULL, '2022-04-06 22:12:01', '2022-04-06 22:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-07-07 05:44:08'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address. <br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:26:22'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-07-07 06:39:22'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{withdraw_method}}. You will get {{method_amount}} {{method_currency}} in {{duration}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2020-06-14 18:00:00'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'matching_bonus', 'Matching bonus', 'Binary Commission', 'Congratulation, You get  {{amount}} {{currency}}&nbsp; For BV {{paid_bv}}. And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}.', 'Congratulation, You get {{amount}} {{currency}}  For BV {{paid_bv}}. And your current balance is {{post_balance}}  {{currency}}.', ' {\r\n                \"amount\":\"matching bonus amount\",\r\n                \"paid_bv\":\"For BV\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(218, 'plan_purchased', 'Plan Purchased', 'Plan Purchased successfully', 'Congratulation, you successfully&nbsp;Purchased {{plan}},&nbsp; {{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}', 'Congratulation, you successfully Purchased {{plan}},  {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"plan\":\"Plan name\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(219, 'binary_commission', 'Binary Commission', 'Binary Commission', 'Congratulation, you get Binary Commission from user {{username}} ,&nbsp; &nbsp;{{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;<span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span>. Transaction number {{trx}}', 'Congratulation, you get Binary Commission from user {{username}} ,   {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"username\":\"commission From user\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(220, 'referral_commission', 'Referral Commission', 'Referral Commission', '<font color=\"#212529\">Congratulation, you get </font>Referral <font color=\"#212529\">Commission from user {{username}} ,&nbsp; &nbsp;{{amount}} {{currency}}&nbsp; And your current balance is {{post_balance}}&nbsp;</font><span style=\"color: rgb(33, 37, 41);\">&nbsp;{{currency}}</span><span style=\"color: rgb(33, 37, 41);\">. Transaction number {{trx}}</span>', 'Congratulation, you get Referral Commission from user {{username}} ,   {{amount}} {{currency}}  And your current balance is {{post_balance}}  {{currency}}. Transaction number {{trx}}', ' {\r\n                    \"username\":\"commission From user\",\r\n                    \"amount\":\"Plan price\",\r\n                \"post_balance\":\" After Balance\",\r\n                \"currency\":\"Site Currency\",\r\n                \"trx\":\"Transaction number\"\r\n            }', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(221, 'BAL_SEND', 'Balance Send', 'Balance Transfer Successfully', '<div>Balance transferred successfully complete. You send  {{amount}} {{currency}}  to  {{username}}  And charge to transfer  {{charge}}  {{currency}} .</div><div><br></div><div>Transaction number {{trx}} .<br></div><div><br></div><div> Your Current Balance is {{balance_now}}  {{currency}}.</div>', 'Balance transferred successfully complete. You send {{amount}} {{currency}} to {{username}} And charge to transfer {{charge}} {{currency}} .\r\n\r\nTransaction number {{trx}} .\r\n\r\nYour Current Balance is {{balance_now}} {{currency}}.', '{\"amount\":\"Send Amount\", \"username\":\"Receiver Username\",\"charge\":\"Transfer charge\" ,\"balance_now\":\" After Balance\", \"currency\":\"currency\",\"trx\":\"Transaction number\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(222, 'BAL_RECEIVE', 'Balance Received', 'Balance Received Successfully', 'Balance received successfully. You got {{amount}} \r\n{{currency}} from&nbsp; {{username}}  And charge to transfer  {{charge}}  \r\n{{currency}} .<div><div><br></div><div>Transaction number {{trx}} .<br></div><div><br></div><div> Your Current Balance is {{balance_now}}  {{currency}}.</div></div>', 'Balance received successfully. You got {{amount}} {{currency}} from  {{username}} And charge to transfer {{charge}} {{currency}} .\r\n\r\nTransaction number {{trx}} .\r\n\r\nYour Current Balance is {{balance_now}} {{currency}}.', '{\"amount\":\"Received Amount\", \"username\":\"Sender Username\",\"charge\":\"Transfer charge\" ,\"balance_now\":\" After Balance\", \"currency\":\"currency\",\"trx\":\"Transaction number\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------------------------------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-04-09 23:16:02'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"-----------------------------\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2021-04-09 23:16:31'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"Demo\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2021-04-09 23:15:41'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"---------------------------------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-04-09 23:16:10'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"-------------------------------------\"}}', 'fb_com.png', 0, NULL, NULL, '2021-04-09 23:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"mlm\",\"multi level marketing\",\"binary mlm\",\"referrarl commission\",\"business value\",\"mlm business\",\"mlm invest\",\"mlmptc\",\"ptcmlm\"],\"description\":\"-------------------------------------------------------------\",\"social_title\":\"CoinPro\",\"social_description\":\"-----------------------------------------------------------------\",\"image\":\"624f1fff3c3f81649352703.png\"}', '2020-07-04 23:42:52', '2022-04-07 11:31:43'),
(24, 'about.content', '{\"has_image\":\"1\",\"title\":\"What We Are\",\"subtitle\":\"About CoinPro\",\"video_link\":\"#\",\"description\":\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.\",\"background_image\":\"624f28da2a2801649354970.jpg\"}', '2020-10-28 00:51:20', '2022-04-07 12:09:42'),
(25, 'blog.content', '{\"title\":\"Latest News\",\"subtitle\":\"BLOGS\"}', '2020-10-28 00:51:34', '2021-04-10 00:54:04'),
(27, 'contact_us.content', '{\"has_image\":\"1\",\"api_key\":\"GOOGLE_MAP_API\",\"latitude\":\"23.8103\",\"longitude\":\"90.4125\",\"email_address\":\"support@coinpro.ebidya.com\",\"contact_details\":\"full company address\",\"contact_number\":\"+44 (0) 655 65465 56\",\"background_image\":\"624f24af2a51e1649353903.jpg\"}', '2020-10-28 00:59:19', '2022-04-07 12:12:21'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"fab fa-facebook-f\\\"><\\/i>\",\"url\":\"#\"}', '2020-11-12 04:07:30', '2021-04-09 22:58:07'),
(33, 'feature.content', '{\"title\":\"What We Serve To Our Members\",\"subtitle\":\"OUR SERVICES\"}', '2020-12-01 00:47:44', '2021-04-09 23:51:07'),
(34, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-money-bill-wave\\\"><\\/i>\",\"title\":\"Profitable\",\"description\":\"You can get the golden opportunity to actually win a lot of profit here.\"}', '2020-12-01 00:48:27', '2021-04-09 23:51:42'),
(35, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-lock\\\"><\\/i>\",\"title\":\"Secure\",\"description\":\"Gives ultimate security with 2FA authentication with this system\"}', '2020-12-01 00:48:38', '2020-12-12 14:27:27'),
(36, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-language\\\"><\\/i>\",\"title\":\"Multilingual\",\"description\":\"This site can be easily translated into your own language.\"}', '2020-12-01 00:49:30', '2021-04-09 23:52:13'),
(37, 'feature.element', '{\"icon\":\"<i class=\\\"las la-coins\\\"><\\/i>\",\"title\":\"Crypto\",\"description\":\"Cryptocurrency stored on our servers is covered by our insurance policy.\"}', '2020-12-01 00:49:41', '2021-04-10 00:16:42'),
(38, 'feature.element', '{\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"title\":\"Support\",\"description\":\"We always provide the best \\r\\nsupport to all our users.\"}', '2020-12-01 00:50:03', '2021-04-09 23:52:42'),
(39, 'feature.element', '{\"icon\":\"<i class=\\\"fas fa-globe-americas\\\"><\\/i>\",\"title\":\"Global\",\"description\":\"We support a variety of the most popular digital currencies.\"}', '2020-12-01 00:50:37', '2020-12-12 14:20:11'),
(40, 'how_it_works.content', '{\"heading\":\"How It\'s Work\",\"subheading\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias est maiores quo tempora illum quibusdam, incidunt aspernatur, voluptatem maxime!\"}', '2020-12-01 00:51:07', '2020-12-01 00:51:07'),
(41, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-money-bill-wave\\\"><\\/i>\",\"title\":\"Get Paid\",\"description\":\"Each member will get a commission by adding a new member. So it\'s a profitable process for all.\"}', '2020-12-01 00:52:11', '2020-12-12 18:22:40'),
(42, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-users\\\"><\\/i>\",\"title\":\"Bring People\",\"description\":\"The strategy is new members sponsored by distributors are added either on the left or right leg.\"}', '2020-12-01 00:52:26', '2020-12-12 18:19:23'),
(43, 'how_it_works.element', '{\"icon\":\"<i class=\\\"fas fa-user-edit\\\"><\\/i>\",\"title\":\"Sign Up\",\"description\":\"Just click the register button on the website and fill up all the information there and get your account.\"}', '2020-12-01 00:52:57', '2020-12-17 14:37:09'),
(44, 'team.content', '{\"title\":\"Let\'s Meet Our Experts\",\"subtitle\":\"OUR TEAM\"}', '2020-12-01 00:53:36', '2021-04-10 00:40:52'),
(50, 'transaction.content', '{\"title\":\"Our Latest Deposits and Withdraws\",\"subtitle\":\"TRANSACTIONS\"}', '2020-12-01 01:05:37', '2021-04-10 00:42:31'),
(52, 'counter.element', '{\"title\":\"Total Invest\",\"counter_digit\":\"9\",\"counter_digit_unit\":\"M+\"}', '2020-12-01 01:09:49', '2022-01-20 09:52:29'),
(53, 'counter.element', '{\"title\":\"Total Deposit\",\"counter_digit\":\"10\",\"counter_digit_unit\":\"M+\"}', '2020-12-01 01:10:07', '2022-01-20 09:52:39'),
(54, 'counter.element', '{\"title\":\"Total Withdraw\",\"counter_digit\":\"8\",\"counter_digit_unit\":\"M+\"}', '2020-12-01 01:10:20', '2022-01-20 09:52:49'),
(55, 'counter.element', '{\"title\":\"Total Users\",\"counter_digit\":\"13\",\"counter_digit_unit\":\"M+\"}', '2020-12-01 01:10:33', '2022-01-20 09:53:10'),
(56, 'testimonial.content', '{\"has_image\":\"1\",\"title\":\"What People Say About Us\",\"subtitle\":\"OUR CLIENTS\",\"background_image\":\"624f255a1dd4d1649354074.jpg\"}', '2020-12-01 01:11:00', '2022-04-07 11:54:34'),
(61, 'subscribe.content', '{\"has_image\":\"1\",\"title\":\"Subscribe To Our Newsletter\",\"subtitle\":\"SUBSCRIBE\",\"background_image\":\"624f26ce7b3981649354446.jpg\"}', '2020-12-01 01:14:58', '2022-04-07 12:00:46'),
(62, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Popular Words in the Multi-Level Marketing Industry\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font face=\\\"Open Sans, Arial, sans-serif\\\" color=\\\"#000000\\\">While MLMs focus almost exclusively on direct selling, this is not an accurate synonym because direct selling is simply the method by which distributors in MLMs sell products and\\/or recruit new members. Direct selling is the idea that sales people leverage their personal contacts and relationships, whereas salesmen at a normal company are often working with people that they don\\u2019t personally know. Multi-level marketing companies that have lasted many years or even decades have generally done a better job of emphasizing direct sales over recruiting.<\\/font><br \\/><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font face=\\\"Open Sans, Arial, sans-serif\\\" color=\\\"#000000\\\"><br \\/><\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font face=\\\"Open Sans, Arial, sans-serif\\\" color=\\\"#000000\\\">In 1979, a landmark ruling involving Amway helped to legitimize the multi-level marketing industry. The FTC found that Amway was not operating as a pyramid scheme according to the strict statutory definition of one, but did order the company to stop deceiving its distributors about their income potential.<\\/font><\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606dbc4d7af051617804365.jpg\"}', '2020-12-01 01:16:46', '2021-04-07 08:06:06'),
(63, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"History of Multi-Level Marketing You Need To Know\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">The first recognized MLM businesses in the United States were the California Vitamin Company (founded in the 1920s and later renamed Nutrilite in 1939), and the California Perfume Company (incorporated in 1909 and later renamed Avon Products in 1932).<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\"><br \\/><\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">In 1979, a landmark ruling involving Amway helped to legitimize the multi-level marketing industry. The FTC found that Amway was not operating as a pyramid scheme according to the strict statutory definition of one, but did order the company to stop deceiving its distributors about their income potential.<\\/font><\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606dbbdbaeb8f1617804251.jpg\"}', '2020-12-01 01:16:47', '2021-04-09 22:57:08'),
(64, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"What is Multi-Level Marketing? What You Need to Know About the Industry\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">This stands in stark contrast to most standard businesses, where employees are rewarded for sales made to other businesses (B2B companies) or to consumers (B2C companies). Additionally, obtaining a higher rank within multi-level marketing companies depends on your ability to recruit others, rather than by appointment. MLMs that rely too heavily on recruitment rather than emphasizing direct sales generally fail over time because of the natural progression of pyramid schemes which are unsustainable in the long run.<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606dbb9b572091617804187.jpg\"}', '2020-12-01 01:16:48', '2021-04-07 08:03:07'),
(65, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Melaleuca CEO Frank VanderSloot Promises to Resign\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;\\\"><font face=\\\"PT Sans, Arial, Helvetica, sans-serif\\\"><span style=\\\"font-size:16px;\\\">In an interview with East Idaho News today, Melalecua CEO Frank Vandersloot promised to resign his executive position with the company if his world record rowing attempt fails. VanderSloot will attempt to complete a 100-meter row on a Concept 2 Rower within 15.3 seconds on Tuesday, which also happens to be his 70th birthday.<\\/span><\\/font><br \\/><\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606dbb47e5f5a1617804103.jpg\"}', '2020-12-01 01:16:49', '2021-04-07 08:02:07'),
(66, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Amway Co-Founder Richard DeVos Passes Away at Age 92\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">Rick DeVos announced earlier today that his grandfather and co-founder of Amway Richard DeVos has passed away at age 92. DeVos got his start in the multi-level marketing world as a distributor with Nutrilite, a direct selling company that primarily sold vitamins and supplements. Along with his partner Jay Van Andel, DeVos eventually started his own MLM called Amway (short for American Way), which eventually purchased Nutrilite in 1972. Since then, Amway has grown to become the largest MLM in the U.S., boasting over 3 million distributors worldwide.<\\/font><br \\/><\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606dbb147f9721617804052.jpg\"}', '2020-12-01 01:16:51', '2021-04-07 08:00:54'),
(67, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"2020 Top 50 MLM Companies in the U.S.\",\"description\":\"<p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">*Note: 2019 revenue numbers coming soon.<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\"><br \\/><\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">Below is the comprehensive list of multi-level marketing companies generating the most amount of revenue in the United States. After compiling this list, we noticed some interesting trends:<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\"><br \\/><\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">Only 2 companies in the Top 10 were founded after the year 2000. Out of the Top 50, only 20 were founded after 2000.<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">38% (19 total) of the Top 50 MLMs were in the supplements industry, by far the most popular category. The Beauty industry is second with 16% (8 total).<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">Of the Top 10, 50% of the companies are in the Beauty industry.<\\/font><\\/p><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;\\\"><font color=\\\"#000000\\\" face=\\\"Open Sans, Arial, sans-serif\\\">Have any others you\\u2019d like to add to the top MLMs list? Let us know in the comments.<\\/font><\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3 style=\\\"margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;padding:0px;\\\">1914 translation by H. Rackham<\\/h3><p style=\\\"margin:-10px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\">\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p>\",\"blog_image\":\"606d82467d6971617789510.png\"}', '2020-12-01 01:22:19', '2021-04-07 03:58:30'),
(68, 'footer_section.content', '{\"has_image\":\"1\",\"website_footer\":\"We are a worldwide trusted company\",\"copyright\":\"Copyright \\u00a9 CoinPro 2022. All Rights Reserved\",\"background_image\":\"624f2714497791649354516.jpg\"}', '2020-12-01 01:23:24', '2022-04-07 12:01:56'),
(73, 'faq.content', '{\"heading\":\"A Frequently Asked Questions\",\"sub_heading\":\"We always care for our clients, we have tried to answer some frequent questions about your business\"}', '2020-12-01 01:24:57', '2020-12-13 12:12:35'),
(74, 'faq.element', '{\"question\":\"How to making a withdrawal?\",\"answer\":\"You can make a withdrawal from the Withdraw page. Where possible we are required to send funds back to the payment method that was used to deposit the original funds.\\nFor further details relating to processing times and any applicable fees, please refer to the Withdrawals section of our Payments page.\\nYou can make a withdrawal from the Withdraw page. Where possible we are required to send funds back to the payment method that was used to deposit the original funds.\\nFor further details relating to processing times and any applicable fees, please refer to the Withdrawals section of our Payments page.\"}', '2020-12-01 01:25:16', '2020-12-13 12:17:03'),
(75, 'faq.element', '{\"question\":\"I have not received my withdrawal\",\"answer\":\"The processing time for your withdrawal will vary depending on your payment method.\\nYou can view further information on withdrawal clearance times by visiting our Payment Method page. If you are unable to locate your withdrawal after the processing time has passed, please Contact Us.\"}', '2020-12-01 01:25:21', '2020-12-13 12:16:14'),
(76, 'faq.element', '{\"question\":\"Advantages\\/Benefits of Binary MLM Plan\",\"answer\":\"Unlimited depth: Binary plan allows distributors to add members to unlimited levels and earn a high income.\\n\\nGroup work: With left leg or right spilling preferences, the distributors become active as they have to balance the tree for compensations.\\n\\nQuick growth: Binary plan offers quick business growth opportunities.\\n\\nCarry forward: Unpaid sales volume (SV) after present binary payout cycle is carry forward for the next binary payout cycle.\\n\\nSpillover: New members after completing the first level is spilled over to the unlimited downline levels.\"}', '2020-12-01 01:25:27', '2020-12-13 12:14:34'),
(77, 'faq.element', '{\"question\":\"How Does the Binary MLM Plan Works?\",\"answer\":\"Binary MLM plan is a network marketing compensation strategy used by many top-performing MLM companies. The new members sponsored by distributors are added either on the left or right leg. Upon adding two new members on either side of the subtree, a binary tree gets formed.\\n\\nAll the new members referred after forming a binary tree gets spilled to the downlines.\\n\\nNote: Distributors become a part of the binary plan by purchasing an enrollment package. The enrollment package here means either a service or a list of products. The distributor buys the package and becomes a part of the binary MLM company.\"}', '2020-12-01 01:25:33', '2020-12-13 12:13:23'),
(78, 'faq.element', '{\"question\":\"What is a Binary MLM Plan?\",\"answer\":\"The binary MLM plan is defined as a compensation plan that consists of two legs (left &amp; right) or subtrees under every distributor. Upon adding subtrees, a binary tree gets formed. New members joining after them are spilled over to the downlines or next business level.\"}', '2020-12-01 01:25:42', '2020-12-13 12:10:24'),
(79, 'sign_up.content', '{\"has_image\":\"1\",\"title\":\"Create Your Account\",\"short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"login_section_title\":\"Well Come To CoinPro\",\"login_section_short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"background_image\":\"624f257a27a001649354106.jpg\"}', '2020-12-01 01:28:59', '2022-04-07 11:55:06'),
(80, 'sign_in.content', '{\"has_image\":\"1\",\"title\":\"Login Account\",\"short_details\":\"To login into the site please enter your username and password\",\"register_section_title\":\"Well Come To CoinPro\",\"register_section_short_details\":\"Haven\'t registered yet! don\'t worry just fillip all the information below and get your account now.\",\"background_image\":\"624f25917a2721649354129.jpg\"}', '2020-12-01 01:29:34', '2022-04-07 11:55:29'),
(81, 'terms_conditions.content', '{\"title\":\"Below are the Terms &amp; Conditions by which we operate at MLM Ltd.\",\"description\":\"<h5 class=\\\"title\\\" style=\\\"margin-top:-7px;margin-bottom:8px;font-weight:600;line-height:1.3;font-size:24px;color:rgb(15,25,50);font-family:Poppins, sans-serif;\\\">Terms &amp; Conditions<\\/h5><div class=\\\"entry-content\\\" style=\\\"color:rgb(85,85,85);\\\"><p style=\\\"font-family:Roboto, sans-serif;margin-top:-10px;margin-bottom:32px;\\\"><\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);\\\"><font size=\\\"3\\\" face=\\\"times new roman\\\">GENERAL TERMS &amp; CONDITIONS OF BUSINESS<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1. Terms and Conditions<br \\/><\\/font><span style=\\\"color:rgb(17,17,17);\\\"><font size=\\\"3\\\" face=\\\"times new roman\\\">1.1 All and any business is undertaken by Projects Limited is transacted subject to the terms and conditions hereinafter set out, each of which will be incorporated or implied in any agreement between Projects and the Client.<br \\/><\\/font><\\/span><font size=\\\"3\\\" face=\\\"times new roman\\\">1.2 In the event of a conflict between these terms and conditions and any other terms and conditions, the former shall prevail unless otherwise expressly agreed by Projects in writing.<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1.3 Projects is acting in the capacity of an employment agency. Any amendments to these terms and conditions must be in writing and signed by an authorized representative of Projects.<br \\/><\\/font><font size=\\\"3\\\" face=\\\"times new roman\\\">1.4 The Client is deemed to have accepted these terms and conditions of business upon the arrangement of an interview, or the interview of a Candidate Introduced by Projects whether effected by Projects directly or by the Client.<\\/font><\\/p><h3 style=\\\"font-family:\'Open Sans\', Arial, sans-serif;margin-top:15px;margin-bottom:15px;font-weight:700;line-height:1.3;font-size:14px;color:rgb(0,0,0);padding:0px;\\\"><\\/h3><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cCandidate\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any person, firm or body corporate together with any subsidiary, group or associated company (as defined by the Companies Act 1985) Introduced by Projectus to the Client or by the Client to a Qualifying Third Person with a view to the Client or a Qualifying Third Person offering Employment.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cClient\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the person, firm or body corporate together with any subsidiary, group or associated company (as defined by the Companies Act 1985) to whom an Introduction is made<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cCommencement of Employment\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the first day of the Candidate\'s Employment or the first day the Candidate is entitled to any remuneration whichever is the sooner<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cEmployment\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any employment by the Client or a Qualifying Third Person of the Candidate whether on PAYE, self employed or a contract for services either directly with the Candidate or through any body corporate or third party irrespective of whether the Employment is subject to a trial period and irrespective of whether the Employment is part time or full time. Employs, Employed and Employment shall be construed accordingly.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cEmployee of Projectus\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means any person, firm or body corporate whom is employed by Projectus whether on PAYE, self employed or a contract for services either directly or through a Qualifying Third Person irrespective of whether the employment is subject to a trial period and irrespective of whether the employment is part time or full time.<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cFee\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Shall mean 30% of the Total Salary plus VAT. The minimum Fee shall be \\u00a35,000 plus VAT<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">\\u201cInterest\\u201d<\\/p><p style=\\\"margin-bottom:16px;color:rgb(17,17,17);font-family:\'Open Sans\';font-size:16px;\\\">Means the rate of 2.5% above the Bank of England plc base rate, to be compounded monthly.<\\/p><\\/div>\"}', '2020-12-01 01:29:59', '2020-12-13 17:27:36'),
(82, 'slider.element', '{\"has_image\":[\"1\"],\"title\":\"BINARY MULTI LEVEL MARKETING\",\"subtitle\":\"INTELLIGENT PLAN FOR YOUR MONEY\",\"left_button\":\"sign in\",\"left_button_link\":\"login\",\"right_button\":\"sign up\",\"right_button_link\":\"register\",\"description\":\"We are a dedicated Binary Multilevel Marketing company for every MLM plan with custom features.\",\"background_image\":\"5fc5f9cd0d3d11606810061.jpg\"}', '2020-12-01 02:07:41', '2020-12-13 13:35:28'),
(83, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"60717b1ce022a1618049820.jpg\"}', '2020-12-01 03:22:55', '2021-04-10 04:17:01'),
(84, 'social_icon.element', '{\"title\":\"twitter\",\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:00:59', '2020-12-05 01:00:59'),
(85, 'social_icon.element', '{\"title\":\"youtube\",\"social_icon\":\"<i class=\\\"fab fa-youtube\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:01:07', '2020-12-05 01:01:07'),
(86, 'social_icon.element', '{\"title\":\"youtube\",\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:01:15', '2020-12-05 01:01:15'),
(87, 'social_icon.element', '{\"title\":\"telegram\",\"social_icon\":\"<i class=\\\"lab la-telegram-plane\\\"><\\/i>\",\"url\":\"#\"}', '2020-12-05 01:02:49', '2020-12-05 01:02:49'),
(92, 'banner.content', '{\"has_image\":\"1\",\"title\":\"Where Dreams Come True\",\"left_button\":\"Let\'s Start\",\"left_button_link\":\"register\",\"right_button\":\"Choose Plan\",\"right_button_link\":\"#plan\",\"description\":\"To get rich, you have to be making money \\nwhile you\\u2019re asleep.!! --David Bailey.\\n\\n\\nWe believe, A Trade or Investment with CoinPro will make money for you, while you\\u2019re asleep\\u2026!!\\n\\nThe Magical Investment for A Secured Future..!\\n\\n                                          -- CoinPro\",\"background_image\":\"624f27cf760ca1649354703.jpg\"}', '2021-03-21 00:22:43', '2022-04-07 12:10:08'),
(98, 'plan.content', '{\"title\":\"Choose The Most Suitable Plan For You\",\"subtitle\":\"OUR PLANS\"}', '2021-03-21 03:12:20', '2021-04-10 00:41:43'),
(99, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Asuntiry Siomony\",\"designation\":\"Senior Advisor\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"60571235234331616319029.png\"}', '2021-03-21 03:30:29', '2021-04-09 22:28:58'),
(100, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"Brain Paucheck\",\"designation\":\"Business Man\",\"rating\":\"5\",\"quote\":\"\\u201cThis platform is incredible! I\\u2019ve invested  on this application since the start of my Shopify business and the app just keeps getting better and better. It provides a plenty of value and earning.\\u201d\",\"image\":\"61e930a2839a81642672290.jpg\"}', '2021-03-21 03:55:55', '2022-01-20 09:51:30'),
(101, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"William Trosyon\",\"designation\":\"Hedom Jater Kocchop\",\"rating\":\"4\",\"quote\":\"\\u201cGreat app to help you get earnings if you don\\u2019t have too much time to be setting it up and optimizing yourself every day. Great customer service too - they\\u2019ve answered all my questions.\\u201d\",\"image\":\"61e9317b22a221642672507.jpg\"}', '2021-03-21 04:09:05', '2022-01-20 09:55:07'),
(102, 'payment_methods.content', '{\"title\":\"Our Payment System For You\",\"subtitle\":\"PAYMENT METHODS\"}', '2021-03-21 05:23:54', '2021-04-10 00:44:56');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(106, 'user_links.element', '{\"title\":\"Terms and Conditions\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster-related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Terms &amp; Conditions for Users<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Conditions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Support<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Ownership<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Warranty<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Unauthorized\\/Illegal Usage<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting-in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Payment\\/Refund Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cashback will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Free Balance \\/ Coupon Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of the free Balances from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div>\"}', '2021-03-21 05:53:31', '2021-06-03 04:23:15'),
(107, 'how_work.content', '{\"has_image\":\"1\",\"title\":\"Our Work Process In 4 Steps\",\"subtitle\":\"HOW WE WORK\",\"video_link\":\"https:\\/\\/www.youtube.com\\/embed\\/WOb4cj7izpE\",\"background_image\":\"61d6b765806451641461605.jpg\"}', '2021-04-01 05:03:14', '2022-01-06 09:33:25'),
(108, 'how_work.element', '{\"title\":\"Create An Account\"}', '2021-04-01 05:03:57', '2021-04-10 00:20:52'),
(109, 'how_work.element', '{\"title\":\"Choose Plan\"}', '2021-04-01 05:04:32', '2021-04-08 08:18:42'),
(110, 'how_work.element', '{\"title\":\"Invite More People\"}', '2021-04-01 05:05:18', '2021-04-08 08:18:53'),
(111, 'counter.content', '{\"has_image\":\"1\",\"background_image\":\"624f21a3b009b1649353123.jpg\"}', '2021-04-07 01:05:11', '2022-04-07 11:38:44'),
(112, 'how_work.element', '{\"title\":\"Get Commission\"}', '2021-04-08 07:15:13', '2021-04-08 08:19:13'),
(113, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"William Trosyon\",\"designation\":\"Senior Consultant\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"607129d2635371618029010.png\"}', '2021-04-09 22:30:10', '2021-04-09 22:30:10'),
(114, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Kathi Angel\",\"designation\":\"Marketing Executive\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"607129f7330af1618029047.png\"}', '2021-04-09 22:30:47', '2021-04-09 22:30:47'),
(115, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Shane Grilson\",\"designation\":\"CEO\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi.\",\"image\":\"60712a0cc6f321618029068.png\"}', '2021-04-09 22:31:08', '2021-04-09 22:31:08'),
(116, 'faq.element', '{\"question\":\"How to Deposit Money?\",\"answer\":\"You can make a deposit from the deposit page. You will see several payment methods to pay, choose any one of them and pay the money to deposit that amount in your balance\"}', '2021-04-09 22:42:59', '2021-04-09 22:42:59'),
(117, 'cookie.data', NULL, NULL, NULL),
(118, 'testimonial.element', '{\"has_image\":[\"1\"],\"author\":\"Lux\\u00e9dore\",\"designation\":\"Author\",\"rating\":\"5\",\"quote\":\"The first exchange of its kind designed to fully integrate the next generation of cryptocurrencies. Because of this, I\'m  able to earn 8000$\\/month and now I\'m owner of a tesla.\",\"image\":\"61e931faec0c61642672634.jpg\"}', '2022-01-20 09:57:14', '2022-01-20 10:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `alias`, `image`, `name`, `status`, `parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'paypal', '5f6f1bd8678601601117144.jpg', 'Paypal', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-zlbi7986064@personal.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:28'),
(2, 102, 'perfect_money', '5f6f1d2a742211601117482.jpg', 'Perfect Money', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:31'),
(3, 103, 'stripe', '5f6f1d4bc69e71601117515.jpg', 'Stripe Hosted', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:34'),
(4, 104, 'skrill', '5f6f1d41257181601117505.jpg', 'Skrill', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:37'),
(5, 105, 'paytm', '5f6f1d1d3ec731601117469.jpg', 'PayTM', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:40'),
(6, 106, 'payeer', '5f6f1bc61518b1601117126.jpg', 'Payeer', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:44'),
(7, 107, 'paystack', '5f7096563dfb71601214038.jpg', 'PayStack', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:47'),
(8, 108, 'voguepay', '5f6f1d5951a111601117529.jpg', 'VoguePay', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:54'),
(9, 109, 'flutterwave', '5f6f1b9e4bb961601117086.jpg', 'Flutterwave', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"demo_publisher_key\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"demo_secret_key\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"demo_encryption_key\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:20:57'),
(10, 110, 'razorpay', '5f6f1d3672dd61601117494.jpg', 'RazorPay', 0, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:00'),
(11, 111, 'stripe_js', '5f7096a31ed9a1601214115.jpg', 'Stripe Storefront', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:03'),
(12, 112, 'instamojo', '5f6f1babbdbb31601117099.jpg', 'Instamojo', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:07'),
(13, 501, 'blockchain', '5f6f1b2b20c6f1601116971.jpg', 'Blockchain', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:10'),
(14, 502, 'blockio', '5f6f19432bedf1601116483.jpg', 'Block.io', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:15'),
(15, 503, 'coinpayments', '5f6f1b6c02ecd1601117036.jpg', 'CoinPayments', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:18'),
(16, 504, 'coinpayments_fiat', '5f6f1b94e9b2b1601117076.jpg', 'CoinPayments Fiat', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:22'),
(17, 505, 'coingate', '5f6f1b5fe18ee1601117023.jpg', 'Coingate', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:26'),
(18, 506, 'coinbase_commerce', '5f6f1b4c774af1601117004.jpg', 'Coinbase Commerce', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:29'),
(24, 113, 'paypal_sdk', '5f6f1bec255c61601117164.jpg', 'Paypal Express', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:33'),
(25, 114, 'stripe_v3', '5f709684736321601214084.jpg', 'Stripe Checkout', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:37'),
(27, 115, 'mollie', '5f6f1bb765ab11601117111.jpg', 'Mollie', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"admin@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-01-06 09:21:40'),
(30, 116, 'cashmaal', '5f9a8b62bb4dd1603963746.png', 'Cashmaal', 0, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.cashmaal\"}}', NULL, NULL, NULL, '2022-01-06 09:20:51'),
(32, 1000, 'bitcoin', '61d6b416a73271641460758.png', 'BitCoin', 0, '[]', '[]', 0, NULL, '<br>', '[]', '2022-01-06 09:19:18', '2022-01-27 13:07:45'),
(33, 1001, 'usdt', '61e96df146b341642687985.jpg', 'USDT', 1, '[]', '[]', 0, NULL, '<div style=\"text-align: center;\"><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">pay the amount to this&nbsp;</span></div><div style=\"text-align: center;\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAAAXNSR0IArs4c6QAABBdJREFUeJzt3VFuGyEAQMG46v2vnB5grRYhHuB05jteW+0TEoKF1/f39xes9uv0D+BnEhYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWid+Df/d6vdLf8XcjK+XPXzj3qe7b537hyHftNPibjVgkhEVCWCSERUJYJEZnhU/dnua5Wc/ILGznc0Y+tWqeeNv/xZcRi4iwSAiLhLBICIvE/KzwadUsbOd3PZ8zt3rYrVTO2fl/8ZYRi4SwSAiLhLBICIvEylnhTnMrenP7POeeM/KpVU++kBGLhLBICIuEsEgIi8SnzgqfVq3f7VwH/NAZ3wgjFglhkRAWCWGREBaJlbPCs3Oc7iyXVe/6rdqtOvftmxmxSAiLhLBICIuEsEjMzwrPnoS56szPnX/ztPNkm82MWCSERUJYJIRFQlgkRmeFx9ee/mnVzOjsc+bmkhcyYpEQFglhkRAWCWGReA1OMc7e8tB9186TQrt/jbN7Zd8yYpEQFglhkRAWCWGRaN8rPH4/wjZn76EYserMHLfYc5KwSAiLhLBICIvE/A7SkbNTVt37MGfnCtrZ805Hfk/3qbeMWCSERUJYJIRFQlgk5neQdrOVnXOlnXOuVWugO+et1gq5i7BICIuEsEgIi8TK02Z+xruHq8572XlqzdnZ7ltGLBLCIiEsEsIiISwSo7PCbnVs5x3xq2ZY3T2DZ1chnTbD7YRFQlgkhEVCWCRGd5C++WS2I7GbJ4647d7D29hByknCIiEsEsIiISwS7XuF97/Hd3YNdOde2REL10CNWCSERUJYJIRFQlgk5tcK3zwrmwedvenvtrNl5r598zk/RiwSwiIhLBLCIiEsEvP3Ff7P+yrn7ukYec7c33Qzx+m5rRGLhLBICIuEsEgIi8TKHaRn1wrP3vuw8zlPO9/NtFbIScIiISwSwiIhLBIrT5t5Wrg9dcLOk0Jvu19j5FNP1gq5nbBICIuEsEgIi8T8zRRzuyjPvmm4c81xxKq7M+akNyEasUgIi4SwSAiLhLBIrDxtZqedq3U7b9y4/9TWQUYsEsIiISwSwiIhLBLtLfar7LwJYm6mtnPuNjdz9F4hP4GwSAiLhLBICIvE/Bmk3SLj2TfyVs3UVv2ekU9dyIhFQlgkhEVCWCSERWJ+Vvh0fNfiP3Unc3Z2fvvCXbhGLBLCIiEsEsIiISwSK2eFO90/m5vziWeivmXEIiEsEsIiISwSwiLxqbPCbl1y1Vt73U7UnXdMWCvkLsIiISwSwiIhLBIrZ4W3ve/WnRvT3Wdx2w2P7ivkLsIiISwSwiIhLBKjN1PcdgZptxbWral1dzWO/J6d3/5lxCIiLBLCIiEsEsIi8an3FXI5IxYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGR+ANXxizAw59jhAAAAABJRU5ErkJggg==\" alt=\"\"><br></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\">USDT</div><div style=\"text-align: center;\">TBWs1RJjBH1tkfTwQu4rKVEoxhW93agyjT&nbsp;<br></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><br></div>', '[]', '2022-01-20 14:13:05', '2022-01-26 20:33:07'),
(34, 1002, 'ethereum', '61e96fe2e04b01642688482.jpg', 'Ethereum', 0, '[]', '[]', 0, NULL, 'not activated&nbsp;', '[]', '2022-01-20 14:19:29', '2022-01-27 13:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'BitCoin', 'USD', '', 1000, 'bitcoin', '30.00000000', '1000000.00000000', '10.00', '0.00000000', '1.00000000', '61d6b416a73271641460758.png', '[]', '2022-01-06 09:19:18', '2022-01-06 09:19:18'),
(2, 'USDT', 'USD', '', 1001, 'usdt', '10.00000000', '10000.00000000', '0.00', '0.00000000', '1.00000000', '61e96df146b341642687985.jpg', '[]', '2022-01-20 14:13:05', '2022-01-26 20:33:07'),
(3, 'Ethereum', 'USD', '', 1002, 'ethereum', '10.00000000', '10000.00000000', '5.00', '0.00000000', '1.00000000', '61e96fe2e04b01642688482.jpg', '[]', '2022-01-20 14:19:29', '2022-01-20 14:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(4) NOT NULL DEFAULT 0,
  `secure_password` tinyint(4) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bv_price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bv` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_bv` int(11) DEFAULT NULL,
  `cary_flash` tinyint(1) DEFAULT NULL,
  `notice` blob DEFAULT NULL,
  `show_notice` tinyint(1) NOT NULL DEFAULT 1,
  `free_user_notice` blob DEFAULT NULL,
  `matching_bonus_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matching_when` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_paid` datetime DEFAULT NULL,
  `last_roi` datetime DEFAULT NULL,
  `last_cron` datetime DEFAULT NULL,
  `bal_trans_per_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `bal_trans_fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `registration`, `social_login`, `social_credential`, `active_template`, `sys_version`, `bv_price`, `total_bv`, `max_bv`, `cary_flash`, `notice`, `show_notice`, `free_user_notice`, `matching_bonus_time`, `matching_when`, `last_paid`, `last_roi`, `last_cron`, `bal_trans_per_charge`, `bal_trans_fixed_charge`, `created_at`, `updated_at`) VALUES
(1, 'CoinPro', 'USD', '$', 'noreply@royalbit.uk.com', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/iPgXsBZ.png\" width=\"128\"><br></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2021 Royalbit.uk.com All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', '--------------------------------------------', '19bbd8', '5f2897', '{\"name\":\"smtp\",\"host\":\"mail.royalbit.uk.com\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"noreply@royalbit.uk.com\",\"password\":\"?7gs%O0rec.y\"}', 0, 1, 0, 0, 1, 0, 1, 0, '{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}', 'basic', NULL, '2', '2', 500, 2, 0x3c6831207374796c653d22746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a20302e3572656d3b20666f6e742d7765696768743a203630303b206c696e652d6865696768743a20312e333b20666f6e742d73697a653a20323070783b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c2073616e732d73657269663b2070616464696e673a203070783b207472616e736974696f6e3a20616c6c20302e337320656173652030733b20636f6c6f723a2072676228302c203137352c20323535292021696d706f7274616e743b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c203137352c20323535293b223e446973636c61696d65723a3c2f7370616e3e3c62723e3c2f68313e3c6469763e3c62723e3c2f6469763e3c6469763e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e5765206172652065787472656d616c6c7920736f72727920666f72206f7572207265676973746572656420417369616e2075736572732e204f75722073797374656d2077617320646576656c6f70656420554b2062617365642e205468697320796561722c20696e20323032322c205765206861766520657870616e646564206f757220627573696e65737320776f726c6420776964652e20526563656e746c792c2077652068617665206e6f746963656420736f6d652075736572732067657474696e67206f766572207061792066726f6d2074686520524f4920706c6174666f726d2e205370656369616c6c792074686520417369616e2075736572732e205468652070726f626c656d20776173207472696767657265642064756520746f2074686520636f756e747279207769736520696e766573746d656e7420506c616e732e2057652061726520776f726b696e67206f6e2069742e20416c7265616479207765206861766520736f6c76656420736f6d65207573657273206163636f756e742e2052657374206f66207468656d2077696c6c20626520736f6c76656420617320717569636b20617320706f737369626c652e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c623e5374617920776974682075732026616d703b20456e6a6f7920796f75722074696d652e3c2f623e3c2f6469763e3c2f6469763e, 2, 0x3c683520636c6173733d22636172642d7469746c6520746578742d7072696d61727922207374796c653d226d617267696e2d626f74746f6d3a20302e3572656d3b20666f6e742d7765696768743a203630303b206c696e652d6865696768743a20312e333b20666f6e742d73697a653a20323070783b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c2073616e732d73657269663b2070616464696e673a203070783b207472616e736974696f6e3a20616c6c20302e337320656173652030733b20636f6c6f723a2072676228302c203137352c20323535292021696d706f7274616e743b223e3c62723e3c2f68353e, 'daily', '1', '2022-04-08 00:00:00', '2022-04-08 00:00:02', '2022-04-08 01:20:02', '1.00000000', '0.00000000', NULL, '2022-04-07 19:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 0, '2020-07-06 03:47:55', '2021-01-06 00:33:35'),
(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2021-03-14 04:37:41'),
(10, 'Spanish', 'es', NULL, 0, 0, '2021-04-10 00:26:35', '2021-04-10 00:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"about\",\"feature\",\"how_work\",\"plan\",\"team\",\"testimonial\",\"blog\",\"transaction\",\"subscribe\",\"payment_methods\"]', 1, '2020-07-11 06:23:58', '2022-01-20 20:45:11'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"counter\",\"testimonial\",\"team\"]', 0, '2020-07-11 06:35:35', '2021-06-03 04:31:54'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-12-01 03:40:45'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(6, 'FAQ', 'faq', 'templates.basic.', '[\"faq\",\"counter\",\"team\",\"payment_methods\"]', 0, '2020-12-01 03:27:45', '2021-06-03 04:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('abusayeed33343536@gmail.com', '676603', '2022-01-20 04:37:32'),
('b2@e.co', '842560', '2022-01-22 08:05:43'),
('grcvkhjgnifkyrhstt@kvhrw.com', '981989', '2022-01-22 08:11:09'),
('uddinmesbah130@gmail.com', '693638', '2022-01-23 18:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `bv` int(10) DEFAULT NULL,
  `ref_com` decimal(16,8) DEFAULT NULL,
  `tree_com` decimal(16,8) DEFAULT NULL,
  `daily_ad_limit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `bv`, `ref_com`, `tree_com`, `daily_ad_limit`, `status`, `updated_at`, `created_at`) VALUES
(1, 'BASIC', '10.00000000', NULL, '1.00000000', '1.00000000', 0, 1, '2022-04-07 11:24:33', '2022-01-06 05:25:12'),
(2, 'SILVER', '50.00000000', NULL, '5.00000000', '4.00000000', 0, 1, '2022-04-07 11:24:47', '2022-01-19 21:48:12'),
(3, 'GOLD', '100.00000000', NULL, '10.00000000', '8.00000000', 0, 1, '2022-04-07 11:25:00', '2022-01-19 23:07:36'),
(4, 'PLATINUM', '200.00000000', NULL, '20.00000000', '18.00000000', 0, 1, '2022-04-07 11:25:15', '2022-01-19 23:10:20'),
(5, 'PROFESSIONAL', '300.00000000', NULL, '30.00000000', '24.00000000', 0, 1, '2022-04-07 11:25:21', '2022-01-19 23:10:42'),
(6, 'ELITE', '500.00000000', NULL, '50.00000000', '40.00000000', 0, 1, '2022-04-07 11:25:25', '2022-01-19 23:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `ptcs`
--

CREATE TABLE `ptcs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_type` int(1) DEFAULT NULL COMMENT '1 = link | 2 = image | 3 = script',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `duration` int(11) NOT NULL DEFAULT 0,
  `max_show` int(11) NOT NULL DEFAULT 0,
  `showed` int(11) NOT NULL DEFAULT 0,
  `remain` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_views`
--

CREATE TABLE `ptc_views` (
  `id` int(11) NOT NULL,
  `ptc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vdt` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(11) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_wallet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `data_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `wallet_type`, `created_at`, `updated_at`) VALUES
(1, 229, NULL, '10.00000000', '0.00000000', '10.00000000', '+', 'DA7NGDOZXAHU', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-04-06 21:45:23', '2022-04-06 21:45:23'),
(2, 227, NULL, '10.00000000', '0.00000000', '10.00000000', '+', 'U2UEPQF51JYY', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-04-06 21:46:10', '2022-04-06 21:46:10'),
(3, 228, NULL, '10.00000000', '0.00000000', '10.00000000', '+', 'SO7KBQQEFPV4', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-04-06 21:49:49', '2022-04-06 21:49:49'),
(4, 230, NULL, '50.00000000', '0.00000000', '50.00000000', '+', 'K4OSZM5EEJH7', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-04-06 21:56:58', '2022-04-06 21:56:58'),
(5, 231, NULL, '50.00000000', '0.00000000', '50.00000000', '+', '51OXFT98SXKG', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-04-06 21:57:54', '2022-04-06 21:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_del`
--

CREATE TABLE `transactions_del` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_wallet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions_del`
--

INSERT INTO `transactions_del` (`id`, `user_id`, `data_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `wallet_type`, `created_at`, `updated_at`) VALUES
(1, 191, NULL, '100.00000000', '0.00000000', '100.00000000', '+', 'NCZRS8CSHACB', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-01-31 23:24:27', '2022-01-31 23:24:27'),
(2, 191, 2, '100.00000000', '0.00000000', '0.00000000', '-', '1MU32TJE31ZZ', 'Purchased SILVER', 'purchased_plan', 'cash_wallet', '2022-01-31 23:24:47', '2022-01-31 23:24:47'),
(3, 183, NULL, '10.00000000', '0.00000000', '10.00000000', '+', 'ZY9WRWFSN9ND', 'Naharbd Subscribed to SILVER plan.', 'referral_commission', 'cash_wallet', '2022-01-31 23:24:51', '2022-01-31 23:24:51'),
(4, 189, NULL, '50.00000000', '0.00000000', '50.00000000', '+', 'D4OFDQ8DWPGZ', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-01-31 23:26:17', '2022-01-31 23:26:17'),
(5, 189, 1, '50.00000000', '0.00000000', '0.00000000', '-', '249WF82TAY32', 'Purchased BASIC', 'purchased_plan', 'cash_wallet', '2022-01-31 23:26:31', '2022-01-31 23:26:31'),
(6, 177, NULL, '5.00000000', '0.00000000', '5.00000000', '+', 'DSRENCZUVPZC', 'Yeasminbd Subscribed to BASIC plan.', 'referral_commission', 'cash_wallet', '2022-01-31 23:26:35', '2022-01-31 23:26:35'),
(7, 190, NULL, '50.00000000', '0.00000000', '50.00000000', '+', 'UZ4KZ6BGONQZ', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-01-31 23:28:00', '2022-01-31 23:28:00'),
(8, 190, 1, '50.00000000', '0.00000000', '0.00000000', '-', '369TATR4P1HS', 'Purchased BASIC', 'purchased_plan', 'cash_wallet', '2022-01-31 23:28:17', '2022-01-31 23:28:17'),
(9, 189, NULL, '5.00000000', '0.00000000', '5.00000000', '+', 'UEGBVG4R3GW8', 'Luckybd Subscribed to BASIC plan.', 'referral_commission', 'cash_wallet', '2022-01-31 23:28:22', '2022-01-31 23:28:22'),
(10, 194, NULL, '500.00000000', '0.00000000', '500.00000000', '+', '18JRPOX5AU86', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-01-31 23:34:28', '2022-01-31 23:34:28'),
(11, 194, 4, '500.00000000', '0.00000000', '0.00000000', '-', '6KGXZE8W3813', 'Purchased PLATINUM', 'purchased_plan', 'cash_wallet', '2022-01-31 23:34:39', '2022-01-31 23:34:39'),
(12, 177, NULL, '50.00000000', '0.00000000', '55.00000000', '+', 'RKYM1VV9SF45', 'Halima Subscribed to PLATINUM plan.', 'referral_commission', 'cash_wallet', '2022-01-31 23:34:43', '2022-01-31 23:34:43'),
(13, 191, 2, '2.00000000', '0.00000000', '2.00000000', '+', 'YY4SEDHHFFKB', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(14, 191, 2, '0.22222222', '0.00000000', '2.22222222', '+', 'YASVB2VCSB3Z', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(15, 189, 5, '0.50000000', '0.00000000', '5.50000000', '+', 'SGERA2QZ261G', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(16, 189, 1, '0.05555556', '0.00000000', '5.55555556', '+', 'OG1ZBPWVF32G', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(17, 190, 8, '0.50000000', '0.00000000', '0.50000000', '+', 'FE3SFPT5Y2BH', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(18, 190, 1, '0.05555556', '0.00000000', '0.55555556', '+', 'OUFP4D3VKGTN', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(19, 194, 11, '50.00000000', '0.00000000', '50.00000000', '+', '32ZUDATF2H2M', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(20, 194, 4, '5.55555556', '0.00000000', '55.55555556', '+', '8SNDZS2CYKT4', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-01 00:00:04', '2022-02-01 00:00:04'),
(21, 191, 2, '2.00000000', '0.00000000', '4.22222222', '+', 'RR7QAV5C2NAP', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(22, 191, 2, '0.22222222', '0.00000000', '4.44444444', '+', 'JB1ZV4DOP3CF', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(23, 189, 5, '0.50000000', '0.00000000', '6.05555556', '+', '7GYUP3C5JG8W', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(24, 189, 1, '0.05555556', '0.00000000', '6.11111112', '+', 'GEFJWXBA8GJJ', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(25, 190, 8, '0.50000000', '0.00000000', '1.05555556', '+', 'FGNQ1G6ONUY4', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(26, 190, 1, '0.05555556', '0.00000000', '1.11111112', '+', 'ZFQ11JXP5BMF', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(27, 194, 11, '50.00000000', '0.00000000', '105.55555556', '+', 'A5HXR6ZSJ94X', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(28, 194, 4, '5.55555556', '0.00000000', '111.11111112', '+', 'R5T4U2BV7CJD', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-02 00:00:06', '2022-02-02 00:00:06'),
(29, 191, 2, '2.00000000', '0.00000000', '6.44444444', '+', 'ZEP2AKZOE3QN', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(30, 191, 2, '0.22222222', '0.00000000', '6.66666666', '+', 'SPUSJKU2G6W3', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(31, 189, 5, '0.50000000', '0.00000000', '6.61111112', '+', 'H11EE8H3AUEY', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(32, 189, 1, '0.05555556', '0.00000000', '6.66666668', '+', 'K34K5591MHOK', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(33, 190, 8, '0.50000000', '0.00000000', '1.61111112', '+', 'EODK6X89P4QB', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(34, 190, 1, '0.05555556', '0.00000000', '1.66666668', '+', 'OSV43D8URYWN', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(35, 194, 11, '50.00000000', '0.00000000', '161.11111112', '+', 'U8ZW3FHXGPMC', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(36, 194, 4, '5.55555556', '0.00000000', '166.66666668', '+', 'DNGUOGUDXNPA', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-03 00:00:06', '2022-02-03 00:00:06'),
(37, 177, 1, '50.00000000', '0.00000000', '5.00000000', '-', 'T76FKPU5UHJG', 'Purchased BASIC', 'purchased_plan', 'cash_wallet', '2022-02-03 04:17:19', '2022-02-03 04:17:19'),
(38, 176, NULL, '5.00000000', '0.00000000', '5.00000000', '+', 'PRT9G3EP1ZXV', 'Deeplbd Subscribed to BASIC plan.', 'referral_commission', 'cash_wallet', '2022-02-03 04:17:24', '2022-02-03 04:17:24'),
(39, 195, NULL, '1000.00000000', '0.00000000', '1000.00000000', '+', 'RDGRM2D64SVE', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-02-03 04:27:31', '2022-02-03 04:27:31'),
(40, 195, 5, '1000.00000000', '0.00000000', '0.00000000', '-', 'NQT34G67DAZW', 'Purchased PROFESSIONAL', 'purchased_plan', 'cash_wallet', '2022-02-03 04:27:47', '2022-02-03 04:27:47'),
(41, 177, NULL, '100.00000000', '0.00000000', '105.00000000', '+', 'NPQ6N3OK53BV', 'Halima1 Subscribed to PROFESSIONAL plan.', 'referral_commission', 'cash_wallet', '2022-02-03 04:27:52', '2022-02-03 04:27:52'),
(42, 191, 2, '2.00000000', '0.00000000', '8.66666666', '+', 'BCOZFD2HT8JW', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(43, 191, 2, '0.22222222', '0.00000000', '8.88888888', '+', '9YWRJ7QGAK7N', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(44, 189, 5, '0.50000000', '0.00000000', '7.16666668', '+', '3AVA5VPTUJDZ', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(45, 189, 1, '0.05555556', '0.00000000', '7.22222224', '+', 'XE7X3TT2S151', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(46, 190, 8, '0.50000000', '0.00000000', '2.16666668', '+', 'DGTUEXW5CKFB', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(47, 190, 1, '0.05555556', '0.00000000', '2.22222224', '+', '3QN3G7EBMN45', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(48, 194, 11, '50.00000000', '0.00000000', '216.66666668', '+', 'XU3PT7MZW5PC', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(49, 194, 4, '5.55555556', '0.00000000', '222.22222224', '+', 'Q7NBS9SAAPKH', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(50, 177, 37, '0.50000000', '0.00000000', '105.50000000', '+', 'SX968C4AGY27', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(51, 177, 1, '0.05555556', '0.00000000', '105.55555556', '+', 'KOYMZUQNSBFT', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:07', '2022-02-04 00:00:07'),
(52, 195, 40, '200.00000000', '0.00000000', '200.00000000', '+', '6SZ63E7JHE13', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-04 00:00:10', '2022-02-04 00:00:10'),
(53, 195, 5, '22.22222222', '0.00000000', '222.22222222', '+', 'FKD95A14VH8T', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-04 00:00:10', '2022-02-04 00:00:10'),
(54, 189, NULL, '4.00000000', '0.00000000', '11.22222224', '+', 'YFTWFKSCK55Y', 'Paid 4 USD For Binary Commission.', 'binary_commission', 'cash_wallet', '2022-02-04 01:00:07', '2022-02-04 01:00:07'),
(55, 177, NULL, '0.12000000', '0.00000000', '105.67555556', '+', '55QV4QMBXJ4M', 'Paid Matching Bonus lavel 1 for Yeasminbd', 'level_bonus', 'cash_wallet', '2022-02-04 01:00:07', '2022-02-04 01:00:07'),
(56, 191, 2, '2.00000000', '0.00000000', '10.88888888', '+', '2P3TBNZD25NO', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(57, 191, 2, '0.22222222', '0.00000000', '11.11111110', '+', 'AQMN62BMT61C', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(58, 189, 5, '0.50000000', '0.00000000', '11.72222224', '+', '2D41WRT7KEP1', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(59, 189, 1, '0.05555556', '0.00000000', '11.77777780', '+', '53B19N3H6D9B', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(60, 190, 8, '0.50000000', '0.00000000', '2.72222224', '+', '4A29CKSYED34', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(61, 190, 1, '0.05555556', '0.00000000', '2.77777780', '+', 'AX776MKXJM6W', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(62, 194, 11, '50.00000000', '0.00000000', '272.22222224', '+', '1SPC54EESTTB', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(63, 194, 4, '5.55555556', '0.00000000', '277.77777780', '+', 'SJNRYVVQZ5R3', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(64, 177, 37, '0.50000000', '0.00000000', '106.17555556', '+', '7HHMDMZCXO6M', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(65, 177, 1, '0.05555556', '0.00000000', '106.23111112', '+', 'UWPQH2X64VHM', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(66, 195, 40, '200.00000000', '0.00000000', '422.22222222', '+', '2VEQMABE1FYD', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(67, 195, 5, '22.22222222', '0.00000000', '444.44444444', '+', 'O9CA5H51FEFA', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-05 00:00:06', '2022-02-05 00:00:06'),
(68, 220, NULL, '1000.00000000', '0.00000000', '1000.00000000', '+', '1XRC524Z3X62', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-02-05 08:52:17', '2022-02-05 08:52:17'),
(69, 220, 5, '1000.00000000', '0.00000000', '0.00000000', '-', 'H4HVRAJ896X3', 'Purchased PROFESSIONAL', 'purchased_plan', 'cash_wallet', '2022-02-05 08:52:34', '2022-02-05 08:52:34'),
(70, 219, NULL, '100.00000000', '0.00000000', '100.00000000', '+', 'E229APQCVAXU', 'Coxking1 Subscribed to PROFESSIONAL plan.', 'referral_commission', 'cash_wallet', '2022-02-05 08:52:36', '2022-02-05 08:52:36'),
(71, 221, NULL, '1000.00000000', '0.00000000', '1000.00000000', '+', '4UXT6B3AMGQA', 'Deposit Via USDT', NULL, 'cash_wallet', '2022-02-06 09:19:23', '2022-02-06 09:19:23'),
(72, 221, 5, '1000.00000000', '0.00000000', '0.00000000', '-', 'C44PQZ7OT7T8', 'Purchased PROFESSIONAL', 'purchased_plan', 'cash_wallet', '2022-02-06 09:19:41', '2022-02-06 09:19:41'),
(73, 177, NULL, '100.00000000', '0.00000000', '206.23111112', '+', 'BYVU3TDWKP3Z', 'sylhet Subscribed to PROFESSIONAL plan.', 'referral_commission', 'cash_wallet', '2022-02-06 09:19:43', '2022-02-06 09:19:43'),
(74, 191, 2, '2.00000000', '0.00000000', '13.11111110', '+', 'AJJ13E4Z6CGP', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(75, 191, 2, '0.22222222', '0.00000000', '13.33333332', '+', '8RKNYJMUZH85', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(76, 189, 5, '0.50000000', '0.00000000', '12.27777780', '+', 'THRGH3FPVHSD', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(77, 189, 1, '0.05555556', '0.00000000', '12.33333336', '+', 'WHRKGQ5W83WF', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(78, 190, 8, '0.50000000', '0.00000000', '3.27777780', '+', 'CK7GUBEY3US2', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(79, 190, 1, '0.05555556', '0.00000000', '3.33333336', '+', '7SR1Z4EZW5SR', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(80, 194, 11, '50.00000000', '0.00000000', '327.77777780', '+', 'P1V18EVZF6YG', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(81, 194, 4, '5.55555556', '0.00000000', '333.33333336', '+', '7J9X952P6P5Q', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(82, 177, 37, '0.50000000', '0.00000000', '206.73111112', '+', 'HST2M9DG1YR1', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(83, 177, 1, '0.05555556', '0.00000000', '206.78666668', '+', 'Q7NXT9FMAQBM', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(84, 195, 40, '200.00000000', '0.00000000', '644.44444444', '+', '89PQNTRWX1NX', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(85, 195, 5, '22.22222222', '0.00000000', '666.66666666', '+', 'EO4JR3WDOCDQ', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(86, 220, 69, '200.00000000', '0.00000000', '200.00000000', '+', 'CBDQBTDWW9JE', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(87, 220, 5, '22.22222222', '0.00000000', '222.22222222', '+', 'YVYKCZN76AZK', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(88, 221, 72, '200.00000000', '0.00000000', '200.00000000', '+', 'MRBFX73GU3AM', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(89, 221, 5, '22.22222222', '0.00000000', '222.22222222', '+', 'U1Z9M84ZRQGV', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-07 00:00:06', '2022-02-07 00:00:06'),
(90, 177, NULL, '80.00000000', '0.00000000', '286.78666668', '+', 'OC6XJ1R2FE31', 'Paid 80 USD For Binary Commission.', 'binary_commission', 'cash_wallet', '2022-02-07 01:00:06', '2022-02-07 01:00:06'),
(91, 177, NULL, '100.00000000', '10.00000000', '186.78666668', '-', 'APECHZJ5M1WS', '90 USD Withdraw Via USDT', NULL, 'cash_wallet', '2022-02-07 04:46:51', '2022-02-07 04:46:51'),
(92, 177, 2, '100.00000000', '0.00000000', '86.78666668', '-', '3JVZCK7S1MGT', 'Purchased SILVER', 'purchased_plan', 'cash_wallet', '2022-02-07 05:19:52', '2022-02-07 05:19:52'),
(93, 176, NULL, '10.00000000', '0.00000000', '15.00000000', '+', 'JBA8NBPDRHGP', 'Deeplbd Subscribed to SILVER plan.', 'referral_commission', 'cash_wallet', '2022-02-07 05:19:54', '2022-02-07 05:19:54'),
(94, 177, NULL, '100.00000000', '0.00000000', '186.78666668', '+', 'APECHZJ5M1WS', '100 USD Refunded from Withdrawal Rejection', NULL, 'open_wallet', '2022-02-07 05:24:15', '2022-02-07 05:24:15'),
(95, 191, 2, '2.00000000', '0.00000000', '15.33333332', '+', 'ZVENDEYQ1RYS', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(96, 191, 2, '0.22222222', '0.00000000', '15.55555554', '+', 'AYPOGV4BP1YB', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(97, 189, 5, '0.50000000', '0.00000000', '12.83333336', '+', '66POUE5MQXKG', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(98, 189, 1, '0.05555556', '0.00000000', '12.88888892', '+', 'P58X3ESRKNEE', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(99, 190, 8, '0.50000000', '0.00000000', '3.83333336', '+', 'P6TVYO982HCM', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(100, 190, 1, '0.05555556', '0.00000000', '3.88888892', '+', 'SG8NAZ2XB3J3', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(101, 194, 11, '50.00000000', '0.00000000', '383.33333336', '+', 'V2BVVAR78TAC', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:08', '2022-02-08 00:00:08'),
(102, 194, 4, '5.55555556', '0.00000000', '388.88888892', '+', 'EDO9OU6B79XW', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(103, 177, 37, '0.50000000', '0.00000000', '187.28666668', '+', 'Q9WKAGQSTSB8', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(104, 177, 1, '0.05555556', '0.00000000', '187.34222224', '+', 'ZAQAU2ORBPYU', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(105, 195, 40, '200.00000000', '0.00000000', '866.66666666', '+', 'U341M5PVEW4E', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(106, 195, 5, '22.22222222', '0.00000000', '888.88888888', '+', 'ANF48BDH93NS', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(107, 220, 69, '200.00000000', '0.00000000', '422.22222222', '+', '5O7P3M4QQQ68', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(108, 220, 5, '22.22222222', '0.00000000', '444.44444444', '+', 'VDWKGK915TE3', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(109, 221, 72, '200.00000000', '0.00000000', '422.22222222', '+', 'AQRABMSCQJQ5', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(110, 221, 5, '22.22222222', '0.00000000', '444.44444444', '+', 'YD7YKY5FA5DJ', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(111, 177, 92, '2.00000000', '0.00000000', '189.34222224', '+', 'VTCMQNCS4Z4U', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(112, 177, 2, '0.22222222', '0.00000000', '189.56444446', '+', '8AFPNHESMZ2Q', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-08 00:00:09', '2022-02-08 00:00:09'),
(113, 191, 2, '2.00000000', '0.00000000', '17.55555554', '+', '6NBXGOHGMS5K', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(114, 191, 2, '0.22222222', '0.00000000', '17.77777776', '+', '8TEVY18RGDPB', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(115, 189, 5, '0.50000000', '0.00000000', '13.38888892', '+', 'NHOFXUETYPMW', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(116, 189, 1, '0.05555556', '0.00000000', '13.44444448', '+', 'KXOUSNXSEEAS', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(117, 190, 8, '0.50000000', '0.00000000', '4.38888892', '+', '26QK1MVBXYT1', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(118, 190, 1, '0.05555556', '0.00000000', '4.44444448', '+', '6KKZ4XCV8432', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(119, 194, 11, '50.00000000', '0.00000000', '438.88888892', '+', 'XS6QC12HFYDJ', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(120, 194, 4, '5.55555556', '0.00000000', '444.44444448', '+', 'YEK1XRXN1W77', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(121, 177, 37, '0.50000000', '0.00000000', '190.06444446', '+', 'CDFZD3P4B6M7', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(122, 177, 1, '0.05555556', '0.00000000', '190.12000002', '+', 'FOHDPRX7KUB9', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(123, 195, 40, '200.00000000', '0.00000000', '1088.88888888', '+', 'JGKY117CUECU', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(124, 195, 5, '22.22222222', '0.00000000', '1111.11111110', '+', 'C27O1MMUSYU8', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(125, 220, 69, '200.00000000', '0.00000000', '644.44444444', '+', 'PQOFRHG9F21D', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:06', '2022-02-09 00:00:06'),
(126, 220, 5, '22.22222222', '0.00000000', '666.66666666', '+', '3Z5QHPS49NQZ', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:07', '2022-02-09 00:00:07'),
(127, 221, 72, '200.00000000', '0.00000000', '644.44444444', '+', '2AHDD2H9JJKY', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:07', '2022-02-09 00:00:07'),
(128, 221, 5, '22.22222222', '0.00000000', '666.66666666', '+', 'UXY76W9FWSCY', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:07', '2022-02-09 00:00:07'),
(129, 177, 92, '2.00000000', '0.00000000', '192.12000002', '+', '4MDYNQPQKXWA', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-09 00:00:07', '2022-02-09 00:00:07'),
(130, 177, 2, '0.22222222', '0.00000000', '192.34222224', '+', 'FHBHM8N8S1MX', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-09 00:00:07', '2022-02-09 00:00:07'),
(131, 191, 2, '2.00000000', '0.00000000', '19.77777776', '+', '8GWKZKK87W4B', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(132, 191, 2, '0.22222222', '0.00000000', '19.99999998', '+', '1A22R47XDU6R', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(133, 189, 5, '0.50000000', '0.00000000', '13.94444448', '+', 'GDXC87WROK9G', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(134, 189, 1, '0.05555556', '0.00000000', '14.00000004', '+', '7R73O1F1A5UO', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(135, 190, 8, '0.50000000', '0.00000000', '4.94444448', '+', 'GRPGN1GZEX9W', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(136, 190, 1, '0.05555556', '0.00000000', '5.00000004', '+', '5OV3TJG2ZFHV', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(137, 194, 11, '50.00000000', '0.00000000', '494.44444448', '+', 'WKVWXSTTPFCH', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(138, 194, 4, '5.55555556', '0.00000000', '500.00000004', '+', 'JZT8V6GZBGED', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(139, 177, 37, '0.50000000', '0.00000000', '192.84222224', '+', 'P126VU1FHHGK', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(140, 177, 1, '0.05555556', '0.00000000', '192.89777780', '+', 'YFHW5WF2WTVD', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(141, 195, 40, '200.00000000', '0.00000000', '1311.11111110', '+', 'R2QW4Z3ZT6MH', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(142, 195, 5, '22.22222222', '0.00000000', '1333.33333332', '+', 'TVZ536HBX4K7', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(143, 220, 69, '200.00000000', '0.00000000', '866.66666666', '+', '983D1CXTUBG1', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(144, 220, 5, '22.22222222', '0.00000000', '888.88888888', '+', 'XGWG8CAKWVYT', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:06', '2022-02-10 00:00:06'),
(145, 221, 72, '200.00000000', '0.00000000', '866.66666666', '+', '4RJT1YJCNVAY', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:07', '2022-02-10 00:00:07'),
(146, 221, 5, '22.22222222', '0.00000000', '888.88888888', '+', 'VVX9NGW15SMT', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:07', '2022-02-10 00:00:07'),
(147, 177, 92, '2.00000000', '0.00000000', '194.89777780', '+', 'JFPFYJBV4XP2', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-10 00:00:07', '2022-02-10 00:00:07'),
(148, 177, 2, '0.22222222', '0.00000000', '195.12000002', '+', 'BJ2CE67Y3YGO', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-10 00:00:07', '2022-02-10 00:00:07'),
(149, 191, 2, '2.00000000', '0.00000000', '21.99999998', '+', 'RPB51V1FYGCV', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(150, 191, 2, '0.22222222', '0.00000000', '22.22222220', '+', 'E7J1MQ7ANY5E', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(151, 189, 5, '0.50000000', '0.00000000', '14.50000004', '+', 'P2UZT24DRY4Z', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(152, 189, 1, '0.05555556', '0.00000000', '14.55555560', '+', 'QS71P2UUX3XZ', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(153, 190, 8, '0.50000000', '0.00000000', '5.50000004', '+', 'B5Q24NKJEED8', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(154, 190, 1, '0.05555556', '0.00000000', '5.55555560', '+', 'FNZE4MT1HO1F', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(155, 194, 11, '50.00000000', '0.00000000', '550.00000004', '+', '9R2EG8VFWYQX', 'Paid 50 USD For PLATINUM Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(156, 194, 4, '5.55555556', '0.00000000', '555.55555560', '+', '5C1ROJ1MDGUA', 'Paid 5.5555555555556 USD For PLATINUM Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(157, 177, 37, '0.50000000', '0.00000000', '195.62000002', '+', 'YZPM2EUKJP7S', 'Paid 0.5 USD For BASIC Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(158, 177, 1, '0.05555556', '0.00000000', '195.67555558', '+', 'RDTVCVSYFPAD', 'Paid 0.055555555555556 USD For BASIC Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(159, 195, 40, '200.00000000', '0.00000000', '1533.33333332', '+', 'R47WGSAXT8XP', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(160, 195, 5, '22.22222222', '0.00000000', '1555.55555554', '+', '5QCBFVAU81ED', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(161, 220, 69, '200.00000000', '0.00000000', '1088.88888888', '+', 'US7Z93KXFAR3', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(162, 220, 5, '22.22222222', '0.00000000', '1111.11111110', '+', 'HGHKPMFOT7OF', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(163, 221, 72, '200.00000000', '0.00000000', '1088.88888888', '+', '6SW8O4XOAOBR', 'Paid 200 USD For PROFESSIONAL Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(164, 221, 5, '22.22222222', '0.00000000', '1111.11111110', '+', 'UHM55Y4OEE7E', 'Paid 22.222222222222 USD For PROFESSIONAL Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(165, 177, 92, '2.00000000', '0.00000000', '197.67555558', '+', '8FMPF1OOWUEG', 'Paid 2 USD For SILVER Plan.', 'everyday_roi', 'open_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06'),
(166, 177, 2, '0.22222222', '0.00000000', '197.89777780', '+', 'GG5NQF5BGQ2X', 'Paid 0.22222222222222 USD For SILVER Plan.', 'everyday_roi', 'saving_wallet', '2022-02-11 00:00:06', '2022-02-11 00:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `pos_id` int(11) NOT NULL DEFAULT 0,
  `left_count` int(11) NOT NULL DEFAULT 0,
  `right_count` int(11) NOT NULL DEFAULT 0,
  `left_active` int(11) NOT NULL DEFAULT 0,
  `right_active` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `dpl` int(11) NOT NULL DEFAULT 0 COMMENT 'daily_ad_limit',
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_ref_com` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_binary_com` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `total_invest` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ref_id`, `pos_id`, `left_count`, `right_count`, `left_active`, `right_active`, `position`, `plan_id`, `dpl`, `firstname`, `lastname`, `username`, `email`, `mobile`, `balance`, `total_ref_com`, `total_binary_com`, `total_invest`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coin', 'Pro', 'coinpro', 'coinpro@ebidya.com', '456789132', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$Yx8Wf59yl/1rl64FLzZ/8e/eh5MJz4G5S.YEDBCNFUu.nBsg/NTfi', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Bangladesh\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, '2022-02-11 21:34:29'),
(226, 1, 1, 0, 0, 0, 0, 1, 0, 0, 'Mainul Islam', 'Fahim', 'mainulfahim', 'telecomfahim8@gmail.com', '+8801729588600', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$cQyWwTbPdbWIK3Y4vvf4qekuWB/eFC01pcsynIvjN5N8BLPbe1tuy', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:39:07', '2022-04-06 21:39:07'),
(227, 1, 1, 0, 0, 0, 0, 2, 0, 0, 'jewel', 'rana', 'jewel0904', 'mifahimcse@gmail.com', '+8801727327222', '10.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$O3WvkgpKQX2UuGO4FPaaN.CvIZnlUJuFx7dEFM3ATe6oFuu6Izrr.', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:41:33', '2022-04-06 21:46:10'),
(228, 226, 226, 0, 0, 0, 0, 1, 0, 0, 'hh', 'dd', 'baiworld', 'ggdggdfgbaiworldjewel@gmail.com', '+8801776430401', '10.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$HjXH98xgVGmDur.vF44beOVg06j1qQPIdBL6wVb1Ghu4QLpaLIvZq', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:42:47', '2022-04-06 21:49:49'),
(229, 226, 226, 0, 0, 0, 0, 2, 0, 0, 'gdghahghd', 'dfaf', 'laking', 'agagdda@gmail.com', '+8801879275060', '10.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$m15vicTN0pEKHme9wDm16ePlSfK5/ugESMOkKOkb5Q0nnpzdm0Eb6', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:44:42', '2022-04-06 21:45:23'),
(230, 228, 228, 0, 0, 0, 0, 1, 0, 0, 'rajat', 'das', 'rajat09', 'tajev20748@sartess.com', '+8801631501467', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$IGFkA2d7V2r5HsDJDDL9YOHyzqku5/tCB4hq4S5lxLDmjsCKqvEC2', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:54:15', '2022-04-06 21:56:58'),
(231, 228, 228, 0, 0, 0, 0, 2, 0, 0, 'saiful', 'islam', 'saiful09', 'tajev2074@gmail.com', '+8801877506012', '50.00000000', '0.00000000', '0.00000000', '0.00000000', '$2y$10$E1y/8TT3hHofp6.ROZAfvu1NMx6YHPkrEOBesS5i2HT4JqvUmG15u', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"880\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '2022-04-06 21:57:00', '2022-04-06 21:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_extras`
--

CREATE TABLE `user_extras` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `paid_left` int(10) NOT NULL DEFAULT 0,
  `paid_right` int(10) NOT NULL DEFAULT 0,
  `free_left` int(10) NOT NULL DEFAULT 0,
  `free_right` int(10) NOT NULL DEFAULT 0,
  `bv_left` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `bv_right` decimal(16,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_extras`
--

INSERT INTO `user_extras` (`id`, `user_id`, `paid_left`, `paid_right`, `free_left`, `free_right`, `bv_left`, `bv_right`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 5, 1, '0.00000000', '0.00000000', NULL, '2022-04-06 21:57:00'),
(164, 226, 0, 0, 3, 1, '0.00000000', '0.00000000', '2022-04-06 21:39:08', '2022-04-06 21:57:00'),
(165, 227, 0, 0, 0, 0, '0.00000000', '0.00000000', '2022-04-06 21:41:33', '2022-04-06 21:41:33'),
(166, 228, 0, 0, 1, 1, '0.00000000', '0.00000000', '2022-04-06 21:42:47', '2022-04-06 21:57:00'),
(167, 229, 0, 0, 0, 0, '0.00000000', '0.00000000', '2022-04-06 21:44:42', '2022-04-06 21:44:42'),
(168, 230, 0, 0, 0, 0, '0.00000000', '0.00000000', '2022-04-06 21:54:15', '2022-04-06 21:54:15'),
(169, 231, 0, 0, 0, 0, '0.00000000', '0.00000000', '2022-04-06 21:57:00', '2022-04-06 21:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `location`, `browser`, `os`, `longitude`, `latitude`, `country`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, '119.30.32.204', 'Dhaka - - Bangladesh - BD ', 'Handheld Browser', 'Android', '90.4093', '23.7272', 'Bangladesh', 'BD', '2022-04-06 20:54:45', '2022-04-06 20:54:45'),
(2, 1, '119.30.32.204', 'Dhaka - - Bangladesh - BD ', 'Handheld Browser', 'Android', '90.4093', '23.7272', 'Bangladesh', 'BD', '2022-04-06 21:12:18', '2022-04-06 21:12:18'),
(3, 1, '119.30.32.204', 'Dhaka - - Bangladesh - BD ', 'Handheld Browser', 'Android', '90.4093', '23.7272', 'Bangladesh', 'BD', '2022-04-06 21:15:44', '2022-04-06 21:15:44'),
(4, 1, '119.30.32.204', 'Dhaka - - Bangladesh - BD ', 'Handheld Browser', 'Android', '90.4093', '23.7272', 'Bangladesh', 'BD', '2022-04-06 21:18:35', '2022-04-06 21:18:35'),
(5, 1, '103.120.166.29', 'Dhaka - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.6925', '23.999', 'Bangladesh', 'BD', '2022-04-06 21:19:18', '2022-04-06 21:19:18'),
(6, 1, '103.120.166.29', 'Dhaka - - Bangladesh - BD ', 'Chrome', 'Mac OS X', '90.6925', '23.999', 'Bangladesh', 'BD', '2022-04-06 21:36:49', '2022-04-06 21:36:49'),
(7, 1, '103.120.166.29', 'Dhaka - - Bangladesh - BD ', 'Chrome', 'Mac OS X', '90.6925', '23.999', 'Bangladesh', 'BD', '2022-04-06 21:38:11', '2022-04-06 21:38:11'),
(8, 226, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:39:08', '2022-04-06 21:39:08'),
(9, 227, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:41:33', '2022-04-06 21:41:33'),
(10, 228, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:42:47', '2022-04-06 21:42:47'),
(11, 229, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:44:42', '2022-04-06 21:44:42'),
(12, 227, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:45:45', '2022-04-06 21:45:45'),
(13, 226, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:46:41', '2022-04-06 21:46:41'),
(14, 227, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:47:54', '2022-04-06 21:47:54'),
(15, 229, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:48:26', '2022-04-06 21:48:26'),
(16, 228, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:49:25', '2022-04-06 21:49:25'),
(17, 226, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:50:07', '2022-04-06 21:50:07'),
(18, 230, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:54:15', '2022-04-06 21:54:15'),
(19, 231, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:57:00', '2022-04-06 21:57:00'),
(20, 228, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-06 21:57:42', '2022-04-06 21:57:42'),
(21, 228, '103.120.166.29', 'Dhaka - - Bangladesh - BD ', 'Safari', 'Mac OS X', '90.6925', '23.999', 'Bangladesh', 'BD', '2022-04-06 21:59:15', '2022-04-06 21:59:15'),
(22, 226, '37.111.194.154', 'Dhaka - - Bangladesh - BD ', 'Handheld Browser', 'Android', '90.4109', '23.7908', 'Bangladesh', 'BD', '2022-04-07 11:44:37', '2022-04-07 11:44:37'),
(23, 1, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Mac OS X', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-07 15:29:51', '2022-04-07 15:29:51'),
(24, 228, '210.1.244.58', 'Narsingdi - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.7177', '23.923', 'Bangladesh', 'BD', '2022-04-07 15:48:52', '2022-04-07 15:48:52'),
(25, 1, '27.147.201.196', 'Dhaka - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.4109', '23.7908', 'Bangladesh', 'BD', '2022-04-07 17:28:20', '2022-04-07 17:28:20'),
(26, 1, '27.147.201.196', 'Dhaka - - Bangladesh - BD ', 'Chrome', 'Windows 10', '90.4109', '23.7908', 'Bangladesh', 'BD', '2022-04-07 19:16:43', '2022-04-07 19:16:43'),
(27, 1, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-04-07 13:42:03', '2022-04-07 13:42:03'),
(28, 1, '::1', ' - -  -  ', 'Chrome', 'Windows 10', '', '', '', '', '2022-04-07 13:50:09', '2022-04-07 13:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(18,8) NOT NULL,
  `withdraw_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(18,8) DEFAULT NULL,
  `max_limit` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(18,8) DEFAULT NULL,
  `rate` decimal(18,8) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `image`, `min_limit`, `max_limit`, `delay`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `user_data`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USDT', '61e44f140abf61642352404.jpg', '30.00000000', '100.00000000', '48', '0.00000000', '1.00000000', '10.00', 'USD', '{\"account_address\":{\"field_name\":\"account_address\",\"field_level\":\"account_address\",\"type\":\"text\",\"validation\":\"required\"}}', 'give to USDT account code to get the payment', 1, '2022-01-13 20:24:35', '2022-02-04 18:04:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bv_logs`
--
ALTER TABLE `bv_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptcs`
--
ALTER TABLE `ptcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_views`
--
ALTER TABLE `ptc_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_del`
--
ALTER TABLE `transactions_del`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_extras`
--
ALTER TABLE `user_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bv_logs`
--
ALTER TABLE `bv_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ptcs`
--
ALTER TABLE `ptcs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptc_views`
--
ALTER TABLE `ptc_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions_del`
--
ALTER TABLE `transactions_del`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `user_extras`
--
ALTER TABLE `user_extras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
