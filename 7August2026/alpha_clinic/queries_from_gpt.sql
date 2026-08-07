-- ===========================
-- 1. Patient
-- ===========================
CREATE TABLE Patient (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    gender ENUM('Male','Female','Other'),
    dob DATE,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    blood_group VARCHAR(10)
);

-- ===========================
-- 2. Doctor
-- ===========================
CREATE TABLE Doctor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    consultation_fee DECIMAL(10,2)
);

-- ===========================
-- 3. Appointment
-- ===========================
CREATE TABLE Appointment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status ENUM('Pending','Completed','Cancelled') DEFAULT 'Pending',
    remarks TEXT,

    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (patient_id)
        REFERENCES Patient(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_appointment_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES Doctor(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ===========================
-- 4. LabTest
-- ===========================
CREATE TABLE LabTest (
    id INT PRIMARY KEY AUTO_INCREMENT,
    test_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT
);

-- ===========================
-- 5. AppointmentLabTest
-- ===========================
CREATE TABLE AppointmentLabTest (
    id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL,
    lab_test_id INT NOT NULL,
    result TEXT,
    status ENUM('Pending','Completed') DEFAULT 'Pending',

    FOREIGN KEY (appointment_id)
        REFERENCES Appointment(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (lab_test_id)
        REFERENCES LabTest(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    UNIQUE (appointment_id, lab_test_id)
);

-- ===========================
-- 6. Medicine
-- ===========================
CREATE TABLE Medicine (
    id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(100) NOT NULL,
    strength VARCHAR(50),
    price DECIMAL(10,2),
    stock INT DEFAULT 0
);

-- ===========================
-- 7. Prescription
-- ===========================
CREATE TABLE Prescription (
    id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL UNIQUE,
    notes TEXT,

    FOREIGN KEY (appointment_id)
        REFERENCES Appointment(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ===========================
-- 8. PrescriptionMedicine
-- ===========================
CREATE TABLE PrescriptionMedicine (
    id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_id INT NOT NULL,
    medicine_id INT NOT NULL,
    dosage VARCHAR(50),
    frequency VARCHAR(100),
    duration VARCHAR(100),
    instructions TEXT,

    FOREIGN KEY (prescription_id)
        REFERENCES Prescription(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (medicine_id)
        REFERENCES Medicine(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    UNIQUE (prescription_id, medicine_id)
);

-- ===========================
-- 9. MedicalRecord
-- ===========================
CREATE TABLE MedicalRecord (
    id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    appointment_id INT,
    diagnosis TEXT,
    allergies TEXT,
    medical_history TEXT,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (patient_id)
        REFERENCES Patient(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (appointment_id)
        REFERENCES Appointment(id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

-- ===========================
-- 10. Bill
-- ===========================
CREATE TABLE Bill (
    id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL UNIQUE,
    doctor_fee DECIMAL(10,2) DEFAULT 0,
    lab_total DECIMAL(10,2) DEFAULT 0,
    medicine_total DECIMAL(10,2) DEFAULT 0,
    discount DECIMAL(10,2) DEFAULT 0,
    tax DECIMAL(10,2) DEFAULT 0,
    grand_total DECIMAL(10,2) NOT NULL,
    payment_status ENUM('Unpaid','Paid') DEFAULT 'Unpaid',
    payment_date DATE,

    FOREIGN KEY (appointment_id)
        REFERENCES Appointment(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- ==========================================
-- PATIENT (5 Records)
-- ==========================================
INSERT INTO Patient (id, name, gender, dob, phone, email, address, blood_group) VALUES
(1,'Ali Khan','Male','1998-05-10','03001234567','ali@gmail.com','Lahore','A+'),
(2,'Sara Ahmed','Female','1995-03-18','03111234567','sara@gmail.com','Karachi','B+'),
(3,'Ahmed Raza','Male','2000-09-22','03221234567','ahmed@gmail.com','Islamabad','O+'),
(4,'Fatima Noor','Female','1992-01-15','03331234567','fatima@gmail.com','Multan','AB+'),
(5,'Usman Tariq','Male','1997-11-08','03441234567','usman@gmail.com','Faisalabad','A-');

-- ==========================================
-- DOCTOR (5 Records)
-- ==========================================
INSERT INTO Doctor (id, name, specialization, phone, email, consultation_fee) VALUES
(1,'Dr. Hassan','Cardiologist','03001111111','hassan@clinic.com',2500),
(2,'Dr. Ayesha','Dermatologist','03002222222','ayesha@clinic.com',2000),
(3,'Dr. Bilal','Orthopedic','03003333333','bilal@clinic.com',2200),
(4,'Dr. Sana','Pediatrician','03004444444','sana@clinic.com',1800),
(5,'Dr. Imran','General Physician','03005555555','imran@clinic.com',1500);

-- ==========================================
-- APPOINTMENT (10 Records)
-- ==========================================
INSERT INTO Appointment (id, patient_id, doctor_id, appointment_date, appointment_time, status, remarks) VALUES
(1,1,5,'2026-08-01','10:00:00','Completed','Fever'),
(2,2,2,'2026-08-01','11:00:00','Completed','Skin allergy'),
(3,3,1,'2026-08-02','09:30:00','Completed','Chest pain'),
(4,4,4,'2026-08-02','12:00:00','Completed','Child vaccination'),
(5,5,3,'2026-08-03','01:00:00','Completed','Leg fracture'),
(6,1,2,'2026-08-04','03:00:00','Pending','Skin rash'),
(7,2,5,'2026-08-04','04:00:00','Completed','Headache'),
(8,3,3,'2026-08-05','09:00:00','Cancelled','Follow up'),
(9,4,1,'2026-08-05','10:30:00','Completed','Heart checkup'),
(10,5,5,'2026-08-06','11:30:00','Pending','General checkup');

-- ==========================================
-- LAB TEST (5 Records)
-- ==========================================
INSERT INTO LabTest (id, test_name, price, description) VALUES
(1,'Blood Test',1200,'CBC'),
(2,'Urine Test',800,'Urine Analysis'),
(3,'X-Ray',2500,'Chest X-Ray'),
(4,'ECG',1800,'Heart ECG'),
(5,'MRI',8500,'Brain MRI');

-- ==========================================
-- APPOINTMENT LAB TEST (8 Records)
-- ==========================================
INSERT INTO AppointmentLabTest (id, appointment_id, lab_test_id, result, status) VALUES
(1,1,1,'Normal','Completed'),
(2,2,2,'Infection Found','Completed'),
(3,3,4,'Normal','Completed'),
(4,4,1,'Normal','Completed'),
(5,5,3,'Minor Crack','Completed'),
(6,6,2,NULL,'Pending'),
(7,9,4,'Normal','Completed'),
(8,10,1,NULL,'Pending');

-- ==========================================
-- MEDICINE (10 Records)
-- ==========================================
INSERT INTO Medicine (id, medicine_name, strength, price, stock) VALUES
(1,'Panadol','500mg',50,500),
(2,'Augmentin','625mg',180,200),
(3,'Brufen','400mg',70,300),
(4,'Disprin','300mg',40,250),
(5,'Cetirizine','10mg',30,400),
(6,'Paracetamol','500mg',25,600),
(7,'Omeprazole','20mg',60,200),
(8,'Amoxicillin','500mg',120,150),
(9,'Vitamin C','500mg',35,350),
(10,'Metformin','500mg',90,180);

-- ==========================================
-- PRESCRIPTION (10 Records)
-- ==========================================
INSERT INTO Prescription (id, appointment_id, notes) VALUES
(1,1,'Take medicine after meal'),
(2,2,'Drink plenty of water'),
(3,3,'Avoid oily food'),
(4,4,'Complete full course'),
(5,5,'Rest for one week'),
(6,6,'Review after 3 days'),
(7,7,'Take before sleep'),
(8,8,'No prescription'),
(9,9,'Exercise regularly'),
(10,10,'Follow up next week');

-- ==========================================
-- PRESCRIPTION MEDICINE (10 Records)
-- ==========================================
INSERT INTO PrescriptionMedicine (id, prescription_id, medicine_id, dosage, frequency, duration, instructions) VALUES
(1,1,1,'1 Tablet','Twice Daily','5 Days','After Meal'),
(2,2,5,'1 Tablet','Once Daily','7 Days','Night'),
(3,3,2,'1 Tablet','Twice Daily','5 Days','After Meal'),
(4,4,9,'1 Tablet','Once Daily','30 Days','Morning'),
(5,5,3,'1 Tablet','Three Times','7 Days','After Meal'),
(6,6,8,'1 Capsule','Twice Daily','5 Days','Before Meal'),
(7,7,6,'1 Tablet','Three Times','3 Days','After Meal'),
(8,8,4,'1 Tablet','Once Daily','2 Days','If Needed'),
(9,9,7,'1 Capsule','Once Daily','14 Days','Before Breakfast'),
(10,10,10,'1 Tablet','Twice Daily','30 Days','After Meal');

-- ==========================================
-- MEDICAL RECORD (5 Records)
-- ==========================================
INSERT INTO MedicalRecord (id, patient_id, appointment_id, diagnosis, allergies, medical_history, notes, created_at) VALUES
(1,1,1,'Viral Fever','None','Healthy','Recovered','2026-08-01 11:00:00'),
(2,2,2,'Skin Allergy','Dust','Asthma','Medication Started','2026-08-01 12:00:00'),
(3,3,3,'Chest Pain','None','Hypertension','ECG Recommended','2026-08-02 10:30:00'),
(4,4,4,'Routine Vaccination','None','Healthy','Vaccinated','2026-08-02 01:00:00'),
(5,5,5,'Leg Fracture','None','None','Plaster Applied','2026-08-03 02:00:00');

-- ==========================================
-- BILL (10 Records)
-- ==========================================
INSERT INTO Bill (id, appointment_id, doctor_fee, lab_total, medicine_total, discount, tax, grand_total, payment_status, payment_date) VALUES
(1,1,1500,1200,100,100,50,2750,'Paid','2026-08-01'),
(2,2,2000,800,30,0,100,2930,'Paid','2026-08-01'),
(3,3,2500,1800,180,200,150,4430,'Paid','2026-08-02'),
(4,4,1800,1200,35,0,90,3125,'Paid','2026-08-02'),
(5,5,2200,2500,70,100,150,4820,'Paid','2026-08-03'),
(6,6,2000,800,120,0,100,3020,'Unpaid',NULL),
(7,7,1500,0,25,0,75,1600,'Paid','2026-08-04'),
(8,8,2200,0,40,0,110,2350,'Unpaid',NULL),
(9,9,2500,1800,60,200,150,4310,'Paid','2026-08-05'),
(10,10,1500,1200,90,100,75,2765,'Unpaid',NULL);