CREATE TABLE fe1 (
  a INT NOT NULL,
  b INT
);

INSERT INTO fe1 (a) VALUES(10);
INSERT INTO fe1 (b) VALUES(20);

CREATE TABLE fe2 (
  a INT NOT NULL DEFAULT 10,
  b INT NOT NULL DEFAULT 20
);

INSERT INTO fe2 (a) VALUES(10);
INSERT INTO fe2 (b) VALUES(20);

CREATE TABLE fe3 (
  a INT NOT NULL DEFAULT 10,
  b INT DEFAULT 20
);

INSERT INTO fe3 VALUES(11, null);

CREATE TABLE teacher (
  t_id INT PRIMARY KEY,
  t_name VARCHAR(5),
  class_name VARCHAR(6),
  class_days TINYINT unsigned
);

INSERT INTO teacher VALUES(1, 'han', 'fe0918', 25);
INSERT INTO teacher VALUES(1, 'li', 'fe0918', 25);
INSERT INTO teacher VALUES(NULL, 'zhang', 'fe0918', 22);

CREATE TABLE teacher01 (
  t_id INT,
  t_name VARCHAR(5),
  class_days TINYINT unsigned,
  class_name VARCHAR(6),
  PRIMARY KEY(t_id)
);

CREATE TABLE teacher02 (
  t_name VARCHAR(5),
  class_name VARCHAR(6),
  class_days VARCHAR(5),
  PRIMARY KEY(t_name, class_name)
);

CREATE TABLE teacher03 (
  t_id INT PRIMARY KEY auto_increment,
  t_name VARCHAR(5),
  class_name VARCHAR(6),
  class_days TINYINT unsigned
);

INSERT INTO teacher03 VALUES(NULL, 'zhao', '0918', 21);
INSERT INTO teacher03 (t_name, class_name, class_days) VALUES('xun', 'fe09', 23);
ALTER TABLE teacher03 auto_increment = 10;
INSERT INTO teacher03 VALUES(NULL, 'sun', '0115', 21);
ALTER TABLE teacher03 auto_increment 5;
INSERT INTO teacher03 VALUES(NULL, 'sun', '0115', 21);
INSERT INTO teacher03 VALUES(18, 'sun', '0115', 21);
INSERT INTO teacher03 VALUES(NULL, 'sun', '0115', 21);
INSERT INTO teacher03 VALUES(18, 'sun', '0115', 21);
UPDATE teacher03 SET t_id = 23 WHERE t_id = 18;