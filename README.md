# PART 1  
## <ins>I. First step : requirements analysis</ins><br/>

**Here is our prompt that we used in order to get the expected amount of data, corresponding to the requirements we specified :** <br/>
>_You work in the field of specialized orthopedic medicine. Your organization is involved in the domain of post-operative knee rehabilitation and sports surgery. It is an organization such as the Knee Clinic in Paris or the Maussin-Nollet clinic. We have collected data regarding our surgeons, the specialized physical therapy equipment used, patient medical files, and the specific rooms where multi-disciplinary consultations occur. Take inspiration from the following article: "Digital Transformation in Orthopedic Clinics: Data Management Standards".  
Your organization wants to apply MERISE to design an information system. You are responsible for the analysis part, i.e., gathering the company's requirements. It has called on a computer engineering student to carry out this project, and you must provide him with the necessary information so that he can then apply the following steps of database design and development himself.  
First, establish the data business rules for your organization in the form of a bulleted list. It must correspond to the information provided by someone who knows how the company works, but not how an information system is built.  
Next, based on these rules, provide a raw data dictionary with the following columns, grouped in a table: meaning of the data, type, size in number of characters or digits. There should be between 25 and 35 data items. It is used to provide additional information about each data item (size and type) but without any assumptions about how the data will be modeled later.  
Provide the business rules and the data dictionary sorted by themes : patient / surgeon / room / …_

**Then we obtained the following Buisness Rules :**<br/>
>_Business Rules – Orthopedic Knee Rehabilitation Clinic
(Inspired by organizations such as Clinique du Genou and Clinique Maussins-Nollet and digital health data management standards.)_

>_🔹 PATIENT
Each patient is uniquely identified by a patient number.
A patient has civil status information (name, date of birth, contact details).
A patient has exactly one medical file in the clinic.
A patient may have several consultations.
A patient may undergo zero, one, or several surgeries.
A patient’s medical file contains medical history and rehabilitation protocols.
A patient may be followed by one or several surgeons during their treatment._

>_🔹 SURGEON
Each surgeon is uniquely identified by a surgeon number.
A surgeon has professional information (specialty, license number, contact details).
A surgeon performs consultations.
A surgeon performs surgeries.
A surgeon may supervise post-operative rehabilitation.
A surgeon may collaborate with other surgeons during a surgery._

>_🔹 NURSE
Each nurse is uniquely identified by a nurse number.
A nurse has professional qualifications and contact information.
A nurse assists during surgeries.
A nurse may be assigned to one or several rooms.
A nurse monitors patients during post-operative recovery._

>_🔹 CONSULTATION
Each consultation is uniquely identified by a consultation number.
A consultation concerns one patient and one surgeon.
A consultation takes place in one specific room.
A consultation has a date, time, and medical report.
A consultation may result in a surgery being scheduled._

>_🔹 SURGERY
Each surgery is uniquely identified by a surgery number.
A surgery concerns one patient.
A surgery is performed by one lead surgeon and may involve assistant surgeons.
A surgery takes place in one operating room.
A surgery uses specific medical equipment.
A surgery has a scheduled date, duration, and type (ACL reconstruction, meniscus repair, etc.).
After surgery, a rehabilitation protocol is defined._

>_🔹 ROOM
Each room is uniquely identified by a room number.
A room has a type (consultation room, operating room, recovery room).
A room has a capacity.
A surgery or consultation takes place in one room.
A room may host multiple consultations or surgeries over time._

>_🔹 EQUIPMENT
Each equipment item is uniquely identified by an equipment number.
Equipment has a name, category, and maintenance status.
Equipment may be used in multiple surgeries.
Each surgery may require several pieces of equipment.
Equipment must be regularly maintained._

>_🔹 MEDICAL FILE
Each medical file is uniquely linked to one patient.
A medical file contains diagnosis history.
A medical file includes surgery reports.
A medical file includes rehabilitation plans.
Medical files are confidential and updated after each consultation or surgery._<br/>

**And the following Data Dictionnary :**<br/>

| Theme |Data Meaning | Type | Size |
|-------|-------------|------|------|
|PATIENT| Patient ID | Integer | 6 digits |
|| Last name | Varchar | 50 characters |
|| First name | Varchar | 50 characters |
|| Date of birth | Date | 10 characters |
|| Gender | Varchar | 10 characters |
|| Phone number | Varchar | 15 characters |
|| Email address | Varchar | 100 characters |
|| Postal address | Varchar | 150 characters |
|| Social security number | Varchar | 15 characters |
|MEDICAL FILE| Medical file ID | Integer | 6 digits |
|| Medical history description | Text | 1000 characters |
|| Current diagnosis | Varchar | 255 characters |
|| Rehabilitation protocol description | Text | 1000 characters |
|| Date of last update | Date | 10 characters |
| SURGEON | Surgeon ID | Integer | 6 digits |
|| Last name | Varchar | 50 characters |
|| First name | Varchar | 50 characters |
|| Medical specialty | Varchar | 100 characters |
|| Medical license number | Varchar | 20 characters |
|| Phone number | Varchar | 15 characters |
|| Professional email | Varchar | 100 characters |
| NURSE | Nurse ID | Integer | 6 digits |
|| Last name | Varchar | 50 characters |
|| First name | Varchar | 50 characters |
|| Qualification | Varchar | 100 characters |
|| Phone number | Varchar | 15 characters |
|| Professional email | Varchar | 100 characters |
| CONSULTATION | Consultation ID | Integer | 6 digits |
|| Consultation date | Date | 10 characters |
|| Consultation time | Time | 8 characters |
|| Consultation report | Text | 1000 characters |
|| Consultation status | Varchar | 30 characters |
| SURGERY | Surgery ID | Integer | 6 digits |
|| Surgery date | Date | 10 characters |
|| Surgery duration (minutes) | Integer | 4 digits |
|| Surgery type | Varchar | 100 characters |
|| Surgery report | Text | 1000 characters |
|| Anesthesia type | Varchar | 50 characters |
| ROOM | Room ID | Integer | 4 digits |
|| Room type | Varchar | 50 characters |
|| Room capacity | Integer | 2 digits |
|| Room location (floor) | Integer | 2 digits |
| EQUIPEMENT | Equipment ID | Integer | 6 digits |
|| Equipment name | Varchar | 100 characters |
|| Equipment category | Varchar | 100 characters |
|| Purchase date | Date | 10 characters |
|| Maintenance status | Varchar | 50 characters |
|| Last maintenance date | Date | 10 characters |


**Finally, we implemented the following MCD using the modelling software Looping :**<br/>

<img width="1557" height="776" alt="image" src="https://github.com/user-attachments/assets/6d405560-d41e-4578-8eb3-03a46a0b3462" />

**From the MCD, Looping allows us to automatically deduce the LDM :**<br/>

## LDM

**Surgeon** = (**<u>s\_ID</u>** INT, s\_fname VARCHAR(50), s\_speciality VARCHAR(50), **s\_phone\_nb** VARCHAR(15), **s\_professional\_email** VARCHAR(100), s\_lname VARCHAR(50), **s\_licence\_nb** VARCHAR(20));

**Nurse** = (**<u>n\_ID</u>** INT, n\_lname VARCHAR(50), n\_fname VARCHAR(50), n\_qualification VARCHAR(50), **n\_phone\_nb** VARCHAR(15), **n\_professional\_email** VARCHAR(100));

**Room** = (**<u>r\_ID</u>** INT, r\_type VARCHAR(50), r\_capacity INT, r\_location INT);

**Equipment** = (**<u>e\_ID</u>** INT, e\_name VARCHAR(100), e\_category VARCHAR(100), e\_purchase\_date DATE, e\_maintenance\_status VARCHAR(50), e\_last\_maintenance\_date DATE);

**Patient** = (**<u>p\_ID</u>** INT, p\_lname VARCHAR(50), p\_fname VARCHAR(50), p\_birthdate DATE, p\_email VARCHAR(100), p\_add\_housenb VARCHAR(50), p\_add\_postalcode VARCHAR(50), **p\_social\_security\_nb** CHAR(13), p\_add\_streetname VARCHAR(50), p\_gender VARCHAR(30), **p\_phone\_number** VARCHAR(15));

**Medical_file** = (**<u>#p\_ID</u>**, mf\_current\_diagnosis VARCHAR(255), mf\_history\_description VARCHAR(1000), mf\_rehabilitation\_protocol\_description VARCHAR(1000), mf\_date\_of\_last\_update DATE);

**Surgery** = (**<u>sg\_ID</u>** INT, s\_date DATE, s\_duration\_minutes INT, s\_type VARCHAR(100), s\_report VARCHAR(1000), **#p\_ID**, **#r\_ID**, **#s\_ID**);

**Consultation** = (**<u>c\_ID**</u> INT, c\_date DATE, c\_time TIME, c\_report VARCHAR(1000), c\_status VARCHAR(30), **<u>#sg\_ID***, **#p\_ID**, **#r\_ID**, **#s\_ID</u>**);

**is_followed_by** = (**<u>#s\_ID**, **#p\_ID</u>**);

**involves** = (**<u>#s\_ID**, **#n\_ID**, **#sg\_ID**, **#e\_ID**</u>);

**is_assigned_to** = (**<u>#n\_ID**, **#r\_ID**</u>);

**collaborates_with<** = (**<u>#s\_ID**, **#s\_ID\_1**</u>);<br/>


**Interrogation de la database:**<br/>
**Scenario A: Coordination of the surgeries**
The surgical manager oversees the coordination of surgeries. That includes ensuring that every room has the necessary staff and sterilized tools ready before a surgery begins. Their role also includes limiting downtime between surgery while avoiding that a surgeon is double-booked.

**Scenario B: Patient safety**
As we choose to present an outpatient clinic, there is a concern of the continuity of care. That is the role of the lead surgeon: ensuring patient safety and monitoring their consistency in the follow-up. For instance, the high-risk patients must receive their scheduled follow-up. 

Scenario C: Strategic planning
Finally, a long-term gestion of such a clinic necessitates a more analytical approach: The financial analyst ponders how to better allocate resources and study workload analytics.
