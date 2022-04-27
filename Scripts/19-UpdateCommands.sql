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