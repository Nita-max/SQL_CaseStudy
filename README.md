# 🏥 Hospital Management System - SQL Database Project

## Project Overview

**Hospital Management System** is a fully structured **SQL database** designed to manage hospital operations, including Patients, Doctors, and more. It is ideal for learning **relational database concepts**, SQL queries, and healthcare data management.

---

## 🗂 Tables Overview

### 1. **Patient**

| Column      | Type         | Description                 |
| ----------- | ------------ | --------------------------- |
| patientID   | INT          | Primary key, auto increment |
| name        | VARCHAR(100) | Patient's full name         |
| dob         | DATE         | Date of birth               |
| gender      | VARCHAR(20)  | Gender                      |
| contactInfo | VARCHAR(100) | Contact details             |
| insurance   | VARCHAR(100) | Insurance provider info     |

### 2. **Doctor**

| Column    | Type         | Description                 |
| --------- | ------------ | --------------------------- |
| doctorID  | INT          | Primary key, auto increment |
| name      | VARCHAR(100) | Doctor's full name          |
| specialty | VARCHAR(100) | Area of expertise           |

*(Add more tables like Appointments, Billing, etc., if needed)*

---

## 💾 Sample Data

```sql
-- Patient sample
INSERT INTO Patient (name, dob, gender, contactInfo, insurance) VALUES
('John Doe', '1985-04-23', 'Male', '123-456-7890', 'HealthCare Inc'),
('Jane Smith', '1990-07-12', 'Female', '987-654-3210', 'MediPlan');

-- Doctor sample
INSERT INTO Doctor (name, specialty) VALUES
('Dr. Smith', 'Cardiology'),
('Dr. Patel', 'Neurology');
```

---

## ⚙️ How to Use

1. **Clone or download** this repository.
2. Open your **MySQL / phpMyAdmin / MariaDB** tool.
3. Create a new database:

```sql
CREATE DATABASE HospitalDB;
USE HospitalDB;
```

4. Import the SQL file:

   * Command line:

```bash
mysql -u username -p HospitalDB < HospitalDB.sql
```

* Or via phpMyAdmin → Import → Select `HospitalDB.sql` → Go

5. Your database is ready to use.

---

## 📊 Features

* Relational structure for hospital data
* Manage Patients & Doctors efficiently
* Ready-to-import SQL file
* Extendable for Appointments, Billing, and more

---

## 🚀 Future Enhancements

* **Appointments** table linking Patients & Doctors
* **Billing** and **Insurance** tables
* **Triggers** or **Stored Procedures** for automated tasks

---

## 🖼 Screenshots / ER Diagram

![Project Screenshot](screenshot.png)
[View ER Diagram](https://github.com/Nita-max/SQL_CaseStudy/blob/main/ER%20digram.png)

## 📄 License

Open-source for learning and experimentation.

---
