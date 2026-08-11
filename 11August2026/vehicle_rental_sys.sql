-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2026 at 09:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `cnic` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `driving_license_no` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `full_name`, `cnic`, `phone`, `email`, `address`, `driving_license_no`, `created_at`) VALUES
(1, 'Ali Khan', '30001-1000001-1', '030000000001', 'customer1@example.com', 'Lahore, Pakistan', 'DL-PAK-000001', '2026-08-11 12:13:23'),
(2, 'Ahmed Malik', '30002-1000002-2', '030000000002', 'customer2@example.com', 'Islamabad, Pakistan', 'DL-PAK-000002', '2026-08-11 12:13:23'),
(3, 'Hassan Sheikh', '30003-1000003-3', '030000000003', 'customer3@example.com', 'Rawalpindi, Pakistan', 'DL-PAK-000003', '2026-08-11 12:13:23'),
(4, 'Usman Butt', '30004-1000004-4', '030000000004', 'customer4@example.com', 'Karachi, Pakistan', 'DL-PAK-000004', '2026-08-11 12:13:23'),
(5, 'Bilal Chaudhry', '30005-1000005-5', '030000000005', 'customer5@example.com', 'Peshawar, Pakistan', 'DL-PAK-000005', '2026-08-11 12:13:23'),
(6, 'Hamza Raza', '30006-1000006-6', '030000000006', 'customer6@example.com', 'Multan, Pakistan', 'DL-PAK-000006', '2026-08-11 12:13:23'),
(7, 'Omar Iqbal', '30007-1000007-7', '030000000007', 'customer7@example.com', 'Faisalabad, Pakistan', 'DL-PAK-000007', '2026-08-11 12:13:23'),
(8, 'Fahad Shah', '30008-1000008-8', '030000000008', 'customer8@example.com', 'Gujranwala, Pakistan', 'DL-PAK-000008', '2026-08-11 12:13:23'),
(9, 'Zain Hussain', '30009-1000009-9', '030000000009', 'customer9@example.com', 'Sialkot, Pakistan', 'DL-PAK-000009', '2026-08-11 12:13:23'),
(10, 'Ahsan Javed', '30010-1000010-0', '030000000010', 'customer10@example.com', 'Quetta, Pakistan', 'DL-PAK-000010', '2026-08-11 12:13:23'),
(11, 'Ali Khan', '30011-1000011-1', '030000000011', 'customer11@example.com', 'Lahore, Pakistan', 'DL-PAK-000011', '2026-08-11 12:13:23'),
(12, 'Ahmed Malik', '30012-1000012-2', '030000000012', 'customer12@example.com', 'Islamabad, Pakistan', 'DL-PAK-000012', '2026-08-11 12:13:23'),
(13, 'Hassan Sheikh', '30013-1000013-3', '030000000013', 'customer13@example.com', 'Rawalpindi, Pakistan', 'DL-PAK-000013', '2026-08-11 12:13:23'),
(14, 'Usman Butt', '30014-1000014-4', '030000000014', 'customer14@example.com', 'Karachi, Pakistan', 'DL-PAK-000014', '2026-08-11 12:13:23'),
(15, 'Bilal Chaudhry', '30015-1000015-5', '030000000015', 'customer15@example.com', 'Peshawar, Pakistan', 'DL-PAK-000015', '2026-08-11 12:13:23'),
(16, 'Hamza Raza', '30016-1000016-6', '030000000016', 'customer16@example.com', 'Multan, Pakistan', 'DL-PAK-000016', '2026-08-11 12:13:23'),
(17, 'Omar Iqbal', '30017-1000017-7', '030000000017', 'customer17@example.com', 'Faisalabad, Pakistan', 'DL-PAK-000017', '2026-08-11 12:13:23'),
(18, 'Fahad Shah', '30018-1000018-8', '030000000018', 'customer18@example.com', 'Gujranwala, Pakistan', 'DL-PAK-000018', '2026-08-11 12:13:23'),
(19, 'Zain Hussain', '30019-1000019-9', '030000000019', 'customer19@example.com', 'Sialkot, Pakistan', 'DL-PAK-000019', '2026-08-11 12:13:23'),
(20, 'Ahsan Javed', '30020-1000020-0', '030000000020', 'customer20@example.com', 'Quetta, Pakistan', 'DL-PAK-000020', '2026-08-11 12:13:23'),
(21, 'Ali Khan', '30021-1000021-1', '030000000021', 'customer21@example.com', 'Lahore, Pakistan', 'DL-PAK-000021', '2026-08-11 12:13:23'),
(22, 'Ahmed Malik', '30022-1000022-2', '030000000022', 'customer22@example.com', 'Islamabad, Pakistan', 'DL-PAK-000022', '2026-08-11 12:13:23'),
(23, 'Hassan Sheikh', '30023-1000023-3', '030000000023', 'customer23@example.com', 'Rawalpindi, Pakistan', 'DL-PAK-000023', '2026-08-11 12:13:23'),
(24, 'Usman Butt', '30024-1000024-4', '030000000024', 'customer24@example.com', 'Karachi, Pakistan', 'DL-PAK-000024', '2026-08-11 12:13:23'),
(25, 'Bilal Chaudhry', '30025-1000025-5', '030000000025', 'customer25@example.com', 'Peshawar, Pakistan', 'DL-PAK-000025', '2026-08-11 12:13:23'),
(26, 'Hamza Raza', '30026-1000026-6', '030000000026', 'customer26@example.com', 'Multan, Pakistan', 'DL-PAK-000026', '2026-08-11 12:13:23'),
(27, 'Omar Iqbal', '30027-1000027-7', '030000000027', 'customer27@example.com', 'Faisalabad, Pakistan', 'DL-PAK-000027', '2026-08-11 12:13:23'),
(28, 'Fahad Shah', '30028-1000028-8', '030000000028', 'customer28@example.com', 'Gujranwala, Pakistan', 'DL-PAK-000028', '2026-08-11 12:13:23'),
(29, 'Zain Hussain', '30029-1000029-9', '030000000029', 'customer29@example.com', 'Sialkot, Pakistan', 'DL-PAK-000029', '2026-08-11 12:13:23'),
(30, 'Ahsan Javed', '30030-1000030-0', '030000000030', 'customer30@example.com', 'Quetta, Pakistan', 'DL-PAK-000030', '2026-08-11 12:13:23'),
(31, 'Ali Khan', '30031-1000031-1', '030000000031', 'customer31@example.com', 'Lahore, Pakistan', 'DL-PAK-000031', '2026-08-11 12:13:23'),
(32, 'Ahmed Malik', '30032-1000032-2', '030000000032', 'customer32@example.com', 'Islamabad, Pakistan', 'DL-PAK-000032', '2026-08-11 12:13:23'),
(33, 'Hassan Sheikh', '30033-1000033-3', '030000000033', 'customer33@example.com', 'Rawalpindi, Pakistan', 'DL-PAK-000033', '2026-08-11 12:13:23'),
(34, 'Usman Butt', '30034-1000034-4', '030000000034', 'customer34@example.com', 'Karachi, Pakistan', 'DL-PAK-000034', '2026-08-11 12:13:23'),
(35, 'Bilal Chaudhry', '30035-1000035-5', '030000000035', 'customer35@example.com', 'Peshawar, Pakistan', 'DL-PAK-000035', '2026-08-11 12:13:23'),
(36, 'Hamza Raza', '30036-1000036-6', '030000000036', 'customer36@example.com', 'Multan, Pakistan', 'DL-PAK-000036', '2026-08-11 12:13:23'),
(37, 'Omar Iqbal', '30037-1000037-7', '030000000037', 'customer37@example.com', 'Faisalabad, Pakistan', 'DL-PAK-000037', '2026-08-11 12:13:23'),
(38, 'Fahad Shah', '30038-1000038-8', '030000000038', 'customer38@example.com', 'Gujranwala, Pakistan', 'DL-PAK-000038', '2026-08-11 12:13:23'),
(39, 'Zain Hussain', '30039-1000039-9', '030000000039', 'customer39@example.com', 'Sialkot, Pakistan', 'DL-PAK-000039', '2026-08-11 12:13:23'),
(40, 'Ahsan Javed', '30040-1000040-0', '030000000040', 'customer40@example.com', 'Quetta, Pakistan', 'DL-PAK-000040', '2026-08-11 12:13:23'),
(41, 'Ali Khan', '30041-1000041-1', '030000000041', 'customer41@example.com', 'Lahore, Pakistan', 'DL-PAK-000041', '2026-08-11 12:13:23'),
(42, 'Ahmed Malik', '30042-1000042-2', '030000000042', 'customer42@example.com', 'Islamabad, Pakistan', 'DL-PAK-000042', '2026-08-11 12:13:23'),
(43, 'Hassan Sheikh', '30043-1000043-3', '030000000043', 'customer43@example.com', 'Rawalpindi, Pakistan', 'DL-PAK-000043', '2026-08-11 12:13:23'),
(44, 'Usman Butt', '30044-1000044-4', '030000000044', 'customer44@example.com', 'Karachi, Pakistan', 'DL-PAK-000044', '2026-08-11 12:13:23'),
(45, 'Bilal Chaudhry', '30045-1000045-5', '030000000045', 'customer45@example.com', 'Peshawar, Pakistan', 'DL-PAK-000045', '2026-08-11 12:13:23'),
(46, 'Hamza Raza', '30046-1000046-6', '030000000046', 'customer46@example.com', 'Multan, Pakistan', 'DL-PAK-000046', '2026-08-11 12:13:23'),
(47, 'Omar Iqbal', '30047-1000047-7', '030000000047', 'customer47@example.com', 'Faisalabad, Pakistan', 'DL-PAK-000047', '2026-08-11 12:13:23'),
(48, 'Fahad Shah', '30048-1000048-8', '030000000048', 'customer48@example.com', 'Gujranwala, Pakistan', 'DL-PAK-000048', '2026-08-11 12:13:23'),
(49, 'Zain Hussain', '30049-1000049-9', '030000000049', 'customer49@example.com', 'Sialkot, Pakistan', 'DL-PAK-000049', '2026-08-11 12:13:23'),
(50, 'Ahsan Javed', '30050-1000050-0', '030000000050', 'customer50@example.com', 'Quetta, Pakistan', 'DL-PAK-000050', '2026-08-11 12:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `damage_id` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `damage_date` date NOT NULL,
  `damage_type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `repair_cost` decimal(10,2) DEFAULT 0.00,
  `customer_charged` decimal(10,2) DEFAULT 0.00,
  `status` varchar(20) NOT NULL DEFAULT 'Reported',
  `notes` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `damages`
--

INSERT INTO `damages` (`damage_id`, `rental_id`, `damage_date`, `damage_type`, `description`, `repair_cost`, `customer_charged`, `status`, `notes`) VALUES
(1, 1, '2026-01-05', 'Scratch', 'Minor scratches found on vehicle body', 2750.00, 2000.00, 'Reported', 'Damage report for rental #1'),
(2, 2, '2026-01-08', 'Dent', 'Small dent found on rear door', 3500.00, 2500.00, 'Under Repair', 'Damage report for rental #2'),
(3, 3, '2026-01-11', 'Broken Mirror', 'Side mirror was damaged during rental', 4250.00, 3000.00, 'Repaired', 'Damage report for rental #3'),
(4, 4, '2026-01-14', 'Flat Tire', 'One tire was damaged during rental', 5000.00, 3000.00, 'Reported', 'Damage report for rental #4'),
(5, 5, '2026-01-17', 'Broken Headlight', 'Front headlight was broken', 5750.00, 4000.00, 'Under Repair', 'Damage report for rental #5'),
(6, 6, '2026-01-20', 'Bumper Damage', 'Front bumper received minor damage', 6500.00, 1500.00, 'Repaired', 'Damage report for rental #6'),
(7, 7, '2026-01-23', 'Interior Damage', 'Interior seat and dashboard damaged', 7250.00, 0.00, 'Reported', 'Damage report for rental #7'),
(8, 8, '2026-01-26', 'Windshield Crack', 'Small crack found on windshield', 8000.00, 1000.00, 'Under Repair', 'Damage report for rental #8'),
(9, 9, '2026-01-29', 'Scratch', 'Minor scratches found on vehicle body', 8750.00, 3000.00, 'Repaired', 'Damage report for rental #9'),
(10, 10, '2026-02-01', 'Dent', 'Small dent found on rear door', 2000.00, 3500.00, 'Reported', 'Damage report for rental #10'),
(11, 11, '2026-02-04', 'Broken Mirror', 'Side mirror was damaged during rental', 2750.00, 4000.00, 'Under Repair', 'Damage report for rental #11'),
(12, 12, '2026-02-07', 'Flat Tire', 'One tire was damaged during rental', 3500.00, 3000.00, 'Repaired', 'Damage report for rental #12'),
(13, 13, '2026-02-10', 'Broken Headlight', 'Front headlight was broken', 4250.00, 2000.00, 'Reported', 'Damage report for rental #13'),
(14, 14, '2026-02-13', 'Bumper Damage', 'Front bumper received minor damage', 5000.00, 0.00, 'Under Repair', 'Damage report for rental #14'),
(15, 15, '2026-02-16', 'Interior Damage', 'Interior seat and dashboard damaged', 5750.00, 3000.00, 'Repaired', 'Damage report for rental #15'),
(16, 16, '2026-02-19', 'Windshield Crack', 'Small crack found on windshield', 6500.00, 1000.00, 'Reported', 'Damage report for rental #16'),
(17, 17, '2026-02-22', 'Scratch', 'Minor scratches found on vehicle body', 7250.00, 4000.00, 'Under Repair', 'Damage report for rental #17'),
(18, 18, '2026-02-25', 'Dent', 'Small dent found on rear door', 8000.00, 1500.00, 'Repaired', 'Damage report for rental #18'),
(19, 19, '2026-02-28', 'Broken Mirror', 'Side mirror was damaged during rental', 8750.00, 2000.00, 'Reported', 'Damage report for rental #19'),
(20, 20, '2026-03-03', 'Flat Tire', 'One tire was damaged during rental', 2000.00, 3000.00, 'Under Repair', 'Damage report for rental #20'),
(21, 21, '2026-03-06', 'Broken Headlight', 'Front headlight was broken', 2750.00, 0.00, 'Repaired', 'Damage report for rental #21'),
(22, 22, '2026-03-09', 'Bumper Damage', 'Front bumper received minor damage', 3500.00, 3500.00, 'Reported', 'Damage report for rental #22'),
(23, 23, '2026-03-12', 'Interior Damage', 'Interior seat and dashboard damaged', 4250.00, 4000.00, 'Under Repair', 'Damage report for rental #23'),
(24, 24, '2026-03-15', 'Windshield Crack', 'Small crack found on windshield', 5000.00, 1000.00, 'Repaired', 'Damage report for rental #24'),
(25, 25, '2026-03-18', 'Scratch', 'Minor scratches found on vehicle body', 5750.00, 2000.00, 'Reported', 'Damage report for rental #25'),
(26, 26, '2026-03-21', 'Dent', 'Small dent found on rear door', 6500.00, 2500.00, 'Under Repair', 'Damage report for rental #26'),
(27, 27, '2026-03-24', 'Broken Mirror', 'Side mirror was damaged during rental', 7250.00, 3000.00, 'Repaired', 'Damage report for rental #27'),
(28, 28, '2026-03-27', 'Flat Tire', 'One tire was damaged during rental', 8000.00, 3000.00, 'Reported', 'Damage report for rental #28'),
(29, 29, '2026-03-30', 'Broken Headlight', 'Front headlight was broken', 8750.00, 4000.00, 'Under Repair', 'Damage report for rental #29'),
(30, 30, '2026-04-02', 'Bumper Damage', 'Front bumper received minor damage', 2000.00, 1500.00, 'Repaired', 'Damage report for rental #30'),
(31, 31, '2026-04-05', 'Interior Damage', 'Interior seat and dashboard damaged', 2750.00, 2000.00, 'Reported', 'Damage report for rental #31'),
(32, 32, '2026-04-08', 'Windshield Crack', 'Small crack found on windshield', 3500.00, 1000.00, 'Under Repair', 'Damage report for rental #32'),
(33, 33, '2026-04-11', 'Scratch', 'Minor scratches found on vehicle body', 4250.00, 3000.00, 'Repaired', 'Damage report for rental #33'),
(34, 34, '2026-04-14', 'Dent', 'Small dent found on rear door', 5000.00, 3500.00, 'Reported', 'Damage report for rental #34'),
(35, 35, '2026-04-17', 'Broken Mirror', 'Side mirror was damaged during rental', 5750.00, 0.00, 'Under Repair', 'Damage report for rental #35'),
(36, 36, '2026-04-20', 'Flat Tire', 'One tire was damaged during rental', 6500.00, 3000.00, 'Repaired', 'Damage report for rental #36'),
(37, 37, '2026-04-23', 'Broken Headlight', 'Front headlight was broken', 7250.00, 2000.00, 'Reported', 'Damage report for rental #37'),
(38, 38, '2026-04-26', 'Bumper Damage', 'Front bumper received minor damage', 8000.00, 2500.00, 'Under Repair', 'Damage report for rental #38'),
(39, 39, '2026-04-29', 'Interior Damage', 'Interior seat and dashboard damaged', 8750.00, 3000.00, 'Repaired', 'Damage report for rental #39'),
(40, 40, '2026-05-02', 'Windshield Crack', 'Small crack found on windshield', 2000.00, 1000.00, 'Reported', 'Damage report for rental #40'),
(41, 41, '2026-05-05', 'Scratch', 'Minor scratches found on vehicle body', 2750.00, 4000.00, 'Under Repair', 'Damage report for rental #41'),
(42, 42, '2026-05-08', 'Dent', 'Small dent found on rear door', 3500.00, 0.00, 'Repaired', 'Damage report for rental #42'),
(43, 43, '2026-05-11', 'Broken Mirror', 'Side mirror was damaged during rental', 4250.00, 2000.00, 'Reported', 'Damage report for rental #43'),
(44, 44, '2026-05-14', 'Flat Tire', 'One tire was damaged during rental', 5000.00, 3000.00, 'Under Repair', 'Damage report for rental #44'),
(45, 45, '2026-05-17', 'Broken Headlight', 'Front headlight was broken', 5750.00, 3000.00, 'Repaired', 'Damage report for rental #45'),
(46, 46, '2026-05-20', 'Bumper Damage', 'Front bumper received minor damage', 6500.00, 3500.00, 'Reported', 'Damage report for rental #46'),
(47, 47, '2026-05-23', 'Interior Damage', 'Interior seat and dashboard damaged', 7250.00, 4000.00, 'Under Repair', 'Damage report for rental #47'),
(48, 48, '2026-05-26', 'Windshield Crack', 'Small crack found on windshield', 8000.00, 1000.00, 'Repaired', 'Damage report for rental #48'),
(49, 49, '2026-05-29', 'Scratch', 'Minor scratches found on vehicle body', 8750.00, 0.00, 'Reported', 'Damage report for rental #49'),
(50, 50, '2026-06-01', 'Dent', 'Small dent found on rear door', 2000.00, 2500.00, 'Under Repair', 'Damage report for rental #50');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `maintenance_date` date NOT NULL,
  `maintenance_type` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL,
  `service_provider` varchar(100) DEFAULT NULL,
  `next_service_date` date DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Completed',
  `notes` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenance_id`, `vehicle_id`, `maintenance_date`, `maintenance_type`, `description`, `cost`, `service_provider`, `next_service_date`, `status`, `notes`) VALUES
(1, 1, '2026-02-05', 'Oil Change', 'Engine oil and filter replaced', 3500.00, 'Toyota Service Center', '2026-05-06', 'Completed', 'Maintenance record for vehicle #1'),
(2, 2, '2026-02-09', 'Brake Service', 'Brake pads and brake system inspected', 4500.00, 'Honda Service Center', '2026-05-10', 'Scheduled', 'Maintenance record for vehicle #2'),
(3, 3, '2026-02-13', 'Engine Service', 'Engine tuning and inspection completed', 5500.00, 'Suzuki Service Center', '2026-05-14', 'In Progress', 'Maintenance record for vehicle #3'),
(4, 4, '2026-02-17', 'Tire Replacement', 'Worn tires replaced with new tires', 6500.00, 'AutoCare Workshop', '2026-05-18', 'Completed', 'Maintenance record for vehicle #4'),
(5, 5, '2026-02-21', 'Battery Replacement', 'Vehicle battery replaced', 7500.00, 'City Motors', '2026-05-22', 'Scheduled', 'Maintenance record for vehicle #5'),
(6, 6, '2026-02-25', 'AC Service', 'Air conditioning system serviced', 8500.00, 'Toyota Service Center', '2026-05-26', 'In Progress', 'Maintenance record for vehicle #6'),
(7, 7, '2026-03-01', 'General Inspection', 'Complete vehicle inspection performed', 9500.00, 'Honda Service Center', '2026-05-30', 'Completed', 'Maintenance record for vehicle #7'),
(8, 8, '2026-03-05', 'Wheel Alignment', 'Wheel alignment and balancing completed', 10500.00, 'Suzuki Service Center', '2026-06-03', 'Scheduled', 'Maintenance record for vehicle #8'),
(9, 9, '2026-03-09', 'Oil Change', 'Engine oil and filter replaced', 11500.00, 'AutoCare Workshop', '2026-06-07', 'In Progress', 'Maintenance record for vehicle #9'),
(10, 10, '2026-03-13', 'Brake Service', 'Brake pads and brake system inspected', 2500.00, 'City Motors', '2026-06-11', 'Completed', 'Maintenance record for vehicle #10'),
(11, 11, '2026-03-17', 'Engine Service', 'Engine tuning and inspection completed', 3500.00, 'Toyota Service Center', '2026-06-15', 'Scheduled', 'Maintenance record for vehicle #11'),
(12, 12, '2026-03-21', 'Tire Replacement', 'Worn tires replaced with new tires', 4500.00, 'Honda Service Center', '2026-06-19', 'In Progress', 'Maintenance record for vehicle #12'),
(13, 13, '2026-03-25', 'Battery Replacement', 'Vehicle battery replaced', 5500.00, 'Suzuki Service Center', '2026-06-23', 'Completed', 'Maintenance record for vehicle #13'),
(14, 14, '2026-03-29', 'AC Service', 'Air conditioning system serviced', 6500.00, 'AutoCare Workshop', '2026-06-27', 'Scheduled', 'Maintenance record for vehicle #14'),
(15, 15, '2026-04-02', 'General Inspection', 'Complete vehicle inspection performed', 7500.00, 'City Motors', '2026-07-01', 'In Progress', 'Maintenance record for vehicle #15'),
(16, 16, '2026-04-06', 'Wheel Alignment', 'Wheel alignment and balancing completed', 8500.00, 'Toyota Service Center', '2026-07-05', 'Completed', 'Maintenance record for vehicle #16'),
(17, 17, '2026-04-10', 'Oil Change', 'Engine oil and filter replaced', 9500.00, 'Honda Service Center', '2026-07-09', 'Scheduled', 'Maintenance record for vehicle #17'),
(18, 18, '2026-04-14', 'Brake Service', 'Brake pads and brake system inspected', 10500.00, 'Suzuki Service Center', '2026-07-13', 'In Progress', 'Maintenance record for vehicle #18'),
(19, 19, '2026-04-18', 'Engine Service', 'Engine tuning and inspection completed', 11500.00, 'AutoCare Workshop', '2026-07-17', 'Completed', 'Maintenance record for vehicle #19'),
(20, 20, '2026-04-22', 'Tire Replacement', 'Worn tires replaced with new tires', 2500.00, 'City Motors', '2026-07-21', 'Scheduled', 'Maintenance record for vehicle #20'),
(21, 21, '2026-04-26', 'Battery Replacement', 'Vehicle battery replaced', 3500.00, 'Toyota Service Center', '2026-07-25', 'In Progress', 'Maintenance record for vehicle #21'),
(22, 22, '2026-04-30', 'AC Service', 'Air conditioning system serviced', 4500.00, 'Honda Service Center', '2026-07-29', 'Completed', 'Maintenance record for vehicle #22'),
(23, 23, '2026-05-04', 'General Inspection', 'Complete vehicle inspection performed', 5500.00, 'Suzuki Service Center', '2026-08-02', 'Scheduled', 'Maintenance record for vehicle #23'),
(24, 24, '2026-05-08', 'Wheel Alignment', 'Wheel alignment and balancing completed', 6500.00, 'AutoCare Workshop', '2026-08-06', 'In Progress', 'Maintenance record for vehicle #24'),
(25, 25, '2026-05-12', 'Oil Change', 'Engine oil and filter replaced', 7500.00, 'City Motors', '2026-08-10', 'Completed', 'Maintenance record for vehicle #25'),
(26, 26, '2026-05-16', 'Brake Service', 'Brake pads and brake system inspected', 8500.00, 'Toyota Service Center', '2026-08-14', 'Scheduled', 'Maintenance record for vehicle #26'),
(27, 27, '2026-05-20', 'Engine Service', 'Engine tuning and inspection completed', 9500.00, 'Honda Service Center', '2026-08-18', 'In Progress', 'Maintenance record for vehicle #27'),
(28, 28, '2026-05-24', 'Tire Replacement', 'Worn tires replaced with new tires', 10500.00, 'Suzuki Service Center', '2026-08-22', 'Completed', 'Maintenance record for vehicle #28'),
(29, 29, '2026-05-28', 'Battery Replacement', 'Vehicle battery replaced', 11500.00, 'AutoCare Workshop', '2026-08-26', 'Scheduled', 'Maintenance record for vehicle #29'),
(30, 30, '2026-06-01', 'AC Service', 'Air conditioning system serviced', 2500.00, 'City Motors', '2026-08-30', 'In Progress', 'Maintenance record for vehicle #30'),
(31, 31, '2026-06-05', 'General Inspection', 'Complete vehicle inspection performed', 3500.00, 'Toyota Service Center', '2026-09-03', 'Completed', 'Maintenance record for vehicle #31'),
(32, 32, '2026-06-09', 'Wheel Alignment', 'Wheel alignment and balancing completed', 4500.00, 'Honda Service Center', '2026-09-07', 'Scheduled', 'Maintenance record for vehicle #32'),
(33, 33, '2026-06-13', 'Oil Change', 'Engine oil and filter replaced', 5500.00, 'Suzuki Service Center', '2026-09-11', 'In Progress', 'Maintenance record for vehicle #33'),
(34, 34, '2026-06-17', 'Brake Service', 'Brake pads and brake system inspected', 6500.00, 'AutoCare Workshop', '2026-09-15', 'Completed', 'Maintenance record for vehicle #34'),
(35, 35, '2026-06-21', 'Engine Service', 'Engine tuning and inspection completed', 7500.00, 'City Motors', '2026-09-19', 'Scheduled', 'Maintenance record for vehicle #35'),
(36, 36, '2026-06-25', 'Tire Replacement', 'Worn tires replaced with new tires', 8500.00, 'Toyota Service Center', '2026-09-23', 'In Progress', 'Maintenance record for vehicle #36'),
(37, 37, '2026-06-29', 'Battery Replacement', 'Vehicle battery replaced', 9500.00, 'Honda Service Center', '2026-09-27', 'Completed', 'Maintenance record for vehicle #37'),
(38, 38, '2026-07-03', 'AC Service', 'Air conditioning system serviced', 10500.00, 'Suzuki Service Center', '2026-10-01', 'Scheduled', 'Maintenance record for vehicle #38'),
(39, 39, '2026-07-07', 'General Inspection', 'Complete vehicle inspection performed', 11500.00, 'AutoCare Workshop', '2026-10-05', 'In Progress', 'Maintenance record for vehicle #39'),
(40, 40, '2026-07-11', 'Wheel Alignment', 'Wheel alignment and balancing completed', 2500.00, 'City Motors', '2026-10-09', 'Completed', 'Maintenance record for vehicle #40'),
(41, 41, '2026-07-15', 'Oil Change', 'Engine oil and filter replaced', 3500.00, 'Toyota Service Center', '2026-10-13', 'Scheduled', 'Maintenance record for vehicle #41'),
(42, 42, '2026-07-19', 'Brake Service', 'Brake pads and brake system inspected', 4500.00, 'Honda Service Center', '2026-10-17', 'In Progress', 'Maintenance record for vehicle #42'),
(43, 43, '2026-07-23', 'Engine Service', 'Engine tuning and inspection completed', 5500.00, 'Suzuki Service Center', '2026-10-21', 'Completed', 'Maintenance record for vehicle #43'),
(44, 44, '2026-07-27', 'Tire Replacement', 'Worn tires replaced with new tires', 6500.00, 'AutoCare Workshop', '2026-10-25', 'Scheduled', 'Maintenance record for vehicle #44'),
(45, 45, '2026-07-31', 'Battery Replacement', 'Vehicle battery replaced', 7500.00, 'City Motors', '2026-10-29', 'In Progress', 'Maintenance record for vehicle #45'),
(46, 46, '2026-08-04', 'AC Service', 'Air conditioning system serviced', 8500.00, 'Toyota Service Center', '2026-11-02', 'Completed', 'Maintenance record for vehicle #46'),
(47, 47, '2026-08-08', 'General Inspection', 'Complete vehicle inspection performed', 9500.00, 'Honda Service Center', '2026-11-06', 'Scheduled', 'Maintenance record for vehicle #47'),
(48, 48, '2026-08-12', 'Wheel Alignment', 'Wheel alignment and balancing completed', 10500.00, 'Suzuki Service Center', '2026-11-10', 'In Progress', 'Maintenance record for vehicle #48'),
(49, 49, '2026-08-16', 'Oil Change', 'Engine oil and filter replaced', 11500.00, 'AutoCare Workshop', '2026-11-14', 'Completed', 'Maintenance record for vehicle #49'),
(50, 50, '2026-08-20', 'Brake Service', 'Brake pads and brake system inspected', 2500.00, 'City Motors', '2026-11-18', 'Scheduled', 'Maintenance record for vehicle #50');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `rental_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `rental_date` datetime NOT NULL,
  `expected_return_date` datetime NOT NULL,
  `actual_return_date` datetime DEFAULT NULL,
  `daily_rate` decimal(10,2) NOT NULL,
  `security_deposit` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_amount` decimal(10,2) DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'Pending',
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `notes` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`rental_id`, `customer_id`, `vehicle_id`, `rental_date`, `expected_return_date`, `actual_return_date`, `daily_rate`, `security_deposit`, `total_amount`, `payment_amount`, `payment_method`, `payment_status`, `status`, `notes`) VALUES
(1, 1, 1, '2026-01-04 09:00:00', '2026-01-08 09:00:00', '2026-01-07 09:00:00', 3500.00, 12500.00, 14000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #1 - vehicle rented by customer 1'),
(2, 2, 2, '2026-01-07 09:00:00', '2026-01-12 09:00:00', '2026-01-11 09:00:00', 4000.00, 15000.00, 20000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #2 - vehicle rented by customer 2'),
(3, 3, 3, '2026-01-10 09:00:00', '2026-01-16 09:00:00', '2026-01-15 09:00:00', 4500.00, 17500.00, 27000.00, 13500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #3 - vehicle rented by customer 3'),
(4, 4, 4, '2026-01-13 09:00:00', '2026-01-20 09:00:00', '2026-01-19 09:00:00', 5000.00, 20000.00, 35000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #4 - vehicle rented by customer 4'),
(5, 5, 5, '2026-01-16 09:00:00', '2026-01-24 09:00:00', '2026-01-23 09:00:00', 5500.00, 10000.00, 44000.00, 44000.00, 'Card', 'Paid', 'Completed', 'Rental transaction #5 - vehicle rented by customer 5'),
(6, 6, 6, '2026-01-19 09:00:00', '2026-01-28 09:00:00', '2026-01-27 09:00:00', 6000.00, 12500.00, 54000.00, 27000.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #6 - vehicle rented by customer 6'),
(7, 7, 7, '2026-01-22 09:00:00', '2026-02-01 09:00:00', '2026-01-31 09:00:00', 6500.00, 15000.00, 65000.00, 0.00, 'Bank Transfer', 'Pending', 'Cancelled', 'Rental transaction #7 - vehicle rented by customer 7'),
(8, 8, 8, '2026-01-25 09:00:00', '2026-01-28 09:00:00', '2026-01-27 09:00:00', 7000.00, 17500.00, 21000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #8 - vehicle rented by customer 8'),
(9, 9, 9, '2026-01-28 09:00:00', '2026-02-01 09:00:00', '2026-01-31 09:00:00', 7500.00, 20000.00, 30000.00, 15000.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #9 - vehicle rented by customer 9'),
(10, 10, 10, '2026-01-31 09:00:00', '2026-02-05 09:00:00', NULL, 3000.00, 10000.00, 15000.00, 15000.00, 'Card', 'Paid', 'Overdue', 'Rental transaction #10 - vehicle rented by customer 10'),
(11, 11, 11, '2026-02-03 09:00:00', '2026-02-09 09:00:00', '2026-02-08 09:00:00', 3500.00, 12500.00, 21000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #11 - vehicle rented by customer 11'),
(12, 12, 12, '2026-02-06 09:00:00', '2026-02-13 09:00:00', '2026-02-12 09:00:00', 4000.00, 15000.00, 28000.00, 14000.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #12 - vehicle rented by customer 12'),
(13, 13, 13, '2026-02-09 09:00:00', '2026-02-17 09:00:00', '2026-02-16 09:00:00', 4500.00, 17500.00, 36000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #13 - vehicle rented by customer 13'),
(14, 14, 14, '2026-02-12 09:00:00', '2026-02-21 09:00:00', '2026-02-20 09:00:00', 5000.00, 20000.00, 45000.00, 0.00, 'Easypaisa', 'Pending', 'Cancelled', 'Rental transaction #14 - vehicle rented by customer 14'),
(15, 15, 15, '2026-02-15 09:00:00', '2026-02-25 09:00:00', '2026-02-24 09:00:00', 5500.00, 10000.00, 55000.00, 55000.00, 'Card', 'Paid', 'Completed', 'Rental transaction #15 - vehicle rented by customer 15'),
(16, 16, 16, '2026-02-18 09:00:00', '2026-02-21 09:00:00', '2026-02-20 09:00:00', 6000.00, 12500.00, 18000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #16 - vehicle rented by customer 16'),
(17, 17, 17, '2026-02-21 09:00:00', '2026-02-25 09:00:00', '2026-02-24 09:00:00', 6500.00, 15000.00, 26000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #17 - vehicle rented by customer 17'),
(18, 18, 18, '2026-02-24 09:00:00', '2026-03-01 09:00:00', '2026-02-28 09:00:00', 7000.00, 17500.00, 35000.00, 17500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #18 - vehicle rented by customer 18'),
(19, 19, 19, '2026-02-27 09:00:00', '2026-03-05 09:00:00', '2026-03-04 09:00:00', 7500.00, 20000.00, 45000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #19 - vehicle rented by customer 19'),
(20, 20, 20, '2026-03-02 09:00:00', '2026-03-09 09:00:00', NULL, 3000.00, 10000.00, 21000.00, 21000.00, 'Card', 'Paid', 'Overdue', 'Rental transaction #20 - vehicle rented by customer 20'),
(21, 21, 21, '2026-03-05 09:00:00', '2026-03-13 09:00:00', '2026-03-12 09:00:00', 3500.00, 12500.00, 28000.00, 14000.00, 'Cash', 'Partially Paid', 'Cancelled', 'Rental transaction #21 - vehicle rented by customer 21'),
(22, 22, 22, '2026-03-08 09:00:00', '2026-03-17 09:00:00', '2026-03-16 09:00:00', 4000.00, 15000.00, 36000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #22 - vehicle rented by customer 22'),
(23, 23, 23, '2026-03-11 09:00:00', '2026-03-21 09:00:00', '2026-03-20 09:00:00', 4500.00, 17500.00, 45000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #23 - vehicle rented by customer 23'),
(24, 24, 24, '2026-03-14 09:00:00', '2026-03-17 09:00:00', '2026-03-16 09:00:00', 5000.00, 20000.00, 15000.00, 7500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #24 - vehicle rented by customer 24'),
(25, 25, 25, '2026-03-17 09:00:00', '2026-03-21 09:00:00', '2026-03-20 09:00:00', 5500.00, 10000.00, 22000.00, 22000.00, 'Card', 'Paid', 'Completed', 'Rental transaction #25 - vehicle rented by customer 25'),
(26, 26, 26, '2026-03-20 09:00:00', '2026-03-25 09:00:00', '2026-03-24 09:00:00', 6000.00, 12500.00, 30000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #26 - vehicle rented by customer 26'),
(27, 27, 27, '2026-03-23 09:00:00', '2026-03-29 09:00:00', '2026-03-28 09:00:00', 6500.00, 15000.00, 39000.00, 19500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #27 - vehicle rented by customer 27'),
(28, 28, 28, '2026-03-26 09:00:00', '2026-04-02 09:00:00', '2026-04-01 09:00:00', 7000.00, 17500.00, 49000.00, 0.00, 'Bank Transfer', 'Pending', 'Cancelled', 'Rental transaction #28 - vehicle rented by customer 28'),
(29, 29, 29, '2026-03-29 09:00:00', '2026-04-06 09:00:00', '2026-04-05 09:00:00', 7500.00, 20000.00, 60000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #29 - vehicle rented by customer 29'),
(30, 30, 30, '2026-04-01 09:00:00', '2026-04-10 09:00:00', NULL, 3000.00, 10000.00, 27000.00, 27000.00, 'Card', 'Paid', 'Overdue', 'Rental transaction #30 - vehicle rented by customer 30'),
(31, 31, 31, '2026-04-04 09:00:00', '2026-04-14 09:00:00', '2026-04-13 09:00:00', 3500.00, 12500.00, 35000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #31 - vehicle rented by customer 31'),
(32, 32, 32, '2026-04-07 09:00:00', '2026-04-10 09:00:00', '2026-04-09 09:00:00', 4000.00, 15000.00, 12000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #32 - vehicle rented by customer 32'),
(33, 33, 33, '2026-04-10 09:00:00', '2026-04-14 09:00:00', '2026-04-13 09:00:00', 4500.00, 17500.00, 18000.00, 9000.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #33 - vehicle rented by customer 33'),
(34, 34, 34, '2026-04-13 09:00:00', '2026-04-18 09:00:00', '2026-04-17 09:00:00', 5000.00, 20000.00, 25000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #34 - vehicle rented by customer 34'),
(35, 35, 35, '2026-04-16 09:00:00', '2026-04-22 09:00:00', '2026-04-21 09:00:00', 5500.00, 10000.00, 33000.00, 33000.00, 'Card', 'Paid', 'Completed', 'Rental transaction #35 - vehicle rented by customer 35'),
(36, 36, 36, '2026-04-19 09:00:00', '2026-04-26 09:00:00', '2026-04-25 09:00:00', 6000.00, 12500.00, 42000.00, 21000.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #36 - vehicle rented by customer 36'),
(37, 37, 37, '2026-04-22 09:00:00', '2026-04-30 09:00:00', '2026-04-29 09:00:00', 6500.00, 15000.00, 52000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #37 - vehicle rented by customer 37'),
(38, 38, 38, '2026-04-25 09:00:00', '2026-05-04 09:00:00', '2026-05-03 09:00:00', 7000.00, 17500.00, 63000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #38 - vehicle rented by customer 38'),
(39, 39, 39, '2026-04-28 09:00:00', '2026-05-08 09:00:00', '2026-05-07 09:00:00', 7500.00, 20000.00, 75000.00, 37500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #39 - vehicle rented by customer 39'),
(40, 40, 40, '2026-05-01 09:00:00', '2026-05-04 09:00:00', NULL, 3000.00, 10000.00, 9000.00, 9000.00, 'Card', 'Paid', 'Overdue', 'Rental transaction #40 - vehicle rented by customer 40'),
(41, 41, 41, '2026-05-04 09:00:00', '2026-05-08 09:00:00', '2026-05-07 09:00:00', 3500.00, 12500.00, 14000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #41 - vehicle rented by customer 41'),
(42, 42, 42, '2026-05-07 09:00:00', '2026-05-12 09:00:00', '2026-05-11 09:00:00', 4000.00, 15000.00, 20000.00, 10000.00, 'Cash', 'Partially Paid', 'Cancelled', 'Rental transaction #42 - vehicle rented by customer 42'),
(43, 43, 43, '2026-05-10 09:00:00', '2026-05-16 09:00:00', '2026-05-15 09:00:00', 4500.00, 17500.00, 27000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #43 - vehicle rented by customer 43'),
(44, 44, 44, '2026-05-13 09:00:00', '2026-05-20 09:00:00', '2026-05-19 09:00:00', 5000.00, 20000.00, 35000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #44 - vehicle rented by customer 44'),
(45, 45, 45, '2026-05-16 09:00:00', '2026-05-24 09:00:00', '2026-05-23 09:00:00', 5500.00, 10000.00, 44000.00, 44000.00, 'Card', 'Paid', 'Completed', 'Rental transaction #45 - vehicle rented by customer 45'),
(46, 46, 46, '2026-05-19 09:00:00', '2026-05-28 09:00:00', '2026-05-27 09:00:00', 6000.00, 12500.00, 54000.00, 0.00, 'Bank Transfer', 'Pending', 'Active', 'Rental transaction #46 - vehicle rented by customer 46'),
(47, 47, 47, '2026-05-22 09:00:00', '2026-06-01 09:00:00', '2026-05-31 09:00:00', 6500.00, 15000.00, 65000.00, 0.00, 'Easypaisa', 'Pending', 'Active', 'Rental transaction #47 - vehicle rented by customer 47'),
(48, 48, 48, '2026-05-25 09:00:00', '2026-05-28 09:00:00', '2026-05-27 09:00:00', 7000.00, 17500.00, 21000.00, 10500.00, 'Cash', 'Partially Paid', 'Active', 'Rental transaction #48 - vehicle rented by customer 48'),
(49, 49, 49, '2026-05-28 09:00:00', '2026-06-01 09:00:00', '2026-05-31 09:00:00', 7500.00, 20000.00, 30000.00, 0.00, 'Bank Transfer', 'Pending', 'Cancelled', 'Rental transaction #49 - vehicle rented by customer 49'),
(50, 50, 50, '2026-05-31 09:00:00', '2026-06-05 09:00:00', NULL, 3000.00, 10000.00, 15000.00, 15000.00, 'Card', 'Paid', 'Overdue', 'Rental transaction #50 - vehicle rented by customer 50');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `registration_no` varchar(30) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `manufacturing_year` year(4) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `daily_rate` decimal(10,2) NOT NULL,
  `mileage` decimal(10,2) DEFAULT 0.00,
  `status` varchar(20) NOT NULL DEFAULT 'Available',
  `purchase_date` date DEFAULT NULL
) ;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `registration_no`, `vehicle_type`, `brand`, `model`, `manufacturing_year`, `color`, `daily_rate`, `mileage`, `status`, `purchase_date`) VALUES
(1, 'LEA-0001', 'Sedan', 'Toyota', 'Corolla', '2019', 'White', 3500.00, 16250.00, 'Available', '2021-01-18'),
(2, 'LEA-0002', 'SUV', 'Honda', 'Civic', '2020', 'Black', 4000.00, 17500.00, 'Rented', '2021-02-04'),
(3, 'LEA-0003', 'Hatchback', 'Suzuki', 'Swift', '2021', 'Silver', 4500.00, 18750.00, 'Maintenance', '2021-02-21'),
(4, 'LEA-0004', 'Van', 'KIA', 'Sportage', '2022', 'Grey', 5000.00, 20000.00, 'Inactive', '2021-03-10'),
(5, 'LEA-0005', 'Pickup', 'Hyundai', 'Tucson', '2023', 'Blue', 5500.00, 21250.00, 'Available', '2021-03-27'),
(6, 'LEA-0006', 'Sedan', 'Nissan', 'Sunny', '2024', 'Red', 6000.00, 22500.00, 'Rented', '2021-04-13'),
(7, 'LEA-0007', 'SUV', 'MG', 'HS', '2025', 'Green', 6500.00, 23750.00, 'Maintenance', '2021-04-30'),
(8, 'LEA-0008', 'Hatchback', 'Changan', 'Alsvin', '2018', 'Brown', 7000.00, 25000.00, 'Inactive', '2021-05-17'),
(9, 'LEA-0009', 'Van', 'Proton', 'Saga', '2019', 'White', 7500.00, 26250.00, 'Available', '2021-06-03'),
(10, 'LEA-0010', 'Pickup', 'Mitsubishi', 'Lancer', '2020', 'Black', 3000.00, 27500.00, 'Rented', '2021-06-20'),
(11, 'LEA-0011', 'Sedan', 'Toyota', 'Corolla', '2021', 'Silver', 3500.00, 28750.00, 'Maintenance', '2021-07-07'),
(12, 'LEA-0012', 'SUV', 'Honda', 'Civic', '2022', 'Grey', 4000.00, 30000.00, 'Inactive', '2021-07-24'),
(13, 'LEA-0013', 'Hatchback', 'Suzuki', 'Swift', '2023', 'Blue', 4500.00, 31250.00, 'Available', '2021-08-10'),
(14, 'LEA-0014', 'Van', 'KIA', 'Sportage', '2024', 'Red', 5000.00, 32500.00, 'Rented', '2021-08-27'),
(15, 'LEA-0015', 'Pickup', 'Hyundai', 'Tucson', '2025', 'Green', 5500.00, 33750.00, 'Maintenance', '2021-09-13'),
(16, 'LEA-0016', 'Sedan', 'Nissan', 'Sunny', '2018', 'Brown', 6000.00, 35000.00, 'Inactive', '2021-09-30'),
(17, 'LEA-0017', 'SUV', 'MG', 'HS', '2019', 'White', 6500.00, 36250.00, 'Available', '2021-10-17'),
(18, 'LEA-0018', 'Hatchback', 'Changan', 'Alsvin', '2020', 'Black', 7000.00, 37500.00, 'Rented', '2021-11-03'),
(19, 'LEA-0019', 'Van', 'Proton', 'Saga', '2021', 'Silver', 7500.00, 38750.00, 'Maintenance', '2021-11-20'),
(20, 'LEA-0020', 'Pickup', 'Mitsubishi', 'Lancer', '2022', 'Grey', 3000.00, 40000.00, 'Inactive', '2021-12-07'),
(21, 'LEA-0021', 'Sedan', 'Toyota', 'Corolla', '2023', 'Blue', 3500.00, 41250.00, 'Available', '2021-12-24'),
(22, 'LEA-0022', 'SUV', 'Honda', 'Civic', '2024', 'Red', 4000.00, 42500.00, 'Rented', '2022-01-10'),
(23, 'LEA-0023', 'Hatchback', 'Suzuki', 'Swift', '2025', 'Green', 4500.00, 43750.00, 'Maintenance', '2022-01-27'),
(24, 'LEA-0024', 'Van', 'KIA', 'Sportage', '2018', 'Brown', 5000.00, 45000.00, 'Inactive', '2022-02-13'),
(25, 'LEA-0025', 'Pickup', 'Hyundai', 'Tucson', '2019', 'White', 5500.00, 46250.00, 'Available', '2022-03-02'),
(26, 'LEA-0026', 'Sedan', 'Nissan', 'Sunny', '2020', 'Black', 6000.00, 47500.00, 'Rented', '2022-03-19'),
(27, 'LEA-0027', 'SUV', 'MG', 'HS', '2021', 'Silver', 6500.00, 48750.00, 'Maintenance', '2022-04-05'),
(28, 'LEA-0028', 'Hatchback', 'Changan', 'Alsvin', '2022', 'Grey', 7000.00, 50000.00, 'Inactive', '2022-04-22'),
(29, 'LEA-0029', 'Van', 'Proton', 'Saga', '2023', 'Blue', 7500.00, 51250.00, 'Available', '2022-05-09'),
(30, 'LEA-0030', 'Pickup', 'Mitsubishi', 'Lancer', '2024', 'Red', 3000.00, 52500.00, 'Rented', '2022-05-26'),
(31, 'LEA-0031', 'Sedan', 'Toyota', 'Corolla', '2025', 'Green', 3500.00, 53750.00, 'Maintenance', '2022-06-12'),
(32, 'LEA-0032', 'SUV', 'Honda', 'Civic', '2018', 'Brown', 4000.00, 55000.00, 'Inactive', '2022-06-29'),
(33, 'LEA-0033', 'Hatchback', 'Suzuki', 'Swift', '2019', 'White', 4500.00, 56250.00, 'Available', '2022-07-16'),
(34, 'LEA-0034', 'Van', 'KIA', 'Sportage', '2020', 'Black', 5000.00, 57500.00, 'Rented', '2022-08-02'),
(35, 'LEA-0035', 'Pickup', 'Hyundai', 'Tucson', '2021', 'Silver', 5500.00, 58750.00, 'Maintenance', '2022-08-19'),
(36, 'LEA-0036', 'Sedan', 'Nissan', 'Sunny', '2022', 'Grey', 6000.00, 60000.00, 'Inactive', '2022-09-05'),
(37, 'LEA-0037', 'SUV', 'MG', 'HS', '2023', 'Blue', 6500.00, 61250.00, 'Available', '2022-09-22'),
(38, 'LEA-0038', 'Hatchback', 'Changan', 'Alsvin', '2024', 'Red', 7000.00, 62500.00, 'Rented', '2022-10-09'),
(39, 'LEA-0039', 'Van', 'Proton', 'Saga', '2025', 'Green', 7500.00, 63750.00, 'Maintenance', '2022-10-26'),
(40, 'LEA-0040', 'Pickup', 'Mitsubishi', 'Lancer', '2018', 'Brown', 3000.00, 65000.00, 'Inactive', '2022-11-12'),
(41, 'LEA-0041', 'Sedan', 'Toyota', 'Corolla', '2019', 'White', 3500.00, 66250.00, 'Available', '2022-11-29'),
(42, 'LEA-0042', 'SUV', 'Honda', 'Civic', '2020', 'Black', 4000.00, 67500.00, 'Rented', '2022-12-16'),
(43, 'LEA-0043', 'Hatchback', 'Suzuki', 'Swift', '2021', 'Silver', 4500.00, 68750.00, 'Maintenance', '2023-01-02'),
(44, 'LEA-0044', 'Van', 'KIA', 'Sportage', '2022', 'Grey', 5000.00, 70000.00, 'Inactive', '2023-01-19'),
(45, 'LEA-0045', 'Pickup', 'Hyundai', 'Tucson', '2023', 'Blue', 5500.00, 71250.00, 'Available', '2023-02-05'),
(46, 'LEA-0046', 'Sedan', 'Nissan', 'Sunny', '2024', 'Red', 6000.00, 72500.00, 'Rented', '2023-02-22'),
(47, 'LEA-0047', 'SUV', 'MG', 'HS', '2025', 'Green', 6500.00, 73750.00, 'Maintenance', '2023-03-11'),
(48, 'LEA-0048', 'Hatchback', 'Changan', 'Alsvin', '2018', 'Brown', 7000.00, 75000.00, 'Inactive', '2023-03-28'),
(49, 'LEA-0049', 'Van', 'Proton', 'Saga', '2019', 'White', 7500.00, 76250.00, 'Available', '2023-04-14'),
(50, 'LEA-0050', 'Pickup', 'Mitsubishi', 'Lancer', '2020', 'Black', 3000.00, 77500.00, 'Rented', '2023-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `driving_license_no` (`driving_license_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`damage_id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `registration_no` (`registration_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `damages`
--
ALTER TABLE `damages`
  ADD CONSTRAINT `damages_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`rental_id`) ON UPDATE CASCADE;

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`) ON UPDATE CASCADE;

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
