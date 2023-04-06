-- SQL script that creates a trigger that resets the attribute valid_email
DELIMITER $$ 
CREATE TRIGGER email_trigger
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
IF NEW.email <> OLD.email
THEN
	SET NEW.email = 0;
END IF;
END
$$
DELIMITER ;
