-- 创建数据库
CREATE DATABASE db_name;

-- 查看当前存在的数据库
SHOW databases [like 'pattern'];

-- 查看数据库的创建语句
SHOW CREATE DATABASE db_name;

-- 数据库删除
DROP DATABASE db_name;

-- 修改数据库信息
ALTER DATABASE db_name [修改指令];

  ALTER DATABASE db_name CHARACTER SET gbk;
