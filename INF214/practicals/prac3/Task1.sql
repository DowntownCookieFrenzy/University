-- // After generate.sql || GotchaSystems.sql has been run.
-- SHOW
-- Booking number, date
-- and the total amount of members attending
-- Firstly Table Guests Does Not Exist; This is the closest I could get to what you might have wanted.
SELECT Booking_Session_ID,Booking_Session_Time,Booking_Session_Guests_Attending FROM BookingSession WHERE Booking_Session_Guests_Attending > 55;
