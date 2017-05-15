# Join Examples

Using `JOIN` on 3 tables.

```sql
/* 
Tested using Rextester
*/

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
VALUES('Africa'),('America'),('Russia'),('North Korea')
GO

INSERT INTO Patient (countryID)
VALUES(1),(2),(1),(3),(4)
GO

Create TABLE ExiledCountry (
    entryID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    countryID INT REFERENCES Country(countryID)
);
GO

INSERT INTO ExiledCountry
VALUES(4)

/*
AIM: Select all patients and see which country (description) they are from

Notice how the results are the same even when using different join types
*/

SELECT Patient.patientID, Country.countryDesc FROM Patient
RIGHT OUTER JOIN Country
ON Patient.countryId = Country.countryId


SELECT Patient.patientID, Country.countryDesc FROM Country
LEFt JOIN Patient
ON Patient.countryId = Country.countryId


/*
AIM: Select all patients from exiled country and display as above

Process: Alias the FROM and the JOIN tables
*/
SELECT A.patientID, Country.countryDesc FROM Patient A
JOIN ExiledCountry B
ON A.countryID = B.countryID
JOIN Country
ON B.countryID = Country.countryID
```

### Output
```
ROW  patientID	countryDesc
1	1	Africa
2	3	Africa
3	2	America
4	4	Russia
5	5	North Korea

ROW  patientID	countryDesc
1	1	Africa
2	3	Africa
3	2	America
4	4	Russia
5	5	North Korea

ROW  patientID	countryDesc
1	5	North Korea
```

