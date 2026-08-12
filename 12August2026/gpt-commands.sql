CREATE DATABASE IF NOT EXISTS `ambulance_service`;

USE `ambulance_service`;

CREATE TABLE `Ambulance` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `vehicle_number` VARCHAR(50) NOT NULL,
    `driver_name` VARCHAR(100) NOT NULL,
    `ambulance_type` VARCHAR(50) NOT NULL,
    `status` ENUM('Available', 'Busy', 'Maintenance') NOT NULL DEFAULT 'Available',

    PRIMARY KEY (`id`),
    UNIQUE KEY `vehicle_number` (`vehicle_number`)
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


CREATE TABLE `EmergencyRequest` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `ambulance_id` INT(11) NOT NULL,
    `patient_name` VARCHAR(100) NOT NULL,
    `priority` ENUM('Low', 'Medium', 'High') NOT NULL DEFAULT 'Medium',
    `request_time` TIME NOT NULL,
    `status` ENUM('Pending', 'Dispatched', 'Completed') NOT NULL DEFAULT 'Pending',

    PRIMARY KEY (`id`),
    KEY `ambulance_id` (`ambulance_id`),

    CONSTRAINT `fk_emergencyrequest_ambulance`
        FOREIGN KEY (`ambulance_id`)
        REFERENCES `Ambulance` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


USE `ambulance_service`;

-- =========================
-- AMBULANCE DATA
-- =========================

INSERT INTO `Ambulance`
(`vehicle_number`, `driver_name`, `ambulance_type`, `status`)
VALUES
('AMB-1001', 'Ali Raza', 'Basic Life Support', 'Available'),
('AMB-1002', 'Ahmed Khan', 'Advanced Life Support', 'Busy'),
('AMB-1003', 'Usman Ali', 'Basic Life Support', 'Available'),
('AMB-1004', 'Bilal Ahmed', 'Patient Transport', 'Maintenance'),
('AMB-1005', 'Hamza Tariq', 'Advanced Life Support', 'Available'),
('AMB-1006', 'Imran Shah', 'Basic Life Support', 'Busy'),
('AMB-1007', 'Faisal Khan', 'Patient Transport', 'Available'),
('AMB-1008', 'Waqas Ahmed', 'Basic Life Support', 'Available'),
('AMB-1009', 'Zain Malik', 'Advanced Life Support', 'Busy'),
('AMB-1010', 'Hassan Raza', 'Basic Life Support', 'Available'),
('AMB-1011', 'Sohail Ahmed', 'Patient Transport', 'Maintenance'),
('AMB-1012', 'Kamran Ali', 'Advanced Life Support', 'Available');


-- =========================
-- EMERGENCY REQUEST DATA
-- =========================

INSERT INTO `EmergencyRequest`
(`ambulance_id`, `patient_name`, `priority`, `request_time`, `status`)
VALUES
(1, 'Ali Hassan', 'High', '08:05:00', 'Completed'),
(2, 'Sara Ahmed', 'Medium', '08:15:00', 'Dispatched'),
(3, 'Ahmed Raza', 'Low', '08:25:00', 'Completed'),
(4, 'Fatima Noor', 'High', '08:40:00', 'Pending'),
(5, 'Usman Tariq', 'Medium', '08:55:00', 'Completed'),
(6, 'Ayesha Khan', 'High', '09:10:00', 'Dispatched'),
(7, 'Bilal Ahmed', 'Low', '09:20:00', 'Completed'),
(8, 'Hina Raza', 'Medium', '09:35:00', 'Pending'),
(9, 'Hamza Ali', 'High', '09:50:00', 'Dispatched'),
(10, 'Maryam Khan', 'Low', '10:05:00', 'Completed'),

(11, 'Usman Ahmed', 'Medium', '10:15:00', 'Completed'),
(12, 'Sana Malik', 'High', '10:25:00', 'Pending'),
(1, 'Zubair Khan', 'Low', '10:35:00', 'Completed'),
(2, 'Nadia Ahmed', 'Medium', '10:45:00', 'Dispatched'),
(3, 'Asad Raza', 'High', '10:55:00', 'Completed'),
(4, 'Maha Noor', 'Medium', '11:05:00', 'Pending'),
(5, 'Danish Ali', 'Low', '11:15:00', 'Completed'),
(6, 'Iqra Khan', 'High', '11:25:00', 'Dispatched'),
(7, 'Fahad Ahmed', 'Medium', '11:35:00', 'Completed'),
(8, 'Laiba Raza', 'Low', '11:45:00', 'Pending'),

(9, 'Arham Khan', 'High', '12:00:00', 'Dispatched'),
(10, 'Aiman Ahmed', 'Medium', '12:10:00', 'Completed'),
(11, 'Rashid Ali', 'Low', '12:20:00', 'Completed'),
(12, 'Mehwish Khan', 'High', '12:30:00', 'Pending'),
(1, 'Salman Raza', 'Medium', '12:40:00', 'Dispatched'),
(2, 'Kiran Noor', 'Low', '12:50:00', 'Completed'),
(3, 'Shahid Ahmed', 'High', '13:00:00', 'Completed'),
(4, 'Sadia Khan', 'Medium', '13:10:00', 'Pending'),
(5, 'Noman Ali', 'Low', '13:20:00', 'Completed'),
(6, 'Rabia Ahmed', 'High', '13:30:00', 'Dispatched'),

(7, 'Taha Raza', 'Medium', '13:40:00', 'Completed'),
(8, 'Mariam Ali', 'Low', '13:50:00', 'Pending'),
(9, 'Junaid Khan', 'High', '14:00:00', 'Dispatched'),
(10, 'Anum Ahmed', 'Medium', '14:10:00', 'Completed'),
(11, 'Ibrahim Raza', 'Low', '14:20:00', 'Completed'),
(12, 'Saba Noor', 'High', '14:30:00', 'Pending'),
(1, 'Owais Khan', 'Medium', '14:40:00', 'Dispatched'),
(2, 'Komal Ahmed', 'Low', '14:50:00', 'Completed'),
(3, 'Rauf Ali', 'High', '15:00:00', 'Completed'),
(4, 'Alina Raza', 'Medium', '15:10:00', 'Pending'),

(5, 'Naveed Khan', 'Low', '15:20:00', 'Completed'),
(6, 'Bushra Ahmed', 'High', '15:30:00', 'Dispatched'),
(7, 'Sameer Ali', 'Medium', '15:40:00', 'Completed'),
(8, 'Areeba Khan', 'Low', '15:50:00', 'Pending'),
(9, 'Shahzaib Ahmed', 'High', '16:00:00', 'Dispatched'),
(10, 'Eman Raza', 'Medium', '16:10:00', 'Completed'),
(11, 'Adnan Khan', 'Low', '16:20:00', 'Completed'),
(12, 'Mahnoor Ali', 'High', '16:30:00', 'Pending'),
(1, 'Yasir Ahmed', 'Medium', '16:40:00', 'Dispatched'),
(2, 'Sania Khan', 'Low', '16:50:00', 'Completed'),

(3, 'Adeel Raza', 'High', '17:00:00', 'Completed'),
(4, 'Nimra Ahmed', 'Medium', '17:10:00', 'Pending'),
(5, 'Furqan Ali', 'Low', '17:20:00', 'Completed'),
(6, 'Madiha Khan', 'High', '17:30:00', 'Dispatched'),
(7, 'Talha Ahmed', 'Medium', '17:40:00', 'Completed'),
(8, 'Ayesha Raza', 'Low', '17:50:00', 'Pending'),
(9, 'Waleed Khan', 'High', '18:00:00', 'Dispatched'),
(10, 'Hoorain Ali', 'Medium', '18:10:00', 'Completed'),
(11, 'Muneeb Ahmed', 'Low', '18:20:00', 'Completed'),
(12, 'Sehrish Khan', 'High', '18:30:00', 'Pending'),

(1, 'Arslan Raza', 'Medium', '18:40:00', 'Dispatched'),
(2, 'Maham Ahmed', 'Low', '18:50:00', 'Completed'),
(3, 'Rizwan Ali', 'High', '19:00:00', 'Completed'),
(4, 'Khadija Khan', 'Medium', '19:10:00', 'Pending'),
(5, 'Dawood Ahmed', 'Low', '19:20:00', 'Completed'),
(6, 'Anaya Raza', 'High', '19:30:00', 'Dispatched'),
(7, 'Sami Khan', 'Medium', '19:40:00', 'Completed'),
(8, 'Hiba Ali', 'Low', '19:50:00', 'Pending'),
(9, 'Rameez Ahmed', 'High', '20:00:00', 'Dispatched'),
(10, 'Minahil Khan', 'Medium', '20:10:00', 'Completed'),

(11, 'Saad Raza', 'Low', '20:20:00', 'Completed'),
(12, 'Esha Ahmed', 'High', '20:30:00', 'Pending'),
(1, 'Faisal Ali', 'Medium', '20:40:00', 'Dispatched'),
(2, 'Naila Khan', 'Low', '20:50:00', 'Completed'),
(3, 'Zeeshan Ahmed', 'High', '21:00:00', 'Completed'),
(4, 'Arooba Raza', 'Medium', '21:10:00', 'Pending'),
(5, 'Noman Khan', 'Low', '21:20:00', 'Completed'),
(6, 'Alishba Ahmed', 'High', '21:30:00', 'Dispatched'),
(7, 'Sufyan Ali', 'Medium', '21:40:00', 'Completed'),
(8, 'Minsa Khan', 'Low', '21:50:00', 'Pending'),

(9, 'Haris Ahmed', 'High', '22:00:00', 'Dispatched'),
(10, 'Aqsa Raza', 'Medium', '22:10:00', 'Completed'),
(11, 'Shayan Khan', 'Low', '22:20:00', 'Completed'),
(12, 'Aleena Ahmed', 'High', '22:30:00', 'Pending'),
(1, 'Rehan Ali', 'Medium', '22:40:00', 'Dispatched'),
(2, 'Isha Khan', 'Low', '22:50:00', 'Completed'),
(3, 'Moiz Ahmed', 'High', '23:00:00', 'Completed'),
(4, 'Areej Raza', 'Medium', '23:10:00', 'Pending'),
(5, 'Rayan Khan', 'Low', '23:20:00', 'Completed'),
(6, 'Saira Ahmed', 'High', '23:30:00', 'Dispatched'),

(7, 'Azlan Ali', 'Medium', '23:40:00', 'Completed'),
(8, 'Zoya Khan', 'Low', '23:50:00', 'Pending'),
(9, 'Shahbaz Ahmed', 'High', '00:05:00', 'Dispatched'),
(10, 'Maham Raza', 'Medium', '00:15:00', 'Completed'),
(11, 'Irfan Khan', 'Low', '00:25:00', 'Completed'),
(12, 'Rida Ahmed', 'High', '00:35:00', 'Pending'),
(1, 'Nabeel Ali', 'Medium', '00:45:00', 'Dispatched'),
(2, 'Amina Khan', 'Low', '00:55:00', 'Completed'),
(3, 'Yousuf Ahmed', 'High', '01:05:00', 'Completed'),
(5, 'Hammad Raza', 'Medium', '01:15:00', 'Pending');