SET PASSWORD FOR john = PASSWORD('pa55word');

SET PASSWORD = PASSWORD('secret');

GRANT USAGE ON *.* TO john IDENTIFIED BY 'pa55word';

SELECT Host, User
FROM mysql.user
WHERE Password = '';