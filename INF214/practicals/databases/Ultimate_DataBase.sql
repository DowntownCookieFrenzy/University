Use Master
GO

If exists (Select * from sys.databases where name = 'Ultimate_DataBase')
Drop Database Ultimate_DataBase
GO

Create Database Ultimate_DataBase
GO

Use Ultimate_DataBase
GO
-------------------------------------Tables--------------------------

--Title--

Create Table TITLE 
(
          Title_ID  int Primary Key  identity(1,1)NOT NULL ,
          Title_Descr  VARCHAR(10) 
)
GO
--------Empoyee_Type---------
Create Table Employee_Type
(
Emp_T_ID int Primary Key identity(1,1)NOT NULL ,
Emp_Type varchar(20),
Emp_Description varchar(50)
)
go
----Country-----
Create Table Country
(
Country_ID int primary key identity(1,1) Not Null,
Country_Name VARCHAR(25)
)
go
------------City----------
Create Table City
(
City_ID int primary key identity(1,1) Not Null,
City_Name varchar(25)
)
go
---------Surburb--------
CREATE TABLE Suburb
(
Sub_ID int primary key identity(1,1) Not Null,
Sub_Name VARCHAR(25)
)
go

-------Employer----
Create Table Employer
(
Empl_ID int primary key identity(1,1) Not NUll,
Empl_Comp_Name Varchar(50),
Empl_Address varchar(75),
Empl_Tel varchar(14),
Empl_Fax varchar(14),
Empl_Email varchar(25),
Empl_Start_date datetime,
Empl_monthly_inc money,
Empl_Contact_Person varchar(50)

)
go
------Bursary------
Create Table Bursary
(
Bur_ID int primary key identity(1,1) Not Null,
Bur_Company_Name varchar(50),
Bur_Address varchar(50),
Bur_Tel varchar(14),
Bur_Fax varchar(14),
Bur_Email varchar(25),
Bur_Contact_Person varchar(50)

)
go 

--------------Owner---------------
create table Owner_Table
(
Own_Id  int Primary Key  identity(1,1)NOT NULL ,
Own_Name varchar(50),
Own_Surname varchar(50),
Own_ID_Number varchar(20),
Own_Date_OF_Birth datetime,
Own_Contact_Number varchar(14),
Own_CellPhone_Number varchar(14),
Own_Email varchar(25),
Own_Gender bit,
Own_Postal_Address varchar(50),
Own_Postal_code varchar(5),
Own_street_Address varchar(25),
Own_Res_Code varchar(5),
Title_ID int references Title(Title_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
------------------Body_Corporate---------------
create Table Body_Corporate
(
Body_ID int Primary Key identity(1,1)NOT NULL ,
Body_Name varchar(50),
Body_Contact_Number varchar(14),
Body_Address varchar(50),
Body_Email varchar(25),
Body_Postal_Address varchar(50),
Body_Pos_Code varchar(5),
Body_Res_Code varchar(5),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
-----------------Building-------------------
create table Building
(
Bld_ID  int Primary Key  identity(1,1)NOT NULL ,
Bld_Name varchar(50),
Bld_Address varchar(50),
Bld_Image image,
Body_ID int references Body_Corporate(Body_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
-------------------Flat_Type-----------------------
Create Table Flat_Type
(
F_ID int primary key identity(1,1) Not Null,
F_Description varchar(50),
F_Image image
)
go
------------------Flat_Unit-------------------
create table Flat_Unit
(
Flat_Unit_Number int Primary Key  identity(1,1)NOT NULL,
Flat_Street_address varchar(50),
Flat_Key_Number varchar(10),
Flat_Wmeter_Number varchar(20),
Flat_Emeter_Number varchar(20),
Flat_Res_Code varchar(5),
vacant BIT,
Price money,
Own_ID int references Owner_Table(Own_ID),
Bld_Id int references Building(Bld_Id),
F_ID int references Flat_Type(F_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
--------------Lessee--------------^^^
Create Table Lessee
(
les_ID  int Primary Key  identity(1,1)NOT NULL ,
les_Name varchar(50),
les_Surname varchar(50),
les_ID_Number varchar(20),
Les_Passport  varchar(15),
Les_DOB  datetime,
les_HomeNumber varchar(14),
les_Cellnumber varchar(14),
Les_FaxNumber varchar(14),
les_Email varchar(25),
les_Postal_Address varchar(50),
les_Residing_Address varchar(50),
Empl_ID int references Employer(Empl_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
---------------------Lease------------------^^^^^
create table Lease
(
lease_ID int Primary Key  identity(1,1)NOT NULL,
occupation_date datetime,
Duration  varchar(20),
Lease_Expiry_Date datetime,
Lease_Renewal datetime,
Lease_Cancellation datetime,
Num_Of_Occupants varchar(10),
Bld_Id int references Building(Bld_Id),
Flat_Unit_Number int references Flat_Unit(Flat_Unit_Number)
)
go
-------------------------------------------Urgency_Type------------------------^^^
create Table Urgency_Type
(
UType_ID int Primary Key  identity(1,1)NOT NULL,
UType_Name varchar(50)
)
go


----Applicant---^^^^
Create Table Applicant
(
App_ID int primary key identity(1,1) Not Null,
App_Names varchar(50),
App_Surname varchar(50),
App_ID_Number varchar(20),
App_Date_of_Birth  datetime,
App_Gender bit,
App_Phone_number varchar(14),
App_Cellphone varchar(14),
App_Email varchar(25),
App_Postal_Address varchar(25),
App_Postal_code varchar(5),
App_Street_Address varchar(25),
App_Res_Code varchar(5),
App_Approval_Status bit,
Empl_ID int references Employer(Empl_ID),
Country_ID int references Country(Country_ID),
Title_ID int references Title(Title_ID),
City_ID int references City(City_ID),
F_ID int references Flat_Type(F_ID),
Sub_ID int references Suburb(Sub_ID),
Bld_Id int references Building(Bld_Id)

)
go
--------------------References---------------
Create Table Reference
(
Ref_ID int primary key identity(1,1) Not Null,
Ref_Name varchar(50),
Ref_Surname varchar(50),
Ref_Home_Number varchar(14),
Ref_Cellphone_Number varchar(14),
Ref_Email_Address varchar(25),
Ref_Postal_Address varchar(25),
Ref_Postal_Code varchar(5),
Ref_Residing_Address Varchar(25),
Ref_Residential_Code varchar(5),
Title_ID int references Title(Title_ID),
App_ID int references Applicant(App_ID),
Sub_ID int references Suburb(Sub_ID),
City_Id int references City(City_ID)
)
go






-----------------------Tenant--------------------^^^^^^^
Create Table Tenant
(
Ten_ID int Primary Key  identity(1,1)NOT NULL ,
Ten_Name varchar(50),
Ten_Surname varchar(50),
Ten_ID_Number varchar(20),
Ten_Date_OF_Birth datetime,
Ten_Gender bit,
Ten_Cellphone_Number varchar(14),
Ten_Email_Address varchar(25),
Ten_Fax_Number varchar(14),
Ten_Home_Number varchar(14),
Ten_Postal_Address Varchar(50),
Ten_Postal_Code varchar(5),
Ten_Res_Street_Address varchar(50),
Ten_Res_Code varchar(5),
Ten_Picture image,
Ten_Passport varchar(15),
Lessee_Status bit,
App_ID int references Applicant(App_ID),
Bur_ID int references Bursary(Bur_ID),
Les_ID int references Lessee(Les_ID),
Lease_ID int references Lease(Lease_ID),
Title_ID int references Title(Title_ID),
Country_ID int references Country(Country_ID),
Empl_ID int references Employer(Empl_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go


-------------------Inspection Type--^^^^^
create table Inspection_Type
(
IT_ID int Primary Key  identity(1,1)NOT NULL,
IT_description varchar(50)
)
go
----Complaints---^^^^^
create table complaints 
(
com_ID int Primary Key  identity(1,1)NOT NULL,
com_Date datetime,
com_description varchar(50),
com_Resolved bit,
Utype_Id int references Urgency_Type(Utype_Id),
Flat_Unit_Number int references Flat_Unit(Flat_Unit_Number),
Ten_ID int references Tenant(Ten_ID),
Bld_ID  int references Building(Bld_ID)
)
go
----Inspection---^^^^^
Create Table Inspection
( 
Ins_ID int Primary Key  identity(1,1)NOT NULL,
Ins_Date datetime,
Ins_Report varchar(50),
IT_ID int references Inspection_Type(IT_ID),
Flat_Unit_Number int references Flat_Unit(Flat_Unit_Number),
Bld_ID int references Building(Bld_ID),
--Com_ID int references Complaints(Com_ID)
)
Go

----Breakage----
create table Breakage 
(
Brk_ID int Primary Key  identity(1,1)NOT NULL,
Brk_Description varchar(50),
Brk_Date datetime,
Brk_Resolved bit,
UType_ID int references  Urgency_Type(UType_ID),
Bld_ID int references Building(Bld_ID)
)

go
---Breakage_List---^^^^^
create table Breakage_List
(
Brk_ID int Primary Key  identity(1,1)NOT NULL, 
Flat_Unit_Number int references Flat_Unit(Flat_Unit_Number),
Lease_ID int references Lease(Lease_ID)
)
go


---------------------------Behaviour-----------------------------------^^^^
create table Behaviour
(
Behaviour_ID int Primary Key  identity(1,1)NOT NULL,
Behaviour_Description varchar(50),
Ten_ID int references Tenant(Ten_ID),
Behaviour_Resolved bit,
Flat_Unit_Number int references Flat_Unit(Flat_Unit_Number),
Bld_Id int references Building(Bld_Id)
)
go
------------------------------Trustee--^^^^
create table Trustee
(
Tr_ID int Primary Key  identity(1,1)NOT NULL,
Tr_Name varchar(50),
Tr_Surname varchar(50),
Tr_Cellphone varchar(14),
Bld_Id int references Building(Bld_Id)
)
go
-------------------------------------------Metering_Type----------------------------
Create table Metering_Type
(
MType_ID int Primary Key  identity(1,1)NOT NULL,
Mtype_Name varchar(50)
)
go
---Metering_Company-----
Create table Metering_Company
(
Elec_ID int Primary Key  identity(1,1)NOT NULL,
Elec_company_name varchar(50),
Elec_comp_Telephone varchar(14),
Elec_Res_Street_address varchar(50),
Elec_Postal_Address varchar(50),
Elec_Res_Code varchar(5),
Elec_Pos_Code varchar(5),
MType_ID int references Metering_Type(MType_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)

)
go
----Building_metering---
create table Building_metering
(
Buil_M_ID int Primary Key  identity(1,1)NOT NULL,
Bld_ID integer,
Elec_ID integer,
		
	CONSTRAINT FK_Bld_ID
	FOREIGN KEY (Bld_ID)
	REFERENCES Building(Bld_ID),
	
	CONSTRAINT FK_Elec_ID
	FOREIGN KEY (Elec_ID)
	REFERENCES Metering_Company(Elec_ID)
)
go
----Credit_Bureau--

Create Table Credit_Bureau
(
Cr_Id int Primary Key  identity(1,1)NOT NULL,
Cr_Company_name varchar(50),
cr_Address varchar(50),
cr_Email varchar(25),
cr_Cellphone varchar(14),
Cr_PostalAddress varchar(50),
cr_res_Code varchar(5),
cr_Post_Code varchar(5),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go
--------------------------------------Employee-------------------
Create Table Employee
(
Emp_ID int Primary Key  identity(1,1)NOT NULL,
Emp_Name varchar(50),
Emp_Surname varchar(50),
Emp_ID_Number varchar(20),
Emp_DOB datetime,
Emp_Gender bit,
Emp_Cellnumber varchar(14),
Emp_Homenumber varchar(14),
Emp_Email varchar(25),
Emp_Res_Street_Address varchar(50),
Emp_Res_Code varchar(5),
Emp_Postal_Addres varchar(25),
Emp_Postal_Code varchar(5),
Emp_T_ID int references Employee_Type( Emp_T_ID),

Title_ID int references Title(Title_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go


-------Roles---------
Create Table Roles
(
Role_ID int primary key identity(1,1) Not Null,
Role_Name VARCHAR(25),
Role_Description VARCHAR(250),
Role_Tenant_rental bit, 
Role_Property_Module bit, 
Role_Employee_Management bit, 
Role_Reports bit, 
Role_administration bit, 
Role_user_Password_access bit, 
Role_Building_Management bit,
Role_Credit_Bureau bit
)
go
---------User------
Create Table User_Table
(
Users_ID Int primary key identity(1,1) Not Null,
Users_Name varchar(15),
User_Password varchar(75),
User_Status bit,
Role_ID int references Roles(Role_ID),
Emp_ID int references Employee(Emp_ID)

)
go
----------Audit_Trail-----
Create Table Audit_Trail
(
Audit_Trail_ID int primary key identity(1,1) Not Null,
Audit_Date datetime,
System_Action Varchar(50),
Users_ID int references User_Table(Users_ID)
)
go






------------------Next_OF_Kin---
create Table Next_Of_Kin
(
Nok_Id int identity(1,1) primary key,
Nok_Name varchar(50),
Nok_Surname varchar(50),
Nok_CellNumber varchar(14),
Nok_HomeNumber varchar(14),
Nok_Res_Street_Address varchar(25),
Nok_Res_Code varchar(10),
Nok_Email varchar(25),
Nok_Gender bit,
Nok_DOB datetime,
NOk_ID_Number varchar(20),
Nok_Postal_Address varchar(25),
Nok_Postal_Code varchar(5),
Title_ID int references Title(Title_ID),
Emp_ID int references Employee(Emp_ID),
Own_ID int references Owner_Table(Own_ID),
Sub_ID int references Suburb(Sub_ID),
City_ID int references City(City_ID)
)
go

----Enquires-----
Create Table Enquires
(
Enq_ID int primary key identity(1,1) Not NUll,
Enqr_Name Varchar(50),
Enqr_Surname varchar(50),
Empl_Email varchar(25),
Enqr_cell varchar(10),
Enqr_Tel varchar(10),
Enqr_Fax varchar(10),
Enqr_Description varchar(150)
)
Go


---------------------------------------------Test Data--------------------------------------------------------------
/*Insert into Title*/
insert into TITLE values('Mr.')
insert into TITLE values('Mrs.')
insert into TITLE values('Ms.')
insert into TITLE values('Dr.')
insert into TITLE values('Rev.')

go
/*Insert into Employee_Type*/
insert into Employee_Type values('Secretary','Administration duties')
insert into Employee_Type values('Administrator','Oversees all technical computer related issues')
insert into Employee_Type values('Agent','Oversees all tenant related issues')
insert into Employee_Type values('Junior 1 ','Junior Temp Intern Level 1')
insert into Employee_Type values('Junior 2','Junior Temp Intern Level 2')
insert into Employee_Type values('Junior 3','Junior Temp Intern Level 3')
insert into Employee_Type values('Junior 4 ','Junior Temp Intern Level 4')
insert into Employee_Type values('Junior 5','Junior Temp Intern Level 5')
insert into Employee_Type values('Junior 6','Junior Temp Intern Level 6')
insert into Employee_Type values('Senior 1 ','Senior Temp Intern Level 1')
insert into Employee_Type values('Senior 2','Senior Temp Intern Level 2')
insert into Employee_Type values('Senior 3','Senior Temp Intern Level 3')



go
/*Insert into Country*/
insert into Country values('South Africa')
insert into Country values('Swaziland')
insert into Country values('Botswana')
insert into Country values('Zimbabwe')
insert into Country values('Namibia')
insert into Country values('Lesotho')
insert into Country values('Denmark')
insert into Country values('Ethiopia')
insert into Country values('Japan')
insert into Country values('Serbia')


go
/*Insert into City*/
insert into City values('Pretoria')
insert into City values('Johannesburg')
insert into City values('Rusternburg')
insert into City values('Brits')
insert into City values('Pietermaritzburg')
insert into City values('Cape Town')
insert into City values('Durban')
insert into City values('Mitchells Plain')
insert into City values('Umlazi')
insert into City values('Katlehong')
insert into City values('Tembisa')
insert into City values('Khayelitsha')


go

/*Insert into Suburb*/
insert into Suburb values('Hatfield')
insert into Suburb values('Brooklyn')
insert into Suburb values('Sunnyside')
insert into Suburb values('Arcadia')
insert into Suburb values('Abbotsford')
insert into Suburb values('Crown')
insert into Suburb values('Inner City')
insert into Suburb values('Blue Hills')
insert into Suburb values('Bramley North')
insert into Suburb values('Bramley Park')
insert into Suburb values('Fairview')
insert into Suburb values('Evans Park')




go
/*Insert into Roles*/
insert into Roles values ('Administrator','This user has unlimited administrative permissions',1,1,1,1,1,1,1,1)
insert into Roles values('Clerk','User only has read rights',1,1,0,1,0,1,0,0)
insert into Roles values('Manager','You can perform the same functions as the administrator except creating other users, changing the user types of others, Or changing their passwords. Read/Write users can change their own password.',1,1,1,1,0,1,1,1 )
insert into Roles values ('Network Admin','This user has unlimited administrative permissions',1,1,1,1,1,1,1,1)
insert into Roles values('Network Employee','User only has read rights',1,0,0,1,0,1,0,0)
insert into Roles values('Network developer Admin','You can perform the same functions as the administrator except creating other users, changing the user types of others, Or changing their passwords. Read/Write users can change their own password.',1,1,1,1,0,1,1,1 )
insert into Roles values ('Lab Admin','This user has unlimited administrative permissions',1,0,1,1,0,1,1,1)
insert into Roles values('Lab Employee','User only has read rights',1,0,0,1,0,1,0,0)
insert into Roles values('LAb Manager','You can perform the same functions as the administrator except creating other users, changing the user types of others, Or changing their passwords. Read/Write users can change their own password.',1,1,1,1,0,1,0,0 )


go
/*Insert into Employee*/
insert into employee values('Allan','Cartman','1234567891234','1950/06/06','1','0733259632','0123222289','Allan@webmail.co.za','15 Park Street','0032','P.O Box 9632 reveria','0502','2','1','1','1')
insert into employee values('Elsabe','Smith','9874563210123','1955/05/02','1','0721234567','0123456333','Elsabe@webmail.co.za','16 Green Street','1122','P.O Box 8520 reveria','0062','3','1','1','1')
insert into employee values('Lindiwe','Baloyi','4567891230963','1960/08/05','1','0731234569','0123456852','Lindiwe@webmail.co.za','10 North Street','0122','P.O Box 9300 reveria','0122','1','1','1','1')
insert into employee values('Lerato','Sechaba','13214567890753','1962/02/03','1','0821234568','0123456963','Lerato@webmail.co.za','10 Rebecca Street','0002','P.O Box 8900 reveria','0023','1','1','1','1')
insert into employee values('Dineo','Mashaba','13214963580753','1980/02/24','1','0836638965','0123456968','dineo@webmail.co.za','18 Rebecca Street','0002','P.O Box 8850 reveria','0026','1','1','1','1')
insert into employee values('Boity','Senzo','1234567891854','1950/06/06','1','0826339586','0123226289','Boity@webmail.co.za','158 Park Street','0832','P.O Box 9987 reveria','4822','2','5','1','4')
insert into employee values('Mene','Kelly','9352563210123','1955/05/02','1','0725556567','0123456733','Mene@ymail.co.za','167 Reen Street','1822','P.O Box 8560 reveria','4851','3','1','6','1')
insert into employee values('Mimi','Baloyi','4567891230963','1960/08/05','1','0731234569','0123456892','Mimi@upmail.co.za','108 Douth Street','0182','P.O Box 920 reveria','7521','1','4','1','4')
insert into employee values('Bonanag','Szwart','13214567890753','1962/02/03','1','0821275988','0123456773','Bonanag@upmail.co.za','140 Rebecca Street','0502','P.O Box 82 reveria','8523','1','4','5','1')
insert into employee values('Slikour','Swatta','13214963580753','1980/02/24','1','0865328965','0123456268','Slikour@shaimail.co.za','1 Rebecca Street','0012','P.O Box 1 reveria','9632','1','4','6','5')
go

/*Insert into User*/
insert into user_table values ('Allen','25d55ad283aa400af464c76d713c07ad','0',1, 1)
insert into user_table values ('Elsabe','25d55ad283aa400af464c76d713c07ad','0',3 , 2)
insert into user_table values ('Lindiwe','25d55ad283aa400af464c76d713c07ad','0',2 ,3)
insert into user_table values ('Lerato','25d55ad283aa400af464c76d713c07ad','1',2 ,4)
insert into user_table values ('Boity','25d55ad283aa400af464c76d713c07ad','1',6, 5)
insert into user_table values ('Mene','25d55ad283aa400af464c76d713c07ad','1',5 , 6)
insert into user_table values ('Mimi','25d55ad283aa400af464c76d713c07ad','0',8 ,7)
insert into user_table values ('Bonanag','25d55ad283aa400af464c76d713c07ad','1',9 ,8)
insert into user_table values ('Slikour','25d55ad283aa400af464c76d713c07ad','1',9 ,9)

go

/*Insert into Audit_trail*/
insert into Audit_trail values ('2010/05/18','Add new user ',1)
insert into Audit_trail values ('2008/03/12','logon ',2)
insert into Audit_trail values ('2007/02/22','Print tenant list ',2)
insert into Audit_trail values ('2001/01/08','logon ',3)
insert into Audit_trail values ('2012/06/17','Print flat list ',5)
insert into Audit_trail values ('2013/04/23','Print tenant list ',8)
insert into Audit_trail values ('2014/07/06','logoff ',7)
insert into Audit_trail values ('2002/05/15','Print flat list "The Wall"',6)
insert into Audit_trail values ('2010/02/27','Print tenant list "The Wall"',4)
insert into Audit_trail values ('2011/07/07','Add new user ',1)
insert into Audit_trail values ('2011/07/15','Print flat list "The Gables"',1)
insert into Audit_trail values ('2011/07/28','Print tenant list "The Wall"',2)

go

/*Insert into Employer*/
insert into Employer values('Absa','29 Duncan Street','0123542689','0123542688','absa@yahoo.com','2001/02/05','16000.00','Ms S Botha')
insert into Employer values('University Of Pretoria','123 Hatfield','012568924','012568925','Admin@tuks.co.za','2011/01/05','10000.00','Mr J Kruger')
insert into Employer values('SABC','125 Sandtot','0113697895','0113697896','adminHr@Sabc.co.za','2005/06/03','15000.00','Mrs J Khumalo')
insert into Employer values('FNB','23 Duncan Street','0113542689','012367888','fnb@yahoo.com','2000/02/02','11200.00','Ms S Diel')
insert into Employer values('University Of Cape Town','123 Hatfield Street','012568924','012568925','uct@uct.ac.za','2004/01/05','14560.00','Mr J Steyn')
insert into Employer values('BSG','12 Sandton','0113697895','0113697896','adminHr@Sabc.co.za','2008/06/03','18000.00','Mr L Khumalo')
insert into Employer values('RMB','45 Duncan Street','0123542689','0123542688','absa@yahoo.com','2011/07/07','16000.02','Ms S Botha')
insert into Employer values('University Of Johannessburg','123 Auckland','012568924','012568925','Admin@uj.ac.za','2011/07/28','10000.00','Mr G Kruger')
insert into Employer values('Accenture','125 Sandtom','0113697895','0113697896','adminHr@accenture.co.za','2002/05/15','18000.00','Mrs T Khumalo')
insert into Employer values('Gigabyte','12 Hillcrest','012568924','012568925','Admin@gig.co.za','2011/01/05','1002.02','Mr J Meccer')
insert into Employer values('KPMG','125 reen street Sandpop','0113697895','0113697896','adminHr@kpmg.co.za','2005/06/03','15070.50','Mr M Khumalo')


go

/*Insert into Bursary*/
insert into bursary values('Absa','29 Duncan Street,Hatfeild','0123542689','0123542688','bursary@absa.co.za','Tony Lee')
insert into bursary values('Gibs','123 Campusa Square, Hatfield','012568924','0123542688','bursary@gibs.ac.za','Chuck Norris')
insert into bursary values('Microsoft','125 Revonia Rd, Sandton','0113697895','0113697896','bursary@Microsoft.com','Bill Gates')
insert into bursary values('FNB','2 Duncan Street , Hatfield ','0123542675','0123512588','FNB@absa.co.za','Tumi Jones')
insert into bursary values('University Of Cape Town','121 Student Square, Hatfield','012565524','0123856988','bursary@uct.ac.za','timothy Green')
insert into bursary values('Accenture','125 Ruvonia Road, Sandton','011369635','0113697863','bursary@accenture.com','Steve Jobs')
insert into bursary values('LG','29 Duncan Street,Hatfeild','0123345689','0123545348','bursary@lg.co.za','Tony Lee')
insert into bursary values('Meccer','123 Campusa Square, Hatfield','012563424','0133452688','bursary@meccer.ac.za','Chuck Norris')
insert into bursary values('PWC','123 Revonia Rd, Sandton','0113697435','0113497896','bursary@opwc.com','Eill Gath')
insert into bursary values('Group 5','12 Revonia Rd, Sandton','0113691295','0113623896','bursary@g5.com','Hooler Hope')
go
/*Insert into Flat_Type*/
insert into Flat_Type values('One Bedroom',null)
insert into Flat_Type values('Two Bedroom',null)
insert into Flat_Type values('Bachelor',null)
insert into Flat_Type values('Three Bedrooms',null)
insert into Flat_Type values('Loft One Bedroom',null)
insert into Flat_Type values('Loft Two Bedroom',null)
insert into Flat_Type values('Loft Bachelor',null)
insert into Flat_Type values('Loft Three Bedrooms',null)
insert into Flat_Type values('Corner Three Bedrooms',null)
go

/*Insert into Owner_Table*/
insert into Owner_Table values('Hector','Troy', '8709295663089', '1987/09/29', '0733225369', '0123335349' , 'T@shaimobile.com', 1, '43 Po box hatfield' ,'0153','14 Prospect street gables','0132', 1,1,1) 
insert into Owner_Table values('Peter','Ran', '8809205653087', '1988/09/20', '0731623611', '0115319587' , 'pr@webmail.com', 1, '3 Po box hatfield' ,'0150','18 south street hillcrest','0120', 1,2,2) 
insert into Owner_Table values('Kabelo','Chiefs', '8702205653222', '1987/05/20', '0723225950', '0121319667' , 'Kabelo@webmail.com', 1, '3 Po box hatfield' ,'0150','18 south street hillcrest','0120', 1,2,2) 
insert into Owner_Table values('Blackberry','Reddy', '8009295663089', '1980/09/29', '0733855369', '0123225349' , 'blackberry@shaimobile.com', 0, '06 Po box SouthFielf' ,'0553','22 Prospect Street Gables','0100', 1,5,5) 
insert into Owner_Table values('Puff','Diddy', '8209205653087', '1982/09/20', '0731623652', '0115319574' , 'pdiddy@webmail.com', 1, '35 Po box hatfield' ,'0150','18 north street hillcrest','0122', 1,5,6) 
insert into Owner_Table values('Motheo','Chiefs', '8709295663080', '1989/05/20', '0123225349', '0123225349' , 'motheo@webmail.com', 1, '6 Po box hatfield' ,'0156','16 south street hillcrest','0120', 1,5,5)
insert into Owner_Table values('Fouche','Green', '8709285663089', '1987/09/28', '0733233369', '0123852349' , 'fouche@shaimobile.com', 0, '431 Po box hatfield' ,'0153','18 Prospect street gables','0133', 3,5,4) 
insert into Owner_Table values('Fifi','Ran', '8609205653087', '1986/09/20', '0731123411', '0115334587' , 'fifi@webmail.com', 1, '38 Po box hatfield' ,'0150','18 south street hillcrest','0120', 1,2,2) 
insert into Owner_Table values('lilwayne','baby', '8406206653222', '1984/06/20', '0725325950', '0121435667' , 'baby@webmail.com', 1, '35 Po box hatfield' ,'0150','4 south street hillcrest','0120', 1,1,1)
insert into Owner_Table values('Drake','Gramham', '8702295653222', '1987/05/29', '0745359501', '0121315677' , 'Drake@webmail.com', 1, '36 Po box hatfield' ,'0150','1 south street hillcrest','0120', 1,1,1)

go
/*Insert into Body_Corporate*/
insert into Body_Corporate values ('Mid City', '0124263400','501 Jorissen Street Sunnyside East','info@khwelacity.co.za','PO Box 4945 Pretoria','0001','0001',3,1)
insert into Body_Corporate values ('Cpt Asset Management', '0878087453','539 jorrisen Street','eppo@cpt-g.com','PO Box 56 Pretoria','56932','5231',3,1)
insert into Body_Corporate values ('Low City', '0124263410','50 Green Street Sunnyside East','info@lowcity.co.za','PO Box 4965 Pretoria','0021','0004',5,1)
insert into Body_Corporate values ('Asset Management', '0878075013','5 Red Street','asset@cpt-g.com','PO Box 50 Pretoria','56922','5231',3,3)
insert into Body_Corporate values ('High City', '0124263400','501 Jorissen Street Sunnyside East','info@khwelacity.co.za','PO Box 4945 Pretoria','0001','0001',3,1)
insert into Body_Corporate values ('HG Asset Management', '0878023253','53 round Street','HG@cpt-g.com','PO Box 56 Pretoria','56222','5541',4,4)
insert into Body_Corporate values ('Med', '0124212300','523 Jorissen Street Sunnyside East','med@khwelacity.co.za','PO Box 4945 Pretoria','0001','0001',2,2)
insert into Body_Corporate values ('CBMW Asset Management', '0878012893','533 jorrisen Street','cbmw@cpt-g.com','PO Box 86 Pretoria','5692','5231',2,2)
insert into Body_Corporate values ('Reed City', '0124893400','01 Jorissen Street Pretoria East','reed@khwelacity.co.za','PO Box 44 Pretoria','0088','0001',4,4)
insert into Body_Corporate values ('Fard Asset Management', '0878086143','56 jorrisen Street','fard@cpt-g.com','PO Box 6 Pretoria','56555','5231',6,6)
 go
 /*Insert into Building*/
insert into Building values('The Wall','1135 Schoeman Street',null,1,1,1)
insert into Building values('Riveria Close','14 korem street',null,1,4,1)
insert into Building values('Scarabeus','10 south street',null,1,3,1)
insert into Building values('The Gables','1 Schoeman Street',null,2,2,2)
insert into Building values('Fields','4 korem street',null,3,4,3)
insert into Building values('Lodge','1 south street',null,3,3,3)
insert into Building values('Crown Court','15 choe Street',null,4,4,4)
insert into Building values('Burnett Villa','15 dorem street',null,4,4,4)
insert into Building values('Du South','15 South street',null,5,5,5)
insert into Building values('Scarabeus','10 south street',null,1,3,1)
go

/*Insert into Applicant*/
insert into Applicant values('Shelly','Botha','8512012589635','1985/12/02',1,'0123542579','0761235986', 'shelly@yahoo.com','24 Mamelodi ','0028','Kgele Street','0028',0,1,2,1,1,1,2,1)
insert into Applicant values('Sej','Don','8810312589635','1988/10/31',1,'0123443671','0821235986', 'sej@yahoo.com','32 Menlyn ','0028','1st Avenue','0002',0,1,2,1,1,2,2,2)
insert into Applicant values('Shai','Lebogang','8812012589635','1988/12/02',1,'0123542578','0761235886', 'shai@yahoo.com','24 silverlakes ','0028','3 Gold Street','0028',0,2,2,2,2,2,2,2)
insert into Applicant values('Thando','Kelly','8911312589635','1989/11/30',0,'0123443671','0821235986', 'kelly@yahoo.com','3 Midrand ','0028','21st Avenue','0002',0,3,3,3,3,3,3,3)
insert into Applicant values('Hitten','Burnett','8712012589635','1987/12/02',1,'0123545578','0761235887', 'Hitten@yahoo.com','6 silverlakes ','0128','3 Gold Street','0028',0,2,1,1,1,1,1,1)
insert into Applicant values('Victor','Crown','8711312589635','1987/11/30',0,'0123443676','0821236686', 'Victor@yahoo.com','3 fairview ','0228','31st Avenue','0002',0,4,5,2,7,5,6,1)
insert into Applicant values('Nsuku','Kotze','7712012589635','1977/12/02',0,'0111545578','0721237887', 'Nsuku@yahoo.com','65 greenlakes ','0128','23 Gold Street','0028',0,3,1,1,1,1,1,1)
insert into Applicant values('Tumi','Phorosi','7711312589635','1977/11/30',0,'0111443676','0831246686', 'Tumi@yahoo.com','36 badview ','0228','31st Avenue','0502',0,2,2,2,2,2,2,2)
insert into Applicant values('Bakang','Bongani','9412012589635','1994/12/02',0,'0111533378','0721231187', 'Bakang@yahoo.com','99 greenlakes ','0128','23 Gold Street','0828',0,3,1,1,8,1,4,1)
insert into Applicant values('Motheo','Bongi','9411312589635','1994/11/20',0,'0111443555','0831246116', 'Motheo@yahoo.com','88 badview ','0228','31st Avenue','0582',0,2,2,2,2,5,2,4)

go
/*Insert into Referece*/
Insert into Reference values('Thato', 'Moose', '0125421976', '0713225950', 'thato@hotmail.com', 'P O Box 43 Postnet', '5263', '15 Green Avenue', '1524', '1' , '1' , '1', '1')   
Insert into Reference values('Tshwanelo', 'Geen', '0128521976', '0713225963', 'Tshwanelo@hotmail.com', 'P O Box 72 Postnet', '8596', '15 Red Avenue', '5263' , '2' , '8' , '8', '8') 
Insert into Reference values('Sibongile', 'Hector', '0125421333', '0713221150', 'Sibongile@hotmail.com', 'P O Box 55 Postnet', '5263', '15 Green Avenue', '1524', '1' , '1' , '1', '1')   
Insert into Reference values('Jessica', 'Meccer', '0128521444', '0783221163', 'Jessica@hotmail.com', 'P O Box 744 Postnet', '8596', '15 Red Avenue', '5263' , '2' , '2' , '2', '2') 
Insert into Reference values('Fifi', 'Born', '0125421555', '0723225111', 'Fifi@hotmail.com', 'P O Box 464 Postnet', '5263', '15 Green Avenue', '1524', '1' , '1' , '1', '1')   
Insert into Reference values('Charlotte', 'Puku', '0128521667', '0711125963', 'Charlotte@hotmail.com', 'P O Box 72 Postnet', '8596', '15 Red Avenue', '5263' , '5' , '5' , '5', '5') 
Insert into Reference values('Senzo', 'Molooka', '0125421888', '0123225950', 'Senzo@hotmail.com', 'P O Box 5 Postnet', '5263', '15 Green Avenue', '1524', '4' , '2' , '4', '4')   
Insert into Reference values('Katlego', 'Moroka', '0128521999', '0183225963', 'Katlego@hotmail.com', 'P O Box 76 Postnet', '8596', '15 Red Avenue', '5263' , '3' , '3' , '3', '3') 
Insert into Reference values('Boitumelo', 'Thulo', '0125888976', '0723221111', 'Boitumelo@hotmail.com', 'P O Box 44 Postnet', '5263', '15 Green Avenue', '1524', '1' , '1' , '1', '1')   
Insert into Reference values('Ollie', 'Shai', '0128999976', '0782575963', 'Ollie@hotmail.com', 'P O Box 33 Postnet', '8596', '15 Red Avenue', '5263' , '2' , '2' , '2', '2') 
 go

/*Insert into Urgency_Type*/
insert into Urgency_Type values('low')
insert into Urgency_Type values('Medium')
insert into Urgency_Type values('High')
go

/*Insert into Inspection_Type*/
insert into Inspection_Type values('Ingoing')
insert into Inspection_Type values('Outgoing')
insert into Inspection_Type values('Random')
go
/*Insert into Flat_Unit*/
insert into Flat_Unit values('Schoeman Street','N107','E12897635','W12897635','0000',1,'2500.00',1,1,1,1,2)
insert into Flat_Unit values ('Schoeman Street','N107','E12897635','W12897635','0000',0,'2500.00',1,1,1,1,2)
insert into Flat_Unit values('Duncan Street','N552','E12897778','W12897589','0028',1,'3505.00',1,2,2,2,2)
insert into Flat_Unit values('Lynwood Street','N301','E12894445','W12896565','0028',1,'4566.00',3,3,3,3,3)
insert into Flat_Unit values('Schoeman Street','N187','E12897775','W12897635','0050',1,'2550.00',5,5,5,5,2)
insert into Flat_Unit values ('Schoeman Street','N109','E1285635','W12897635','5050',0,'2550.00',2,2,2,2,2)
insert into Flat_Unit values('Duncan Street','N52','E12894578','W12897589','0528',1,'3505.00',6,6,6,6,6)
insert into Flat_Unit values('Lynwood Street','N31','E12894455','W12845565','0028',1,'4500.00',3,3,3,3,3)
insert into Flat_Unit values('Duncan Street','N594','E1289458','W12897546','0528',0,'5500.00',5,5,5,5,5)
insert into Flat_Unit values('Lynwood Street','N304','E1289425','W128964565','0558',0,'6500.00',4,4,4,4,4)

go

/*Insert into Breakage*/
insert into Breakage values('Drain Blocked','2010/05/12',1,3,2)
insert into Breakage values('Door Handle Loose','2010/02/02',1,3,1)
insert into Breakage values('Toilet Seat Broken','2010/03/03',1,2,2) 
insert into Breakage values('lights not working','2009/05/12',1,3,3)
insert into Breakage values('Door Loose','2009/05/02',1,3,2)
insert into Breakage values('Toilet Seat Broken','2009/05/03',1,2,5) 
insert into Breakage values('Drain Blocked','2008/04/12',1,3,3)
insert into Breakage values('Door Handle Loose','2008/04/02',1,3,6)
insert into Breakage values('Toilet Broken','2008/04/03',1,2,5) 
insert into Breakage values('water pipe','2008/04/03',1,2,4) 

go
/*Insert into Trustee*/
insert into  Trustee values ('Brandy','Brown','0723225398',1)
insert into  Trustee values ('Monica','Frowm','0723124598',1)
insert into  Trustee values ('Alicia','Keys','0793245198',2)
insert into  Trustee values ('Lerato','Shai','0723152494',2)
insert into  Trustee values ('Kenny','Gay','0723124592',3)
insert into  Trustee values ('Larry','Gold','0723124596',3)
insert into  Trustee values ('Ane','Gates','0723245198',1)
insert into  Trustee values ('Lance','Bryan','0726652494',3)
insert into  Trustee values ('David','Kau','0723133592',4)
insert into  Trustee values ('Eunice','Steyn','0723155596',5)
go
/*Insert into Metering_Type*/
insert into Metering_Type values('Prepaid')
insert into Metering_Type values('Postpaid')
go
/*Insert into Metering_Company*/
insert into Metering_Company values('Protea Metering', '0128041039' , '80 Raunch Avenue Georgeville' , 'PO Box 1785 Silverton','0125','0122' ,1,1,1)
insert into Metering_Company values('Impact Meters', '0860222677' , '80 Raunch Avenue Georgeville' , 'Postnet Suite 57 Lynnwood Ridge','0040','0127' ,2,1,1)
insert into Metering_Company values('Red Metering', '0128041039' , '82 Raunch Avenue Redville' , 'PO Box 17 Silverton','012','0122' ,1,1,3)
insert into Metering_Company values('Black Meters', '0860222677' , '83 Raunch Avenue Blackville' , 'Postnet Suite 54 Lynnwood Ridge','0040','0127' ,2,1,1)
insert into Metering_Company values('Blue Metering', '0128041039' , '84 Raunch Avenue Blueville' , 'PO Box 185 Silverton','0182','0122' ,1,2,1)
insert into Metering_Company values('White Meters', '0860222677' , '85 Raunch Avenue Whiteville' , 'Postnet Suite 56 Lynnwood Ridge','0020','0127' ,2,2,3)
insert into Metering_Company values('Yellow Metering', '0128041039' , '87 Raunch Avenue Yellowville' , 'PO Box 15 Silverton','0182','0227' ,1,3,3)
insert into Metering_Company values('Jade Meters', '0860222677' , '88 Raunch Avenue Jadeville' , 'Postnet Suite 58 Lynnwood Ridge','0020','0227' ,2,3,3)
insert into Metering_Company values('Cream Metering', '0128041039' , '89 Raunch Avenue Creamville' , 'PO Box 785 Silverton','0180','0227' ,1,3,3)
insert into Metering_Company values('Purple Meters', '0860222677' , '80 Raunch Avenue Purpleville' , 'Postnet Suite 55 Lynnwood Ridge','0020','0227' ,2,3,3)

go
/*Insert into Credit_Bureau*/
insert into Credit_Bureau values('TPN Credit Bureau', '370 Rivonia Boulevard Rivonia', 'helpdesk@tpn.co.za', '0723225950' , 'PO Box 2719 Rivonia', '0123', '2128 ' , '2' ,'2')
go

/*Insert into Flat Unit*/
insert into Flat_unit values ('Koreem street 14' , '1108' , '1523' , '88653' , '1546' , '1', '4500.00' ,'1',  '1' , '1', '1' , '1')
insert into Flat_unit values ('14 Summer Street' , '582' , '1563' , '81553' , '1865' , '1', '4500.00' ,'2',  '2' , '2', '2' , '2')
go
/*Insert into Tenant */
insert into Tenant values('Shelly','Gaetote','8512025285089','1985/12/02',1,'0760809652','Shelly@yahoo.com','0123547898','0123547288',' P O Box 593 Mamelodi','0052','1153 South Street', '0002' ,null,'N1083333', 1,1,null,null,null,2,1,null,1,1)
insert into Tenant values('Bontle','Molewa','8907296563041','1989/07/29',1,'0713226548','bontle@yahoo.com','0121478509','0123547588',' P O Box 519 Mamelodi','0052','1153 South Street', '0002' ,null,'N1081753', 1,1,null,null,null,2,1,null,1,1)
insert into Tenant values('Tshwanelo','Shai','8009025263022','1980/09/02',1,'0113225428','Ts@yahoo.com','0128529637','0123547858',' P O Box 509 Mamelodi','0052','1153 South Street', '0002' ,null,'N1085555', 1,1,null,null,null,2,1,null,2,2)
go
/*Insert into Lessee*/
insert into lessee values('William','Gaetote','7509295663089',Null,'1975/09/02','0153576987','0831237895',null,'will@yahoo.com','P O Box 5892 Bloemfatein', '1258 Rocklands',1,2,1)
go
/*Insert into Building_Metering*/
insert into Building_metering values(1,1)
insert into Building_metering values(2,2)
insert into Building_metering values(3,3)
insert into Building_metering values(4,4)
insert into Building_metering values(5,5)
insert into Building_metering values(6,6)
insert into Building_metering values(7,7)
insert into Building_metering values(8,8)
insert into Building_metering values(9,9)
insert into Building_metering values(10,10)
--go
/*Insert into Next_Of_Kin*/
insert into Next_Of_Kin values('James','Thompson','0760126987','0137415321','15 Street Stone hedge','0025','james@yahoo.com',0,'1987/07/14','87071459873656', 'P O Box 59 Bloem','0052',1,1,null,3,2)
insert into Next_Of_Kin values('Malerato','Tumelo','0720116975','0117115321','59 Rocklands Street ','0027','Malerato@yahoo.com',1,'1985/03/12','85031259873656', 'P O Box 59 Rusternburg','0052',2,2,null,1,1)
insert into Next_Of_Kin values('Samentha','Kate','0820116975','0157115321','259 James Street ','0027','sam@yahoo.com',1,'1975/02/17','75021759873656', 'P O Box 12 Sandton','0001',2,3,null,2,2)
insert into Next_Of_Kin values('Lindewe','Junior','0720226975','0167225321','272 Kgore Street ','0035','junior@yahoo.com',0,'1965/05/05','65050559873777', 'P O Box 12 Kgore','0025',2,4,null,4,1)
insert into Next_Of_Kin values('Kelly','Bontle','0725889632','0121623611','863 South Street ','0852','kelly@yahoo.com',0,'1985/05/09','8505096573778', 'P O Box 15 Ninapark','9632',2,null,1,4,1)
insert into Next_Of_Kin values('Palesa','Gaober','0723669542','0125427689','159 North Street ','8569','lerato@yahoo.com',0,'1989/05/09','8905096573778', 'P O Box 25 Orchards','8888',2,null,2,4,1)
insert into Next_Of_Kin values('Dudu','Smith','0725489635','0124523698','154 East Street ','8550','Phiwe@yahoo.com',0,'1980/05/09','8005096573754', 'P O Box 15 Archada','8852',2,null,3,4,1)
go
/*Insert into Enquires*/
insert into Enquires values('Suzan','Williams','Suzi@gmail.com','0823579876','0123579874','0123579998','Looking for a three bedroom that will be available end of August')
insert into Enquires values('James','Smith', 'James@yahoo.com','0725894568', null, null, 'Is it possible to come into the office and view a one bedroom flat at the wall')
insert into Enquires values('James','Bond', 'jbond@yahoo.com','0728223695', null, null, 'current units vacant')
insert into Enquires values('Frank','Williams','Frank@gmail.com','0823579876','0123579874','0123579998','Looking for a three bedroom that will be available end of July')
insert into Enquires values('Lolly','Smith', 'Lolly@yahoo.com','0725894568', null, null, 'Is it possible to come into the office and view a one bedroom flat at the fields')
insert into Enquires values('Barker','Haines', 'Barker@yahoo.com','0728223695', null, null, 'current units vacant')
insert into Enquires values('Cheral','de villers','Cheral@gmail.com','082354526',null,null,'Looking for a three bedroom that will be available end of August')
insert into Enquires values('Calvin','Green', 'Calvin@yahoo.com','0725888568', null, null, 'current units vacant')
insert into Enquires values('Jeff','Sibeko', 'Jeff@yahoo.com','0728223697', null, null, 'purchase price')
insert into Enquires values('Queen','Moroka', 'Jeff@yahoo.com','0728223694', null, null, 'purchase price')
go 
/*Insert into Flat_Unit*/
insert into Flat_Unit values('Schoeman Street','N107','E12897635','W12897635','0000',1,'2500.00',1,1,1,1,2)
insert into Flat_Unit values ('Schoeman Street','N107','E12897635','W12897635','0000',0,'2500.00',1,1,1,1,2)
insert into Flat_Unit values('Duncan Street','N552','E12897778','W12897589','0028',1,'3500.00',1,2,2,2,2)

go
/*Insert into Inspection*/
insert into inspection values( '2008/07/30', 'Door handle broken,Tap leakage',1,2,5)
insert into inspection values('2008/08/01', 'inspection passed',1,3,5)
insert into inspection values('2008/08/05', 'Place left in a mess',2,3,5)
insert into inspection values( '2007/07/30', 'Door handle broken,Tap leakage',1,2,4)
insert into inspection values('2007/08/01', 'Toilet seat Broken',1,3,4)
insert into inspection values('2007/08/05', 'inspection passed',2,3,4)
insert into inspection values( '2006/07/30', 'Door handle broken,Tap leakage',1,2,3)
insert into inspection values('2006/08/01', 'Toilet seat Broken',1,3,3)
insert into inspection values('2006/08/05', 'Place left in a mess',2,3,3)
insert into inspection values( '2005/07/30', 'inspection passed',1,2,2)
insert into inspection values('2005/08/01', 'inspection passed',1,3,2)
insert into inspection values('2005/08/05', 'inspection passed',2,3,2)
go
/*Insert into Tenant */
insert into Tenant values('Ntando','Dlamini','8512026285089','1985/12/02',1,'0760809652','samkethi@yahoo.com','0123547898','0123547888',' P O Box 59 Mamelodi','0052','1153 South Street', '0002' ,null,'N1081518', 1,1,null,null,null,2,1,null,1,1)
insert into Tenant values('Von Dutch','Freeder','8712066285089','1987/12/06',1,'0720809652','Von@yahoo.com','0123547898','0123547888',' P O Box 59 Mamelodi','0052','1153 South Street', '0002' ,null,'N1081518', 1,1,null,null,null,2,1,null,1,1)
insert into Tenant values('Didi','Gigi','9012026285089','1990/12/02',1,'0760899652','Didi@yahoo.com','0123542298','0123555828',' P O Box 59 Mamelodi','0052','1150 South Street', '0202' ,null,'N2222218', 1,1,null,null,null,2,1,null,3,3)
insert into Tenant values('Lesh','Mataboge','9012066285089','1990/12/06',1,'0720809692','Lesh@yahoo.com','0122247898','0123547828',' P O Box 59 Mamelodi','0052','1183 South Street', '0022' ,null,'N1121518', 1,1,null,null,null,2,1,null,2,2)

go
/*Insert into Behaviour*/
insert into Behaviour values('Loud Noise', 1,1,1,1)
insert into Behaviour values('Hosting parties every weekend',2,0,2,2)
go

/*Insert into Complaints*/
insert into complaints values('2011/02/12','The gyser is not working',1,1,1,1,2)
insert into complaints values('2011/03/01','The Cleaners are not cleaning  the corridor',1,2,2,2,3)
insert into complaints values('2010/02/12','plug problems',1,1,1,3,3)
insert into complaints values('2010/03/05','The Cleaners are not cleaning  the corridor',1,2,2,4,4)
insert into complaints values('2009/02/12','The window broken',1,1,1,1,1)
insert into complaints values('2009/02/17','door doesnt close properly',1,2,2,1,1)
insert into complaints values('2008/03/12','The gyser is not working',1,1,1,2,2)
insert into complaints values('2008/03/06','The Cleaners are not cleaning  the corridor',1,2,2,2,2)
insert into complaints values('2008/04/12','The lights is not working',1,1,1,4,4)
insert into complaints values('2008/04/01','The paint pilling off',1,2,2,4,4)
go



