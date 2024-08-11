-- Create database Antenatal_Care;
-- use Antenatal_Care;
-- CREATE TABLE AntenatalPatients (
--     AntenatalID INT PRantenatalpatientsantenatalcareprogramsIMARY KEY,
--     PatientID INT,
--     FirstVisitDate DATE,
--     ExpectedDeliveryDate DATE,
--     RiskFactors TEXT
-- ); antenatalcareprograms
-- INSERT INTO AntenatalPatients (AntenatalID, PatientID, FirstVisitDate, ExpectedDeliveryDate, RiskFactors)
-- VALUES
-- (3, 103, '2024-03-15', '2024-12-10', 'None'),
-- (4, 104, '2024-04-05', '2024-12-20', 'Anemia'),
-- (5, 105, '2024-05-12', '2025-01-15', 'Thyroid issues'),
-- (6, 106, '2024-06-18', '2025-02-22', 'None'),
-- (7, 107, '2024-07-22', '2025-03-30', 'Previous preterm birth'),
-- (8, 108, '2024-08-29', '2025-04-25', 'Hypertension'),
-- (9, 109, '2024-09-15', '2025-05-10', 'None'),
-- (10, 110, '2024-10-05', '2025-06-01', 'Diabetes');


-- CREATE TABLE AntenatalVisits (
--     VisitID INT PRIMARY KEY,
--     AntenatalID INT,
--     Date DATE,
--     Weight FLOAT,
--     BloodPressure VARCHAR(10),
--     TestsConducted TEXT,
--     Notes TEXT,
--     FOREIGN KEY (AntenatalID) REFERENCES AntenatalPatients(AntenatalID)
-- );

-- INSERT INTO AntenatalVisits (VisitID, AntenatalID, Date, Weight, BloodPressure, TestsConducted, Notes)
-- VALUES
-- (3, 3, '2024-05-10', 65.0, '115/75', 'Routine check-up', 'Healthy'),
-- (4, 4, '2024-06-15', 72.3, '125/80', 'Blood test', 'Iron supplements advised'),
-- (5, 5, '2024-07-20', 69.5, '118/78', 'Ultrasound', 'Low-risk pregnancy'),
-- (6, 6, '2024-08-25', 67.8, '119/76', 'Glucose test', 'Normal range'),
-- (7, 7, '2024-09-30', 71.2, '121/79', 'Routine check-up', 'Monitor closely'),
-- (8, 8, '2024-10-05', 68.9, '126/82', 'Blood pressure test', 'Medication adjusted'),
-- (9, 9, '2024-11-10', 66.4, '117/75', 'Ultrasound', 'Healthy development'),
-- (10, 10, '2024-12-15', 70.0, '122/80', 'Routine check-up', 'All normal');
-- CREATE TABLE AntenatalCarePrograms (
--     ProgramID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Description TEXT,
--     StartDate DATE,
--     EndDate DATE,
--     TargetArea VARCHAR(100)
-- );

-- INSERT INTO AntenatalCarePrograms (ProgramID, Name, Description, StartDate, EndDate, TargetArea)
-- VALUES
-- -- (1, 'Healthy Pregnancy', 'Comprehensive antenatal care program', '2024-01-01', '2024-12-31', 'Urban areas'),
-- -- (2, 'Rural Outreach', 'Antenatal care services in rural regions', '2024-02-01', '2024-11-30', 'Rural areas');
-- (3, 'Nutrition Focus', 'Nutritional guidance for pregnant women', '2024-03-01', '2024-10-31', 'Suburban areas'),
-- (4, 'Teen Pregnancy Support', 'Support for teenage mothers', '2024-04-01', '2025-03-31', 'City centers'),
-- (5, 'High-Risk Monitoring', 'Monitoring of high-risk pregnancies', '2024-05-01', '2024-12-31', 'Nationwide'),
-- (6, 'Mental Health Support', 'Mental health resources for expectant mothers', '2024-06-01', '2025-05-31', 'Urban and rural areas'),
-- (7, 'Exercise and Wellness', 'Exercise programs for pregnant women', '2024-07-01', '2025-06-30', 'Local gyms'),
-- (8, 'Midwife Assistance', 'Midwife services for home births', '2024-08-01', '2025-07-31', 'Remote areas'),
-- (9, 'Postpartum Care', 'Support for postpartum recovery', '2024-09-01', '2025-08-31', 'All regions'),
-- (10, 'Cultural Support Programs', 'Culturally tailored antenatal care', '2024-10-01', '2025-09-30', 'Diverse communities');


-- CREATE TABLE EducationSessions (
--     SessionID INT PRIMARY KEY,
--     ProgramID INT,
--     Topic VARCHAR(100),
--     Date DATE,
--     Duration TIME,
--     Location VARCHAR(100),
--     FOREIGN KEY (ProgramID) REFERENCES AntenatalCarePrograms(ProgramID)
-- );

-- INSERT INTO EducationSessions (SessionID, ProgramID, Topic, Date, Duration, Location)
-- VALUES
-- -- (1, 1, 'Nutrition in Pregnancy', '2024-03-15', '01:30:00', 'Community Center'),
-- -- (2, 2, 'Managing Stress', '2024-04-20', '02:00:00', 'Health Clinic');
-- (3, 3, 'Exercise Safety', '2024-05-25', '01:00:00', 'Local Gym'),
-- (4, 4, 'Birth Planning', '2024-06-30', '02:30:00', 'Hospital Auditorium'),
-- (5, 5, 'Understanding Labor', '2024-07-10', '01:45:00', 'Online Webinar'),
-- (6, 6, 'Postpartum Depression', '2024-08-15', '02:00:00', 'Mental Health Center'),
-- (7, 7, 'Breastfeeding Basics', '2024-09-20', '01:15:00', 'Health Clinic'),
-- (8, 8, 'Newborn Care', '2024-10-25', '01:30:00', 'Community Hall'),
-- (9, 9, 'Family Planning', '2024-11-30', '01:00:00', 'Family Center'),
-- (10, 10, 'Vaccination Importance', '2024-12-05', '01:20:00', 'Public Library');


-- CREATE TABLE AntenatalStaff (
--     StaffID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Role VARCHAR(50),
--     FacilityID INT
-- );

-- INSERT INTO AntenatalStaff (StaffID, Name, Role, FacilityID)
-- VALUES
-- -- (1, 'Dr. Smith', 'Obstetrician', 1),
-- -- (2, 'Nurse Johnson', 'Midwife', 2);
-- (3, 'Dr. Lee', 'Gynecologist', 3),
-- (4, 'Nurse Patel', 'Midwife', 4),
-- (5, 'Dr. Brown', 'Family Physician', 5),
-- (6, 'Nurse Carter', 'Nurse Practitioner', 6),
-- (7, 'Dr. Evans', 'Pediatrician', 7),
-- (8, 'Nurse Green', 'Midwife', 8),
-- (9, 'Dr. Kim', 'Obstetrician', 9),
-- (10, 'Nurse White', 'Registered Nurse', 10);

-- SELECT * FROM AntenatalPatients;

-- SELECT * FROM AntenatalVisits;
-- SELECT * FROM AntenatalCarePrograms;

-- SELECT * FROM EducationSessions;

-- SELECT COUNT(*) AS TotalVisits
-- FROM AntenatalVisits;

-- SELECT TargetArea, COUNT(*) AS ProgramCount
-- FROM AntenatalCarePrograms
-- GROUP BY TargetArea;



