USE ap;

TRUNCATE vendor_contacts;

LOAD DATA INFILE '/murach/mysql/vendor_contacts_tab.txt'
INTO TABLE vendor_contacts;

SELECT *
FROM vendor_contacts;

TRUNCATE vendor_contacts;

LOAD DATA INFILE '/murach/mysql/vendor_contacts_comma.txt'
INTO TABLE vendor_contacts
FIELDS TERMINATED BY ','
       ENCLOSED BY '"'
       ESCAPED BY '\\';

SELECT *
FROM vendor_contacts;