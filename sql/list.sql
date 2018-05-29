create table list(
  id int primary key not null auto_increment,
  title varchar(50) not null,
  detail varchar(150) not null,
  imp varchar(10) not null,
  limit_date date
);

insert into list(title, detail, imp, limit_date)values
('テスト', 'SQLの確認テストの採点と報告書を作成する', '★★★', '2018/5/5'),
('テストテスト', 'JavaBeansを用いて', '★','2018/5/11'),
('テストテストテスト', 'サーブレットとJSPを作る', '★★★', NULL);
