SELECT Clients.id, Clients.FirstName, Clients.Surname, Clients.BirthDate, "Aa?an" AS NameField,
       Address.Address AS Name,Address.num as num                                                                                FROM Clients LEFT JOIN Address ON Clients.id = Address.client_id
UNION ALL
SELECT Clients.id, Clients.FirstName, Clients.Surname, Clients.BirthDate, "Ye.ii?oa" AS NameField,
       Email.Email AS Name,Email.num as num                                                                                      FROM Clients LEFT JOIN Email ON Clients.id = Email.client_id
UNION ALL
SELECT Clients.id, Clients.FirstName, Clients.Surname, Clients.BirthDate, "Iiia? oaeaoiia" AS NameField,
       Phone.Phone AS Name,Phone.num as num                                                                                      FROM Clients LEFT JOIN Phone ON Clients.id = Phone.client_id
ORDER BY Clients.id,num