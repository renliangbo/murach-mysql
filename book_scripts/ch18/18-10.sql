-- drop the users (causes an error if they don't exist yet)
DROP USER john;
DROP USER jane;
DROP USER jim;
DROP USER joel@localhost;

-- create the users
CREATE USER john IDENTIFIED BY 'sesame';
CREATE USER jane IDENTIFIED BY 'sesame';
CREATE USER jim IDENTIFIED BY 'sesame';
CREATE USER joel@localhost IDENTIFIED BY 'sesame';

-- grant privileges to the ap_developer (joel)
GRANT ALL ON *.* TO joel@localhost WITH GRANT OPTION;

-- grant privileges to the ap manager (jim)
GRANT SELECT, INSERT, UPDATE, DELETE ON ap.* TO jim;
GRANT USAGE ON ap.* TO jim WITH GRANT OPTION;

-- grant privileges to ap users (john, jane)
GRANT SELECT, INSERT, UPDATE, DELETE ON ap.vendors TO john, jane;
GRANT SELECT, INSERT, UPDATE, DELETE ON ap.invoices TO john, jane;
GRANT SELECT, INSERT, UPDATE, DELETE ON ap.invoice_line_items TO john, jane;
GRANT SELECT ON ap.general_ledger_accounts TO john, jane;
GRANT SELECT ON ap.terms TO john, jane;

-- view user account data
SELECT User, Host, Password FROM mysql.user;

-- view the privileges for each user
SHOW GRANTS FOR john;
SHOW GRANTS FOR jane;
SHOW GRANTS FOR jim;
SHOW GRANTS FOR joel@localhost;