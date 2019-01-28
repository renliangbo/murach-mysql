-- to execute a single statement, move the cursor into the statement and press Ctrl+Enter
-- to execute the entire script, press Ctrl+Shift+Enter
-- to fix errors, you may need to execute the entire script twice

-- connect as root user before executing this script

-- drop users for the AP database
-- if they don't exist, these statements cause errors
DROP USER ap_admin@localhost;
DROP USER ap_user@localhost;

CREATE USER ap_admin@localhost IDENTIFIED BY 'pa55word';
CREATE USER ap_user@localhost IDENTIFIED BY 'pa55word';

GRANT ALL
ON ap.*
TO ap_admin@localhost;

GRANT SELECT, INSERT, DELETE, UPDATE
ON ap.*
TO ap_user@localhost;

-- view the privileges for these users
SHOW GRANTS FOR ap_admin@localhost;