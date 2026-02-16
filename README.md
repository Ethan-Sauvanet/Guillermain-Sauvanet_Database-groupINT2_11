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



