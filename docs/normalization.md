# Database Normalization

The Clinic Appointment Database was designed using First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF) to reduce data redundancy and improve data integrity.

## First Normal Form (1NF)

All tables contain atomic values, meaning each column stores one value per record. There are no repeating groups or multiple values stored in a single column. Each table has a primary key to identify individual records.

## Second Normal Form (2NF)

The database satisfies 2NF because it is in 1NF and all non-key attributes depend on the entire primary key. Each table uses a single-column primary key, so there are no partial dependencies.

## Third Normal Form (3NF)

The database is designed to satisfy 3NF because non-key attributes depend on their table's primary key and not on other non-key attributes.

For example:
- Department information is stored separately in the DEPARTMENT table.
- Medication information is stored separately in the MEDICATION table.
- Prescription information connects medical records and medications.
- Patient and doctor information are stored separately from appointments.

## Changes Made During Normalization

- Created separate tables for PATIENT and DOCTOR to avoid repeating personal information.
- Created a DEPARTMENT table to organize department information separately.
- Created a MEDICAL_RECORD table to store patient medical information.
- Created separate MEDICATION and PRESCRIPTION tables to organize medication information.
- Created a BILL table to separate billing information from medical records.
- Used primary keys and foreign keys to connect related tables.

These changes help reduce unnecessary duplication and make the database easier to maintain.
