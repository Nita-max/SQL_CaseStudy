CREATE DATABASE hospital_db;
USE hospital_db;

---------------------------------------------------------
-- PATIENT TABLE
---------------------------------------------------------
CREATE TABLE Patient (
    patientID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(20),
    contactInfo VARCHAR(100),
    insurance VARCHAR(100)
);

INSERT INTO Patient (name, dob, gender, contactInfo, insurance) VALUES
("Amit Sharma","1990-05-10","Male","9876543210","HDFC"),
("Riya Patil","1995-02-18","Female","9823456781","ICICI"),
("Suresh Kumar","1988-08-22","Male","9988776655","Star Health"),
("Priya Singh","1999-11-01","Female","9123456678","Reliance"),
("Vikram Deshmukh","1985-12-12","Male","9876501234","Tata AIG"),
("Neha Joshi","1993-04-15","Female","9090909090","HDFC"),
("Arjun Mehta","1997-07-07","Male","9456123789","ICICI"),
("Meena Kumari","1980-03-30","Female","9988123490","Star Health"),
("Rahul Verma","2000-09-19","Male","9234567812","Reliance"),
("Sneha Kulkarni","1992-01-25","Female","9876123400","Tata AIG");

---------------------------------------------------------
-- DOCTOR TABLE
---------------------------------------------------------
CREATE TABLE Doctor (
    doctorID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100),
    contactInfo VARCHAR(100)
);

INSERT INTO Doctor (name, specialty, contactInfo) VALUES
("Dr. A Sharma","Cardiologist","9000000001"),
("Dr. R Mehta","Dermatologist","9000000002"),
("Dr. S Iyer","Neurologist","9000000003"),
("Dr. V Patil","Orthopedic","9000000004"),
("Dr. K Gupta","Pediatrician","9000000005"),
("Dr. T Desai","ENT","9000000006"),
("Dr. N Khan","Gynecologist","9000000007"),
("Dr. M Joshi","Dentist","9000000008"),
("Dr. P Yadav","Psychiatrist","9000000009"),
("Dr. R Kulkarni","General Physician","9000000010");

---------------------------------------------------------
-- MEDICAL HISTORY TABLE
---------------------------------------------------------
CREATE TABLE MedicalHistory (
    historyID INT AUTO_INCREMENT PRIMARY KEY,
    patientID INT,
    diagnosis VARCHAR(255),
    allergies VARCHAR(255),
    date DATE,
    FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

INSERT INTO MedicalHistory (patientID, diagnosis, allergies, date) VALUES
(1,"High BP","None","2025-01-01"),
(2,"Migraine","Dust","2025-01-02"),
(3,"Skin Allergy","Pollen","2025-01-03"),
(4,"Viral Fever","None","2025-01-04"),
(5,"Spine Issue","Cold Allergy","2025-01-05"),
(6,"Heart Checkup","None","2025-01-06"),
(7,"Pregnancy","Medicine Allergy","2025-01-07"),
(8,"Dental Cavity","None","2025-01-08"),
(9,"Flu","Cold","2025-01-09"),
(10,"Ear Infection","None","2025-01-10");

---------------------------------------------------------
-- ENCOUNTER TABLE
---------------------------------------------------------
CREATE TABLE Encounter (
    encounterID INT AUTO_INCREMENT PRIMARY KEY,
    patientID INT,
    date DATE,
    admissionDetails VARCHAR(255),
    appointmentDetails VARCHAR(255),
    FOREIGN KEY (patientID) REFERENCES Patient(patientID)
);

INSERT INTO Encounter (patientID, date, admissionDetails, appointmentDetails) VALUES
(1,"2025-01-01","Admitted for BP","Routine Check"),
(2,"2025-01-02","Not admitted","Headache Check"),
(3,"2025-01-03","Not admitted","Allergy Check"),
(4,"2025-01-04","Admitted for fever","Pediatric Visit"),
(5,"2025-01-05","Admitted for back pain","Ortho Visit"),
(6,"2025-01-06","Not admitted","Cardio Visit"),
(7,"2025-01-07","Admitted","Pregnancy Check"),
(8,"2025-01-08","Not admitted","Dental Cleaning"),
(9,"2025-01-09","Admitted","Flu Treatment"),
(10,"2025-01-10","Not admitted","ENT Visit");

---------------------------------------------------------
-- PROCEDURE RECORD TABLE
---------------------------------------------------------
CREATE TABLE ProcedureRecord (
    procedureID INT AUTO_INCREMENT PRIMARY KEY,
    patientID INT,
    doctorID INT,
    procedureType VARCHAR(100),
    date DATE,
    FOREIGN KEY (patientID) REFERENCES Patient(patientID),
    FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID)
);

INSERT INTO ProcedureRecord (patientID, doctorID, procedureType, date) VALUES
(1,1,"ECG","2025-01-01"),
(2,3,"Brain Scan","2025-01-02"),
(3,2,"Skin Test","2025-01-03"),
(4,5,"Blood Test","2025-01-04"),
(5,4,"X-Ray","2025-01-05"),
(6,1,"Stress Test","2025-01-06"),
(7,7,"Ultrasound","2025-01-07"),
(8,8,"Teeth Cleaning","2025-01-08"),
(9,10,"Flu Test","2025-01-09"),
(10,6,"Ear Checkup","2025-01-10");

---------------------------------------------------------
-- PRESCRIPTION TABLE
---------------------------------------------------------
CREATE TABLE Prescription (
    prescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    patientID INT,
    doctorID INT,
    medication VARCHAR(100),
    instruction VARCHAR(255),
    FOREIGN KEY (patientID) REFERENCES Patient(patientID),
    FOREIGN KEY (doctorID) REFERENCES Doctor(doctorID)
);

INSERT INTO Prescription (patientID, doctorID, medication, instruction) VALUES
(1,1,"BP Tablets","Once daily"),
(2,3,"Migraine Medicine","Twice daily"),
(3,2,"Skin Cream","Apply daily"),
(4,5,"Paracetamol","After food"),
(5,4,"Pain Relief","Twice daily"),
(6,1,"Heart Tablets","Morning only"),
(7,7,"Supplements","Daily"),
(8,8,"Dental Gel","Apply nightly"),
(9,10,"Flu Medicine","3 times a day"),
(10,6,"Ear Drops","2 drops twice daily");
