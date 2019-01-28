USE ex;

DROP TABLE IF EXISTS members_groups;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS groups;

CREATE TABLE members 
(
  member_id     INT           PRIMARY KEY   AUTO_INCREMENT, 
  first_name    VARCHAR(50)   NOT NULL, 
  last_name     VARCHAR(50)   NOT NULL, 
  address       VARCHAR(50)   NOT NULL, 
  city          VARCHAR(25)   NOT NULL, 
  state         CHAR(2), 
  phone         VARCHAR(20)
);

CREATE TABLE groups 
(
  group_id      INT            PRIMARY KEY   AUTO_INCREMENT, 
  group_name    VARCHAR(50)    NOT NULL
);

CREATE TABLE members_groups
(
  member_id     INT              NOT NULL, 
  group_id      INT              NOT NULL,
  CONSTRAINT members_groups_fk_members FOREIGN KEY (member_id)
    REFERENCES members (member_id), 
  CONSTRAINT members_groups_fk_groups FOREIGN KEY (group_id)
	  REFERENCES groups (group_id)
);