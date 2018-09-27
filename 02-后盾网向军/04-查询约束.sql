-- 修改表结构
alter table stu add birthday date;
-- 修改出生日期
update stu set birthday = "1990/07/01";
select * from stu;
update stu set birthday = "1992/5/24" where id = 2;
update stu set birthday = "1995/6/8" where id = 3;
update stu set birthday = "1992/3/12" where id = 4;
update stu set birthday = "194/10/24" where id = 5;
update stu set birthday = "1978/4/22" where id = 6;
update stu set birthday = "1987/12/12" where id = 7;
update stu set birthday = "1997/6/24" where id = 8;
select * from stu limit 2;
select * from stu limit 0, 4;
select * from stu order by id;
select * from stu order by id asc;
select * from stu order by id desc;
select * from stu order by id desc limit 4;
select * from stu order by birthday limit 4;
select sname, birthday from stu order by birthday asc limit 1;
select sname, birthday from stu order by birthday asc;
select sname, birthday from stu order by birthday asc limit 1, 1;

update stu set birthday = "1987-12-12" where id = 5;
select * from stu order by birthday;

-- 查找年龄最大的两个人
select * from stu order by birthday asc limit 2;
select * from stu where birthday <= (select birthday from stu order by birthday limit 1, 1);

-- 得到学生都是那年生人
select year(birthday) from stu;
select distinct year(birthday) as "出生年份" from stu;
