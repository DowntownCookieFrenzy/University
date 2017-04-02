Create table Province
(Province_ID int primary key identity(1,1),
Province_Name varchar(20))

Insert into Province values ('Eastern Cape')
Insert into Province values ('Free State')
Insert into Province values ('Gauteng')
Insert into Province values ('Kwazulu-Natal')
Insert into Province values ('Limpopo')
Insert into Province values ('Mpumalanga')
Insert into Province values ('Northern Cape')
Insert into Province values ('North West')
Insert into Province values ('Western Cape')

Create table Title
(Title_ID int primary key identity(1,1),
Name varchar(10))

Insert into Title values ('Mr')
Insert into Title values ('Mrs')
Insert into Title values ('Miss')
Insert into Title values ('Dr')
Insert into Title values ('Prof')
Insert into Title  values ('Rev')
Insert into Title values ('Other')

Create table Allergy
(Allergy_ID int primary key identity(1,1),
Allergy_Name varchar(50))

Insert into Allergy values ('Milk')
Insert into Allergy values ('Pollen')
Insert into Allergy values ('Cat')
Insert into Allergy values ('Perfume')
Insert into Allergy values ('House dust mite')
Insert into Allergy values ('Tetracycline')
Insert into Allergy values ('Peanuts')
Insert into Allergy values ('Dilantin')
Insert into Allergy values ('Penicillin')
Insert into Allergy values ('Cephalosporins')
Insert into Allergy values ('Local anesthetics')
Insert into Allergy values ('Garlic')
Insert into Allergy values ('Aspartame')
Insert into Allergy values ('Soy')
Insert into Allergy values ('Egg')

Create table PatientImage 
(ImageID int primary key identity(1,1),
ImagePath varchar(50)
)
Go

insert into PatientImage values ('Photos\facebook-profile-picture.jpg')
insert into PatientImage values ('Photos\facebook-profile-picture.jpg')
insert into PatientImage values ('Photos\facebook-profile-picture.jpg')
insert into PatientImage values ('Photos\facebook-profile-picture.jpg')

Create table Patient
(Patient_No int primary key ,
Name varchar(50) not null,
Surname varchar(50) not null,
Title int references Title(Title_ID) ,
CitizenShip varchar(25),
ID_Number varchar(13) default 'N/A' ,
Passport_No varchar(20) default 'N/A',
Patient_Address varchar(150),
Province_ID int references Province(Province_ID),
TelePhone varchar(10),
Gender varchar(10),
Date_Of_Birth varchar(20),
ImageId int references PatientImage(ImageID))

Insert into Patient  values (1200001,'Kagisho','Mokgalaka',1,'South African','9101232595083','','212 Mazabuka Troye street Sunnyside',3,'0787553424','Male','19910203',1)
Insert into Patient  values (1200002,'Tom','Tonga',1,'South African','9101232595083','','55 Hollywood Heights Troye street Sunnyside',3,'0739694471','Male','19900223',2)
Insert into Patient  values (1200003,'Milton','Tonga',1,'South African','6501232595083','','55 Hollywood Heights Troye street Sunnyside',3,'0839521707','Male','19650812',3)
Insert into Patient values (1200004,'Muhammed','Gaffer',1,'South African','7212312213086','','1328 Elbeneza Hatfield street Pretoria',3,'0112364568','Male','19721231',4)
Insert into Patient values (1200005,'Lovedale','Maduna',1,'South African','6909235515085','','101 Fairview Village Hatfield',9,'0879800843','Female','19690923',2)
Insert into Patient values (1200006,'Maite','Bentley',1,'Zambian','','P763N09','12 The Gables Prospect street',8,'084115993','Female','19721231',2)
Insert into Patient values (1200007,'Chris','Kirkwood',1,'South African','8901034877980','','190 Life Good 7th street',1,'0157840012','Male','19890103',1)
Insert into Patient values (1200008,'Sbongile','Whitten',1,'Zimbabwean','','788U890','234 Prospect street Amazimtoti',4,'0826774123','Female','19721231',2)
Insert into Patient values (1200009,'Pieter','Grobler',1,'Dutch','','0023ID8','Heaven Gold No.89 ',7,'0436754322','Male','19650621',1)
Insert into Patient values (1200010,'Shelly','Cashman',1,'American','','551298PP','P45 The Fields Mountain street',2,'0785661880','Female','19550912',2)
Insert into Patient values (1200011,'Surette','Warnich',1,'Swiss','','9989SS89','8 The Boulders unkn street',8,'0112364568','Female','19850928',2)
Insert into Patient values (1200012,'Elizabeth','Maepa',1,'South African','6909238905070','','76 Ga-Masha',5,'0726568712','Female','19690923',2)
Insert into Patient values (1200013,'Piet','Morris',1,'South African','7912126753100','','78 The East Gate Lynwood road',3,'0746779012','Male','19791212',1)
Insert into Patient values (1200014,'April','May',1,'Zambian','','P889N55','X34 Elbeneza Hatfield street',2,'0112364568','Male','19700212',1)
Insert into Patient values (1200015,'Esmeron','Series',1,'South African','9609171175087','','90 Sgodiphola Mashishing',6,'0132351988','Male','19960917',1)
Insert into Patient values (1200016,'Frank','Lampard',1,'English','','EXJ99876','1101 The Boulders Thomas street',7,'0726002122','Male','19790720',1)
Insert into Patient values (1200017,'Steven','Gerald',1,'South African','8902126755568','','45 Mellow park south',4,'0542563200','Male','19890212',1)
Insert into Patient values (1200018,'Portia','Modise',1,'Swiss','','SW34232N','123 Tramshed Square Mopanie street',9,'0895563141','Female','19550522',2)
Insert into Patient values (1200019,'Emilly','Baron',1,'South African','9307090025608','','No. 78 No Home Address',1,'0113695596','Female','19930709',2)

Create table Next_Of_Kin
(Kin_ID int primary key identity(1,1),
Kin_Name varchar(50) not null,
Kin_Surname varchar(50) not null,
Kin_Title int references Title(Title_ID) ,
Kin_Address varchar(150),
Province_ID int references Province(Province_ID),
TelePhone varchar(10),
Patient_No int references Patient(Patient_No))

Insert into Next_Of_Kin values ('David','Maduna',1,'55 Hollywood Heights Troye street Sunnyside',3,'0132351236',1200003)
Insert into Next_Of_Kin values ('Iran','Gaffer',2,'1328 Elbeneza Hatfield street Pretoria',3,'0822586563',1200004)
Insert into Next_Of_Kin values ('Betty','Mokgalaka',2,'12 Apel street Polokwane',5,'0822586563',1200001)
Insert into Next_Of_Kin values ('Piet','Tonga',2,'01 Church street Lydenburg',6,'0798750215',1200002)
Insert into Next_Of_Kin values ('Clemente','Series',3,'90 Sgodiphola Mashishing',6,'0132351988',1200015)
Insert into Next_Of_Kin values ('Rob','Warnich',5,'8 The Boulders unkn street',8,'0112364568',1200011)
Insert into Next_Of_Kin values ('Wayne','Baron',2,'No. 78 No Home Address',1,'0113695596',1200019)
Insert into Next_Of_Kin values ('Esther','Maepa',3,'76 Ga-Masha',5,'085212512',1200012)
Insert into Next_Of_Kin values ('Tshepo','McTosh',6,'8 Heaven High way',8,'0112364568',1200006)
Insert into Next_Of_Kin values ('Roux','Khubeka',4,'No. 78 No Home Address',2,'0112364568',1200017)
Insert into Next_Of_Kin values ('Gama','Owen',6,'11 The Gables 7th street',2,'0125365215',1200009)
Insert into Next_Of_Kin values ('Lerato','Msibi',3,'7 Fountain High burnett street',1,'0112364568',1200014)
Insert into Next_Of_Kin values ('Mark','Williams',2,'09 I am Home park street',2,'0895623001',1200016)

Create table PatientAllergy
(Patient_No int references Patient(Patient_No),
Allergy_ID int references Allergy(Allergy_ID))

insert into PatientAllergy values (1200002,4)
Insert into PatientAllergy values(1200001,1)
Insert into PatientAllergy values (1200001,3)
insert into PatientAllergy values (1200002,5)
Insert into PatientAllergy values(1200001,11)
Insert into PatientAllergy values (1200003,15)
Insert into PatientAllergy values (1200003,4)
Insert into PatientAllergy values (1200003,10)
Insert into PatientAllergy values (1200012,1)
Insert into PatientAllergy values (1200012,11)
Insert into PatientAllergy values (1200012,9)
Insert into PatientAllergy values (1200009,10)
Insert into PatientAllergy values (1200015,2)
Insert into PatientAllergy values (1200015,7)
Insert into PatientAllergy values (1200009,3)
Insert into PatientAllergy values (1200014,6)
Insert into PatientAllergy values (1200014,8)
Insert into PatientAllergy values (1200005,6)
Insert into PatientAllergy values (1200008,6)
Insert into PatientAllergy values (1200011,8)
Insert into PatientAllergy values (1200004,2)


Create table FamilyRelationship
(ID int primary key identity(1,1),
Name varchar(50))

insert into FamilyRelationship values ('Aunt')
insert into FamilyRelationship values ('Brother')
insert into FamilyRelationship values ('Cousin')
insert into FamilyRelationship values ('Daughter')
insert into FamilyRelationship values ('Father')
insert into FamilyRelationship values ('Grandfather')
insert into FamilyRelationship values ('Grandmother')
insert into FamilyRelationship values ('Great-granddaughter')
insert into FamilyRelationship values ('Great-grandfather')
insert into FamilyRelationship values ('Great-grandmother')
insert into FamilyRelationship values ('Great-grandson')
insert into FamilyRelationship values ('Husband')
insert into FamilyRelationship values ('Mother')
insert into FamilyRelationship values ('Nephew')
insert into FamilyRelationship values ('Niece')
insert into FamilyRelationship values ('Sister')
insert into FamilyRelationship values ('Son')
insert into FamilyRelationship values ('Uncle')
insert into FamilyRelationship values ('Wife')
Go

Create table Family_Member
(Member_ID int ,
Patient_No int  references Patient(Patient_No),
Relationship int references FamilyRelationship(ID),
constraint MemeberID primary key (Member_ID,Patient_No))

Insert into Family_Member values (1200002,1200003,2)
Insert into Family_Member values (1200003,1200002,2)
Insert into Family_Member values (1200003,1200001,14)
Insert into Family_Member values (1200001,1200003,3)
Insert into Family_Member values (1200002,1200015,7)
Insert into Family_Member values (1200011,1200008,10)
Insert into Family_Member values (1200009,1200004,6)
Insert into Family_Member values (1200014,1200007,11)

Create table User_Role
(Role_ID int primary key identity(1,1),
Role_Name varchar(50),
RAccess_Add_Consultation varchar(20),
RAccess_Medical_History varchar(20),
RAccess_Maintain_Medical_History varchar(20),
RAccess_Transfer_Patient varchar(20),
RAccess_Issue_Medication varchar(20),
RAccess_Isseue_Medical_Supplies varchar(20),
RAccess_Add_User_Role varchar(20),
RAccess_Maintain_User_Role varchar(20))

Insert into User_Role values ('Administrator','True','True','True','True','True','True','True','True')
Insert into User_Role values ('Doctor','True','True','True','True','True','True','True','True')
Insert into User_Role values ('Normal User','False','False','False','False','True','True','False','False')

Create table Question
(Question_ID int primary key identity(1,1),
Question varchar(150))

Insert into Question values ('What was your childhood nickname?')
Insert into Question values ('In what city did you meet your spouse/significant other?')
Insert into Question values ('What was the last name of your third grade teacher?')
Insert into Question values ('In what city or town was your first job?')
Insert into Question values ('What is your oldest brothers birthday month and year? (e.g., January 1900)')
Insert into Question values ('What is your maternal grandmothers maiden name?')
Insert into Question values ('What is the first name of the boy or girl that you first kissed?')
Insert into Question values ('What was your favorite place to visit as a child?')
Insert into Question values ('Where were you when you had your first kiss?')

Create table Users
(User_ID int primary key identity(1,1),
User_Password varchar(10),
UserName varchar(20),
Qualification varchar(50) default 'N/A',
Practice_Number varchar(20) default 'N/A',
Name varchar(50),
Surname varchar(50),
ID_Number varchar(13) default 'N/A',
Answer varchar(50),
Email varchar(50) default 'Null',
Question_ID int references Question(Question_ID),
Role_ID int references User_Role(Role_ID))

Insert into Users values ('xsq','tom','N/A','N/A','Hogan','Prince','6502122200886','Wind','Null',1,3)
Insert into Users values ('ok','kg','MBChB(Pret)FC Ortho(SA) MMed Ortho (Stell)','P9890-N98','Kagisho','Shai','6502122200886','Wind','Null',1,2)


Create table Reports
(ReportID int primary key identity(1,1),
Location varchar(100),
ReportDate varchar(50),
UserID int references Users(User_ID))

Create table Audit_Log
(LogID int primary key identity(1,1),
UserID int references Users(User_ID),
Description varchar(250),
LogDate datetime)

Insert into Audit_Log values (2,'Update Patient No. 1200002 first name',CAST(0xFFFFFFFE000CE8B0 AS DateTime))
Insert into Audit_Log values (2,'Add New Patient No. 1200005',CAST(0xFFFFFFFE000CE8B0 AS DateTime))
Insert into Audit_Log values (1, 'Update Patient First Name, User No. 1',CAST(0xFFFFFFFE0012F390 AS DateTime))
Insert into Audit_Log values (2, 'Insert New Disease No. 5',CAST(0xFFFFFFFE0012F390 AS DateTime))
Insert into Audit_Log values (1, 'Insert New Injury No. 3',CAST(0xFFFFFFFE0011DA50 AS DateTime))
Insert into Audit_Log values (1, 'Insert New Injury No. 7',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Insert New Consultation No. 1',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Insert New Consultation No. 2',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (2, 'Insert New Medication No. 2',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Insert New Medication No. 4',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Delete Medication No. 1',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Update Medical Status No. 1',CAST(0xFFFFFFFE000FA7D0 AS DateTime))
Insert into Audit_Log values (1, 'Reprint Sick Note No. 5',CAST(0xFFFFFFFE000FA7D0 AS DateTime))

Create table Medical_History
(History_ID int primary key identity(1,1),
Med_Hist_Weight decimal(5),
Med_Hist_Height decimal(5),
Med_Hist_BMI decimal(5),
Med_Hist_UrineTest varchar(20) default 'N/A',
Med_Hist_Temperature decimal(5) default 0,
Med_Hist_HeartRate decimal(5) default 0,
Med_Hist_Waist decimal(5) default 0,
Med_Hist_BloodPressure varchar(10)default 'N/A',
Med_Hist_BloodGlucose decimal(5) default 0,
Med_Hist_Oedema varchar(20) default 'N/A',
Med_Hist_EpilepsyBloods decimal(5) default 0,
Med_Hist_Date varchar(30),
Med_Hist_Note varchar(150) default 'N/A',
Patient_No int references Patient(Patient_No))

Insert into Medical_History values (65,1.85,94.4,'pH',37,75,32,60,0,'N/A',0,'02-02-2011 11:48 AM','N/A',1200001)
Insert into Medical_History  values (70,1.92,103.2,'pH',41,79,34,63,0,'N/A',0,'09-06-2012 11:48 AM','N/A',1200002)
Insert into Medical_History values (69,1.88,96.2,'pH',34,70,34,62,0,'N/A',0,'15-06-2011 3:12 PM','N/A',1200003)
Insert into Medical_History values (88,1.55,111.4,'HPN',40,71,36,75,0,'N/A',0,'02-02-2011 08:55 AM','N/A',1200015)
Insert into Medical_History  values (56,1.09,89.2,'JP',41,82,30,67,0,'N/A',0,'12-12-2012 1:32 PM','N/A',1200007)
Insert into Medical_History values (76,1.70,89.9,'Nic',39,76,41,70,0,'N/A',0,'19-06-2012 3:12 PM','N/A',1200009)
Insert into Medical_History values (77,1.73,99.4,'Nic',37,78,36,68,0,'N/A',0,'21-01-2013 9:55 AM','N/A',1200012)
Insert into Medical_History  values (62,1.96,101.7,'pH',55,86,36,60,0,'N/A',0,'09-01-2013 3:23 PM','N/A',1200011)
Insert into Medical_History values (69,7.88,96.2,'pH',36,74,34,62,0,'N/A',0,'15-02-2013 2:54 PM','N/A',1200003)

Create table Consultation
(Consult_No int primary key identity(1,1),
Con_Weight decimal(5),
Con_Hist_Height decimal(5),
Con_Hist_BMI decimal(5),
Con_Hist_UrineTest varchar(20) default 'N/A',
Con_Hist_Temperature decimal(5) default 0,
Con_Hist_HeartRate decimal(5) default 0,
Con_Hist_Waist decimal(5) default 0,
Con_Hist_BloodPressure varchar(10)default 'N/A',
Con_Hist_BloodGlucose decimal(5) default 0,
Con_Hist_Oedema varchar(20) default 'N/A',
Con_Hist_EpilepsyBloods decimal(5) default 0,
Con_Consult_Date varchar(30),
Con_Note varchar(150) default 'N/A',
User_ID int references Users(User_ID),
Patient_No int references Patient(Patient_No))

Insert into Consultation  values (65,1.85,94.4,'pH',37,75,32,60,0,'N/A',0,'02-02-2012 11:48 AM','N/A',2,1200001)
Insert into Consultation  values (70,1.92,103.2,'pH',41,79,34,63,0,'N/A',0,'09-06-2012 11:48 AM','N/A',2,1200002)
Insert into Consultation  values (69,1.88,96.2,'pH',34,70,34,62,0,'N/A',0,'15-06-2011 3:12 PM','N/A',2,1200003)
Insert into Consultation values (88,1.55,111.4,'HPN',40,71,36,75,0,'N/A',0,'02-02-2011 08:55 AM','N/A',2,1200015)
Insert into Consultation  values (56,1.09,89.2,'JP',41,82,30,67,0,'N/A',0,'12-12-2012 1:32 PM','N/A',2,1200007)
Insert into Consultation values (76,1.70,89.9,'Nic',39,76,41,70,0,'N/A',0,'19-06-2012 3:12 PM','N/A',2,1200009)
Insert into Consultation values (77,1.73,99.4,'Nic',37,78,36,68,0,'N/A',0,'21-01-2013 9:55 AM','N/A',2,1200012)
Insert into Consultation  values (62,1.96,101.7,'pH',55,86,36,60,0,'N/A',0,'09-01-2013 3:23 PM','N/A',2,1200011)
Insert into Consultation values (69,7.88,96.2,'pH',36,74,34,62,0,'N/A',0,'15-02-2013 2:54 PM','N/A',2,1200003)

Create table Medical_Supply
(Med_Sup_ID int primary key identity(1,1),
Med_Sup_Name varchar(50),
Med_Sup_Quantity int,
Med_Sup_QtyAvailable int,
Med_Sup_Unit varchar(10) default 'N/A')

Insert into Medical_Supply values ('Ultrasound Gel',41,41,'N/A')
Insert into Medical_Supply values ('Bandages',204,204,'N/A')
Insert into Medical_Supply values ('Burn Garment',52,52,'N/A')
Insert into Medical_Supply values ('Gauze',19,19,110)
Insert into Medical_Supply values ('Sulphur ointment',56,56,100)
Insert into Medical_Supply values ('Maculopapular',212,212,50)
Insert into Medical_Supply values ('Chlorhexidine 0.05%',26,26,'N/A')
Insert into Medical_Supply values ('Povidone',105,105,150)
Insert into Medical_Supply values ('Latex Gloves',124,124,'N/A')
Insert into Medical_Supply values ('Syringe',200,200,'N/A')

Create table IssueMedicalSupply
(User_ID int references Users(User_ID),
Med_Sup_ID int references Medical_Supply(Med_Sup_ID),
Quantity int,
IssueDate varchar(30))

Insert into IssueMedicalSupply values (2,2,23,GETDATE())
Insert into IssueMedicalSupply values (2,4,12, GETDATE())
Insert into IssueMedicalSupply values (2,2,4,GETDATE())
Insert into IssueMedicalSupply values (2,5,7,GETDATE())
Insert into IssueMedicalSupply values (2,6,45,GETDATE())
Insert into IssueMedicalSupply values (2,3,6,GETDATE())
Insert into IssueMedicalSupply values (2,4,3,GETDATE())
Insert into IssueMedicalSupply values (2,8,20,GETDATE())


Create table Specialisation
(Spec_ID int primary key identity(1,1),
Name varchar(50))

insert into Specialisation values ('Anaesthesiologist')
insert into Specialisation values ('Audiologist')
insert into Specialisation values ('Bariatric Centre')
insert into Specialisation values ('Breast Practitioner')
insert into Specialisation values ('Cardio Thoracic Surgeon')
insert into Specialisation values ('Cardiologist')
insert into Specialisation values ('Casualty')
insert into Specialisation values ('Chiropractor')
insert into Specialisation values ('Clinical Neuro Physiologist')
insert into Specialisation values ('Clinical Physiologist')
insert into Specialisation values ('Counselling Psychologist')
insert into Specialisation values ('Dental Surgeon')
insert into Specialisation values ('Dentist')
insert into Specialisation values ('Dietician')
insert into Specialisation values ('Ear Nose & Throat Surgeon')
insert into Specialisation values ('Electrophysiologist')
insert into Specialisation values ('Endocrinology')
insert into Specialisation values ('Foetal Maternal Medicine')
insert into Specialisation values ('Gastroenterologist')
insert into Specialisation values ('General & Breast Surgeon')
insert into Specialisation values ('General Practitioner')
insert into Specialisation values ('General Surgeon')
insert into Specialisation values ('Geneticist')
insert into Specialisation values ('Gynaecologist')
insert into Specialisation values ('Gynaecologist/Obstetrician')
insert into Specialisation values ('Haematologist')
insert into Specialisation values ('Hand Specialist')
insert into Specialisation values ('Homeopath')
insert into Specialisation values ('Hyperbaric Physician')
insert into Specialisation values ('Intensivist')
insert into Specialisation values ('Interventionist')
insert into Specialisation values ('Maxillo-Facial & Oral Surgeon')
insert into Specialisation values ('Medical Oncologist/ Specialist Physician')
insert into Specialisation values ('Microbiologist')
insert into Specialisation values ('Mid Wife')
insert into Specialisation values ('Molecular Medicine Institute')
insert into Specialisation values ('Neonatologist')
insert into Specialisation values ('Nephrologist')
insert into Specialisation values ('Neuro-Surgeon')
insert into Specialisation values ('Neurologist')
insert into Specialisation values ('Neurophysiologist')
insert into Specialisation values ('Nuclear Physician')
insert into Specialisation values ('Occupational Health & Safety')
insert into Specialisation values ('Occupational Therapist')
insert into Specialisation values ('Oncologist')
insert into Specialisation values ('Ophthalmologist')
insert into Specialisation values ('Oral Hygienist')
insert into Specialisation values ('Optometrist')
insert into Specialisation values ('Orthodontist')
insert into Specialisation values ('Orthopaedic Surgeon')
insert into Specialisation values ('Orthotist')
insert into Specialisation values ('Orthotist & Prosthetist')
insert into Specialisation values ('Osteoporosis Clinic')
insert into Specialisation values ('Paediatric Cardiologist')
insert into Specialisation values ('Paediatric Neurodevelopment Assessor')
insert into Specialisation values ('Paediatric Neurologist')
insert into Specialisation values ('Paediatric Oncologist')
insert into Specialisation values ('Paediatric Pulmolonogist')
insert into Specialisation values ('Paediatric Surgeon')
insert into Specialisation values ('Paediatrician')
insert into Specialisation values ('Pain Control')
insert into Specialisation values ('Pathologist')
insert into Specialisation values ('Periodontist')
insert into Specialisation values ('Pharmacy')
insert into Specialisation values ('Physician')
insert into Specialisation values ('Physiotherapist')
insert into Specialisation values ('Plastic Surgeon')
insert into Specialisation values ('Plastic/Reconstructive Surgeon')
insert into Specialisation values ('Podiatrist')
insert into Specialisation values ('Prosthtist')
insert into Specialisation values ('Prosthodontist')
insert into Specialisation values ('Psychiatrist')
insert into Specialisation values ('Psychiatrist Child')
insert into Specialisation values ('Psychologist')
insert into Specialisation values ('Pulmonologist')
insert into Specialisation values ('Radiation Oncologist')
insert into Specialisation values ('Radiographer')
insert into Specialisation values ('Radiologist')
insert into Specialisation values ('Respiratory practice')
insert into Specialisation values ('Respiratory Specialist')
insert into Specialisation values ('Rheumatologist')
insert into Specialisation values ('Schelotherapist')
insert into Specialisation values ('Sexologist')
insert into Specialisation values ('Specialist Physician')
insert into Specialisation values ('Specialist Surgeon')
insert into Specialisation values ('Speech & Hearing Therapist')
insert into Specialisation values ('Speech & Language Therapist & Audiologist')
insert into Specialisation values ('Sports Dietician')
insert into Specialisation values ('Sports Physician')
insert into Specialisation values ('Trauma Doctor')
insert into Specialisation values ('Trauma Surgeon')
insert into Specialisation values ('Ultra Sound')
insert into Specialisation values ('Urologist')
insert into Specialisation values ('Vascular Surgeon')
insert into Specialisation values ('Vascular/General Surgeon')
insert into Specialisation values ('Wound Care Clinician')
insert into Specialisation values ('Wound-Stoma Clinician')
insert into Specialisation values ('Other')

Create table Referral_Doctor
(Doc_ID int primary key identity(0,1),
Doc_Name varchar(50),
Doc_Surname varchar(50),
Doc_Specialisation int references Specialisation(Spec_ID),
Doc_Phone varchar(10) default 'N/A',
Doc_Email varchar(25)default 'N/A',
Doc_Address varchar(150) default 'N/A',
Doc_Province int references Province(Province_ID))

Insert into Referral_Doctor values('N/A','N/A',12,'0122113456','N/A' ,'No.12 Orcacle Building Sandton',3)
Insert into Referral_Doctor values('Jason','Crane',12,'0122113456','N/A' ,'No.12 Orcacle Building Sandton',3)
Insert into Referral_Doctor values('James','Beatty',15,'0897765330','N/A' ,'No.45 Orcacle Building Sandton',3)
Insert into Referral_Doctor values('Tim','Perks',21,'0122113456', 'N/A','No.12 Orcacle Building Sandton',3)
Insert into Referral_Doctor values('Thomas','Coronel',4,'0875437765','N/A' ,'No.12 Orcacle Building Sandton',8)
Insert into Referral_Doctor values('Bheki','Mahlangu',20,'0132345678','N/A' ,'No.12 Orcacle Building Sandton',6)
Insert into Referral_Doctor values('James','Maidi',15,'0567673211','N/A' ,'No.45 Orcacle Building Sandton',1)
Insert into Referral_Doctor values('Kota','Joe',11,'0811234588', 'N/A','No.12 Orcacle Building Sandton',5)
Insert into Referral_Doctor values('David','Beckam',18,'0656763421','N/A' ,'No.12 Orcacle Building Sandton',6)
Insert into Referral_Doctor values('Fruit','Master',9,'0823236785','N/A' ,'No.12 Orcacle Building Sandton',4)
Insert into Referral_Doctor values('Vegetable','Ingredients',1,'0235568876','N/A' ,'No.45 Orcacle Building Sandton',9)
Insert into Referral_Doctor values('Michael','Young',7,'0734567890', 'N/A','No.12 Orcacle Building Sandton',9)
Insert into Referral_Doctor values('Thomas','Crawford',4,'0789874331','N/A' ,'No.12 Orcacle Building Sandton',2)
Insert into Referral_Doctor values('Prince','Charming',7,'0811235500','N/A' ,'No.12 Orcacle Building Sandton',7)
Insert into Referral_Doctor values('McGraw','Hill',16,'0567673211','N/A' ,'No.45 Orcacle Building Sandton',7)
Insert into Referral_Doctor values('January','Friend',19,'0765456554', 'N/A','No.12 Orcacle Building Sandton',5)

Create table Referral_Clinic
(Clinic_ID int primary key identity(0,1),
Clinic_Name varchar(50),
Clinic_Phone varchar(10) default 'N/A',
Clinic_Address varchar(150) default 'N/A',
Clinic_Province int references Province(Province_ID))

Insert into Referral_Clinic values ('N/A','0132351256','12 Voortrekker street Mashishing',6)
Insert into Referral_Clinic values ('Lydenburg Clinic','0132351256','12 Voortrekker street Mashishing',6)
Insert into Referral_Clinic values ('C.A.R.E Clinic','0312677920','21 Jan Hofmeyer Road Westville',1)
Insert into Referral_Clinic values ('Midlands Laser Clinic','0333425406','90 pane street,block 1,room 2,medi clinic pietermaritzburg',1)
Insert into Referral_Clinic values ('MediClinic','0112323445','18 Troye street',5)
Insert into Referral_Clinic values ('Daaspoort Clinic','0114534534','67 More street Daaspoort',7)
Insert into Referral_Clinic values ('Get Better','0876567652','21 High way left Kwa-Mhlanga',4)
Insert into Referral_Clinic values ('Kalafong','0154335569','87 Middel east',1)
Insert into Referral_Clinic values ('Medical Centre','0882344434','X45 Jan Smut Avenue',8)
Insert into Referral_Clinic values ('Med e Mas','0132351256','765 Are we there yet',2)
Insert into Referral_Clinic values ('C.A.R.E Clinic','011403876','90 Lynwood Drive',3)
Insert into Referral_Clinic values ('Midlands Disabled','0333425406','Pain Centre,medi clinic pietermaritzburg',1)

Create table Referral_Hospital
(Hosp_ID int primary key identity(0,1),
Hosp_Name varchar(50),
Hosp_Phone varchar(10) default 'N/A',
Hosp_Address varchar(150) default 'N/A',
Hosp_Province int references Province(Province_ID))

Insert into Referral_Hospital values ('N/A','0413923911','Buckingham Road, Mount Croix, Port Elizabeth',1)
Insert into Referral_Hospital values ('Port Elizabeth Provincial Hospital','0413923911','Buckingham Road, Mount Croix, Port Elizabeth',1)
Insert into Referral_Hospital values ('Life Pasteur Hospital (Private)','0515226601','54 Pasteur Drive Hospital Park Bloemfontein',2)
Insert into Referral_Hospital values ('Helen Joseph Hospital','0114891011','Perth Road Westdene Johannesburg',3)
Insert into Referral_Hospital values ('Tshwane District Hospital','0123545958','Cnr Dr. Savage Rd and Voortrekker Rd Capital Park, Pretoria',3)
Insert into Referral_Hospital values ('Zuid Afrikaanse','0114891011','Celliers Road',7)
Insert into Referral_Hospital values ('Lyttenberg','0554568809','Perth Road Lytte Avenue',4)
Insert into Referral_Hospital values ('MediHelp','0143426699','Cnr. Jorrico & Hellen',8)
Insert into Referral_Hospital values ('Steve Tshwete','0132332423','878 Mhluzi street',5)
Insert into Referral_Hospital values ('Nelson Mandela Hospital','0125425148','6 Nelson Mandela drive',9)
Insert into Referral_Hospital values ('Get Better','0152521200','91 Almost there What road',6)
Insert into Referral_Hospital values ('Steve Biko','0545253655','89 Steve Biko Avenue Block 0054',6)
Insert into Referral_Hospital values ('Wynakker','0112563265','25 Lukas Potgiter straat',2)

Create table Transfer_Type
(Type_ID int primary key identity(1,1),
Type_Name varchar(50))

Insert into Transfer_Type values('Specialised care')
Insert into Transfer_Type values('Diagnostic ')
Insert into Transfer_Type values('Therapeutic')
Insert into Transfer_Type values('Pathologist')
Insert into Transfer_Type values('Vascular/General Surgeon')
Insert into Transfer_Type values('Plastic/Reconstructive Surgeon')
Insert into Transfer_Type values('Sports Physician')
Insert into Transfer_Type values('Oral Hygienist')
Insert into Transfer_Type values ('Organic Surgery')
Insert into Transfer_Type values ('Detainee')
Insert into Transfer_Type values ('Wound- stoma')
Insert into Transfer_Type values ('Speach & Hearing problems')

Create table Patient_Transfer
(Transfer_ID int primary key identity(1,1),
Transfer_Date varchar(25),
Doc_ID int null  references Referral_Doctor(Doc_ID)default 0,
Hosp_ID int null  references Referral_Hospital(Hosp_ID) default 0,
Clinic_ID int null  references Referral_Clinic(Clinic_ID) default 0,
Type_ID int references Transfer_Type(Type_ID),
Patient_No int references Patient(Patient_No),
Diagnosis varchar(150)
--constraint CK_Patient_Transfer_OneNonNull CHECK (
--         (Doc_ID is not null AND Hosp_ID is default 0 and Clinic_ID is default 0) or
--         (Doc_ID is default 0 AND Hosp_ID is not null and Clinic_ID is default 0) or
--         (Doc_ID is default 0 AND Hosp_ID is default 0 and Clinic_ID is not null)
--         )
)

Insert into Patient_Transfer values(getdate(),3,0,0,1,1200002,'Plastic Surgeory')
Insert into Patient_Transfer values(getdate(),0,2,0,1,1200012,'Pain in upper Synchokidney')
Insert into Patient_Transfer values(getdate(),0,5,0,1,1200005,'Angina, Chest pains & unregular heart beat')
Insert into Patient_Transfer values(getdate(),0,0,4,1,1200006,'Postate Cancer')
Insert into Patient_Transfer values(getdate(),0,0,4,1,1200003,'Plastic/Reconstructive Surgeon')
Insert into Patient_Transfer values(getdate(),0,0,2,1,1200003,'Speach & Hearing Problems')
Insert into Patient_Transfer values(getdate(),2,0,0,1,1200003,'Specialist Physician')
Insert into Patient_Transfer values(getdate(),4,0,0,1,1200003,'Intenstille Disorder')
Insert into Patient_Transfer values(getdate(),0,3,0,1,1200003,'Concurring Vommits')

Create table Condition_Type
(Con_Type_ID int primary key identity(1,1),
Con_Type_Name varchar(20))

Insert into Condition_Type values ('Disease')
Insert into Condition_Type values ('Injury')
Insert into Condition_Type values ('Medical Status')

Create table Condition 
(Con_ID int identity(1,1) primary key,
Con_Name varchar(50),
Con_Priority varchar(10),
Con_Chronic varchar(10),
Con_Type int references Condition_Type(Con_Type_ID))

Insert into Condition values ('Chronic kidney disease','Low','True',1)
Insert into Condition values ('Broken tibia','Low','False',2)
Insert into Condition values ('Pregnant','Low','False',3)
Insert into Condition values ('Asthma','Medium','True',1)
Insert into Condition values ('Diabetes mellitus type 1, in adults','Low','False',1)
Insert into Condition values ('Fever','Low','False',1)
Insert into Condition values ('Stroke','Low','False',1)
Insert into Condition values ('Malaria','Low','False',1)


Create table Symptom
(Symptom_ID int primary key identity(1,1),
Symptom_Name varchar(50))

Insert into Symptom values ('Dyspnoena or shortness of breath')
Insert into Symptom values ('Cough')
Insert into Symptom values ('Hypertension')
Insert into Symptom values ('Diabetes mellitus')
Insert into Symptom values ('Hunger')
Insert into Symptom values ('Thirst')
Insert into Symptom values ('Weight loss')
Insert into Symptom values ('ketoacidosis')
Insert into Symptom values ('Difficulty speaking or understanding')
Insert into Symptom values ('Dizzinessm loss of balance or unsteady gait')
Insert into Symptom values ('Headache')
Insert into Symptom values ('Flu-like symptoms')
Insert into Symptom values ('Fever')
Insert into Symptom values ('Muscle joint pains')
Insert into Symptom values ('Nausea and vomitting')


Create table Diagnosis
(Consult_No int references Consultation(Consult_No),
Con_ID int references Condition(Con_ID))

Create table Condition_Symptom
(Con_ID int references Condition(Con_ID) ,
Symptom_ID int references Symptom(Symptom_ID))
--constraint CS_ID primary key (Con_ID,Symptom_ID))

Insert into Condition_Symptom values (4,1)
Insert into Condition_Symptom values (4,2)
Insert into Condition_Symptom values (1,3)
Insert into Condition_Symptom values (1,4)
Insert into Condition_Symptom values (5,5)
Insert into Condition_Symptom values (5,6)
Insert into Condition_Symptom values (5,7)
Insert into Condition_Symptom values (5,8)
Insert into Condition_Symptom values (7,9)
Insert into Condition_Symptom values (7,10)
Insert into Condition_Symptom values (7,11)
Insert into Condition_Symptom values (8,12)
Insert into Condition_Symptom values (8,13)
Insert into Condition_Symptom values (8,14)
Insert into Condition_Symptom values (8,15)
Insert into Condition_Symptom values (7,15)

Create table MedHistCondition
(History_ID int references Medical_History(History_ID),
Con_ID int references Condition(Con_ID),
RiskLevel varchar(6))

Insert into MedHistCondition values (1,2,'Low')
Insert into MedHistCondition values (1,3,'Low')
Insert into MedHistCondition values (1,5,'Medium')
Insert into MedHistCondition values (2,2, 'Low')
Insert into MedHistCondition values (2,4,'High' )
Insert into MedHistCondition values (2,6,'High')
Insert into MedHistCondition values (4,4,'Medium')

Create table Prescription
(Presc_ID int primary key identity(1,1),
History_ID int references Medical_History(History_ID),
Patient_No int references Patient(Patient_No),
User_ID int references Users(User_ID))

Insert into Prescription values (1,1200001,2)
Insert into Prescription values (2,1200002,2)
Insert into Prescription values (3,1200003,2)
Insert into Prescription values (4,1200004,2)
Insert into Prescription values (5,1200010,2)
Insert into Prescription values (6,1200010,2)

Create table Prescription_Note
(PNote_ID int primary key identity(1,1),
Diagnosis varchar(150),
Treatment varchar(150) ,
Presc_ID int references Prescription(Presc_ID))

Insert into Prescription_Note values ('Chronic kidney disease','Lamivudine Tablets 150MG',1)
Insert into Prescription_Note values ('Broken tibia','Water for injection',2)
Insert into Prescription_Note values ('Malaria','Calcium gluconate 10%',3)


Create table Medication_Type
(Med_Type_ID int primary key identity(1,1),
Med_Type_Name varchar(150))

Insert into Medication_Type values ('Small Volume Parenteral')
Insert into Medication_Type values ('Dry Drugs')
Insert into Medication_Type values ('Eye, Ear, and Nose Drops & Asthma Spray')
Insert into Medication_Type values ('Medical Liquids')
Insert into Medication_Type values ('TB Drugs')
Insert into Medication_Type values ('Antibiotic')
Insert into Medication_Type values ('Solid Dosage Form-Anti-Retrovirals')
Insert into Medication_Type values ('Oral')
Insert into Medication_Type values ('Procaine Injection')


Create table Medication
(Med_ID int primary key identity(1,1),
Med_Name varchar(250),
Unit varchar(10),
Quantity_Bought int,
QtyAvailable int,
Min_Stock_Level int,
Med_Type int references Medication_Type(Med_Type_ID))

Insert into Medication values ('Lamivudine Tablets 150MG','6s',256,256,10,7)
Insert into Medication values ('Zidovudine Tablets 300MG','14s',500,500,10,7)
Insert into Medication values ('Calcium gluconate 10%','10ml',212,212,5,1)
Insert into Medication values ('Water for injection','10ml',150,150,10,4)
Insert into Medication values ('Calamine Lotion BP','100ml',100,100,10,3)
Insert into Medication values ('Acetic acid 2% in 455 alcohol ear solution','10ml',50,50,5,3)
Insert into Medication values ('Paracetamol 120mg/5ml','50ml',320,320,10,4)
Insert into Medication values ('Ethambutol Tablets 400mg','84',100,100,10,5)
Insert into Medication values ('Amoxycillin 125mg/5ml','100ml',50,50,5,6)
Insert into Medication values ('Phenoxymethyl penicillin 250mg/5ml','100ml',60,60,10,6)
Insert into Medication values ('Methydopa 250mg','50ml',120,120,10,8)
Insert into Medication values ('Erythromycin 500mg','84',100,100,10,9)
Insert into Medication values ('Aspirin Soluble','180ml',523,523,5,8)
Insert into Medication values ('Phenoxymethyl penicillin 150mg/5ml','100ml',26,26,5,3)
 
Create table Prescribed_Medication
(Presc_ID int references Prescription(Presc_ID),
Med_ID int references Medication(Med_ID),
Prescr_Med_Quantity int,
Dosage varchar(100))

Insert into Prescribed_Medication values (1,3,2,'5 spoons per day')
Insert into Prescribed_Medication values (1,2,5,'5 nazal per day')
Insert into Prescribed_Medication values (2,2,20,'3 spoons per day')
Insert into Prescribed_Medication values (2,5,12,'2 times every night')

Create table Issued_Medication
(Issue_Med_ID int primary key identity(1,1),
Med_ID int references Medication(Med_ID),
Issue_Med_Quantity int,
IssueDate varchar(30)
)

Insert into Issued_Medication
(Med_ID,Issue_Med_Quantity,IssueDate)
 values (1,20,GETDATE()),(3,12,GETDATE()),(4,15,GETDATE()),(4,10,GETDATE()),(7,16,GETDATE()),(2,21,GETDATE())
 ,(5,25,GETDATE())
 
Create table MedWaste
(Med_Waste_ID int primary key identity(1,1),
Med_Waste_Description varchar(50),
Med_Waste_Date datetime,
Med_Waste_Quantity int,
Med_Waste_Unit varchar(10),
Med_ID int references Medication(Med_ID)
)

Insert into MedWaste  
(Med_Waste_Description,Med_Waste_Date,Med_Waste_Quantity,Med_Waste_Unit,Med_ID)
values ('Expired',CAST(0xFFFFFFFE0011DA50 AS DateTime),25,'100ml',5),('Factory default',CAST(0xFFFFFFFE0011DA50 AS DateTime),5,'50s',7)


Create table Transfer_Note
(TNote_ID int primary key identity(1,1),
Instituition varchar(50),
Referral_Reason varchar(150),
Note_Date varchar(30),
Transfer_ID int references Patient_Transfer(Transfer_ID))

Create table Sick_Note
(SNote_ID int primary key identity(1,1),
Desription varchar(200),
Note_Date varchar(30),
BookedFrom varchar(20),
BookTo varchar(20),
Patient_No int references Patient(Patient_No),
User_ID int references Users(User_ID))
Go

Insert into Sick_Note values ('Angina, heart disease', '2012-09-12','2012-09-12','2012-09-30',1200001,2)

Create table WaitingList
(ListID int primary key identity(1,1),
PatientNo int references patient(Patient_No),
Time varchar(20))
Go



-------------------Allergy-----------------
create procedure sp_Allergy_Update 
(
	@Allergy_ID int,
	@Allergy_Name varchar(50)
)
as
UPDATE Allergy 
SET 
    Allergy_Name=@Allergy_Name 
WHERE Allergy_ID = @Allergy_ID 
Go

create procedure sp_Allergy_Select
as
SELECT *
FROM Allergy 
Go

create procedure sp_Allergy_Insert 
(
	@Allergy_Name varchar(50)
	)
as
INSERT INTO Allergy values(@Allergy_Name )
Go

create procedure sp_Allergy_Delete
(
	@Allergy_ID int
	)
as
Delete Allergy
WHERE Allergy_ID  = @Allergy_ID
Go

------------Condition----------------------
create procedure sp_Condition_Update 
(
	@Con_ID int,
	@Con_Name varchar(50),
	@Con_Priority varchar(10),
	@Con_Chronic varchar(10),
	@Con_Type int
)
as
UPDATE Condition 
SET 
    Con_Name  =@Con_Name  ,
	Con_Priority  = @Con_Priority ,
	Con_Chronic = @Con_Chronic ,
	Con_Type=@Con_Type 
WHERE Con_ID  = @Con_ID  
Go

create procedure sp_Condition_Select
as
SELECT *
FROM Condition 
Go

create procedure sp_Condition_Insert 
(
	@Con_Name varchar(50),
	@Con_Priority varchar(10),
	@Con_Chronic varchar(10),
	@Con_Type int
	)
as
INSERT INTO Condition values(@Con_Name,@Con_Priority,@Con_Chronic ,@Con_Type)
Go

create procedure sp_Condition_Delete
(
	@Con_ID int
	)
as
Delete Condition
WHERE Con_ID  = @Con_ID
Go

------------Condition_Type----------------------
create procedure sp_ConditionType_Update 
(
	@Con_Type_ID int,
	@Con_Type_Name varchar(20)
)
as
UPDATE Condition_Type  
SET 
    Con_Type_Name =@Con_Type_Name 
     
WHERE Con_Type_ID  = @Con_Type_ID  
Go

create procedure sp_ConditionType_Select
as
SELECT *
FROM Condition_Type  
Go

create procedure sp_ConditionType_Insert 
(
	@Con_Type_Name varchar(20)
	)
as
INSERT INTO Condition_Type  values(@Con_Type_Name   )
Go

create procedure sp_ConditionType_Delete
(
	@Con_Type_ID int
	)
as
Delete Condition_Type 
WHERE Con_Type_ID  = @Con_Type_ID
Go

-------------------Consultation-----------------
create procedure sp_Consultation_Update 
(
	@Consult_No int,
	@Con_Weight decimal,
	@Con_Hist_Height decimal,
	@Con_Hist_BMI decimal,
	@Con_Hist_UrineTest varchar(20),
	@Con_Hist_Temperature decimal,
	@Con_Hist_HeartRate decimal,
	@Con_Hist_Waist decimal,
	@Con_Hist_BloodPressure varchar(10),
	@Con_Hist_BloodGlucose decimal,
	@Con_Hist_Oedema varchar(20),
	@Con_Hist_EpilepsyBloods decimal,
	@Con_Consult_Date varchar(30),
	@Con_Note varchar(150),
	@User_ID int,
	@Patient_No int
)
as
UPDATE Consultation  
SET 
    Con_weight = @Con_Weight ,
	Con_Hist_Height=@Con_Hist_Height,
	Con_Hist_BMI=@Con_Hist_BMI ,
	Con_Hist_UrineTest=@Con_Hist_UrineTest ,
	Con_Hist_Temperature=@Con_Hist_Temperature ,
	Con_Hist_HeartRate=@Con_Hist_HeartRate,
	Con_Hist_Waist=@Con_Hist_Waist ,
	Con_Hist_BloodPressure=@Con_Hist_BloodPressure ,
	Con_Hist_BloodGlucose =@Con_Hist_BloodGlucose ,
	Con_Hist_Oedema=@Con_Hist_Oedema ,
	Con_Hist_EpilepsyBloods=@Con_Hist_EpilepsyBloods ,
	Con_Consult_Date=@Con_Consult_Date ,
	Con_Note=@Con_Note ,
	User_ID=@User_ID ,
	Patient_No=@Patient_No 
WHERE Consult_No  = @Consult_No 
Go

create procedure sp_Consultation_Select
as
SELECT *
FROM Consultation 
Go

create procedure sp_Consultation_Insert 
(
	@Con_Weight decimal,
	@Con_Hist_Height decimal,
	@Con_Hist_BMI decimal,
	@Con_Hist_UrineTest varchar(20),
	@Con_Hist_Temperature decimal,
	@Con_Hist_HeartRate decimal,
	@Con_Hist_Waist decimal,
	@Con_Hist_BloodPressure varchar(10),
	@Con_Hist_BloodGlucose decimal,
	@Con_Hist_Oedema varchar(20),
	@Con_Hist_EpilepsyBloods decimal,
	@Con_Consult_Date varchar(30),
	@Con_Note varchar(150),
	@User_ID int,
	@Patient_No int
	)
as
INSERT INTO Consultation values(@Con_Weight ,@Con_Hist_Height,@Con_Hist_BMI ,@Con_Hist_UrineTest ,@Con_Hist_Temperature ,@Con_Hist_HeartRate,@Con_Hist_Waist ,@Con_Hist_BloodPressure ,@Con_Hist_BloodGlucose ,@Con_Hist_Oedema ,@Con_Hist_EpilepsyBloods ,@Con_Consult_Date ,@Con_Note ,@User_ID ,@Patient_No )
Go

create procedure sp_Consultation_Delete
(
	@Consult_No int
	)
as
Delete Consultation
WHERE Consult_No  = @Consult_No
Go

------------Medical_History----------------------
create procedure sp_Medical_History_Update 
(
	@History_ID int,
	@Med_Hist_Weight decimal,
	@Med_Hist_Height decimal,
	@Med_Hist_BMI decimal,
	@Med_Hist_UrineTest varchar(20),
	@Med_Hist_Temperature decimal,
	@Med_Hist_HeartRate decimal,
	@Med_Hist_Waist decimal,
	@Med_Hist_BloodPressure varchar(10),
	@Med_Hist_BloodGlucose decimal,
	@Med_Hist_Oedema varchar(20),
	@Med_Hist_EpilepsyBloods decimal,
	@Med_Hist_Date varchar(30),
	@Med_Hist_Note varchar(150),
	@Patient_No int
)
as
UPDATE Medical_History  
SET 
   Med_Hist_Weight= @Med_Hist_Weight,
	Med_Hist_Height=@Med_Hist_Height ,
	Med_Hist_BMI=@Med_Hist_BMI ,
	Med_Hist_UrineTest=@Med_Hist_UrineTest ,
	Med_Hist_Temperature=@Med_Hist_Temperature,
	Med_Hist_HeartRate=@Med_Hist_HeartRate ,
	Med_Hist_Waist=@Med_Hist_Waist ,
	Med_Hist_BloodPressure=@Med_Hist_BloodPressure ,
	Med_Hist_BloodGlucose=@Med_Hist_BloodGlucose ,
	Med_Hist_Oedema=@Med_Hist_Oedema ,
	Med_Hist_EpilepsyBloods=@Med_Hist_EpilepsyBloods ,
	Med_Hist_Date=@Med_Hist_Date ,
	Med_Hist_Note = @Med_Hist_Note ,
	Patient_No=@Patient_No
	
WHERE History_ID  = @History_ID  
Go

create procedure sp_Medical_History_Select
as
SELECT *
FROM Medical_History  
Go

create procedure sp_Medical_History_Insert 
(
	@Med_Hist_Weight decimal,
	@Med_Hist_Height decimal,
	@Med_Hist_BMI decimal,
	@Med_Hist_UrineTest varchar(20),
	@Med_Hist_Temperature decimal,
	@Med_Hist_HeartRate decimal,
	@Med_Hist_Waist decimal,
	@Med_Hist_BloodPressure varchar(10),
	@Med_Hist_BloodGlucose decimal,
	@Med_Hist_Oedema varchar(20),
	@Med_Hist_EpilepsyBloods decimal,
	@Med_Hist_Date varchar(30),
	@Med_Hist_Note varchar(150),
	@Patient_No int
	)
as
INSERT INTO Medical_History  values(@Med_Hist_Weight,@Med_Hist_Height,@Med_Hist_BMI ,@Med_Hist_UrineTest,@Med_Hist_Temperature ,@Med_Hist_HeartRate,@Med_Hist_Waist ,@Med_Hist_BloodPressure ,@Med_Hist_BloodGlucose ,@Med_Hist_Oedema ,@Med_Hist_EpilepsyBloods,@Med_Hist_Date,@Med_Hist_Note ,@Patient_No  )
Go

create procedure sp_Medical_History_Delete
(
	@History_ID int
	)
as
Delete Medical_History 
WHERE History_ID  = @History_ID
Go
------------Clinic----------------------
create procedure sp_Clinic_Update 
(
	@Clinic_ID int,
	@Clinic_Name varchar(50),
	@Clinic_Phone varchar(10),
	@Clinic_Address varchar(150),
	@Clinic_Province int
)
as
UPDATE Referral_Clinic   
SET 
    Clinic_Name =@Clinic_Name ,
	Clinic_Phone  = @Clinic_Phone ,
	Clinic_Address = @Clinic_Address ,
	Clinic_Province = @Clinic_Province  
WHERE Clinic_ID  = @Clinic_ID  
Go

create procedure sp_Clinic_Select
as
SELECT *
FROM Referral_Clinic  
Go

create procedure sp_Clinic_Insert 
(
	@Clinic_Name varchar(50),
	@Clinic_Phone varchar(10),
	@Clinic_Address varchar(150),
	@Clinic_Province int
	)
as
INSERT INTO Referral_Clinic  values(@Clinic_Name, @Clinic_Phone,@Clinic_Address,@Clinic_Province  )
Go

create procedure sp_Clinic_Delete
(
	@Clinic_ID int
	)
as
Delete Referral_Clinic 
WHERE Clinic_ID  = @Clinic_ID
Go

------------Hospital----------------------
create procedure sp_Hospital_Update 
(
	@Hosp_ID int,
	@Hosp_Name varchar(50),
	@Hosp_Phone varchar(10),
	@Hosp_Address varchar(150),
	@Hosp_Province int
)
as
UPDATE Referral_Hospital  
SET 
    Hosp_Name =@Hosp_Name ,
	Hosp_Phone  = @Hosp_Phone ,
	Hosp_Address = @Hosp_Address ,
	Hosp_Province = @Hosp_Province 
WHERE Hosp_ID  = @Hosp_ID  
Go

create procedure sp_Hospital_Select
as
SELECT *
FROM Referral_Hospital  
Go

create procedure sp_Hospital_Insert 
(
	@Hospl_Name varchar(50),
	@Hosp_Phone varchar(10),
	@Hosp_Address varchar(150),
	@Hosp_Province int
	)
as
INSERT INTO Referral_Hospital  values(@Hospl_Name , @Hosp_Phone ,@Hosp_Address ,@hosp_Province)
Go

create procedure sp_Hospital_Delete
(
	@Hosp_ID int
	)
as
Delete Referral_Hospital  
WHERE Hosp_ID  = @Hosp_ID
Go

------------Doctor----------------------
create procedure sp_Doctor_Update 
(
	@Doc_ID int,
	@Doc_Name varchar(50),
	@Doc_Surname varchar(50),
	@Doc_Specialisation int,
	@Doc_Phone varchar(10),
	@Doc_Email varchar(25),
	@Doc_Address varchar(150),
	@Doc_Province int
)
as
UPDATE Referral_Doctor  
SET 
    Doc_Name =@Doc_Name ,
	Doc_Surname =@Doc_Surname ,
	Doc_Specialisation = @Doc_Specialisation ,
	Doc_Phone = @Doc_Phone ,
	Doc_Email =@Doc_Email ,
	Doc_Address =@Doc_Address ,
	Doc_Province =@Doc_Province 
WHERE Doc_ID  = @Doc_ID  
Go

create procedure sp_Doctor_Select
as
SELECT *
FROM Referral_Doctor 
Go

create procedure sp_Doctor_Insert 
(
	@Doc_Name varchar(50),
	@Doc_Surname varchar(50),
	@Doc_Specialisation int,
	@Doc_Phone varchar(10),
	@Doc_Email varchar(25),
	@Doc_Address varchar(150),
	@Doc_Province int
	)
as
INSERT INTO Referral_Doctor values(@Doc_Name,@Doc_Surname ,	@Doc_Specialisation,@Doc_Phone ,@Doc_Email,@Doc_Address ,@Doc_Province )
Go

create procedure sp_Doctor_Delete
(
	@Doc_ID int
	)
as
Delete Referral_Doctor   
WHERE Doc_ID  = @Doc_ID
Go

------------Transfer_Type----------------------
create procedure sp_Transfer_Type_Update 
(
	@Type_ID int,
	@Type_Name varchar(50)
)
as
UPDATE Transfer_Type  
SET 
    Type_Name  =@Type_Name  
WHERE Type_ID  = @Type_ID  
Go

create procedure sp_Transfer_Type_Select
as
SELECT *
FROM Transfer_Type  
Go

create procedure sp_Transfer_Type_Insert 
(
	@Type_Name varchar(50)
	)
as
INSERT INTO Transfer_Type  values(@Type_Name  )
Go

create procedure sp_Transfer_Type_Delete
(
	@Type_ID int
	)
as
Delete Transfer_Type 
WHERE Type_ID  = @Type_ID
Go

-------------------Medication_Type-----------------
create procedure sp_Medication_Type_Update 
(
	@Med_Type_ID int,
	@Med_Type_Name varchar(50)
)
as
UPDATE Medication_Type  
SET 
    Med_Type_Name=@Med_Type_Name 
WHERE Med_Type_ID = @Med_Type_ID 
Go

create procedure sp_Medication_Type_Select
as
SELECT *
FROM Medication_Type  
Go

create procedure sp_Medication_Type_Insert 
(
	@Med_Type_Name varchar(50)
	)
as
INSERT INTO Medication_Type  values (@Med_Type_Name)
Go

create procedure sp_Medication_Type_Delete
(
	@Med_Type_ID int
	)
as
Delete Medication_Type
WHERE Med_Type_ID   = @Med_Type_ID 
Go
-------------------Next_Of_Kin-----------------
create procedure sp_Next_Of_Kin_Update 
(
	@Kin_ID int,
	@Kin_Name varchar(50),
	@Kin_Surname varchar(50),
	@Kin_Title int,
	@Kin_Address varchar(150),
	@Province int,
	@Telephone varchar(10),
	@Patient_No int
)
as
UPDATE Next_Of_Kin   
SET 
    Kin_Name=@Kin_Name ,
	Kin_Surname=@Kin_Surname ,
	Kin_Title=@Kin_Title,
	Kin_Address=@Kin_Address ,
	Province_ID =@Province ,
	Telephone =@Telephone ,
	Patient_No = @Patient_No 
WHERE Kin_ID = @Kin_ID 
Go

create procedure sp_Next_Of_Kin_Select
as
SELECT *
FROM Next_Of_Kin  
Go

create procedure sp_Next_Of_Kin_Insert 
(
	@Kin_Name varchar(50),
	@Kin_Surname varchar(50),
	@Kin_Title int,
	@Kin_Address varchar(150),
	@Province int,
	@Telephone varchar(10),
	@Patient_No int
	)
as
INSERT INTO Next_Of_Kin  values(@Kin_Name ,	@Kin_Surname,@Kin_Title ,@Kin_Address,@Province,@Telephone,@Patient_No )
Go

create procedure sp_Next_Of_Kin_Delete
(
	@Kin_ID int
	)
as
Delete Next_Of_Kin
WHERE Kin_ID   = @Kin_ID 
Go


------------Medication----------------------
create procedure sp_Medication_Update 
(
	@Med_ID int,
	@Med_Name varchar(50),
	@Unit varchar(10),
	@Quantity_Bought int,
	@QtyAvailable int,
	@Min_Stock_Level int,
	@Med_Type int
)
as
UPDATE Medication  
SET 
    Med_Name=@Med_Name , 
	Unit =@Unit, 
	Quantity_Bought =@Quantity_Bought,
	QtyAvailable = @QtyAvailable  ,
	Min_Stock_Level = @Min_Stock_Level, 
	Med_Type=@Med_Type 
WHERE Med_ID  = @Med_ID  
Go

create procedure sp_Medication_Select
as
SELECT *
FROM Medication   
Go

create procedure sp_Medication_Insert 
(
	@Med_Name varchar(50),
	@Unit varchar(10),
	@Quantity_Bought int,
	@QtyAvailable int,
	@Min_Stock_Level int,
	@Med_Type int
	)
as
INSERT INTO Medication  values (@Med_Name,@Unit ,@Quantity_Bought,@QtyAvailable  ,@Min_Stock_Level,@Med_Type )
Go

create procedure sp_Medication_Delete
(
	@Med_ID int
	)
as
Delete Medication
WHERE Med_ID  = @Med_ID 
Go

------------Medical_Supply----------------------
create procedure sp_Medical_Supply_Update 
(
	@Med_Sup_ID int,
	@Med_Sup_Name varchar(50),
	@Med_Sup_Quantity int,
	@Med_Sup_QtyAvailable int,
	@Med_Sup_Unit varchar(10)
)
as
UPDATE Medical_Supply  
SET 
    Med_Sup_Name  =@Med_Sup_Name ,
    Med_Sup_Quantity=@Med_Sup_Quantity,
    Med_Sup_QtyAvailable = @Med_Sup_QtyAvailable,
    Med_Sup_Unit = @Med_Sup_Unit
    
    
WHERE Med_Sup_ID  = @Med_Sup_ID  
Go

create procedure sp_Medical_Supply_Select
as
SELECT *
FROM Medical_Supply  
Go

create procedure sp_Medical_Supply_Insert 
(
	@Med_Sup_Name varchar(50),
	@Med_Sup_Quantity int,
	@Med_Sup_QtyAvailable int,
	@Med_Sup_Unit varchar(10)
	)
as
INSERT INTO Medical_Supply  values(@Med_Sup_Name, @Med_Sup_Quantity,@Med_Sup_QtyAvailable,@Med_Sup_Unit   )
Go

create procedure sp_Medical_Supply_Delete
(
	@Med_Sup_ID int
	)
as
Delete Medical_Supply 
WHERE Med_Sup_ID   = @Med_Sup_ID
Go

------------Prescription----------------------
create procedure sp_Prescription_Update 
(
@HistoryID int,
	@Presc_ID int,
	@Patient_No int,
	@User_ID int
)
as
UPDATE Prescription  
SET 
history_ID = @HistoryID,
    Patient_No = @Patient_No ,
    User_ID = @User_ID 
    
WHERE Presc_ID  = @Presc_ID  
Go

create procedure sp_Prescription_Select
as
SELECT *
FROM Prescription  
Go

create procedure sp_Prescription_Insert 
(
	@HistoryID int,
	@Patient_No int,
	@User_ID int
	)
as
INSERT INTO Prescription  values(@historyid,@Patient_No,@User_ID   )
Go

create procedure sp_Prescription_Delete
(
	@Presc_ID int
	)
as
Delete Prescription 
WHERE Presc_ID   = @Presc_ID
Go

------------Symptom----------------------
create procedure sp_Symptom_Update 
(
	@Symptom_ID int,
	@Symptom_Name varchar(50)
)
as
UPDATE Symptom  
SET 
    Symptom_Name  =@Symptom_Name 
    
WHERE Symptom_ID  = @Symptom_ID  
Go

create procedure sp_Symptom_Select
as
SELECT *
FROM Symptom  
Go

create procedure sp_Symptom_Insert 
(
	@Symptom_Name varchar(50)
	)
as
INSERT INTO Symptom  values(@Symptom_Name  )
Go

create procedure sp_Symptom_Delete
(
	@Symptom_ID int
	)
as
Delete Symptom 
WHERE Symptom_ID   = @Symptom_ID
Go

------------User_Role----------------------
create procedure sp_User_Role_Update 
(
	@Role_ID int,
	@Role_Name varchar(50),
	@RAccess_Add_Consultation varchar(5),
	@RAccess_Medical_History varchar(5),
	@RAccess_Maintain_Medical_History varchar(5),
	@RAccess_Transfer_Patient varchar(5),
	@RAccess_Issue_Medication varchar(5),
	@RAccess_Issue_Medical_Supplies varchar(5),
	@RAccess_Add_User_Role varchar(5),
    @RAccess_Maintain_User_Role varchar(5)
)
as
UPDATE User_Role  
SET 
   Role_Name=@Role_Name ,
	RAccess_Add_Consultation=@RAccess_Add_Consultation ,
	RAccess_Medical_History=@RAccess_Medical_History ,
	RAccess_Maintain_Medical_History=@RAccess_Maintain_Medical_History ,
	RAccess_Transfer_Patient=@RAccess_Transfer_Patient ,
	RAccess_Issue_Medication=@RAccess_Issue_Medication ,
	RAccess_Isseue_Medical_Supplies =@RAccess_Issue_Medical_Supplies,
	RAccess_Add_User_Role      =@RAccess_Add_User_Role ,
	RAccess_Maintain_User_Role= @RAccess_Maintain_User_Role 
    
WHERE Role_ID  = @Role_ID   
Go

create procedure sp_User_Role_Select
as
SELECT *
FROM User_Role  
Go

create procedure sp_User_Role_Insert 
(
	@Role_Name varchar(50),
	@RAccess_Add_Consultation varchar(5),
	@RAccess_Medical_History varchar(5),
	@RAccess_Maintain_Medical_History varchar(5),
	@RAccess_Transfer_Patient varchar(5),
	@RAccess_Issue_Medication varchar(5),
	@RAccess_Issue_Medical_Supplies varchar(5),
	@RAccess_Add_User_Role varchar(5),
    @RAccess_Maintain_User_Role varchar(5)
	)
as
INSERT INTO User_Role  values(@Role_Name,@RAccess_Add_Consultation,@RAccess_Medical_History,@RAccess_Maintain_Medical_History ,@RAccess_Transfer_Patient,@RAccess_Issue_Medication,	@RAccess_Issue_Medical_Supplies,@RAccess_Add_User_Role,@RAccess_Maintain_User_Role)
Go

create procedure sp_User_Role_Delete
(
	@Role_ID int
	)
as
Delete User_Role 
WHERE Role_ID    = @Role_ID 
Go

------------Users----------------------
create procedure sp_Users_Update 
(
	@User_ID int,
	@User_Password varchar(10),
	@UserName varchar(50),
	@Qualification varchar(50),
	@Practice_Number varchar(20),
	@Name varchar(50),
	@Surname varchar(50),
	@ID_Number varchar(13),
	@Answer varchar(50),
	@Email varchar(50),
	@Question_ID int,
	@Role_ID int
)
as
UPDATE Users   
SET 
    User_Password=@User_Password,
	UserName=@UserName ,
	Qualification=@Qualification ,
	Practice_Number=@Practice_Number ,
	Name=@Name ,
	Surname=@Surname ,
	ID_Number=@ID_Number ,
	Answer=@Answer ,
	Email = @Email ,
	Question_ID = @Question_ID,
	Role_ID=@Role_ID 
    
WHERE User_ID  = @User_ID  
Go

create procedure sp_User_Select
as
SELECT *
FROM Users   
Go

create procedure sp_User_Insert 
(
	@User_Password varchar(10),
	@UserName varchar(50),
	@Qualification varchar(50),
	@Practice_Number varchar(20),
	@Name varchar(50),
	@Surname varchar(50),
	@ID_Number varchar(13),
	@Answer varchar(50),
	@Email varchar(50),
	@Question_ID int,
	@Role_ID int
	)
as
INSERT INTO Users  values(@User_Password,@UserName,@Qualification,@Practice_Number ,@Name,@Surname ,@ID_Number,@Answer,@Email ,@Question_ID ,@Role_ID )
Go

create procedure sp_User_Delete
(
	@User_ID int
	)
as
Delete Users 
WHERE User_ID   = @User_ID
Go

------------Patient----------------------
create procedure sp_Patient_Update 
(
	@Patient_No int,
	@Name varchar(50),
	@Surname varchar(50),
	@Title int,
	@Citizenship varchar(25),
	@ID_Number varchar(13),
	@Passport_No varchar(20),
	@Patient_Address varchar(150),
	@Province int,
	@Telephone varchar(10),
	@Gender varchar(10),
	@Date_Of_Birth varchar(20),
	@ImageID int 
)
as
UPDATE Patient   
SET 
   Patient_No= @Patient_No,
	Name=@Name ,
	Surname=@Surname ,
	Title=@Title ,
	Citizenship=@Citizenship,
	ID_Number=@ID_Number ,
	Passport_No=@Passport_No,
	Patient_Address=@Patient_Address ,
	Province_ID=@Province ,
	Telephone=@Telephone ,
	Gender=@Gender ,
	Date_Of_Birth=@Date_Of_Birth,
	imageID = @ImageID  
    
WHERE Patient_No = @Patient_No   
Go

create procedure sp_Patient_Select
as
SELECT *
FROM Patient   
Go

create procedure sp_Patient_Insert 
(
	@Patient_No int,
	@Name varchar(50),
	@Surname varchar(50),
	@Title int,
	@Citizenship varchar(25),
	@ID_Number varchar(13),
	@Passport_No varchar(20),
	@Patient_Address varchar(150),
	@Province int,
	@Telephone varchar(10),
	@Gender varchar(10),
	@Date_Of_Birth varchar(20),
	@ImageID int
	)
as
INSERT INTO Patient  values(@Patient_No,@Name ,@Surname ,@Title ,@Citizenship,@ID_Number ,@Passport_No,@Patient_Address ,@Province ,@Telephone ,@Gender ,@Date_Of_Birth,@ImageID   )
Go

create procedure sp_Patient_Delete
(
	@Patient_No int
	)
as
Delete Patient 
WHERE Patient_No   = @Patient_No
Go

------------Family_Member----------------------
create procedure sp_Family_Member_Update 
(
	@Member_ID int,
	@Patient_No int,
	@Relationship varchar(25)
)
as
UPDATE Family_Member   
SET 
    Member_ID = @Member_ID ,
    Patient_No = @Patient_No,
    Relationship = @Relationship 
    
WHERE Member_ID  = @Member_ID  
Go

create procedure sp_Family_Member_Select
as
SELECT *
FROM Family_Member   
Go

create procedure sp_Family_Member_Insert 
(
	@Member_ID int,
	@Patient_No int,
	@Relationship varchar(25)
	)
as
INSERT INTO Family_Member  values(@Member_ID ,@Patient_No ,	@Relationship  )
Go

create procedure sp_Family_Member_Delete
(
	@Member_ID int
	)
as
Delete Family_Member 
WHERE Member_ID   = @Member_ID
Go

-------------------Sick Note-----------------
create procedure sp_Sick_Note_Update 
(
	@SNote_ID int,
	@Description varchar(150),
	@Note_Date datetime,
	@BookedFrom datetime,
	@BookTo datetime,
	@Patient_No int,
	@User_ID int
)
as
UPDATE Sick_Note   
SET 
   Desription= @Description ,
	Note_Date = @Note_Date ,
	BookedFrom = @BookedFrom ,
	BookTo = @BookTo ,
	Patient_No =  @Patient_No,
	User_ID = @User_ID 
WHERE SNote_ID = @SNote_ID 
Go

create procedure sp_Sick_Note_Select
as
SELECT *
FROM Sick_Note  
Go

create procedure sp_Sick_Note_Insert 
(
	@Description varchar(150),
	@Note_Date datetime,
	@BookedFrom datetime,
	@BookTo datetime,
	@Patient_No int,
	@User_ID int
	)
as
INSERT INTO Sick_Note  values (@Description ,	@Note_Date ,@BookedFrom ,@BookTo,@Patient_No,@User_ID)
Go

create procedure sp_Sick_Note_Delete
(
	@SNote_ID int
	)
as
Delete Sick_Note 
WHERE SNote_ID   = @SNote_ID 
Go

-------------------Transfer Note-----------------
create procedure sp_Transfer_Note_Update 
(
	@TNote_ID int,
	@Instituition varchar(50),
	@Referral_Reason Varchar(150),
	@Note_Date datetime,
	@Transfer_ID int
)
as
UPDATE Transfer_Note    
SET 
   Instituition = @Instituition ,
	Referral_Reason = @Referral_Reason ,
	Note_Date = @Note_Date ,
	Transfer_ID = @Transfer_ID 
	
WHERE TNote_ID = @TNote_ID 
Go

create procedure sp_Transfer_Note_Select
as
SELECT *
FROM Transfer_Note  
Go

create procedure sp_Transfer_Note_Insert 
(
	@Instituition varchar(50),
	@Referral_Reason Varchar(150),
	@Note_Date datetime,
	@Transfer_ID int
	)
as
INSERT INTO Transfer_Note  values (@Instituition,@Referral_Reason ,@Note_Date ,@Transfer_ID )
Go

create procedure sp_Transfer_Note_Delete
(
	@TNote_ID int
	)
as
Delete Transfer_Note 
WHERE TNote_ID   = @TNote_ID 
Go

-------------------Prescription_Note-----------------
create procedure sp_Prescription_Note_Update 
(
	@PNote_ID int,
	@Diagnosis varchar(150),
	@Treatment Varchar(150),
	@Presc_ID int
)
as
UPDATE Prescription_Note     
SET 
	Diagnosis=@Diagnosis,
	Treatment=@Treatment ,
	Presc_ID =@Presc_ID 
	
WHERE PNote_ID = @PNote_ID 
Go

create procedure sp_Prescription_Note_Select
as
SELECT *
FROM Prescription_Note  
Go

create procedure sp_Prescription_Note_Insert 
(
	@Diagnosis varchar(150),
	@Treatment Varchar(150),
	@Presc_ID int
	)
as
INSERT INTO Prescription_Note  values (@Diagnosis,@Treatment ,@Presc_ID )
Go

create procedure sp_Prescription_Note_Delete
(
	@PNote_ID int
	)
as
Delete Prescription_Note 
WHERE PNote_ID   = @PNote_ID 
Go

-------------------Med_Waste-----------------
create procedure sp_Med_Waste_Update 
(
	@Med_Waste_ID int,
	@Med_Waste_Description varchar(50),
	@Med_Waste_Date varchar(30),
	@Med_Waste_Quantity int,
	@Med_Waste_Unit varchar(10),
	@Med_ID int
)
as
UPDATE MedWaste     
SET 
	Med_Waste_Description=@Med_Waste_Description ,
	Med_Waste_Date=@Med_Waste_Date ,
	Med_Waste_Quantity=@Med_Waste_Quantity,
	Med_Waste_Unit=@Med_Waste_Unit ,
	Med_ID=@Med_ID 
	
WHERE Med_Waste_ID = @Med_Waste_ID 
Go

create procedure sp_MedWaste_Select
as
SELECT *
FROM MedWaste  
Go

create procedure sp_MedWaste_Insert 
(
	@Med_Waste_Description varchar(50),
	@Med_Waste_Date varchar(30),
	@Med_Waste_Quantity int,
	@Med_Waste_Unit varchar(10),
	@Med_ID int
	)
as
INSERT INTO MedWaste  values (@Med_Waste_Description ,	@Med_Waste_Date ,@Med_Waste_Quantity,@Med_Waste_Unit ,@Med_ID)
Go

create procedure sp_MedWaste_Delete
(
	@Med_Waste_ID int
	)
as
Delete MedWaste 
WHERE Med_Waste_ID   = @Med_Waste_ID 
Go

------------Province 
create procedure sp_Province_Select
as
SELECT *
FROM Province    
Go

-----------Question
create procedure sp_Question_Select
as
SELECT *
FROM Question    
Go

-----------Specialisation
create procedure sp_Specialisation_Select
as
SELECT *
FROM Specialisation    
Go

-----------Title
create procedure sp_Title_Select
as
SELECT *
FROM Title    
Go

-----------PatientAllergy
create procedure sp_PatientAllergy_Select
as
SELECT *
FROM PatientAllergy    
Go

create procedure sp_PAllergy_Delete
(
	@Patient_ID int
	)
as
Delete PatientAllergy   
WHERE Patient_No  = @Patient_ID  
Go

-----------ConditionSymptom
create procedure sp_ConditionSymptom_Select
as
SELECT *
FROM Condition_Symptom   
Go

-----------ConditionSymptom
create procedure sp_ConditionSymptom_Delete
(
	@Con_ID int
	)
as
Delete Condition_Symptom  
WHERE Con_ID = @Con_ID  
Go


