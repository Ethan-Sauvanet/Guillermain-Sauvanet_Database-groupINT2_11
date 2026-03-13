USE Clinic_db;

ALTER TABLE Surgeon
  ADD CONSTRAINT chk_surgeon_email_format 
  CHECK (s_professional_email LIKE '%@%.%');



ALTER TABLE Patient
  ADD CONSTRAINT chk_patient_gender 
  CHECK (p_gender IN ('Male', 'Female', 'Other', 'Prefer not to say'));

ALTER TABLE Patient
  ADD CONSTRAINT chk_patient_birthdate 
  CHECK (p_birthdate > '1900-01-01');

ALTER TABLE Patient
  ADD CONSTRAINT chk_patient_ssn_numeric
  CHECK (p_social_security_nb NOT LIKE '%[^0-9]%');
  


ALTER TABLE Room
  ADD CONSTRAINT chk_room_type_list
  CHECK (r_type IN ('Consultation', 'Operating', 'Recovery'));
  
ALTER TABLE Room
  ADD CONSTRAINT chk_room_location
  CHECK (r_location IN ('Floor 0', 'Floor 1', 'Floor 2'));

ALTER TABLE Room
  ADD CONSTRAINT chk_room_capacity_positive
  CHECK (r_capacity > 0);



ALTER TABLE Equipment
  ADD CONSTRAINT chk_equipment_dates
  CHECK (e_last_maintenance_date >= e_purchase_date);

ALTER TABLE Equipment
  ADD CONSTRAINT chk_equipment_status_values
  CHECK (e_maintenance_status IN ('Operational', 'Under Maintenance'));
  
  
  
ALTER TABLE Surgery
  ADD CONSTRAINT chk_surgery_duration_min
  CHECK (s_duration_minutes >= 0);



ALTER TABLE Consultation
  ADD CONSTRAINT chk_consultation_status
  CHECK (c_status IN ('Scheduled', 'Completed', 'Cancelled'));

ALTER TABLE Consultation
  ADD CONSTRAINT chk_consultation_date_valid
  CHECK (c_date > '2020-01-01');
  