USE clinic_appointment;

-- Insert departments
INSERT INTO DEPARTMENT (Department_ID, Department_Name, Location)
VALUES
(1, 'Cardiology', 'Building A'),
(2, 'Pediatrics', 'Building B'),
(3, 'Neurology', 'Building C');

-- Insert patients
INSERT INTO PATIENT
(Patient_ID, First_Name, Last_Name, Date_of_Birth, Phone, Email, Address)
VALUES
(1, 'John', 'Smith', '1990-05-15', '202-555-0101', 'john.smith@email.com', 'Washington DC'),
(2, 'Mary', 'Johnson', '1985-08-20', '202-555-0102', 'mary.johnson@email.com', 'Arlington VA'),
(3, 'David', 'Brown', '2000-02-10', '202-555-0103', 'david.brown@email.com', 'Alexandria VA');

-- Insert doctors
INSERT INTO DOCTOR
(Doctor_ID, First_Name, Last_Name, Specialty, Phone, Email, Department_ID)
VALUES
(1, 'Emily', 'Wilson', 'Heart Specialist', '202-555-0201', 'emily.wilson@clinic.com', 1),
(2, 'James', 'Taylor', 'Child Specialist', '202-555-0202', 'james.taylor@clinic.com', 2),
(3, 'Sarah', 'Davis', 'Brain Specialist', '202-555-0203', 'sarah.davis@clinic.com', 3);

-- Insert medications
INSERT INTO MEDICATION (Medication_ID, Medication_Name, Description)
VALUES
(1, 'Paracetamol', 'Pain relief medication'),
(2, 'Amoxicillin', 'Antibiotic medication'),
(3, 'Ibuprofen', 'Pain and inflammation relief');

-- Insert appointments
INSERT INTO APPOINTMENT
(Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Appointment_Time, Status, Reason)
VALUES
(1, 1, 1, '2026-11-12', '09:00:00', 'Scheduled', 'Heart checkup'),
(2, 2, 2, '2026-11-13', '10:30:00', 'Scheduled', 'Child health checkup'),
(3, 3, 3, '2026-11-14', '14:00:00', 'Completed', 'Headache consultation');

-- Insert medical records
INSERT INTO MEDICAL_RECORD
(Record_ID, Patient_ID, Diagnosis, Treatment, Notes, Record_Date)
VALUES
(1, 1, 'High blood pressure', 'Regular monitoring', 'Follow-up recommended', '2026-11-12'),
(2, 2, 'Common cold', 'Rest and fluids', 'Symptoms improving', '2026-11-13'),
(3, 3, 'Migraine', 'Medication prescribed', 'Follow-up in two weeks', '2026-11-14');

-- Insert prescriptions
INSERT INTO PRESCRIPTION
(Prescription_ID, Record_ID, Medication_ID, Dosage, Frequency, Start_Date, End_Date)
VALUES
(1, 1, 3, '200 mg', 'Twice daily', '2026-11-12', '2026-11-19'),
(2, 2, 1, '500 mg', 'As needed', '2026-11-13', '2026-11-17'),
(3, 3, 3, '200 mg', 'Once daily', '2026-11-14', '2026-11-21');

-- Insert bills
INSERT INTO BILL (Bill_ID, Record_ID, Amount, Bill_Date, Payment_Status)
VALUES
(1, 1, 150.00, '2026-11-12', 'Paid'),
(2, 2, 75.00, '2026-11-13', 'Pending'),
(3, 3, 200.00, '2026-11-14', 'Paid');
