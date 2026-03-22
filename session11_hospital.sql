DROP DATABASE IF EXISTS Hospital_DB;
CREATE DATABASE Hospital_DB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE Hospital_DB;

DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    full_name VARCHAR(150) NULL
);

INSERT INTO Patients (name, full_name) VALUES
('A', 'Nguyen Van A'),
('B', 'Tran Thi B'),
('C', 'Le Van C');

DROP TABLE IF EXISTS Medicines;
CREATE TABLE Medicines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    UNIQUE KEY uk_medicines_name (name)
);

INSERT INTO Medicines (name, quantity) VALUES
('Paracetamol', 100),
('Aspirin', 50),
('Vitamin C', 200);

DROP TABLE IF EXISTS Beds;
CREATE TABLE Beds (
    bed_id VARCHAR(50) PRIMARY KEY,
    bed_status VARCHAR(100) NOT NULL
);

INSERT INTO Beds (bed_id, bed_status) VALUES
('Bed_001', 'Trống'),
('Bed_002', 'Trống'),
('Bed_003', 'Đang sử dụng');

DROP DATABASE IF EXISTS hospital_db;
CREATE DATABASE hospital_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE hospital_db;

DROP TABLE IF EXISTS doctors;
CREATE TABLE doctors (
    doctor_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    specialty VARCHAR(150) NOT NULL
);

INSERT INTO doctors (doctor_id, name, specialty) VALUES
('D001', 'Dr. A', 'Cardiology'),
('D002', 'Dr. B', 'Pediatrics'),
('D003', 'Dr. C', 'Cardiology');

DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NULL,
    full_name VARCHAR(150) NOT NULL
);

INSERT INTO Patients (name, full_name) VALUES
('A', 'Nguyen Van A'),
('B', 'Tran Thi B'),
('C', 'Le Van C');

DROP DATABASE IF EXISTS MedicalAppointmentDB;
CREATE DATABASE MedicalAppointmentDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE MedicalAppointmentDB;

DROP TABLE IF EXISTS appointments;
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(150) NOT NULL,
    appointment_date DATE NOT NULL,
    doctor_name VARCHAR(150) NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Scheduled'
);

INSERT INTO appointments (patient_name, appointment_date, doctor_name, status) VALUES
('Nguyen Van A', '2026-03-25', 'Dr. B', 'Scheduled'),
('Tran Thi B', '2026-03-26', 'Dr. C', 'Scheduled');
