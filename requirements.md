# Medical Patient Management System Requirements

## Purpose

The Medical Patient Management System will manage information about patients, doctors, appointments, medical records, prescriptions, medications, bills, and departments.

## Entities

### PATIENT
- Patient_ID (Primary Key)
- First_Name
- Last_Name
- Date_of_Birth
- Phone
- Email
- Address

### DOCTOR
- Doctor_ID (Primary Key)
- First_Name
- Last_Name
- Specialty
- Phone
- Email

### APPOINTMENT
- Appointment_ID (Primary Key)
- Appointment_Date
- Appointment_Time
- Status
- Reason

### MEDICAL_RECORD
- Record_ID (Primary Key)
- Diagnosis
- Treatment
- Notes
- Record_Date

### PRESCRIPTION
- Prescription_ID (Primary Key)
- Dosage
- Frequency
- Start_Date
- End_Date

### MEDICATION
- Medication_ID (Primary Key)
- Medication_Name
- Description

### BILL
- Bill_ID (Primary Key)
- Amount
- Bill_Date
- Payment_Status

### DEPARTMENT
- Department_ID (Primary Key)
- Department_Name
- Location