create table list(
  id int primary key not null auto_increment,
  title varchar(50) not null,
  detail varchar(150) not null,
  imp varchar(10) not null,
  limit_date date
);

insert into list(title, detail, imp, limit_date)values
('�e�X�g', 'SQL�̊m�F�e�X�g�̍̓_�ƕ񍐏����쐬����', '������', '2018/5/5'),
('�e�X�g�e�X�g', 'JavaBeans��p����', '��','2018/5/11'),
('�e�X�g�e�X�g�e�X�g', '�T�[�u���b�g��JSP�����', '������', NULL);
