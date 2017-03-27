-- Select from member Member_Email
-- The mail server administrator wants a list of all members whose email address is in the
-- tuks.co.za domain. Write an SQL query that will show the member name, surname, cell
-- number, expiry date and e-mail address for the required .Test the query and save it as
-- 03Prac – Query4.sql.

SELECT Member_Name,Member_Surname,Member_Cell_Num,Member_Expiry_Date,Member_Email FROM Member WHERE Member_Email LIKE '%@tuks.co.za';
