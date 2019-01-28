-- drop users
-- if they don't exist, these statements cause errors
DROP USER joel@localhost;
DROP USER jane;

CREATE USER joel@localhost IDENTIFIED BY 'sesame';

CREATE USER jane IDENTIFIED BY 'sesame';    -- creates jane@%

RENAME USER joel@localhost TO joelmurach@localhost;

DROP USER joelmurach@localhost;

DROP USER jane;                             -- drops jane@%
