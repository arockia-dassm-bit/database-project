# Clinic Appointment Database — Data Dictionary

| Table | Column | Type | Key | NULL | Description |
|---|---|---|---|---|---|
| PATIENT | Patient_ID | INT | PK | No | Unique patient identifier |
| PATIENT | First_Name | VARCHAR(100) | | No | Patient's first name |
| PATIENT | Last_Name | VARCHAR(100) | | No | Patient's last name |
| PATIENT | Date_of_Birth | DATE | | No | Patient's date of birth |
| PATIENT | Phone | VARCHAR(20) | | No | Patient's phone number |
| PATIENT | Email | VARCHAR(255) | UNIQUE | No | Patient's email address |
| PATIENT | Address | VARCHAR(255) | | No | Patient's address |
| APPOINTMENT | Appointment_ID | INT | PK | No | Unique appointment identifier |
| APPOINTMENT | Patient_ID | INT | FK | No | Patient for the appointment |
| APPOINTMENT | Doctor_ID | INT | FK | No | Doctor assigned to the appointment |
| APPOINTMENT | Appointment_Date | DATE | | No | Appointment date |
| APPOINTMENT | Appointment_Time | TIME | | No | Appointment time |
| APPOINTMENT | Status | VARCHAR(20) | | No | Appointment status |
| APPOINTMENT | Reason | VARCHAR(255) | | Yes | Reason for the appointment |
| DOCTOR | Doctor_ID | INT | PK | No | Unique doctor identifier |
| DOCTOR | First_Name | VARCHAR(100) | | No | Doctor's first name |
| DOCTOR | Last_Name | VARCHAR(100) | | No | Doctor's last name |
| DOCTOR | Specialty | VARCHAR(100) | | Yes | Doctor's medical specialty |
| DOCTOR | Phone | VARCHAR(20) | | Yes | Doctor's phone number |
| DOCTOR | Email | VARCHAR(255) | UNIQUE | Yes | Doctor's email address |
| DOCTOR | Department_ID | INT | FK | No | Department assigned to doctor |
| DEPARTMENT | Department_ID | INT | PK | No | Unique department identifier |
| DEPARTMENT | Department_Name | VARCHAR(100) | UNIQUE | No | Department name |
| DEPARTMENT | Location | VARCHAR(255) | | Yes | Department location |
| MEDICAL_RECORD | Record_ID | INT | PK | No | Unique medical record identifier |
| MEDICAL_RECORD | Patient_ID | INT | FK | No | Patient associated with the record |
| MEDICAL_RECORD | Diagnosis | TEXT | | Yes | Patient diagnosis |
| MEDICAL_RECORD | Treatment | TEXT | | Yes | Treatment details |
| MEDICAL_RECORD | Notes | TEXT | | Yes | Additional medical notes |
| MEDICAL_RECORD | Record_Date | DATE | | No | Date of the medical record |
| PRESCRIPTION | Prescription_ID | INT | PK | No | Unique prescription identifier |
| PRESCRIPTION | Record_ID | INT | FK | No | Related medical record |
| PRESCRIPTION | Medication_ID | INT | FK | No | Related medication |
| PRESCRIPTION | Dosage | VARCHAR(100) | | No | Medication dosage |
| PRESCRIPTION | Frequency | VARCHAR(100) | | No | How often the medication should be taken |
| PRESCRIPTION | Start_Date | DATE | | No | Date the medication starts |
| PRESCRIPTION | End_Date | DATE | | Yes | Date the medication ends |
| MEDICATION | Medication_ID | INT | PK | No | Unique medication identifier |
| MEDICATION | Medication_Name | VARCHAR(100) | UNIQUE | No | Name of the medication |
| MEDICATION | Description | TEXT | | Yes | Description of the medication |
| BILL | Bill_ID | INT | PK | No | Unique bill identifier |
| BILL | Record_ID | INT | FK | No | Medical record associated with the bill |
| BILL | Amount | DECIMAL(10,2) | | No | Total bill amount |
| BILL | Bill_Date | DATE | | No | Date the bill was created |
| BILL | Payment_Status | VARCHAR(20) | | No | Current payment status |

## Key Definitions

- PK (Primary Key): Uniquely identifies each record in a table.
- FK (Foreign Key): Connects a table to another table.
- UNIQUE: Prevents duplicate values in a column.
- NULL – No: The field is required.
- NULL – Yes: The field can be left empty.
