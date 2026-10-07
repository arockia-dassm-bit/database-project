# Business Rules

## Patient and Appointment

- A PATIENT may have zero or many APPOINTMENTS.
- Every APPOINTMENT must belong to exactly one PATIENT.

## Doctor and Appointment

- A DOCTOR may have zero or many APPOINTMENTS.
- Every APPOINTMENT must be assigned to exactly one DOCTOR.

## Patient and Medical Record

- A PATIENT may have zero or many MEDICAL_RECORDS.
- Every MEDICAL_RECORD must belong to exactly one PATIENT.

## Medical Record and Prescription

- A MEDICAL_RECORD may have zero or many PRESCRIPTIONS.
- Every PRESCRIPTION must belong to exactly one MEDICAL_RECORD.

## Prescription and Medication

- A MEDICATION may be included in zero or many PRESCRIPTIONS.
- Every PRESCRIPTION must reference exactly one MEDICATION.

## Doctor and Department

- A DEPARTMENT may have zero or many DOCTORS.
- Every DOCTOR must belong to exactly one DEPARTMENT.

## Patient and Bill

- A PATIENT may have zero or many BILLS.
- Every BILL must belong to exactly one PATIENT.