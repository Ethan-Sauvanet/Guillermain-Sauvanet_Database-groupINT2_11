-- ======================================================
-- 1. INDEPENDENT TABLES
-- ======================================================

-- Surgeon (15 rows)
INSERT INTO Surgeon (s_ID, s_fname, s_speciality, s_phone_nb, s_professional_email, s_lname, s_licence_nb) VALUES
(1, 'Kenji', 'Orthopedics', '555-0101', 'k.tanaka@clinic.com', 'Tanaka', 'LIC1001'),
(2, 'Elena', 'Cardiology', '555-0102', 'e.rodriguez@clinic.com', 'Rodriguez', 'LIC1002'),
(3, 'Amara', 'Neurology', '555-0103', 'a.diallo@clinic.com', 'Diallo', 'LIC1003'),
(4, 'Liam', 'General Surgery', '555-0104', 'l.smith@clinic.com', 'Smith', 'LIC1004'),
(5, 'Mei', 'Pediatrics', '555-0105', 'm.chen@clinic.com', 'Chen', 'LIC1005'),
(6, 'Sanjay', 'Orthopedics', '555-0106', 's.gupta@clinic.com', 'Gupta', 'LIC1006'),
(7, 'Ingrid', 'Oncology', '555-0107', 'i.bergman@clinic.com', 'Bergman', 'LIC1007'),
(8, 'Mateo', 'Cardiology', '555-0108', 'm.garcia@clinic.com', 'Garcia', 'LIC1008'),
(9, 'Fatima', 'Neurology', '555-0109', 'f.al-sayed@clinic.com', 'Al-Sayed', 'LIC1009'),
(10, 'Chloe', 'General Surgery', '555-0110', 'c.dubois@clinic.com', 'Dubois', 'LIC1010'),
(11, 'Nikolai', 'Orthopedics', '555-0111', 'n.ivanov@clinic.com', 'Ivanov', 'LIC1011'),
(12, 'Zainab', 'Cardiology', '555-0112', 'z.abid@clinic.com', 'Abid', 'LIC1012'),
(13, 'Lukas', 'Oncology', '555-0113', 'l.muller@clinic.com', 'Muller', 'LIC1013'),
(14, 'Yuki', 'General Surgery', '555-0114', 'y.sato@clinic.com', 'Sato', 'LIC1014'),
(15, 'Sofia', 'Pediatrics', '555-0115', 's.rossi@clinic.com', 'Rossi', 'LIC1015');

-- Nurse (30 rows)
INSERT INTO Nurse (n_ID, n_lname, n_fname, n_qualification, n_phone_nb, n_professional_email) VALUES
(1, 'Nguyen', 'An', 'RN', '555-2001', 'a.nguyen@clinic.com'), (2, 'O Connor', 'Siobhan', 'NP', '555-2002', 's.oconnor@clinic.com'),
(3, 'Silva', 'Ricardo', 'LPN', '555-2003', 'r.silva@clinic.com'), (4, 'Kozlov', 'Dmitry', 'RN', '555-2004', 'd.kozlov@clinic.com'),
(5, 'Patel', 'Priya', 'NP', '555-2005', 'p.patel@clinic.com'), (6, 'Kim', 'Ji-won', 'RN', '555-2006', 'j.kim@clinic.com'),
(7, 'Mbeki', 'Thabo', 'LPN', '555-2007', 't.mbeki@clinic.com'), (8, 'Hansen', 'Erik', 'RN', '555-2008', 'e.hansen@clinic.com'),
(9, 'Lopez', 'Maria', 'NP', '555-2009', 'm.lopez@clinic.com'), (10, 'Dubois', 'Jean', 'RN', '555-2010', 'j.dubois@clinic.com'),
(11, 'Ali', 'Hassan', 'LPN', '555-2011', 'h.ali@clinic.com'), (12, 'Sato', 'Hina', 'RN', '555-2012', 'h.sato@clinic.com'),
(13, 'Novak', 'Jakub', 'NP', '555-2013', 'j.novak@clinic.com'), (14, 'Costa', 'Luciana', 'RN', '555-2014', 'l.costa@clinic.com'),
(15, 'Ochoa', 'Ximena', 'LPN', '555-2015', 'x.ochoa@clinic.com'), (16, 'Bakker', 'Lars', 'RN', '555-2016', 'l.bakker@clinic.com'),
(17, 'Yilmaz', 'Emre', 'NP', '555-2017', 'e.yilmaz@clinic.com'), (18, 'Papadopoulos', 'Eleni', 'RN', '555-2018', 'e.papadopoulos@clinic.com'),
(19, 'Kamau', 'Faith', 'LPN', '555-2019', 'f.kamau@clinic.com'), (20, 'Ricci', 'Marco', 'RN', '555-2020', 'm.ricci@clinic.com'),
(21, 'Wong', 'Li', 'NP', '555-2021', 'l.wong@clinic.com'), (22, 'Gomez', 'Carlos', 'RN', '555-2022', 'c.gomez@clinic.com'),
(23, 'Kaur', 'Jaspreet', 'LPN', '555-2023', 'j.kaur@clinic.com'), (24, 'Petrov', 'Ivan', 'RN', '555-2024', 'i.petrov@clinic.com'),
(25, 'Leclerc', 'Marie', 'NP', '555-2025', 'm.leclerc@clinic.com'), (26, 'Suzuki', 'Ichiro', 'RN', '555-2026', 'i.suzuki@clinic.com'),
(27, 'Tadesse', 'Abebe', 'LPN', '555-2027', 'a.tadesse@clinic.com'), (28, 'Brown', 'Sarah', 'RN', '555-2028', 's.brown@clinic.com'),
(29, 'Schmidt', 'Hans', 'NP', '555-2029', 'h.schmidt@clinic.com'), (30, 'Ferrari', 'Luca', 'RN', '555-2030', 'l.ferrari@clinic.com');

-- Room (20 rows)
INSERT INTO Room (r_ID, r_type, r_capacity, r_location) VALUES
(100, 'Operating', 2, 'Floor 1'), (101, 'Operating', 2, 'Floor 1'), (102, 'Operating', 2, 'Floor 1'), (103, 'Operating', 2, 'Floor 1'), (104, 'Operating', 2, 'Floor 1'), (105, 'Operating', 2, 'Floor 1'),
(200, 'Consultation', 1, 'Floor 2'), (201, 'Consultation', 1, 'Floor 2'), (202, 'Consultation', 1, 'Floor 2'), (203, 'Consultation', 1, 'Floor 2'), (204, 'Consultation', 1, 'Floor 2'), (205, 'Consultation', 1, 'Floor 2'),
(001, 'Recovery', 4, 'Floor 0'), (002, 'Recovery', 4, 'Floor 0'), (003, 'Recovery', 4, 'Floor 0'), (004, 'Recovery', 4, 'Floor 0'), (005, 'Recovery', 4, 'Floor 0'),
(206, 'Consultation', 2, 'Floor 2'), (207, 'Consultation', 2, 'Floor 2'), (106, 'Operating', 3, 'Floor 1');

-- Equipment (30 rows)
INSERT INTO Equipment (e_ID, e_name, e_category, e_purchase_date, e_maintenance_status, e_last_maintenance_date) VALUES
(1, 'Scalpel Set A', 'Surgical', '2021-05-10', 'Operational', '2023-12-01'), (2, 'MRI Scanner', 'Imaging', '2020-01-15', 'Under Maintenance', '2024-02-15'),
(3, 'Defibrillator X', 'Emergency', '2022-03-20', 'Operational', '2023-11-20'), (4, 'Ventilator V1', 'Respiratory', '2022-06-12', 'Operational', '2024-01-12'),
(5, 'Surgical Robot', 'Robotic', '2023-01-01', 'Operational', '2024-03-01'), (6, 'Heart Monitor', 'Monitoring', '2021-08-11', 'Operational', '2023-12-05'),
(7, 'Oxygen Tank', 'Emergency', '2022-02-14', 'Operational', '2024-01-20'), (8, 'X-Ray Machine', 'Imaging', '2019-11-30', 'Operational', '2023-11-15'),
(9, 'Ultrasound', 'Imaging', '2020-10-10', 'Operational', '2024-02-10'), (10, 'Anesthesia Unit', 'Surgical', '2021-04-05', 'Operational', '2024-01-05'),
(11, 'Autoclave 1', 'Sterility', '2022-03-12', 'Operational', '2024-02-10'), (12, 'Surgical Light', 'Infrastructure', '2021-07-22', 'Operational', '2023-11-30'),
(13, 'Dialysis Unit', 'Renal', '2020-12-01', 'Operational', '2024-01-12'), (14, 'EKG Machine', 'Monitoring', '2023-05-01', 'Operational', '2024-03-01'),
(15, 'Laparoscope', 'Surgical', '2022-09-09', 'Operational', '2023-12-20'), (16, 'Pulse Oximeter', 'Monitoring', '2023-06-15', 'Operational', '2024-01-10'),
(17, 'Infusion Pump', 'Therapy', '2022-04-04', 'Operational', '2023-12-15'), (18, 'Spirometer', 'Respiratory', '2021-11-11', 'Operational', '2023-11-10'),
(19, 'Blood Analyzer', 'Lab', '2022-08-20', 'Operational', '2024-02-12'), (20, 'Microscope', 'Lab', '2020-03-03', 'Operational', '2023-12-01'),
(21, 'Centrifuge', 'Lab', '2021-01-15', 'Operational', '2023-11-11'), (22, 'Suction Pump', 'Surgical', '2022-10-10', 'Operational', '2024-01-05'),
(23, 'C-Arm X-Ray', 'Imaging', '2023-02-22', 'Operational', '2024-02-22'), (24, 'Endoscopy Kit', 'Surgical', '2021-05-30', 'Operational', '2024-01-15'),
(25, 'Bone Drill', 'Surgical', '2022-01-12', 'Operational', '2023-12-12'), (26, 'Crash Cart', 'Emergency', '2020-05-05', 'Operational', '2023-11-05'),
(27, 'IV Pole Set', 'General', '2023-08-01', 'Operational', '2024-01-01'), (28, 'Patient Lift', 'Nursing', '2021-02-28', 'Operational', '2024-01-15'),
(29, 'UV Sterilizer', 'Sterility', '2022-11-11', 'Under Maintenance', '2024-03-05'), (30, 'Portable EKG', 'Emergency', '2023-04-12', 'Operational', '2024-02-10');

-- Patient (50 rows)
INSERT INTO Patient (p_ID, p_lname, p_fname, p_birthdate, p_email, p_add_housenb, p_add_postalcode, p_social_security_nb, p_add_streetname, p_gender, p_phone_number) VALUES
(1, 'Müller', 'Thomas', '1975-04-12', 't.muller@web.de', '12', '10115', '123456789', 'Berlinstrasse', 'Male', '49-30-1234'), (2, 'Tanaka', 'Sakura', '1992-08-21', 'sakura.t@gmail.com', '5', '160-0004', '987654321', 'Shinjuku-ku', 'Female', '81-3-5555'),
(3, 'Nkosi', 'Jabari', '1988-11-05', 'jnkosi@provider.za', '44', '2000', '112233445', 'Johannesburg St', 'Male', '27-11-9999'), (4, 'O Connell', 'Ciara', '2001-02-14', 'ciara.oc@ireland.ie', '9', 'D01', '554433221', 'Dublin Road', 'Female', '353-1-2222'),
(5, 'Abadi', 'Farrah', '1960-01-30', 'f.abadi@mail.ir', '101', '11369', '998877665', 'Tehran Ave', 'Female', '98-21-3333'), (6, 'Yamamoto', 'Ren', '1995-03-10', 'ren.y@mail.jp', '7', '100-0001', '102030405', 'Chiyoda', 'Male', '81-3-1111'),
(7, 'Silva', 'Beatriz', '1982-12-25', 'b.silva@br.com', '202', '01000', '203040506', 'Paulista', 'Female', '55-11-2222'), (8, 'Petrov', 'Sergei', '1970-05-15', 's.petrov@ru.com', '14', '101000', '304050607', 'Arbat', 'Male', '7-495-333'),
(9, 'Lee', 'Min-ho', '1990-07-07', 'minho@kr.com', '3', '06000', '405060708', 'Gangnam', 'Male', '82-2-4444'), (10, 'Dubois', 'Amélie', '1985-09-12', 'a.dubois@fr.com', '55', '75001', '506070809', 'Rivoli', 'Female', '33-1-5555'),
(11, 'Gomez', 'Luis', '1978-11-11', 'l.gomez@mx.com', '88', '06000', '607080901', 'Reforma', 'Male', '52-55-6666'), (12, 'Singh', 'Arjun', '1988-01-01', 'a.singh@in.com', '12', '110001', '708090102', 'Connaught', 'Male', '91-11-7777'),
(13, 'Yilmaz', 'Fatma', '1965-06-30', 'f.yilmaz@tr.com', '21', '34000', '809010203', 'Istiklal', 'Female', '90-212-888'), (14, 'Nguyen', 'Linh', '1998-04-20', 'l.nguyen@vn.com', '9', '700000', '901020304', 'Le Loi', 'Female', '84-28-9999'),
(15, 'Mbeki', 'Zanele', '1972-10-10', 'z.mbeki@za.com', '33', '8001', '102030401', 'Long St', 'Female', '27-21-1111'), (16, 'Schmidt', 'Klaus', '1955-08-08', 'k.schmidt@de.com', '4', '80331', '203040502', 'Marienplatz', 'Male', '49-89-2222'),
(17, 'Ricci', 'Giulia', '1993-02-02', 'g.ricci@it.com', '15', '00118', '304050603', 'Via Roma', 'Female', '39-06-3333'), (18, 'Wong', 'Wei', '1980-12-12', 'w.wong@cn.com', '8', '100000', '405060704', 'Nanjing Rd', 'Male', '86-10-4444'),
(19, 'Kaur', 'Priya', '1987-05-05', 'p.kaur@in.com', '50', '400001', '506070805', 'Marine Drive', 'Female', '91-22-5555'), (20, 'Hernandez', 'Juan', '1977-03-03', 'j.hernandez@es.com', '10', '28001', '607080906', 'Gran Via', 'Male', '34-91-6666'),
(21, 'Bakker', 'Anika', '1995-11-11', 'a.bakker@nl.com', '2', '1011', '708090107', 'Damrak', 'Female', '31-20-7777'), (22, 'Ali', 'Omar', '1983-09-09', 'o.ali@eg.com', '100', '11511', '809010208', 'Tahrir', 'Male', '20-2-8888'),
(23, 'Sato', 'Yuto', '1991-01-15', 'y.sato@jp.com', '44', '541-0051', '901020309', 'Honmachi', 'Male', '81-6-9999'), (24, 'Ochoa', 'Mateo', '1989-07-20', 'm.ochoa@co.com', '6', '110111', '102030410', 'Carrera 7', 'Male', '57-1-1111'),
(25, 'Kamau', 'Jomo', '1968-04-04', 'j.kamau@ke.com', '18', '00100', '203040511', 'Kenyatta Ave', 'Male', '254-20-2222'), (26, 'Novak', 'Elena', '1994-06-06', 'e.novak@cz.com', '11', '11000', '304050612', 'Wenceslas', 'Female', '420-2-3333'),
(27, 'Hansen', 'Lars', '1981-10-10', 'l.hansen@dk.com', '25', '1050', '405060713', 'Nyhavn', 'Male', '45-33-4444'), (28, 'Costa', 'Tiago', '1990-08-15', 't.costa@pt.com', '7', '1100', '506070814', 'Av. Liberdade', 'Male', '351-21-5555'),
(29, 'Papadopoulos', 'Nikos', '1975-02-28', 'n.papas@gr.com', '30', '10557', '607080915', 'Syntagma', 'Male', '30-210-666'), (30, 'Leclerc', 'Pierre', '1984-05-12', 'p.leclerc@fr.com', '14', '69001', '708090116', 'Rue de la Republique', 'Male', '33-4-7777'),
(31, 'Suzuki', 'Haruto', '1999-09-30', 'h.suzuki@jp.com', '5', '460-0008', '809010217', 'Sakae', 'Male', '81-52-8888'), (32, 'Brown', 'Emily', '1996-12-12', 'e.brown@uk.com', '10', 'SW1A', '901020318', 'Pall Mall', 'Female', '44-20-9999'),
(33, 'Ferrari', 'Enzo', '1950-02-18', 'e.ferrari@it.com', '1', '41121', '102030419', 'Via Emilia', 'Male', '39-059-111'), (34, 'Santos', 'Ana', '1986-07-07', 'a.santos@br.com', '500', '40000', '203040520', 'Pelourinho', 'Female', '55-71-2222'),
(35, 'Kozlov', 'Ivan', '1979-03-25', 'i.kozlov@ru.com', '3', '190000', '304050621', 'Nevsky Prospekt', 'Male', '7-812-333'), (36, 'Kim', 'Soo-jin', '1992-11-20', 'soojin@kr.com', '12', '48000', '405060722', 'Haeundae', 'Female', '82-51-4444'),
(37, 'Diallo', 'Moussa', '1982-01-15', 'm.diallo@sn.com', '22', '10000', '506070823', 'Dakar Plateau', 'Male', '221-33-5555'), (38, 'Sorenson', 'Mette', '1988-06-06', 'm.soren@no.com', '9', '0101', '607080924', 'Karl Johans gate', 'Female', '47-22-6666'),
(39, 'Ivanov', 'Dmitry', '1970-12-05', 'd.ivanov@ua.com', '40', '01001', '708090125', 'Khreshchatyk', 'Male', '380-44-7777'), (40, 'Abid', 'Layla', '1995-04-01', 'l.abid@ma.com', '77', '10000', '809010226', 'Medina', 'Female', '212-5-8888'),
(41, 'Rossi', 'Antonio', '1962-08-15', 'a.rossi@it.com', '8', '20121', '901020327', 'Via Dante', 'Male', '39-02-9999'), (42, 'Garcia', 'Sofia', '2000-01-01', 's.garcia@ar.com', '123', '1001', '102030428', 'Florida St', 'Female', '54-11-1111'),
(43, 'Andersson', 'Erik', '1984-05-05', 'e.anders@se.com', '19', '11120', '203040529', 'Drottninggatan', 'Male', '46-8-2222'), (44, 'Lin', 'Mei', '1991-10-10', 'm.lin@tw.com', '88', '100', '304050630', 'Xinyi Rd', 'Female', '886-2-3333'),
(45, 'O Connor', 'Liam', '1976-03-17', 'l.oconnor@ie.com', '4', 'T12', '405060731', 'St Patricks St', 'Male', '353-21-4444'), (46, 'Al-Farsi', 'Zaid', '1985-11-20', 'z.farsi@om.com', '1', '100', '506070832', 'Mutrah Corniche', 'Male', '968-24-5555'),
(47, 'Tadesse', 'Lulu', '1994-12-12', 'l.tadesse@et.com', '55', '1000', '607080933', 'Bole Rd', 'Female', '251-11-6666'), (48, 'Silva', 'Joao', '1980-02-02', 'j.silva@pt.com', '10', '4000', '708090134', 'Rua de Santa Catarina', 'Male', '351-22-7777'),
(49, 'Chen', 'Wei', '1990-05-05', 'w.chen@cn.com', '9', '200000', '809010235', 'Bund', 'Male', '86-21-8888'), (50, 'Martinez', 'Elena', '1987-09-09', 'e.martinez@es.com', '25', '08001', '901020336', 'La Rambla', 'Female', '34-93-9999');

-- ======================================================
-- 2. DEPENDENT TABLES
-- ======================================================

-- Medical_file (50 rows)
INSERT INTO Medical_file (p_ID, mf_current_diagnosis, mf_history_description, mf_rehabilitation_protocol_description, mf_date_of_last_update) VALUES
(1, 'Osteoarthritis', 'Fractured femur 2015', 'Physical therapy 3x week', '2024-01-10'), (2, 'ACL Tear', 'None', 'RICE and bracing', '2023-12-15'),
(3, 'Cataract', 'Hypertension', 'Post-op eye drops', '2024-02-01'), (4, 'Heart Valve Prolapse', 'Childhood murmur', 'Low sodium diet', '2024-01-20'),
(5, 'Scoliosis', 'Chronic back pain', 'Bracing and swimming', '2023-11-30'), (6, 'Inguinal Hernia', 'Sedentary lifestyle', 'Lifting restriction', '2024-02-14'),
(7, 'Hip Dysplasia', 'Genetic predisposition', 'Weight management', '2024-01-05'), (8, 'Glioblastoma', 'Recurring headaches', 'Corticosteroids', '2024-03-05'),
(9, 'Thyroid Nodule', 'Family history', 'Iodine monitoring', '2023-10-22'), (10, 'Cholecystitis', 'Gallstones 2021', 'Fat-free diet', '2024-02-18'),
(11, 'Tonsillitis', 'Recurrent infections', 'Antibiotic course', '2024-01-25'), (12, 'Meniscus Tear', 'Sports injury', 'Isometric exercises', '2023-12-28'),
(13, 'Rotator Cuff Tear', 'Work injury', 'Shoulder mobility drills', '2024-01-12'), (14, 'Aortic Stenosis', 'Smoker history', 'ACE inhibitors', '2024-02-02'),
(15, 'Morbid Obesity', 'Diabetes Type 2', 'Bariatric counseling', '2024-01-15'), (16, 'Breast Cancer St. II', 'None', 'Hormone therapy', '2024-03-01'),
(17, 'Nephrolithiasis', 'Dehydration', 'Increased fluid intake', '2023-11-11'), (18, 'Subdural Hematoma', 'Recent fall', 'Neurological checks', '2024-02-28'),
(19, 'CTS', 'Office worker', 'Wrist splinting', '2024-01-08'), (20, 'Graves Disease', 'Autoimmune history', 'Beta blockers', '2024-01-30'),
(21, 'Burn Injury', 'Accidental', 'Debridement schedule', '2023-12-01'), (22, 'Bradycardia', 'Fainting spells', 'Activity tracking', '2024-02-25'),
(23, 'Otitis Media', 'Allergies', 'Tympanostomy prep', '2024-01-14'), (24, 'Uterine Fibroids', 'Anemia', 'Iron supplements', '2023-10-30'),
(25, 'Deviated Septum', 'Broken nose 2010', 'Nasal corticosteroids', '2024-02-05'), (26, 'Lumbar Stenosis', 'Aging-related', 'Epidural injections', '2024-01-22'),
(27, 'Ankle Fracture', 'Slip and fall', 'Casting and crutches', '2023-12-10'), (28, 'Carpal Tunnel', 'Repetitive strain', 'Ergonomic assessment', '2024-03-02'),
(29, 'Prostate Hyperplasia', 'Frequent urination', 'Alpha blockers', '2024-02-10'), (30, 'Varicose Veins', 'Standing profession', 'Compression socks', '2024-01-04'),
(31, 'Melanoma', 'Sun exposure', 'Dermatology follow-up', '2023-11-20'), (32, 'Endometriosis', 'Pelvic pain', 'Pain management', '2024-01-17'),
(33, 'Atrial Fibrillation', 'Chronic fatigue', 'Anticoagulants', '2024-02-22'), (34, 'Gallstones', 'Digestive issues', 'Dietary change', '2023-10-10'),
(35, 'Bursitis', 'Overuse injury', 'Ice and rest', '2024-01-09'), (36, 'Sleep Apnea', 'Snoring', 'CPAP therapy', '2024-03-08'),
(37, 'Psoriasis', 'Skin lesions', 'Topical steroids', '2024-02-15'), (38, 'Asthma', 'Shortness of breath', 'Inhaler use', '2023-12-05'),
(39, 'Epilepsy', 'Seizures', 'Anticonvulsants', '2024-01-28'), (40, 'Migraine', 'Light sensitivity', 'Trigger avoidance', '2024-02-11'),
(41, 'Hypertension', 'Stress', 'Beta blockers', '2024-03-04'), (42, 'Gastritis', 'Abdominal pain', 'Proton pump inhibitors', '2024-01-13'),
(43, 'Tennis Elbow', 'Sports', 'Stretching', '2023-11-25'), (44, 'Anemia', 'Fatigue', 'Iron rich diet', '2024-02-01'),
(45, 'Glaucoma', 'High eye pressure', 'Daily eye drops', '2024-01-19'), (46, 'Herniated Disc', 'Lifting injury', 'Core strengthening', '2024-03-03'),
(47, 'Eczema', 'Dry skin', 'Moisturizing', '2023-12-20'), (48, 'Tachycardia', 'Heart racing', 'Stress reduction', '2024-01-11'),
(49, 'Osteoporosis', 'Low bone density', 'Calcium supplements', '2024-02-19'), (50, 'Gout', 'Joint swelling', 'Purine-free diet', '2024-02-27');

-- Surgery (25 rows)
INSERT INTO Surgery (sg_ID, s_date, s_duration_minutes, s_type, s_report, p_ID, r_ID, s_ID) VALUES
(1, '2024-01-15', 120, 'Appendectomy', 'Clean excision', 1, 100, 4), (2, '2024-01-18', 180, 'Knee Replacement', 'Aligned correctly', 2, 101, 1),
(3, '2024-01-20', 90, 'Cataract', 'Standard procedure', 3, 102, 11), (4, '2024-01-22', 300, 'Bypass', 'Bypass complete', 4, 103, 2),
(5, '2024-01-25', 150, 'Spinal Fusion', 'Stabilized', 5, 104, 3), (6, '2024-02-01', 60, 'Hernia Repair', 'Mesh placed', 6, 105, 4),
(7, '2024-02-03', 200, 'Hip Replacement', 'Success', 7, 100, 6), (8, '2024-02-05', 240, 'Craniotomy', 'Tumor removed', 8, 101, 9),
(9, '2024-02-07', 45, 'Biopsy', 'Sample taken', 9, 102, 13), (10, '2024-02-10', 110, 'Gallbladder', 'Successful', 10, 103, 10),
(11, '2024-02-12', 70, 'Tonsillectomy', 'Bleeding controlled', 11, 104, 5), (12, '2024-02-14', 160, 'ACL Reconstruction', 'Graft intact', 12, 105, 1),
(13, '2024-02-16', 130, 'Shoulder Scope', 'Cleaned', 13, 100, 11), (14, '2024-02-18', 210, 'Valve Repair', 'Successful', 14, 101, 8),
(15, '2024-02-20', 180, 'Gastric Bypass', 'No complications', 15, 102, 14), (16, '2024-02-22', 100, 'Mastectomy', 'Successful', 16, 103, 7),
(17, '2024-02-24', 95, 'Kidney Stone', 'Cleared', 17, 104, 10), (18, '2024-02-26', 220, 'Brain Drain', 'Pressure down', 18, 105, 9),
(19, '2024-02-28', 50, 'Carpal Release', 'Fast recovery', 19, 100, 6), (20, '2024-03-01', 140, 'Thyroidectomy', 'Successful', 20, 101, 13),
(21, '2024-03-03', 110, 'Skin Graft', 'Took well', 21, 102, 14), (22, '2024-03-05', 80, 'Pacemaker', 'Functional', 22, 103, 12),
(23, '2024-03-07', 40, 'Ear Tubes', 'Standard', 23, 104, 15), (24, '2024-03-09', 150, 'Hysterectomy', 'Laparoscopic', 24, 105, 10),
(25, '2024-03-11', 100, 'Nose Repair', 'Successful', 25, 100, 14);

-- is_followed_by
INSERT INTO is_followed_by (s_ID, p_ID) VALUES 
(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10);

-- is_assigned_to
INSERT INTO is_assigned_to (n_ID, r_ID) VALUES
(1,100), (2,200), (3,001), (4,101), (5,201), (6,102), (7,202), (8,002), (9,103), (10,203);

-- collaborates_with
INSERT INTO collaborates_with (s_ID, s_ID_1) VALUES
(1,2), (3,4), (5,6), (7,8), (9,10), (11,12), (13,14), (1,3), (2,4), (5,7);

-- ======================================================
-- 3. CONSULTATION & INVOLVES
-- ======================================================

-- Consultation (100 rows)
-- FIX: Ensuring each sg_ID (1-25) is only assigned to ONE consultation to avoid "Duplicate entry"
INSERT INTO Consultation (c_ID, c_date, c_time, c_report, c_status, sg_ID, p_ID, r_ID, s_ID) VALUES
(1, '2023-05-10', '08:00', 'Chest pain review', 'Completed', NULL, 1, 200, 2),
(2, '2023-05-11', '09:00', 'Pre-op ortho', 'Completed', 1, 1, 201, 4),
(3, '2023-06-15', '10:00', 'Neurology check', 'Cancelled', NULL, 3, 202, 3),
(4, '2023-06-20', '11:00', 'General physical', 'Completed', NULL, 4, 203, 10),
(5, '2023-07-01', '14:00', 'Follow up surgery', 'Completed', 2, 2, 204, 4),
(6, '2023-07-05', '08:30', 'Knee discomfort', 'Completed', NULL, 2, 205, 1),
(7, '2023-07-10', '13:00', 'Eye exam', 'Completed', 3, 3, 200, 11),
(8, '2023-08-12', '15:00', 'Heart monitoring', 'Scheduled', NULL, 4, 201, 2),
(9, '2023-08-15', '09:00', 'Skin rash', 'Completed', NULL, 42, 202, 13),
(10, '2023-09-01', '10:30', 'Back pain', 'Completed', NULL, 5, 203, 6),
(11, '2023-09-05', '08:15', 'Follow-up', 'Completed', 4, 4, 204, 1),
(12, '2023-09-10', '09:45', 'Initial visit', 'Completed', NULL, 7, 205, 2),
(13, '2023-09-12', '11:00', 'Consultation', 'Completed', 5, 5, 206, 3),
(14, '2023-09-15', '14:30', 'Checkup', 'Completed', NULL, 9, 207, 4),
(15, '2023-09-18', '16:00', 'Pain review', 'Completed', 6, 6, 200, 5),
(16, '2023-10-01', '08:00', 'Results', 'Completed', NULL, 11, 201, 6),
(17, '2023-10-03', '10:00', 'New symptoms', 'Completed', 7, 7, 202, 7),
(18, '2023-10-05', '11:15', 'Medication adj', 'Completed', NULL, 13, 203, 8),
(19, '2023-10-08', '13:45', 'Physical', 'Completed', 8, 8, 204, 9),
(20, '2023-10-10', '15:30', 'Follow-up', 'Completed', NULL, 15, 205, 10),
(21, '2023-10-12', '08:45', 'Consultation', 'Completed', 9, 9, 206, 11),
(22, '2023-10-15', '09:15', 'Post-op', 'Completed', 10, 10, 207, 1),
(23, '2023-10-18', '10:30', 'Pre-op', 'Completed', 11, 11, 200, 9),
(24, '2023-10-20', '14:00', 'Checkup', 'Completed', NULL, 19, 201, 6),
(25, '2023-10-22', '16:15', 'Urgent', 'Completed', 12, 12, 202, 13),
(26, '2023-10-25', '08:00', 'Follow-up', 'Completed', NULL, 21, 203, 14),
(27, '2023-10-28', '11:00', 'Routine', 'Completed', 13, 13, 204, 12),
(28, '2023-11-01', '13:00', 'Ortho review', 'Completed', NULL, 23, 205, 1),
(29, '2023-11-03', '15:00', 'Cardio review', 'Completed', 14, 14, 206, 8),
(30, '2023-11-05', '09:30', 'General', 'Completed', NULL, 25, 207, 10),
(31, '2023-11-08', '10:45', 'Follow-up', 'Completed', 15, 15, 200, 1),
(32, '2023-11-10', '14:15', 'Consultation', 'Completed', NULL, 27, 201, 6),
(33, '2023-11-12', '16:30', 'Pain check', 'Completed', 16, 16, 202, 11),
(34, '2023-11-15', '08:15', 'Checkup', 'Completed', NULL, 29, 203, 13),
(35, '2023-11-18', '09:45', 'Results', 'Completed', 17, 17, 204, 7),
(36, '2023-11-20', '11:00', 'Routine', 'Completed', NULL, 31, 205, 4),
(37, '2023-11-22', '13:30', 'Follow-up', 'Completed', 18, 18, 206, 5),
(38, '2023-11-25', '15:15', 'Pre-op', 'Completed', NULL, 33, 207, 12),
(39, '2023-11-28', '09:00', 'Consultation', 'Completed', 19, 19, 200, 14),
(40, '2023-12-01', '10:30', 'Post-op', 'Completed', 20, 20, 201, 10),
(41, '2023-12-03', '11:45', 'Follow-up', 'Completed', 21, 21, 202, 15),
(42, '2023-12-05', '14:00', 'Initial', 'Completed', NULL, 37, 203, 13),
(43, '2023-12-08', '16:00', 'Routine', 'Completed', 22, 22, 204, 1),
(44, '2023-12-10', '08:30', 'Consultation', 'Completed', NULL, 39, 205, 9),
(45, '2023-12-12', '10:00', 'Results', 'Completed', 23, 23, 206, 12),
(46, '2023-12-15', '11:15', 'Checkup', 'Completed', NULL, 41, 207, 15),
(47, '2023-12-18', '13:45', 'Follow-up', 'Completed', 24, 24, 200, 13),
(48, '2023-12-20', '15:30', 'Pain review', 'Completed', NULL, 43, 201, 6),
(49, '2023-12-22', '09:00', 'Routine', 'Completed', 25, 25, 202, 4),
(50, '2023-12-28', '10:30', 'Consultation', 'Completed', NULL, 45, 203, 11),
(51, '2024-01-02', '11:45', 'Post-op', 'Completed', NULL, 15, 204, 14),
(52, '2024-01-04', '14:00', 'Follow-up', 'Completed', NULL, 47, 205, 13),
(53, '2024-01-06', '16:00', 'Initial', 'Completed', NULL, 48, 206, 1),
(54, '2024-01-08', '08:30', 'Routine', 'Completed', NULL, 49, 207, 2),
(55, '2024-01-10', '10:00', 'Checkup', 'Completed', NULL, 50, 200, 3),
(56, '2024-01-12', '11:15', 'Consultation', 'Completed', NULL, 1, 201, 1),
(57, '2024-01-14', '13:45', 'Follow-up', 'Completed', NULL, 2, 202, 6),
(58, '2024-01-16', '15:30', 'Results', 'Completed', NULL, 3, 203, 11),
(59, '2024-01-18', '09:00', 'Routine', 'Completed', NULL, 4, 204, 13),
(60, '2024-01-20', '10:30', 'Pain check', 'Completed', NULL, 5, 205, 1),
(61, '2024-01-22', '11:45', 'Checkup', 'Completed', NULL, 6, 206, 4),
(62, '2024-01-24', '14:00', 'Follow-up', 'Completed', NULL, 7, 207, 8),
(63, '2024-01-26', '16:00', 'Consultation', 'Completed', NULL, 8, 200, 9),
(64, '2024-01-28', '08:30', 'Post-op', 'Completed', NULL, 4, 201, 2),
(65, '2024-01-30', '10:00', 'Initial', 'Completed', NULL, 10, 202, 10),
(66, '2024-02-01', '11:15', 'Checkup', 'Completed', NULL, 11, 203, 11),
(67, '2024-02-02', '13:45', 'Results', 'Completed', NULL, 12, 204, 1),
(68, '2024-02-04', '15:30', 'Follow-up', 'Completed', NULL, 13, 205, 6),
(69, '2024-02-06', '09:00', 'Pain review', 'Completed', NULL, 14, 206, 4),
(70, '2024-02-08', '10:30', 'Routine', 'Completed', NULL, 15, 207, 10),
(71, '2024-02-10', '11:45', 'Consultation', 'Completed', NULL, 16, 200, 11),
(72, '2024-02-12', '14:00', 'Checkup', 'Completed', NULL, 17, 201, 10),
(73, '2024-02-14', '16:00', 'Results', 'Completed', NULL, 18, 202, 9),
(74, '2024-02-16', '08:30', 'Follow-up', 'Completed', NULL, 19, 203, 4),
(75, '2024-02-18', '10:00', 'Initial', 'Completed', NULL, 20, 204, 13),
(76, '2024-02-20', '11:15', 'Pain check', 'Completed', NULL, 21, 205, 14),
(77, '2024-02-22', '13:45', 'Routine', 'Completed', NULL, 22, 206, 11),
(78, '2024-02-24', '15:30', 'Checkup', 'Completed', NULL, 23, 207, 1),
(79, '2024-02-26', '09:00', 'Post-op', 'Completed', NULL, 5, 200, 3),
(80, '2024-02-28', '10:30', 'Follow-up', 'Completed', NULL, 25, 201, 15),
(81, '2024-03-01', '11:45', 'Consultation', 'Scheduled', NULL, 26, 202, 1),
(82, '2024-03-02', '14:00', 'Results', 'Scheduled', NULL, 27, 203, 6),
(83, '2024-03-03', '16:00', 'Routine', 'Scheduled', NULL, 28, 204, 11),
(84, '2024-03-04', '08:30', 'Initial', 'Scheduled', NULL, 29, 205, 13),
(85, '2024-03-05', '10:00', 'Checkup', 'Scheduled', NULL, 30, 206, 7),
(86, '2024-03-06', '11:15', 'Post-op', 'Scheduled', NULL, 25, 207, 14),
(87, '2024-03-07', '13:45', 'Follow-up', 'Scheduled', NULL, 32, 200, 5),
(88, '2024-03-08', '15:30', 'Pain review', 'Scheduled', NULL, 33, 201, 12),
(89, '2024-03-09', '09:00', 'Routine', 'Scheduled', NULL, 34, 202, 14),
(90, '2024-03-10', '10:30', 'Checkup', 'Scheduled', NULL, 35, 203, 1),
(91, '2024-03-11', '11:45', 'Results', 'Scheduled', NULL, 36, 204, 15),
(92, '2024-03-12', '14:00', 'Consultation', 'Scheduled', NULL, 37, 205, 13),
(93, '2024-03-13', '16:00', 'Post-op', 'Scheduled', NULL, 12, 206, 1),
(94, '2024-03-14', '08:30', 'Follow-up', 'Scheduled', NULL, 39, 207, 9),
(95, '2024-03-15', '10:00', 'Checkup', 'Scheduled', NULL, 40, 200, 12),
(96, '2024-03-16', '11:15', 'Initial', 'Scheduled', NULL, 41, 201, 15),
(97, '2024-03-17', '13:45', 'Routine', 'Scheduled', NULL, 42, 202, 13),
(98, '2024-03-18', '15:30', 'Pain review', 'Scheduled', NULL, 43, 203, 6),
(99, '2024-03-19', '09:00', 'Consultation', 'Scheduled', NULL, 44, 204, 4),
(100, '2024-03-20', '10:30', 'Results', 'Scheduled', NULL, 45, 205, 11);

-- involves
INSERT INTO involves (s_ID, n_ID, sg_ID, e_ID) VALUES
(4, 1, 1, 1), (1, 4, 2, 25), (11, 8, 3, 9), (2, 10, 4, 3), (3, 12, 5, 15),
(4, 14, 6, 1), (6, 16, 7, 25), (9, 18, 8, 5), (13, 20, 9, 20), (10, 22, 10, 11),
(5, 24, 11, 1), (1, 26, 12, 15), (11, 28, 13, 1), (8, 30, 14, 10), (14, 1, 15, 11);