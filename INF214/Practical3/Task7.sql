-- Select from payment excluding certain types
SELECT * FROM Payment, PaymentType WHERE PaymentType.Payment_Type_Description <> 'Cash' AND (Payment.Payment_ID <> 1 OR Payment.Payment_ID <> 2); 

-- You are requested to make a list of all the payments made that are not payment ID’s of 1
-- or 2. Write an SQL query that will show the information for these payments. Test the query
-- and save it as 03Prac – Query7.sql.
