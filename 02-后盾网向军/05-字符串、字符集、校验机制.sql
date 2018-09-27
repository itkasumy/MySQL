-- 查看字符集
show character set;
create table demo(
  name varchar(30) character set utf8,
  name2 varchar(30) character set gbk
);
show tables;
show create table demo;
insert into demo(name, name2) values("中", "中");
select * from demo;
select length(name), length(name2) from demo;
insert into demo (name, name2) values("a", "a");
select * from demo;
select length(name), length(name2) from demo;
select char_length(name), char_length(name2) from demo;
-- 显示校对规则
show collation;
create table demo2(
  name varchar(30) character set utf8 collate utf8_bin,
  name2 varchar(30) character set utf8 collate  utf8_general_ci
);
show create table demo2;
insert into demo2(name, name2) values("a", "a"), ("b", "b"), ("A", "A");
select * from demo2;
select * from demo2 where name2 = "a";
select * from demo2 where name = "a";
select * from demo2 order by name2;
select * from demo2 order by name;
insert into demo2(name, name2) values("B", "B");
select * from demo2 order by name;

create table demo3(name binary(3), name2 varchar(3)) default character set utf8;
show create table demo3;
INSERT into demo3(name, name2) values("a", "a");
select * from demo3;
INSERT into demo3(name, name2) values("中", "中");
select * from demo3;
INSERT into demo3(name, name2) values("中华", "中华");
