-- For database hospital_a_db:

-- 1. Departments Table:

CREATE TABLE departments (
    DeptID varchar(50) NOT NULL,
    Name varchar(50) NOT NULL,
    CONSTRAINT PK_departments PRIMARY KEY (DeptID)
);

-- 2. Encounters Table:

CREATE TABLE encounters (
    EncounterID varchar(50) NOT NULL,
    PatientID varchar(50) NOT NULL,
    EncounterDate date NOT NULL,
    EncounterType varchar(50) NOT NULL,
    ProviderID varchar(50) NOT NULL,
    DepartmentID varchar(50) NOT NULL,
    ProcedureCode int NOT NULL,
    InsertedDate date NOT NULL,
    ModifiedDate date NOT NULL,
    CONSTRAINT PK_encounters PRIMARY KEY (EncounterID)
);

-- 3. Hospital1_Patient_Data Table:

CREATE TABLE patients (
    PatientID varchar(50) NOT NULL,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    MiddleName varchar(50) NOT NULL,
    SSN varchar(50) NOT NULL,
    PhoneNumber varchar(50) NOT NULL,
    Gender varchar(50) NOT NULL,
    DOB date NOT NULL,
    Address varchar(100) NOT NULL,
    ModifiedDate date NOT NULL,
    CONSTRAINT PK_hospital1_patient_data PRIMARY KEY (PatientID)
);

-- 4. Providers Table:

CREATE TABLE providers (
    ProviderID varchar(50) NOT NULL,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Specialization varchar(50) NOT NULL,
    DeptID varchar(50) NOT NULL,
    NPI bigint NOT NULL,
    CONSTRAINT PK_providers PRIMARY KEY (ProviderID)
);

-- 5. Transactions Table:

CREATE TABLE transactions (
    TransactionID varchar(50) NOT NULL,
    EncounterID varchar(50) NOT NULL,
    PatientID varchar(50) NOT NULL,
    ProviderID varchar(50) NOT NULL,
    DeptID varchar(50) NOT NULL,
    VisitDate date NOT NULL,
    ServiceDate date NOT NULL,
    PaidDate date NOT NULL,
    VisitType varchar(50) NOT NULL,
    Amount float NOT NULL,
    AmountType varchar(50) NOT NULL,
    PaidAmount float NOT NULL,
    ClaimID varchar(50) NOT NULL,
    PayorID varchar(50) NOT NULL,
    ProcedureCode int NOT NULL,
    ICDCode varchar(50) NOT NULL,
    LineOfBusiness varchar(50) NOT NULL,
    MedicaidID varchar(50) NOT NULL,
    MedicareID varchar(50) NOT NULL,
    InsertDate date NOT NULL,
    ModifiedDate date NOT NULL,
    CONSTRAINT PK_transactions PRIMARY KEY (TransactionID)
);



