# Join Examples

```sql
CREATE TABLE Country (
    countryID int PRIMARY KEY NOT NULL IDENTITY(1,1),
    countryDesc VARCHAR(255) NOT NULL
    );
GO
    
CREATE TABLE Patient (
    patientID int PRIMARY KEY NOT NULL IDENTITY(1,1),
    countryID int REFERENCES Country(countryID)
);
GO

INSERT INTO Country (countryDesc)
VALUES('Africa'),('America'),('Russia')
GO

InsERT iNtO Patient (countryID)
VALUES(1),(2),(1),(3)
GO

-- In this case the results will be similar since all countryIDs from Patients are in Country as well
SELECT * FROM Patient
RIGHT OUTER JOIN Country
ON Patient.countryId = Country.countryId


SELECT * FROM Country
LEFt JOIN Patient
ON Patient.countryId = Country.countryId
WHERE patientID = 1
```
