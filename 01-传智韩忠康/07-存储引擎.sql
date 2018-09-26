ALTER TABLE itcast_class engine myisam;

CREATE TABLE room (
  room_id INT PRIMARY KEY auto_increment,
  room_no CHAR(3)
) engine myisam character set utf8;
