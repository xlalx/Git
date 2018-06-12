insert into vendors
  (VendorName, Address1, Address2, City, State, Zip, Country, Phone, FAX, 
   Preferred)
values
  (:VendorName, :Address1, :Address2, :City, :State, :Zip, :Country, :Phone, 
   :FAX, :Preferred)
---

update vendors
set
  VendorName = :VendorName,
  Address1 = :Address1,
  Address2 = :Address2,
  City = :City,
  State = :State,
  Zip = :Zip,
  Country = :Country,
  Phone = :Phone,
  FAX = :FAX,
  Preferred = :Preferred
where
  VendorNo = :OLD_VendorNo