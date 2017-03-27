-- // After generate.sql || GotchaSystems.sql has been run.
-- 0812289054 and 0824153241 belong to.
-- Write an SQL query that will show the Employee’s Name, Surname and Status. Test the
-- query and save it as 03Prac – Query2.sql.

SELECT Employee_Name,Employee_Surname,Employee_Status FROM Employee WHERE Employee_Cell_num LIKE '0812289054' OR Employee_Cell_num LIKE '0824153241';
