ALTER TABLE groups
MODIFY group_name VARCHAR(50) NOT NULL UNIQUE;

INSERT INTO groups (group_name)
VALUES ('Book Club');