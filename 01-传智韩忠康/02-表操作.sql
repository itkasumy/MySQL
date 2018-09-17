-- 指定默认数据库
USE db_name;

-- 创建表
CREATE TABLE tbl_name (列结构) [表选项];

  CREATE TABLE php_class (
    class_no VARCHAR(20),
    date_start date
  );

  CREATE TABLE info_student (
    name VARCHAR(20),
    stu_no VARCHAR(20)
  );

  CREATE TABLE exam_student (
    name VARCHAR(20),
    stu_no VARCHAR(20),
    score int
  );

  CREATE TABLE exam_question (
    content VARCHAR(100),
    answer VARCHAR(120)
  );

-- 查看当前存在的表
SHOW tables [like 'pattern'];

  SHOW tables like 'exam_%';

-- 查看表的创建语句
SHOW CREATE TABLE tbl_name;

SHOW CREATE TABLE tbl_name\G

-- 查看/描述表结构
DESC tbl_name;

describe tbl_name;
