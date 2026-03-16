use clinic_db;

-- Scenario A: Surgeries coordination
-- focuses on: room management, equipment readiness, and nurse assignments.

-- q1: find 'operating' rooms on 'floor 1' or 'floor 2'
select r_id, r_location, r_capacity 
from room 
where r_type = 'operating' and r_location in ('floor 1', 'floor 2');

-- q2: list all unique equipment categories available in the clinic
select distinct e_category from equipment;

-- q3: see which equipment and nurse are assigned to a specific surgery
select sg_id, s_date, n_lname as nurse_name, e_name as equipment_used 
from surgery join involves using (sg_id) join nurse using (n_id) join equipment using (e_id) 
where s_date = '2024-02-14';

-- q4: count surgeries per room (showing rooms with at least 1 surgery)
select r_id, count(sg_id) as total_surgeries 
from surgery 
group by r_id 
having count(sg_id) >= 1;

-- q5: find nurses who are not currently assigned to any room
select n_fname, n_lname 
from nurse n 
where not exists (select 1 from is_assigned_to iat where iat.n_id = n.n_id);


-- Scenario B: Patient safety
-- aims: continuity of care, tracking follow-ups, and medical history.

-- q6: find medical files mentioning 'heart' and include consultation details
select p_id, mf_current_diagnosis, c_date, c_time, c_report, c_status
from medical_file 
join consultation using (p_id)
where mf_current_diagnosis like '%heart%';

-- q7: list patients born in the 1980s, sorted by their birthdate
select p_lname, p_fname, p_birthdate 
from patient 
where p_birthdate between '1980-01-01' and '1989-12-31' 
order by p_birthdate asc;

-- q8: list all patients and their diagnoses, including those without a file
select p_lname, p_fname, mf_current_diagnosis 
from patient left join medical_file using (p_id);

-- q9: find surgeons who have an average surgery time over 120 minutes
select s_id, avg(s_duration_minutes) as average_time 
from surgery 
group by s_id 
having avg(s_duration_minutes) > 120;

-- q10: find names of patients whose last consultation was 'cancelled'
select p_lname, p_fname 
from patient 
where p_id in (select p_id from consultation where c_status = 'cancelled');


-- Scenario C: Planning & budget
-- Focus on: equipment lifespan, specialty activity, and workload statistics.

-- q11: list equipment bought between 2020 and 2023
select e_name, e_purchase_date, e_maintenance_status 
from equipment 
where e_purchase_date between '2020-01-01' and '2023-12-31';

-- q12: link surgeons to their followed patients and show specialties
select s_lname as surgeon, s_speciality, p_lname as patient 
from is_followed_by join surgeon using (s_id) join patient using (p_id);

-- q13: calculate total minutes spent in surgery per specialty
select s_speciality, sum(s_duration_minutes) as total_clinic_minutes 
from surgeon join surgery using (s_id) 
group by s_speciality;

-- q14: find the longest surgery duration recorded for each surgery type
select s_type, max(s_duration_minutes) as max_duration 
from surgery 
group by s_type;

-- q15: find equipment used in surgeries longer than all 'orthopedics' surgeries
select distinct e_name 
from equipment join involves using (e_id) 
where sg_id in (
    select sg_id from surgery 
    where s_duration_minutes > all (
        select s_duration_minutes from surgery join surgeon using (s_id) 
        where s_speciality = 'orthopedics'
    )
);

-- q16: find surgeons who have never performed a surgery
select s_fname, s_lname 
from surgeon 
where s_id not in (select s_id from surgery);

-- q17: find rooms that have a capacity higher than any room on floor 0
select r_id, r_type, r_capacity 
from room 
where r_capacity > any (select r_capacity from room where r_location = 'floor 0');

-- q18: find patients who have at least one record in the medical file table
select p_fname, p_lname 
from patient p 
where exists (select 1 from medical_file m where m.p_id = p.p_id);
