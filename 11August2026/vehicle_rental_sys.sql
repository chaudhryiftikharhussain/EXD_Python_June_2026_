-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2026 at 09:14 AM
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
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `registration_no` (`registration_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
