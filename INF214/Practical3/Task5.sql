-- Stock returns from a specific period
SELECT Supplier_Invoice_Number,Stock_Returned_Reason,Stock_Returned_Quantity FROM StockReturned WHERE Stock_Returned_Reason LIKE '%colour paintballs%' AND CONVERT(varchar(10),Stock_Returned_Date,105) BETWEEN '01-04-2011' AND  '31-07-2011';

-- In response to a customer’s enquiry, the sales assistant needs a list of stock returns
-- regarding colour paintballs during the time period of April and August of 2011. Write an
-- SQL query that will show invoice number, reason for return and return quantity. Test the
-- query and save it as 03Prac – Query5.sql
