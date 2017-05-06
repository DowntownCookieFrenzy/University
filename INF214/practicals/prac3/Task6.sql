-- Select from invoice line items with specific prices.
SELECT Supplier_Invoice_Line_Description,Supplier_Invoice_Line_Quantity,Supplier_Invoice_Line_Unit_Price FROM SupplierInvoiceLine WHERE Supplier_Invoice_Line_Unit_Price <  200.00 AND (Supplier_Invoice_Number = 1 OR Supplier_Invoice_Number=6);

-- . In response to a customer’s enquiry, the sales assistant needs a list of items purchased in
-- the supplier invoice number 1 or 6 with a unit price of less than R200 (HINT: Use the
-- Supplier Invoice Line Table). Write an SQL query that will show the Item Name, Item
-- Quantity and Item Unit Price. Test the query and save it as 03Prac – Query6.sql
