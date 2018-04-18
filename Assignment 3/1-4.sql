begin;
insert into persons (P_Id ,LastName ,FirstName ,Address ,City, PhoneNum) VALUES (7, 'Tjessem' , 'Jakob' ,'Nissestien 67' ,'Sandnes', '001677');
SELECT * FROM
(
    SELECT *
    FROM persons
    LIMIT 3
) AS T1
ORDER BY T1.FirstName;
commit;