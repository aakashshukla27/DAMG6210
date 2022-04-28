create or replace view diminishingInventory as 
select p.medid, p.company, p.quantity, p.produceddate, p.expirydate, s.supplierid, 
s.name, s.phone, s.email, s.address_1, s.address_2, s.city, s.state, s.zipcode from pharmacymaster p inner join suppliermaster s on p.supplierid = s.supplierid order by quantity;


create or replace view patientDocument AS
select r.reportId, r.appointmentId, r.DIAGNOSIS, r.DOCTORID, p.PHARMACYID, pm.name, pm.PRICE
from report r inner join prescription p on r.reportId = p.reportId
inner join prescriptionmaster pm on p.pharmacyId = pm.id

create or replace view HRView AS
select * from employee inner join payroll on employee."employeeid" = payroll.emp_id;


create or replace view doctorList AS
select * from employee where role_id = 1;


grant select on dmddhospitaladmin.appointment to patient1;
grant select on dmddhospitaladmin.patientdetails to patient1;

grant select on dmddhospitaladmin.patientdocument to patient1;


-- supplier master
grant select on dmddhospitaladmin.suppliermaster to pharmacist1;
grant insert on dmddhospitaladmin.suppliermaster to pharmacist1;
grant update on dmddhospitaladmin.suppliermaster to pharmacist1;
grant select on dmddhospitaladmin.suppliermaster to manager1;
grant insert on dmddhospitaladmin.suppliermaster to manager1;
grant update on dmddhospitaladmin.suppliermaster to manager1;

-- insurance master
grant select on dmddhospitaladmin.insurancemaster to patient1;
grant select on dmddhospitaladmin.insurancemaster to receptionist1;
grant select on dmddhospitaladmin.insurancemaster to manager1;
grant insert on dmddhospitaladmin.insurancemaster to patient1;
grant update on dmddhospitaladmin.insurancemaster to patient1;
grant insert on dmddhospitaladmin.insurancemaster to receptionist1;
grant update on dmddhospitaladmin.insurancemaster to receptionist1;

-- room
grant select on dmddhospitaladmin.room to doctor1;
grant select on dmddhospitaladmin.room to nurse1;
grant select on dmddhospitaladmin.room to receptionist1;
grant insert on dmddhospitaladmin.room to receptionist1;
grant update on dmddhospitaladmin.room to receptionist1;
grant select on dmddhospitaladmin.room to manager1;
grant insert on dmddhospitaladmin.room to manager1;
grant update on dmddhospitaladmin.room to manager1;


-- payroll
grant select on dmddhospitaladmin.payroll to doctor1;
grant select on dmddhospitaladmin.payroll to nurse1;
grant select on dmddhospitaladmin.payroll to receptionist1;
grant select on dmddhospitaladmin.payroll to labassistant1;
grant select on dmddhospitaladmin.payroll to pharmacist1;
grant select on dmddhospitaladmin.payroll to manager1;
grant select on dmddhospitaladmin.payroll to hr1;

grant select on dmddhospitaladmin.rolemaster to manager1;
grant insert on dmddhospitaladmin.rolemaster to manager1;
grant update on dmddhospitaladmin.rolemaster to manager1;

grant select on dmddhospitaladmin.employee to manager1;
grant insert on dmddhospitaladmin.employee to manager1;
grant update on dmddhospitaladmin.employee to manager1;

grant select on dmddhospitaladmin.rolemaster to hr1;
grant insert on dmddhospitaladmin.rolemaster to hr1;
grant update on dmddhospitaladmin.rolemaster to hr1;

grant select on dmddhospitaladmin.employee to hr1;
grant insert on dmddhospitaladmin.employee to hr1;
grant update on dmddhospitaladmin.employee to hr1;
grant select on dmddhospitaladmin.employee to patient1;

grant select on dmddhospitaladmin.doctorList to patient1;


grant select on dmddhospitaladmin.lab to labassistant1;
grant insert on dmddhospitaladmin.lab to labassistant1;
grant update on dmddhospitaladmin.lab to labassistant1;
