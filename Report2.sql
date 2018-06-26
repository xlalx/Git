SELECT Clients.id,Clients.FirstName, Clients.Surname,Clients.BirthDate,
       Address.address as sField, "Aa?an" as NameField, num as sNum                                                                                                                               
FROM Clients LEFT JOIN Address ON Clients.id = client_id
             WHERE num = 1
UNION ALL
SELECT Clients.id,Clients.FirstName, Clients.Surname,Clients.BirthDate,
       Address.address as sField, "Aiiieieoaeuiue Aa?an" as NameField, num as sNum                                                                                                                    
FROM Clients LEFT JOIN Address ON Clients.id = client_id 
             WHERE num = 2
UNION ALL
SELECT Clients.id,Clients.FirstName, Clients.Surname,Clients.BirthDate,
       Email.email as Field, "Ye.ii?oa" as NameField, num as sNum                                                                                                                    
FROM Clients LEFT JOIN Email ON Clients.id = client_id 
             WHERE num = 1
UNION ALL
SELECT Clients.id,Clients.FirstName, Clients.Surname,Clients.BirthDate,
       Email.email as Field, "Aiiieieoaeuiay ye.ii?oa" as NameField, num as sNum                                                                                                                    
FROM Clients LEFT JOIN Email ON Clients.id = client_id 
             WHERE num = 2   
ORDER BY Clients.id,Clients.FirstName, Clients.Surname, sNum              
