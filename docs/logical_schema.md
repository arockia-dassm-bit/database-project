# Clinic Appointment Database — Logical Schema

## 1. PATIENT

| Column | MySQL Data Type | Key |
|---|---|---|
| Patient_ID | INT | PK |
| First_Name | VARCHAR(100) | |
| Last_Name | VARCHAR(100) | |
| Date_of_Birth | DATE | |
| Phone | VARCHAR(20) | |
| Email | VARCHAR(255) | |
| Address | VARCHAR(255) | |

## 2. APPOINTMENT

| Column | MySQL Data Type | Key |
|---|---|---|
| Appointment_ID | INT | PK |
| Patient_ID | INT | FK |
| Doctor_ID | INT | FK |
| Appointment_Date | DATE | |
| Appointment_Time | TIME | |
| Status | VARCHAR(20) | |
| Reason | VARCHAR(255) | |

## 3. DOCTOR

| Column | MySQL Data Type | Key |
|---|---|---|
| Doctor_ID | INT | PK |
| First_Name | VARCHAR(100) | |
| Last_Name | VARCHAR(100) | |
| Specialty | VARCHAR(100) | |
| Phone | VARCHAR(20) | |
| Email | VARCHAR(255) | |
| Department_ID | INT | FK |

## 4. DEPARTMENT

| Column | MySQL Data Type | Key |
|---|---|---|
| Department_ID | INT | PK |
| Department_Name | VARCHAR(100) | |
| Location | VARCHAR(255) | |

## 5. MEDICAL_RECORD

| Column | MySQL Data Type | Key |
|---|---|---|
| Record_ID | INT | PK |
| Patient_ID | INT | FK |
| Diagnosis | TEXT | |
| Treatment | TEXT | |
| Notes | TEXT | |
| Record_Date | DATE | |

## 6. PRESCRIPTION

| Column | MySQL Data Type | Key |
|---|---|---|
| Prescription_ID | INT | PK |
| Record_ID | INT | FK |
| Medication_ID | INT | FK |
| Dosage | VARCHAR(100) | |
| Frequency | VARCHAR(100) | |
| Start_Date | DATE | |
| End_Date | DATE | |

## 7. MEDICATION

| Column | MySQL Data Type | Key |
|---|---|---|
| Medication_ID | INT | PK |
| Medication_Name | VARCHAR(100) | |
| Description | TEXT | |

## 8. BILL

| Column | MySQL Data Type | Key |
|---|---|---|
| Bill_ID | INT | PK |
| Record_ID | INT | FK |
| Amount | DECIMAL(10,2) | |
| Bill_Date | DATE | |
| Payment_Status | VARCHAR(20) | |

## Table Relationships

1. PATIENT to APPOINTMENT: One-to-many (1:N).
2. DOCTOR to APPOINTMENT: One-to-many (1:N).
3. DEPARTMENT to DOCTOR: One-to-many (1:N).
4. PATIENT to MEDICAL_RECORD: One-to-many (1:N).
5. MEDICAL_RECORD to PRESCRIPTION: One-to-many (1:N).
6. MEDICATION to PRESCRIPTION: One-to-many (1:N).
7. MEDICAL_RECORD to BILL: One-to-many (1:N).
