USE ex;

INSERT INTO members
VALUES (DEFAULT, 'John', 'Smith', '334 Valencia St.', 'San Francisco', 'CA', '415-942-1901');
INSERT INTO members
VALUES (DEFAULT, 'Jane', 'Doe', '872 Chetwood St.', 'Oakland', 'CA', '510-123-4567');

INSERT INTO groups
VALUES (DEFAULT, 'Book Club');
INSERT INTO groups
VALUES (DEFAULT, 'Bicycle Coalition');

INSERT INTO members_groups
VALUES (1, 2);
INSERT INTO members_groups
VALUES (2, 1);
INSERT INTO members_groups
VALUES (2, 2);

SELECT g.group_name, m.last_name, m.first_name
FROM groups g
  JOIN members_groups mg
    ON g.group_id = mg.group_id
  JOIN members m
    ON mg.member_id = m.member_id
ORDER BY g.group_name, m.last_name, m.first_name;