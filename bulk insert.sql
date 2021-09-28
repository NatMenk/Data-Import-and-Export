--BULK INSERT
CREATE TABLE CSVTest (
	ID INT,
	FirstName VARCHAR(40),
	LastName VARCHAR(40),
	BirthDate DATETIME )
GO
BULK INSERT CSVTest --table to load into
FROM 'c:\bcp\csvtest.csv'
WITH
(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n' )
GO

SELECT * FROm CSVTest
