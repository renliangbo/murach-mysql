USE ap;

DROP FUNCTION IF EXISTS test_glaccounts_description;

DELIMITER //

CREATE FUNCTION test_glaccounts_description
(
   account_description_param VARCHAR(50)
)
RETURNS INT
BEGIN
  DECLARE description_is_duplicate TINYINT DEFAULT FALSE;

  DECLARE not_found TINYINT DEFAULT FALSE;  
  
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET not_found = TRUE;
  
  SELECT TRUE
  INTO description_is_duplicate
  FROM general_ledger_accounts
  WHERE account_description = account_description_param;
  
  RETURN description_is_duplicate;
  
  IF not_found = FALSE THEN
    IF description_is_duplicate = TRUE THEN
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END IF;
  END IF;
  
END//

DELIMITER ;

-- Test success: 
SELECT test_glaccounts_description('Book Inventory') AS message;

-- Test fail: 
SELECT test_glaccounts_description('Fail') AS message;