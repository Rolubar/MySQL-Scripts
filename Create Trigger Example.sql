
DELIMITER //
CREATE DEFINER = `root`@`localhost` TRIGGER trg_name_before_insert_promotions
BEFORE INSERT ON database_name.table_name
FOR EACH ROW
BEGIN
  IF new.uuid IS NULL THEN
    SET new.uuid = uuid();
  END IF;
END
//
DELIMITER ;
