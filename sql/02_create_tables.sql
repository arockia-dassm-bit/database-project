
USE clinic_appointment;

CREATE TABLE PATIENT (
    Patient_ID INT NOT NULL,
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    Date_of_Birth DATE NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Address VARCHAR(255) NOT NULL,
    PRIMARY KEY (Patient_ID)
);

CREATE TABLE APPOINTMENT (
    Appointment_ID INT NOT NULL,
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    Appointment_Date DATE NOT NULL,
    Appointment_Time TIME NOT NULL,
    Status VARCHAR(20) NOT NULL,
    Reason VARCHAR(255),
    PRIMARY KEY (Appointment_ID)
);

CREATE TABLE DOCTOR (
    Doctor_ID INT NOT NULL,
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(255) UNIQUE,
    Department_ID INT NOT NULL,
    PRIMARY KEY (Doctor_ID)
);

CREATE TABLE DEPARTMENT (
    Department_ID INT NOT NULL,
    Department_Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(255),
    PRIMARY KEY (Department_ID)
);

CREATE TABLE MEDICAL_RECORD (
    Record_ID INT NOT NULL,
    Patient_ID INT NOT NULL,
    Diagnosis TEXT,
    Treatment TEXT,
    Notes TEXT,
    Record_Date DATE NOT NULL,
    PRIMARY KEY (Record_ID)
);

CREATE TABLE PRESCRIPTION (
    Prescription_ID INT NOT NULL,
    Record_ID INT NOT NULL,
    Medication_ID INT NOT NULL,
    Dosage VARCHAR(100) NOT NULL,
    Frequency VARCHAR(100) NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE,
    PRIMARY KEY (Prescription_ID)
);

CREATE TABLE MEDICATION (
    Medication_ID INT NOT NULL,
    Medication_Name VARCHAR(100) NOT NULL UNIQUE,
    Description TEXT,
    PRIMARY KEY (Medication_ID)
);

CREATE TABLE BILL (
    Bill_ID INT NOT NULL,
    Record_ID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Bill_Date DATE NOT NULL,
    Payment_Status VARCHAR(20) NOT NULL,
    PRIMARY KEY (Bill_ID)
);
