-- 创建数据库
create database webclass default character set utf8;
show databases;
use webclass;
create table stu(
  id int(10) primary key auto_increment,
  sname char(30),
  sex tinyint(1) default 0,
  qq varchar(255)
) default character set utf8
engine myisam;

insert INTO stu(sname, sex, qq) VALUES("李四", 1, "678674664");
insert INTO stu(sname, sex, qq) VALUES("李玉", 0, "636835298");
insert INTO stu(sname, sex, qq) VALUES("小菲", 0, "996783487");
insert INTO stu(sname, sex, qq) VALUES("张梅", 0, "655737738");
insert INTO stu(sname, sex, qq) VALUES("马良", 1, "877343788");
insert INTO stu(sname, sex, qq) VALUES("李晓华", 0, "9765478");
insert INTO stu(sname, sex, qq) VALUES("吕布", 1, "8349632867");

select * from stu;
select version();
select database();
set @s = 2;
select @s * 200;
select 2 * 222;
select * from stu;
select sname, qq from stu;
select * from stu where sname = "李四";
select sname, qq from stu where sex = 0;
select * from stu where sname like "李%";
insert INTO stu(sname, sex, qq) VALUES("张玉茹", 1, "98468398");
select id, sname, sex from stu where sname like "%玉%";
select if(sex, "男生", "女生"), sname, sex from stu;
-- 别名
select if(sex, "男生", "女生") as stusex, sname, sex from stu;
-- 逻辑运算符
select sname, sex from stu where sname like "李%" and sex = 0;
select sname, sex from stu where sname like "李%" or sex = 0;
-- 连接
select concat ("姓名：", sname, "性别：", sex, "QQ:", qq) from stu;
select concat ("姓名：", sname, "性别：", sex, "QQ:", qq) as stuinfo from stu;
select concat ("姓名：", sname, "性别：", if(sex, "男", "女"), "QQ:", qq) as stuinfo from stu;