/*
Rodrigo Luiz Barbosa
24/10/2017
MySQL 5.5.42
Model of create trigger.
*/
DELIMITER //
CREATE DEFINER = `root`@`localhost` TRIGGER trg_name_before_insert
BEFORE INSERT ON database_name.table_name
FOR EACH ROW
BEGIN
  IF new.uuid IS NULL THEN
    SET new.uuid = uuid();
  END IF;
END
//
DELIMITER ;
