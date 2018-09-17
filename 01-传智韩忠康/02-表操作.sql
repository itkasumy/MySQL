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

-- 删除表
drop TABLE [if exists] tbl_name;

-- 修改表
  -- 01-修改表名
  rename TABLE old_tbl_name TO new_tbl_name;

    -- 同时重命名多个表
    rename TABLE old_tbl_name01 TO new_tbl_name01, old_tbl_name02 TO new_tbl_name02 ...;

    -- 跨数据库(可以相当于为数据库重命名)
    rename table old_tbl_name to other_db_name.new_tbl_name;

  -- 02-修改列定义
  ALTER TABLE tbl_name ADD | DROP | CHANGE | MODIFY ...
    -- a. 增加一个新的列
    ALTER TABLE tbl_name ADD col_name col_data_structrue;

    -- b. 修改一个列的定义
    ALTER TABLE tbl_name MODIFY col_name col_data_structrue;

    -- c. 删除一个列
    ALTER TABLE tbl_name DROP col_name;

    -- d. 重命名一个列
    ALTER TABLE tbl_name CHANGE old_col_name new_col_name new_col_data_structrue;

-- 修改表选项
ALTER TABLE tbl_name 新的表选项;

  ALTER TABLE tbl_name CHARACTER SET gbk;
