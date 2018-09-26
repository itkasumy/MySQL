select t_name, days FROM teacher_class
where c_name = 'fe0901';

select t_name, days FROM teacher_class
where c_name = 'fe0901'
order by days desc;

select t_name, days FROM teacher_class
where c_name = 'fe0901'
order by days desc
limit 1;

select t_name, days FROM teacher_class
where c_name = 'fe1001'
order by days desc
limit 1;

(select t_name, days FROM teacher_class
where c_name = 'fe0901'
order by days desc
limit 1)
UNION
(select t_name, days FROM teacher_class
where c_name = 'fe1001'
order by days desc
limit 1);