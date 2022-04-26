create or replace PROCEDURE createUsers
(
FNAME in VARCHAR2,
LNAME in VARCHAR2,
ADDRESS_1 in VARCHAR2,
ADDRESS_2 in VARCHAR2,
CITY in VARCHAR2,
STATE in VARCHAR2,
ZIPCODE in VARCHAR2,
PHONE in VARCHAR2,
SPECC in VARCHAR2,
EMAIL in VARCHAR2,
PSWD in VARCHAR2,
ROLE_ID in NUMBER,
IS_ACTIVE in BINARY_DOUBLE
)

is 
empId number default EMPLOYEESEQUENCE.nextval;
begin 
   insert into employee values (empId, FNAME, LNAME, ADDRESS_1, ADDRESS_2, CITY, STATE, ZIPCODE, PHONE, SPECC, EMAIL, PSWD, ROLE_ID, IS_ACTIVE);
end;
/

create or replace PROCEDURE patientdetails
(
FNAME in VARCHAR2,
LNAME in VARCHAR2,
GENDER in VARCHAR2,
ADDRESS_1 in VARCHAR2,
ADDRESS_2 in VARCHAR2,
CITY in VARCHAR2,
STATE in VARCHAR2,
ZIPCODE in VARCHAR2,
PHONE in VARCHAR2,
EMAIL in VARCHAR2,
PSWD in VARCHAR2,
DOB in DATE
)

is 
patientId number default PATIENTSEQUENCE.nextval;
begin 
   insert into patientdetails values (patientId, FNAME, LNAME, GENDER, ADDRESS_1, ADDRESS_2, CITY, STATE, ZIPCODE, PHONE, EMAIL, PSWD, DOB);
end;
/

create or replace PROCEDURE createBill
(
	DOCTORFEE in NUMBER, 
	PHARMACYCHARGE in NUMBER, 
	ROOMCHARGE in FLOAT, 
	OPTCHARGE in FLOAT, 
	NOOFDAYS in NUMBER, 
	MISCCHARGE in NUMBER, 
	LABCHARGE in FLOAT, 
	INSURANCENUMBER in NUMBER, 
	APPOINTMENTID in NUMBER
)

is 
billId number default BILLSEQUENCE.nextval;
begin 
   insert into bill values (billId, DOCTORFEE, PHARMACYCHARGE, ROOMCHARGE, OPTCHARGE, NOOFDAYS, MISCCHARGE, LABCHARGE, INSURANCENUMBER, APPOINTMENTID);
end;
/

create or replace PROCEDURE bookappointment
(
	PATIENTID in NUMBER,
       APPOINTMENTNUMBER in VARCHAR2,
       APPOINTMENTTYPE in VARCHAR2,
       REQUESTDATE in  DATE,
       APPOINTMENTTIME in DATE,
       DOCTORID in  NUMBER,
       APPOINTMENTDESCRIPTION in VARCHAR2
)

is 
appointmentId number default appointmentSequence.nextval;
begin 
   insert into bill values (appointmentId, DOCTORFEE, PHARMACYCHARGE, ROOMCHARGE, OPTCHARGE, NOOFDAYS, MISCCHARGE, LABCHARGE, INSURANCENUMBER, APPOINTMENTID);
end;
/

create or replace PROCEDURE insuranceDetails
(
	PATIENTID in NUMBER, 
	STARTDATE in DATE, 
	ENDDATE in DATE, 
	OPTICAL in VARCHAR2,
    DENTAL in VARCHAR2,
	MATERNITY in VARCHAR2, 
	INSURANCECODE in NUMBER
)

is 
id number default insuranceSequence.nextval;
begin 
   insert into bill values (id, PATIENTID , STARTDATE, ENDDATE, OPTICAL, DENTAL, MATERNITY, INSURANCECODE);
end;
/

create or replace PROCEDURE insuranceMasterdetails
(
	PATIENTID in VARCHAR2, 
	PLAN in VARCHAR2, 
	COPAY in NUMBER, 
	COVERAGE in VARCHAR2,
)

is 
INSURANCECODE number default insurancemasterSequence.nextval;
begin 
   insert into bill values (INSURANCECODE, PATIENTID , PLAN, COPAY, COVERAGE);
end;
/

create or replace PROCEDURE labDetails
(
	EMPLOYEEID in NUMBER, 
	APPOINTMENTID in NUMBER, 
	TESTID in NUMBER, 
	HEIGHT in NUMBER, 
	WEIGHT in NUMBER, 
	BP in NUMBER, 
	TEMPERATURE in NUMBER, 
	TESTDATE in DATE, 
	TESTRESULT in VARCHAR2
)

is 
LABNUMBER number default labSequence.nextval;
begin 
   insert into bill values (LABNUMBER, EMPLOYEEID , APPOINTMENTID, TESTID, HEIGHT, WEIGHT, BP, TEMPERATURE, TESTDATE, TESTRESULT);
end;
/

create or replace PROCEDURE payrollDetails
(
	EMP_ID in NUMBER, 
	SAL in FLOAT, 
	BONUS in FLOAT, 
	ACC_NO in NUMBER
)

is 
id number default payrollSequence.nextval;
begin 
   insert into bill values (id, EMP_ID, SAL , BONUS, ACC_NO);
end;
/

create or replace PROCEDURE pharmacyMasterDetails
(
	MEDID in NUMBER, 
	COMPANY in VARCHAR2, 
	QUANTITY in NUMBER, 
	PRODUCEDDATE in DATE, 
	EXPIRYDATE in DATE, 
	SUPPLIERID in NUMBER
)

is 
ID number default pharmacyMasterSequence.nextval;
begin 
   insert into bill values (ID, MEDID , COMPANY, QUANTITY, PRODUCEDDATE, EXPIRYDATE, SUPPLIERID);
end;
/

create or replace PROCEDURE pharmacyMasterDetails
(
	MEDID in NUMBER, 
	COMPANY in VARCHAR2, 
	QUANTITY in NUMBER, 
	PRODUCEDDATE in DATE, 
	EXPIRYDATE in DATE, 
	SUPPLIERID in NUMBER
)

is 
ID number default pharmacyMasterSequence.nextval;
begin 
   insert into bill values (ID, MEDID , COMPANY, QUANTITY, PRODUCEDDATE, EXPIRYDATE, SUPPLIERID);
end;
/

create or replace PROCEDURE prescriptionDetails
(
	REPORTID in NUMBER, 
	PHARMACYID in NUMBER,
)

is 
ID number default prescriptionSequence.nextval;
begin 
   insert into bill values (ID, REPORTID , PHARMACYID);
end;
/

create or replace PROCEDURE createReport
(
	APPOINTMENTID in NUMBER, 
	DIAGNOSIS in VARCHAR2 , 
	DOCTORID in NUMBER
)

is 
REPORTID number default reportSequence.nextval;
begin 
   insert into bill values (REPORTID, APPOINTMENTID , DIAGNOSIS, DOCTORID);
end;
/

create or replace PROCEDURE roleMasterDetails
(
	ROLENAME in VARCHAR2,
)

is 
ROLEID number default roleMasterSequence.nextval;
begin 
   insert into bill values (ROLENAME);
end;
/

create or replace PROCEDURE roomDetails
(
	CATEGORY in VARCHAR2, 
	STATUS in VARCHAR2, 
	BEDCOUNT in NUMBER
)
is 
ROOM_ID number default roomSequence.nextval;
begin 
   insert into bill values (ROOM_ID, CATEGORY , STATUS, BEDCOUNT);
end;
/

create or replace PROCEDURE supplierMasterDetails
(
	NAME in VARCHAR2, 
	PHONE in VARCHAR2, 
	EMAIL in VARCHAR2, 
	ADDRESS_1 in VARCHAR2, 
	ADDRESS_2 in VARCHAR2, 
	CITY in VARCHAR2, 
	STATE in VARCHAR2, 
	ZIPCODE in  VARCHAR2
)
is 
SUPPLIERID number default supplierSequence.nextval;
begin 
   insert into bill values (SUPPLIERID, NAME, PHONE, EMAIL, ADDRESS_1, ADDRESS_2, CITY, STATE, ZIPCODE);
end;
/




