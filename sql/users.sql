create table users(
  id int primary key not null auto_increment,
  email varchar(150) not null,
  password varchar(150) not null,
  name varchar(50) not null default ''
);

insert into users(email, password, name)values
('nojima@gmail.com', MD5('nojima@gmail.com'), '–ì“‡'),
('tanaka@gmail.com', MD5('tanaka@gmail.com'), '“c’†'),
('maeda@gmail.com', MD5('maeda@gmail.com'), '‘O“c'),
('satou@gmail.com', MD5('satou@gmail.com'), '²“¡'),
('katou@gmail.com', MD5('katou@gmail.com'), '‰Á“¡');