-- 创建数据库并指定字符集
create database hd default character set utf8;
show databases;
use hd;
create table user(
  id int(10) unsigned primary key auto_increment,
  name varchar(60),
  age TINYINT(2)
) DEFAULT CHARACTER SET utf8;
desc user;
-- 查看默认字符集
status;