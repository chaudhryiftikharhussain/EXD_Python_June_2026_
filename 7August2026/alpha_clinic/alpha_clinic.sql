-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2026 at 11:15 AM
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
-- Database: `alpha_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status` enum('Pending','Completed','Cancelled') DEFAULT 'Pending',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `doctor_id`, `appointment_date`, `appointment_time`, `status`, `remarks`) VALUES
(1, 1, 5, '2026-08-01', '10:00:00', 'Completed', 'Fever'),
(2, 2, 2, '2026-08-01', '11:00:00', 'Completed', 'Skin allergy'),
(3, 3, 1, '2026-08-02', '09:30:00', 'Completed', 'Chest pain'),
(4, 4, 4, '2026-08-02', '12:00:00', 'Completed', 'Child vaccination'),
(5, 5, 3, '2026-08-03', '01:00:00', 'Completed', 'Leg fracture'),
(6, 1, 2, '2026-08-04', '03:00:00', 'Pending', 'Skin rash'),
(7, 2, 5, '2026-08-04', '04:00:00', 'Completed', 'Headache'),
(8, 3, 3, '2026-08-05', '09:00:00', 'Cancelled', 'Follow up'),
(9, 4, 1, '2026-08-05', '10:30:00', 'Completed', 'Heart checkup'),
(10, 5, 5, '2026-08-06', '11:30:00', 'Pending', 'General checkup');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentlabtest`
--

CREATE TABLE `appointmentlabtest` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `lab_test_id` int(11) NOT NULL,
  `result` text DEFAULT NULL,
  `status` enum('Pending','Completed') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointmentlabtest`
--

INSERT INTO `appointmentlabtest` (`id`, `appointment_id`, `lab_test_id`, `result`, `status`) VALUES
(1, 1, 1, 'Normal', 'Completed'),
(2, 2, 2, 'Infection Found', 'Completed'),
(3, 3, 4, 'Normal', 'Completed'),
(4, 4, 1, 'Normal', 'Completed'),
(5, 5, 3, 'Minor Crack', 'Completed'),
(6, 6, 2, NULL, 'Pending'),
(7, 9, 4, 'Normal', 'Completed'),
(8, 10, 1, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `doctor_fee` decimal(10,2) DEFAULT 0.00,
  `lab_total` decimal(10,2) DEFAULT 0.00,
  `medicine_total` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL,
  `payment_status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `appointment_id`, `doctor_fee`, `lab_total`, `medicine_total`, `discount`, `tax`, `grand_total`, `payment_status`, `payment_date`) VALUES
(1, 1, 1500.00, 1200.00, 100.00, 100.00, 50.00, 2750.00, 'Paid', '2026-08-01'),
(2, 2, 2000.00, 800.00, 30.00, 0.00, 100.00, 2930.00, 'Paid', '2026-08-01'),
(3, 3, 2500.00, 1800.00, 180.00, 200.00, 150.00, 4430.00, 'Paid', '2026-08-02'),
(4, 4, 1800.00, 1200.00, 35.00, 0.00, 90.00, 3125.00, 'Paid', '2026-08-02'),
(5, 5, 2200.00, 2500.00, 70.00, 100.00, 150.00, 4820.00, 'Paid', '2026-08-03'),
(6, 6, 2000.00, 800.00, 120.00, 0.00, 100.00, 3020.00, 'Unpaid', NULL),
(7, 7, 1500.00, 0.00, 25.00, 0.00, 75.00, 1600.00, 'Paid', '2026-08-04'),
(8, 8, 2200.00, 0.00, 40.00, 0.00, 110.00, 2350.00, 'Unpaid', NULL),
(9, 9, 2500.00, 1800.00, 60.00, 200.00, 150.00, 4310.00, 'Paid', '2026-08-05'),
(10, 10, 1500.00, 1200.00, 90.00, 100.00, 75.00, 2765.00, 'Unpaid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `consultation_fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `specialization`, `phone`, `email`, `consultation_fee`) VALUES
(1, 'Dr. Hassan', 'Cardiologist', '03001111111', 'hassan@clinic.com', 2500.00),
(2, 'Dr. Ayesha', 'Dermatologist', '03002222222', 'ayesha@clinic.com', 2000.00),
(3, 'Dr. Bilal', 'Orthopedic', '03003333333', 'bilal@clinic.com', 2200.00),
(4, 'Dr. Sana', 'Pediatrician', '03004444444', 'sana@clinic.com', 1800.00),
(5, 'Dr. Imran', 'General Physician', '03005555555', 'imran@clinic.com', 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `labtest`
--

CREATE TABLE `labtest` (
  `id` int(11) NOT NULL,
  `test_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtest`
--

INSERT INTO `labtest` (`id`, `test_name`, `price`, `description`) VALUES
(1, 'Blood Test', 1200.00, 'CBC'),
(2, 'Urine Test', 800.00, 'Urine Analysis'),
(3, 'X-Ray', 2500.00, 'Chest X-Ray'),
(4, 'ECG', 1800.00, 'Heart ECG'),
(5, 'MRI', 8500.00, 'Brain MRI');

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecord`
--

CREATE TABLE `medicalrecord` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `medical_history` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`id`, `patient_id`, `appointment_id`, `diagnosis`, `allergies`, `medical_history`, `notes`, `created_at`) VALUES
(1, 1, 1, 'Viral Fever', 'None', 'Healthy', 'Recovered', '2026-08-01 11:00:00'),
(2, 2, 2, 'Skin Allergy', 'Dust', 'Asthma', 'Medication Started', '2026-08-01 12:00:00'),
(3, 3, 3, 'Chest Pain', 'None', 'Hypertension', 'ECG Recommended', '2026-08-02 10:30:00'),
(4, 4, 4, 'Routine Vaccination', 'None', 'Healthy', 'Vaccinated', '2026-08-02 01:00:00'),
(5, 5, 5, 'Leg Fracture', 'None', 'None', 'Plaster Applied', '2026-08-03 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `strength`, `price`, `stock`) VALUES
(1, 'Panadol', '500mg', 50.00, 500),
(2, 'Augmentin', '625mg', 180.00, 200),
(3, 'Brufen', '400mg', 70.00, 300),
(4, 'Disprin', '300mg', 40.00, 250),
(5, 'Cetirizine', '10mg', 30.00, 400),
(6, 'Paracetamol', '500mg', 25.00, 600),
(7, 'Omeprazole', '20mg', 60.00, 200),
(8, 'Amoxicillin', '500mg', 120.00, 150),
(9, 'Vitamin C', '500mg', 35.00, 350),
(10, 'Metformin', '500mg', 90.00, 180);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `gender`, `dob`, `phone`, `email`, `address`, `blood_group`) VALUES
(1, 'Ali Khan', 'Male', '1998-05-10', '03001234567', 'ali@gmail.com', 'Lahore', 'A+'),
(2, 'Sara Ahmed', 'Female', '1995-03-18', '03111234567', 'sara@gmail.com', 'Karachi', 'B+'),
(3, 'Ahmed Raza', 'Male', '2000-09-22', '03221234567', 'ahmed@gmail.com', 'Islamabad', 'O+'),
(4, 'Fatima Noor', 'Female', '1992-01-15', '03331234567', 'fatima@gmail.com', 'Multan', 'AB+'),
(5, 'Usman Tariq', 'Male', '1997-11-08', '03441234567', 'usman@gmail.com', 'Faisalabad', 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `appointment_id`, `notes`) VALUES
(1, 1, 'Take medicine after meal'),
(2, 2, 'Drink plenty of water'),
(3, 3, 'Avoid oily food'),
(4, 4, 'Complete full course'),
(5, 5, 'Rest for one week'),
(6, 6, 'Review after 3 days'),
(7, 7, 'Take before sleep'),
(8, 8, 'No prescription'),
(9, 9, 'Exercise regularly'),
(10, 10, 'Follow up next week');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptionmedicine`
--

CREATE TABLE `prescriptionmedicine` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptionmedicine`
--

INSERT INTO `prescriptionmedicine` (`id`, `prescription_id`, `medicine_id`, `dosage`, `frequency`, `duration`, `instructions`) VALUES
(1, 1, 1, '1 Tablet', 'Twice Daily', '5 Days', 'After Meal'),
(2, 2, 5, '1 Tablet', 'Once Daily', '7 Days', 'Night'),
(3, 3, 2, '1 Tablet', 'Twice Daily', '5 Days', 'After Meal'),
(4, 4, 9, '1 Tablet', 'Once Daily', '30 Days', 'Morning'),
(5, 5, 3, '1 Tablet', 'Three Times', '7 Days', 'After Meal'),
(6, 6, 8, '1 Capsule', 'Twice Daily', '5 Days', 'Before Meal'),
(7, 7, 6, '1 Tablet', 'Three Times', '3 Days', 'After Meal'),
(8, 8, 4, '1 Tablet', 'Once Daily', '2 Days', 'If Needed'),
(9, 9, 7, '1 Capsule', 'Once Daily', '14 Days', 'Before Breakfast'),
(10, 10, 10, '1 Tablet', 'Twice Daily', '30 Days', 'After Meal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_appointment_patient` (`patient_id`),
  ADD KEY `fk_appointment_doctor` (`doctor_id`);

--
-- Indexes for table `appointmentlabtest`
--
ALTER TABLE `appointmentlabtest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`,`lab_test_id`),
  ADD KEY `lab_test_id` (`lab_test_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labtest`
--
ALTER TABLE `labtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `prescriptionmedicine`
--
ALTER TABLE `prescriptionmedicine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prescription_id` (`prescription_id`,`medicine_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointmentlabtest`
--
ALTER TABLE `appointmentlabtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `labtest`
--
ALTER TABLE `labtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescriptionmedicine`
--
ALTER TABLE `prescriptionmedicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `fk_appointment_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_appointment_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointmentlabtest`
--
ALTER TABLE `appointmentlabtest`
  ADD CONSTRAINT `appointmentlabtest_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointmentlabtest_ibfk_2` FOREIGN KEY (`lab_test_id`) REFERENCES `labtest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD CONSTRAINT `medicalrecord_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicalrecord_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescriptionmedicine`
--
ALTER TABLE `prescriptionmedicine`
  ADD CONSTRAINT `prescriptionmedicine_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prescriptionmedicine_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
