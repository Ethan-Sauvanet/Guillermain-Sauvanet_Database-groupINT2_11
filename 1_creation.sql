DROP DATABASE Clinic_db;
CREATE DATABASE Clinic_db;
USE Clinic_db;

CREATE TABLE Surgeon(
   s_ID INT PRIMARY KEY,
   s_fname VARCHAR(50) NOT NULL,
   s_speciality VARCHAR(50) NOT NULL,
   s_phone_nb VARCHAR(15) NOT NULL UNIQUE,
   s_professional_email VARCHAR(100) NOT NULL UNIQUE,
   s_lname VARCHAR(50) NOT NULL,
   s_licence_nb VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Nurse(
   n_ID INT PRIMARY KEY,
   n_lname VARCHAR(50) NOT NULL,
   n_fname VARCHAR(50) NOT NULL,
   n_qualification VARCHAR(50) NOT NULL,
   n_phone_nb VARCHAR(15) NOT NULL UNIQUE,
   n_professional_email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Room(
   r_ID INT PRIMARY KEY,
   r_type VARCHAR(50) NOT NULL,
   r_capacity INT,
   r_location VARCHAR(10) NOT NULL
);

CREATE TABLE Equipment(
   e_ID INT PRIMARY KEY,
   e_name VARCHAR(100) NOT NULL,
   e_category VARCHAR(100) NOT NULL,
   e_purchase_date DATE NOT NULL,
   e_maintenance_status VARCHAR(50) DEFAULT ('Operational') NOT NULL,
   e_last_maintenance_date DATE NOT NULL
);

CREATE TABLE Patient(
   p_ID INT PRIMARY KEY,
   p_lname VARCHAR(50) NOT NULL,
   p_fname VARCHAR(50) NOT NULL,
   p_birthdate DATE,
   p_email VARCHAR(100) NOT NULL UNIQUE,
   p_add_housenb VARCHAR(50),
   p_add_postalcode VARCHAR(50),
   p_social_security_nb CHAR(13) NOT NULL UNIQUE,
   p_add_streetname VARCHAR(50),
   p_gender VARCHAR(30) NOT NULL,
   p_phone_number VARCHAR(15) UNIQUE
);

CREATE TABLE Medical_file(
   p_ID INT PRIMARY KEY,
   mf_current_diagnosis VARCHAR(255),
   mf_history_description VARCHAR(1000),
   mf_rehabilitation_protocol_description VARCHAR(1000),
   mf_date_of_last_update DATE,
   FOREIGN KEY(p_ID) REFERENCES Patient(p_ID) on delete cascade on update cascade
);

CREATE TABLE Surgery(
   sg_ID INT PRIMARY KEY,
   s_date DATE NOT NULL,
   s_duration_minutes INT NOT NULL,
   s_type VARCHAR(100) NOT NULL,
   s_report VARCHAR(1000),
   p_ID INT NOT NULL,
   r_ID INT NOT NULL,
   s_ID INT NOT NULL,
   FOREIGN KEY(p_ID) REFERENCES Patient(p_ID) on delete cascade on update cascade,
   FOREIGN KEY(r_ID) REFERENCES Room(r_ID) on delete cascade on update cascade,
   FOREIGN KEY(s_ID) REFERENCES Surgeon(s_ID) on delete cascade on update cascade
);

CREATE TABLE Consultation(
   c_ID INT PRIMARY KEY,
   c_date DATE NOT NULL,
   c_time TIME NOT NULL,
   c_report VARCHAR(1000),
   c_status VARCHAR(30) NOT NULL,
   sg_ID INT UNIQUE,
   p_ID INT NOT NULL,
   r_ID INT NOT NULL,
   s_ID INT NOT NULL,
   FOREIGN KEY(sg_ID) REFERENCES Surgery(sg_ID) on delete cascade on update cascade,
   FOREIGN KEY(p_ID) REFERENCES Patient(p_ID) on delete cascade on update cascade,
   FOREIGN KEY(r_ID) REFERENCES Room(r_ID) on delete cascade on update cascade,
   FOREIGN KEY(s_ID) REFERENCES Surgeon(s_ID) on delete cascade on update cascade
);

CREATE TABLE is_followed_by(
   s_ID INT,
   p_ID INT,
   PRIMARY KEY(s_ID, p_ID),
   FOREIGN KEY(s_ID) REFERENCES Surgeon(s_ID) on delete cascade on update cascade,
   FOREIGN KEY(p_ID) REFERENCES Patient(p_ID) on delete cascade on update cascade
);

CREATE TABLE involves(
   s_ID INT,
   n_ID INT,
   sg_ID INT,
   e_ID INT,
   PRIMARY KEY(s_ID, n_ID, sg_ID, e_ID),
   FOREIGN KEY(s_ID) REFERENCES Surgeon(s_ID) on delete cascade on update cascade,
   FOREIGN KEY(n_ID) REFERENCES Nurse(n_ID) on delete cascade on update cascade,
   FOREIGN KEY(sg_ID) REFERENCES Surgery(sg_ID) on delete cascade on update cascade,
   FOREIGN KEY(e_ID) REFERENCES Equipment(e_ID) on delete cascade on update cascade
);

CREATE TABLE is_assigned_to(
   n_ID INT,
   r_ID INT,
   PRIMARY KEY(n_ID, r_ID),
   FOREIGN KEY(n_ID) REFERENCES Nurse(n_ID) on delete cascade on update cascade,
   FOREIGN KEY(r_ID) REFERENCES Room(r_ID) on delete cascade on update cascade
);

CREATE TABLE collaborates_with(
   s_ID INT,
   s_ID_1 INT,
   PRIMARY KEY(s_ID, s_ID_1),
   FOREIGN KEY(s_ID) REFERENCES Surgeon(s_ID) on delete cascade on update cascade,
   FOREIGN KEY(s_ID_1) REFERENCES Surgeon(s_ID) on delete cascade on update cascade
);
