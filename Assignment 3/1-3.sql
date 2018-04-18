SELECT FirstName ,LastName ,Address,
CASE Address
  WHEN 'Timoteivn 10' THEN 'Asghar 12'
  WHEN 'Storgt 20' THEN 'Akbar 13'
  ELSE 'Mahmood 11'
END
FROM persons;