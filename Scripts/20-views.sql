create or replace view diminishingInventory as 
select p.medid, p.company, p.quantity, p.produceddate, p.expirydate, s.supplierid, 
s.name, s.phone, s.email, s.address_1, s.address_2, s.city, s.state, s.zipcode from pharmacymaster p inner join suppliermaster s on p.supplierid = s.supplierid order by quantity;

