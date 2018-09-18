DROP TABLE IF EXISTS itcast_class;
CREATE TABLE itcast_class (
  class_id INT PRIMARY KEY auto_increment,
  class_name VARCHAR(10) NOT NULL DEFAULT 'itcast_fe' COMMENT '班级名称'
) CHARACTER SET utf8;

DROP TABLE IF EXISTS itcast_stu;
CREATE TABLE itcast_stu (
  stu_id INT PRIMARY KEY auto_increment,
  stu_name VARCHAR(10) NOT NULL DEFAULT '',
  class_id INT,
  FOREIGN KEY (class_id) REFERENCES itcast_class (class_id)
) CHARACTER SET utf8;

INSERT INTO itcast_stu VALUES(NULL, '张三丰', 1);
INSERT INTO itcast_class VALUES(NULL, 'fe0901');
INSERT INTO itcast_stu VALUES(NULL, '张三丰', 1);

ALTER TABLE itcast_stu DROP FOREIGN KEY itcast_stu_ibfk_1;
ALTER TABLE itcast_stu
ADD FOREIGN KEY (class_id) REFERENCES itcast_class (class_id)
ON DELETE SET NULL;
DELETE FROM itcast_class WHERE class_id = 1;

INSERT INTO itcast_class VALUES(NULL, 'fe0901');
UPDATE itcast_stu SET class_id = 1 WHERE stu_id = 2;
ALTER TABLE itcast_stu DROP FOREIGN KEY itcast_stu_ibfk_1;
ALTER TABLE itcast_stu
ADD FOREIGN KEY (class_id) REFERENCES itcast_class (class_id)
ON DELETE CASCADE;
DELETE FROM itcast_class WHERE class_id = 1;

INSERT INTO itcast_class VALUES(1, 'fe0901');
INSERT INTO itcast_stu VALUES(1, '张三丰', 1);
ALTER TABLE itcast_stu DROP FOREIGN KEY itcast_stu_ibfk_1;
ALTER TABLE itcast_stu
ADD FOREIGN KEY (class_id) REFERENCES itcast_class (class_id)
ON DELETE CASCADE
ON UPDATE RESTRICT;
UPDATE itcast_class SET class_id = 2 WHERE class_name = 'fe0901';