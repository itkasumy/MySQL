-- 显示字符集相关环境变量
show variables like "%character%";
-- 显示校验规则相关环境变量
show variables like "%collation%";

create database t;
show create database t;
create database y default character set utf8;
show create database y;
drop database t;
drop database y;
create database t;
use t;
create table user(name char(30));
show create table user;