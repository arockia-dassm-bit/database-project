# Database Integrity Rules

The Clinic Appointment Database uses integrity constraints to maintain accurate, consistent, and reliable information.

## 1. Primary Keys (PRIMARY KEY)

- PATIENT: Patient_ID
- APPOINTMENT: Appointment_ID
- DOCTOR: Doctor_ID
- DEPARTMENT: Department_ID
- MEDICAL_RECORD: Record_ID
- PRESCRIPTION: Prescription_ID
- MEDICATION: Medication_ID
- BILL: Bill_ID

Each primary key uniquely identifies a record in its table.

## 2. Foreign Keys (FOREIGN KEY)

- APPOINTMENT.Patient_ID references PATIENT.Patient_ID.
- APPOINTMENT.Doctor_ID references DOCTOR.Doctor_ID.
- DOCTOR.Department_ID references DEPARTMENT.Department_ID.
- MEDICAL_RECORD.Patient_ID references PATIENT.Patient_ID.
- PRESCRIPTION.Record_ID references MEDICAL_RECORD.Record_ID.
- PRESCRIPTION.Medication_ID references MEDICATION.Medication_ID.
- BILL.Record_ID references MEDICAL_RECORD.Record_ID.

Foreign keys maintain relationships between related tables.

## 3. NOT NULL

The following fields should be required:

- All primary key columns.
- All PATIENT fields.
- APPOINTMENT.Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, and Status.
- DOCTOR.First_Name, Last_Name, and Department_ID.
- DEPARTMENT.Department_ID and Department_Name.
- MEDICAL_RECORD.Patient_ID and Record_Date.
- PRESCRIPTION.Record_ID, Medication_ID, Dosage, Frequency, and Start_Date.
- MEDICATION.Medication_Name.
- BILL.Record_ID, Amount, Bill_Date, and Payment_Status.

NOT NULL prevents required information from being left empty.
## 4. UNIQUE

- PATIENT.Email should be unique.
- DOCTOR.Email should be unique when provided.
- DEPARTMENT.Department_Name should be unique.
- MEDICATION.Medication_Name should be unique.

UNIQUE prevents duplicate values where duplicates are not appropriate.
## 5. CHECK

- BILL.Amount must be greater than or equal to zero.
- APPOINTMENT.Status must contain an allowed value, such as Scheduled, Completed, or Cancelled.
- PRESCRIPTION.End_Date must not be earlier than PRESCRIPTION.Start_Date.

CHECK constraints prevent invalid data from being entered.

## 6. DEFAULT Values

- APPOINTMENT.Status should default to 'Scheduled'.
- BILL.Payment_Status should default to 'Unpaid'.

Default values automatically provide information when no value is supplied.

## 7. Referential Actions

- Deleting a patient with medical records or appointments should be restricted.
- Deleting a doctor with appointments should be restricted.
- Deleting a department assigned to doctors should be restricted.
- Deleting a medication referenced by prescriptions should be restricted.
- Deleting a medical record with prescriptions or bills should be restricted.

These rules protect related records from accidental deletion.
