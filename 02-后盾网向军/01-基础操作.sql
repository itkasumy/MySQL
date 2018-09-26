-- 启动服务器
net start MySQL57

-- 关闭服务器
net stop MySQL57

-- 登陆
mysql -u root -p
-- 或者 `mysql --user root --password`
-- 或者 `mysql --host localhost --user root --password`
-- 或者 `mysql -hlocalhost -uroot -p`

-- 显示数据库
show databases;
-- show databases\g
-- show databases\G

-- 退出
exit
-- quit

-- 取消多行的命令
SELECT * from students
where name = "lisi" \c

-- 取消一行命令
SELECT * FROM students
where name = "lise" `esc`

GRANT ALL ON ksm.* TO "ksm"@"localhost" identified BY "ksm";

mysql -uksm -p
show databases;

GRANT ALL ON houdunwang.* TO "hdw"@"localhost" identified BY "1234";
mysql -uhdw -p1234
show databases;
create database houdunwang;
show databases;
use houdunwang;
create TABLE student(id int(10) primary key auto_increament, name VARCHAR(30), age TINYINT(2));
show tables;
desc student;
insert INTO student (name, age) VALUES("张三", 22);
select * from student;

-- 数据库 => excel


-- 数据库备份
mysqldump -uroot -p houdunwang>d:/houdunwang.sql
mysql -uroot -p
show databases;
use houdunwang;
show tables;
drop table student;
show tables;
-- 恢复备份
mysql -uroot -p houdunwang<d:houdunwang.sql
mysql -uroot -p
show databases;
use houdunwang;
show tables;
desc student;

create table hd;
exit;
mysql -uroot -p hd<d:houdunwang.sql
mysql -uroot -p
use hd;
show tables;

-- 备份恢复
exit;
mysql -uroot -p
create database t1;
use t1;
show tables;
source d:/houdunwang.sql;
show tables;
desc student;

-- 执行外部文件命令
create database t2;
use t2;
source d:/houdunwang.sql;
show tables;