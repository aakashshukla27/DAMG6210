create or REPLACE procedure updatePrescription(
    rid number,
    diagStr VARCHAR2
)
is
BEGIN
    update report set DIAGNOSIS = diagStr where reportid = rid;
    commit;

END;

create or replace FUNCTION findRooms(
    roomType VARCHAR2,
    roomStatus VARCHAR2
)
return tabType
AS
BEGIN

END;


create trigger insertToBill
after insert on report
REFERENCING OLD AS OLD NEW AS NEW
for each row
declare currentCount number;
BEGIN
    select count(*) into currentCount from bill where appointmentId = :NEW.appointmentId;
    if currentCount = 0;
    then
       createBill(200, 0,0,0,0,0,0,0, :NEW.appointmentId);
    end if;
END;

drop trigger insertToBill;


-- create or replace function GenerateBill
-- (appId in number)
-- return number
-- is
-- cost number;
-- cursor c1 is select testId from lab where appointmentid = appId;
-- cursor c2 is select * from report where appointmentid = appId;
-- begin


create or replace function generateTotalBillAmount(
    appId in number
)
return number
is
cost number;
copay number;
beforeInsuranceCost number;
pid number;
BEGIN


select patientid into pid from appointment where appointmentid = appId;
select b.copay into copay from insurance a
inner join 
insurancemaster b on b.insurancecode = a.insurancecode
where a.patientid = pid;
select doctorFee + pharmacyCharge + roomCharge + OPTCharge + noOfDays + miscCharge + labCharge into beforeInsuranceCost
from bill
where appointmentId = appId;
cost := beforeInsuranceCost - copay;
return cost;
END;
/