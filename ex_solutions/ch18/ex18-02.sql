CREATE USER ray@localhost IDENTIFIED BY 'temp';

GRANT SELECT, INSERT, UPDATE
ON ap.vendors
TO ray@localhost
WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE
ON ap.invoices
TO ray@localhost
WITH GRANT OPTION;

GRANT SELECT, INSERT
ON ap.invoice_line_items
TO ray@localhost
WITH GRANT OPTION;
