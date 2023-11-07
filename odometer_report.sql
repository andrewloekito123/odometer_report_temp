-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 03:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odometer_report`
--
CREATE DATABASE IF NOT EXISTS `odometer_report` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `odometer_report`;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_vehicle`
--

DROP TABLE IF EXISTS `fleet_vehicle`;
CREATE TABLE IF NOT EXISTS `fleet_vehicle` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `future_driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `horsepower` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) DEFAULT NULL,
  `vin_sn` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `model_year` varchar(255) DEFAULT NULL,
  `odometer_unit` varchar(255) NOT NULL,
  `transmission` varchar(255) DEFAULT NULL,
  `fuel_type` varchar(255) DEFAULT NULL,
  `co2_standard` varchar(255) DEFAULT NULL,
  `frame_type` varchar(255) DEFAULT NULL,
  `next_assignation_date` date DEFAULT NULL,
  `acquisition_date` date DEFAULT NULL,
  `write_off_date` date DEFAULT NULL,
  `first_contract_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `trailer_hook` tinyint(1) DEFAULT NULL,
  `plan_to_change_car` tinyint(1) DEFAULT NULL,
  `plan_to_change_bike` tinyint(1) DEFAULT NULL,
  `electric_assistance` tinyint(1) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `write_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `horsepower_tax` double DEFAULT NULL,
  `co2` double DEFAULT NULL,
  `car_value` double DEFAULT NULL,
  `net_car_value` double DEFAULT NULL,
  `residual_value` double DEFAULT NULL,
  `frame_size` double DEFAULT NULL,
  `mobility_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fleet_vehicle_res_users_id_fk` (`driver_id`),
  KEY `fleet_vehicle_res_users_id_fk2` (`future_driver_id`),
  KEY `fleet_vehicle_fleet_vehicle_model_brand_id_fk` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fleet_vehicle`
--

INSERT INTO `fleet_vehicle` (`id`, `driver_id`, `future_driver_id`, `brand_id`, `seats`, `doors`, `horsepower`, `power`, `name`, `license_plate`, `vin_sn`, `color`, `location`, `model_year`, `odometer_unit`, `transmission`, `fuel_type`, `co2_standard`, `frame_type`, `next_assignation_date`, `acquisition_date`, `write_off_date`, `first_contract_date`, `description`, `active`, `trailer_hook`, `plan_to_change_car`, `plan_to_change_bike`, `electric_assistance`, `create_date`, `write_date`, `horsepower_tax`, `co2`, `car_value`, `net_car_value`, `residual_value`, `frame_size`, `mobility_card`) VALUES
(1, 1, 1, 42, NULL, 5, NULL, NULL, 'Opel/Astra/1-ACK-205', '1-ACK-205', '5454541', 'Black', 'Grand-Rosiere', NULL, 'kilometers', NULL, NULL, NULL, NULL, NULL, '2022-10-26', NULL, '2023-09-27', NULL, 1, 0, 0, 0, NULL, '2023-09-27 00:10:49', '2023-09-27 00:10:57', NULL, NULL, 20000, NULL, NULL, NULL, NULL),
(2, 2, 2, 23, NULL, 5, NULL, NULL, 'Audi R8', 'L 1010 DAB', '1231231', 'White', 'Surabaya', '2019', 'kilometers', 'Manual', 'Petrol', NULL, NULL, NULL, '2019-05-12', NULL, '2023-07-23', NULL, 1, 0, 0, 0, NULL, '2023-09-25 17:00:00', '2023-12-11 17:00:00', NULL, NULL, 50000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_vehicle_model_brand`
--

DROP TABLE IF EXISTS `fleet_vehicle_model_brand`;
CREATE TABLE IF NOT EXISTS `fleet_vehicle_model_brand` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_count` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `write_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fleet_vehicle_model_brand`
--

INSERT INTO `fleet_vehicle_model_brand` (`id`, `model_count`, `name`, `create_date`, `write_date`) VALUES
(1, 0, 'Abarth', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(2, 0, 'Acura', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(3, 0, 'Alfa', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(4, 11, 'Audi', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(5, 0, 'Austin', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(6, 0, 'Bentley', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(7, 9, 'Bmw', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(8, 0, 'Bugatti', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(9, 0, 'Buick', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(10, 0, 'Byd', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(11, 0, 'Cadillac', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(12, 0, 'Chevrolet', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(13, 0, 'Chrysler', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(14, 0, 'Citroen', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(15, 0, 'Corre La Licorne', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(16, 0, 'Daewoo', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(17, 0, 'Dodge', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(18, 0, 'Ferrari', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(19, 0, 'Fiat', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(20, 0, 'Ford', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(21, 0, 'Holden', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(22, 0, 'Honda', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(23, 0, 'Hyundai', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(24, 0, 'Infiniti', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(25, 0, 'Isuzu', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(26, 0, 'Jaguar', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(27, 0, 'Jeep', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(28, 0, 'Kia', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(29, 0, 'Koenigsegg', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(30, 0, 'Lagonda', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(31, 0, 'Lamborghini', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(32, 0, 'Lancia', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(33, 0, 'Land Rover', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(34, 0, 'Lexus', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(35, 0, 'Lincoln', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(36, 0, 'Lotus', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(37, 0, 'Maserati', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(38, 0, 'Maybach', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(39, 0, 'Mazda', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(40, 13, 'Mercedes', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(41, 0, 'Mg', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(42, 0, 'Mini', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(43, 0, 'Mitsubishi', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(44, 0, 'Morgan', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(45, 0, 'Nissan', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(46, 0, 'Oldsmobile', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(47, 12, 'Opel', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(48, 0, 'Peugeot', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(49, 0, 'Pontiac', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(50, 0, 'Porsche', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(51, 0, 'Rambler', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(52, 0, 'Renault', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(53, 0, 'Rolls-Royce', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(54, 0, 'Saab', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(55, 0, 'Scion', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(56, 0, 'Skoda', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(57, 0, 'Smart', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(58, 0, 'Steyr', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(59, 0, 'Subaru', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(60, 0, 'Tesla Motors', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(61, 0, 'Toyota', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(62, 0, 'Trabant', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(63, 0, 'Volkswagen', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(64, 0, 'Volvo', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(65, 0, 'Willys', '2023-09-27 00:10:49', '2023-10-11 01:03:09'),
(66, 0, 'Suzuki', '2023-09-27 00:10:49', '2023-10-11 01:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_vehicle_odometer`
--

DROP TABLE IF EXISTS `fleet_vehicle_odometer`;
CREATE TABLE IF NOT EXISTS `fleet_vehicle_odometer` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `write_uid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `write_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `value` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `in_out` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fleet_vehicle_odometer_fleet_vehicle_id_fk` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fleet_vehicle_odometer`
--

INSERT INTO `fleet_vehicle_odometer` (`id`, `vehicle_id`, `create_uid`, `write_uid`, `name`, `date`, `create_date`, `write_date`, `value`, `status`, `in_out`) VALUES
(1, 1, 1, 1, 'Opel/Astra/1-ACK-205', '2022-10-26', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 0, 'ongoing', 'in'),
(2, 1, 1, 1, 'Opel/Astra/1-ACK-205', '2022-11-27', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 658, 'ongoing', 'in'),
(3, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2022-12-12', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 1360, 'ongoing', 'in'),
(4, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-01-10', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 2044, 'ongoing', 'in'),
(5, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-02-09', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 2756, 'ongoing', 'in'),
(6, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-03-26', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 3410, 'ongoing', 'in'),
(7, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-04-15', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 3750, 'ongoing', 'in'),
(8, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-05-10', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 4115, 'ongoing', 'in'),
(9, 1, 1, 1, 'Opel/Astra/1-ACK-205', '2023-05-30', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 4750, 'ongoing', 'in'),
(10, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-06-14', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 5171, 'ongoing', 'in'),
(11, 1, 1, 1, 'Opel/Astra/1-ACK-205', '2023-07-04', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 5873, 'ongoing', 'in'),
(12, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-08-03', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 6571, 'ongoing', 'in'),
(13, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-08-26', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 7954, 'ongoing', 'in'),
(14, 1, 1, 1, 'Opel/Astra/1-ACK-205 ', '2023-09-25', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 7981, 'ongoing', 'in'),
(15, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-02-06', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 0, 'ongoing', 'in'),
(16, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-02-06', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 702, 'ongoing', 'in'),
(17, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-02-24', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 1205.4, 'ongoing', 'in'),
(18, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-03-11', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 2122, 'ongoing', 'in'),
(19, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-03-31', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 2430, 'ongoing', 'in'),
(20, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-04-15', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 3015, 'ongoing', 'in'),
(21, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-04-30', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 3602.1, 'ongoing', 'in'),
(22, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-05-26', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 4205.5, 'ongoing', 'in'),
(23, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-06-23', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 4935, 'ongoing', 'in'),
(24, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-07-09', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 5555, 'ongoing', 'in'),
(25, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-08-03', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 5987, 'ongoing', 'in'),
(26, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-08-13', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 6571, 'ongoing', 'in'),
(27, 2, 1, 1, 'Opel/Corsa/1-SYN-404', '2023-08-28', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 7201.5, 'ongoing', 'in'),
(28, 2, 1, 1, 'Opel/Corsa/1-SYN-404 ', '2023-09-17', '2023-09-27 00:10:49', '2023-09-27 00:10:49', 8001.2, 'ongoing', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `res_users`
--

DROP TABLE IF EXISTS `res_users`;
CREATE TABLE IF NOT EXISTS `res_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) DEFAULT 1,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `login` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `write_uid` int(11) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `share` tinyint(1) DEFAULT NULL,
  `write_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `totp_secret` varchar(255) DEFAULT NULL,
  `notification_type` varchar(255) NOT NULL,
  `odoobot_state` varchar(255) DEFAULT NULL,
  `odoobot_failed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='res_users.create_uid is "Created by';

--
-- Dumping data for table `res_users`
--

INSERT INTO `res_users` (`id`, `company_id`, `active`, `create_date`, `login`, `password`, `action_id`, `create_uid`, `write_uid`, `signature`, `share`, `write_date`, `totp_secret`, `notification_type`, `odoobot_state`, `odoobot_failed`) VALUES
(1, 1, 0, '2023-09-27 00:10:06', '__system__', NULL, NULL, NULL, 1, '<span data-o-mail-quote=\"1\">-- <br data-o-mail-quote=\"1\">\r\nSystem</span>', 0, '2023-09-27 00:10:53', NULL, 'inbox', 'disabled', NULL),
(2, 1, 1, '2023-09-27 00:10:07', 'a@gmail.com', '$pbkdf2-sha512$350000$kFIq5Rxj7H1PyZmTMuZcCw$Y/lMWT.dLeLEfKvEKK0IJyvlavylF1MfItPxaraf9ztw4OpVvRdvBLiobXdJyUrEeW5M/U/135zTsQhkRogj.g', NULL, 1, 1, '<span data-o-mail-quote=\"1\">-- <br data-o-mail-quote=\"1\">Mitchell Admin</span>', 0, '2023-09-27 00:11:02', NULL, 'email', 'disabled', NULL),
(3, 1, 0, '2023-09-27 00:10:07', 'default', NULL, NULL, 1, 1, '<p data-o-mail-quote=\"1\">--<br data-o-mail-quote=\"1\">Default User Template</p>', 0, '2023-09-27 00:11:02', NULL, 'email', NULL, NULL),
(4, 1, 0, '2023-09-27 00:10:07', 'public', '$pbkdf2-sha512$350000$43yv1ZqTkhJiLCUEoPQegw$nUQl.H.1WQKNwHSnMwdH6dIlvnavvthhBjiQh/st7E.aOzucq80AwDsV8d35.WeVCHKnqhThOCe4FprfZIEhPA', NULL, 1, 1, '<p data-o-mail-quote=\"1\">--<br data-o-mail-quote=\"1\">Public user</p>', 1, '2023-09-27 00:10:46', NULL, 'email', NULL, NULL),
(5, 1, 0, '2023-09-27 00:10:07', 'portaltemplate', NULL, NULL, 1, 1, '<p data-o-mail-quote=\"1\">--<br data-o-mail-quote=\"1\">Portal User Template</p>', 1, '2023-09-27 00:10:07', NULL, 'email', NULL, NULL),
(6, 1, 1, '2023-09-27 00:10:07', 'demo', '$pbkdf2-sha512$350000$2ruXslYKodR6L4WQsrbW.g$XeTphZ4evRmLBuHYabUtv37aPR2N6TYiJ86k2rxMr3JU4zUcz3CsoObH8s/aiwqw0Ffbb6d0ua3j.baDAZDYSw', NULL, 1, 1, '<span data-o-mail-quote=\"1\">-- <br data-o-mail-quote=\"1\">+Mr Demo</span>', 0, '2023-09-27 00:11:02', NULL, 'email', NULL, NULL),
(7, 1, 1, '2023-09-27 00:10:07', 'portal', '$pbkdf2-sha512$350000$QmiNEYJQKgWgdA4BgPB.zw$eDCKB2Do8wZZdJhpCz6djmJ8mNEPWh6ILkBqxcNUv2hySv/xlMpQp7rLoI9/KBbxJAHUg0aPhrZ0hf14SXKJ0w', NULL, 1, 1, '<span data-o-mail-quote=\"1\">-- <br data-o-mail-quote=\"1\">Mr Demo Portal</span>', 1, '2023-09-27 00:10:53', NULL, 'email', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fleet_vehicle`
--
ALTER TABLE `fleet_vehicle`
  ADD CONSTRAINT `fleet_vehicle_fleet_vehicle_model_brand_id_fk` FOREIGN KEY (`brand_id`) REFERENCES `fleet_vehicle_model_brand` (`id`),
  ADD CONSTRAINT `fleet_vehicle_res_users_id_fk` FOREIGN KEY (`driver_id`) REFERENCES `res_users` (`id`),
  ADD CONSTRAINT `fleet_vehicle_res_users_id_fk2` FOREIGN KEY (`future_driver_id`) REFERENCES `res_users` (`id`);

--
-- Constraints for table `fleet_vehicle_odometer`
--
ALTER TABLE `fleet_vehicle_odometer`
  ADD CONSTRAINT `fleet_vehicle_odometer_fleet_vehicle_id_fk` FOREIGN KEY (`vehicle_id`) REFERENCES `fleet_vehicle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
