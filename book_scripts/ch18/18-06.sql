GRANT USAGE
ON *.*
TO joel@localhost IDENTIFIED BY 'sesame';

GRANT ALL 
ON *.*
TO jim IDENTIFIED BY 'supersecret'
WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ap.*
TO ap_user@localhost IDENTIFIED BY 'pa55word';

GRANT SELECT, INSERT, UPDATE
ON *.* TO ap_user@localhost;

GRANT SELECT, INSERT, UPDATE
ON ap.* TO joel@localhost;

GRANT SELECT, INSERT, UPDATE
ON ap.vendors TO joel@localhost;

GRANT SELECT (vendor_name, vendor_state, vendor_zip_code), 
      UPDATE (vendor_address1)
ON ap.vendors TO joel@localhost;

GRANT SELECT, INSERT, UPDATE, DELETE
ON vendors TO ap_user@localhost;