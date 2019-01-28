USE ap;

SELECT *
INTO OUTFILE '/murach/mysql/vendor_contacts_tab.txt'
FROM vendor_contacts;

SELECT *
INTO OUTFILE '/murach/mysql/vendor_contacts_comma.txt'
FIELDS TERMINATED BY ','
       ENCLOSED BY '"'
       ESCAPED BY '\\'    
FROM vendor_contacts;