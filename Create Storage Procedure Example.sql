/*
Rodrigo Luiz Barbosa
24/10/2016
MySQL 5.5.42
Model of storage procedure
*/
CREATE PROCEDURE `sp_name`(IN parameter1 INT , IN parameter2 INT, OUT return1 INT)
BEGIN
DECLARE dateTimeNow DATETIME;
SET dateTimeNow = NOW();
SET customerID = LAST_INSERT_ID();
END
