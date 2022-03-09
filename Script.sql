-- ������� ��� ���� � ��� ������
select * from students;
-- ������� ���� ��������� � �������
select * from students;
-- ������� ������ Id �������������
select id from students;
-- ������� ������ ��� �������������
select name from students;
-- ������� ������ email �������������
select email from students;
-- ������� ��� � email �������������
select name,email from students;
-- ������� id, ���, email � ���� �������� �������������
select id,name,email from students;
-- ������� ������������� ��� password 12333
select * from students where password = '12333';
-- ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select * from students where created_on = '2021-03-26 00:00:00';
-- ������� ������������� ��� � ����� ���� ����� ����
select * from students where name like 'Anna%';
-- ������� ������������� ��� � ����� � ����� ���� 8
select * from students where name like '%8';
-- ������� ������������� ��� � ����� � ���� ����� �
select * from students where name like '%a%';
-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select * from students where created_on = '2021-07-12 00:00:00';
--������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select * from students where name like '%Andrey%' and created_on = '2021-07-12 00:00:00';
-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select * from students where name like '%8%' and created_on = '2021-07-12 00:00:00';
--  ������� ������������ � ������� id ����� 110
select * from students where id = '110';
-- ������� ������������ � ������� id ����� 153
select * from students where id = '153';
-- ������� ������������ � ������� id ������ 140
select distinct id from students where id > '140' order by id; 
-- ������� ������������ � ������� id ������ 130
select distinct id from students where id < '130' order by id;
-- ������� ������������ � ������� id ������ 127 ��� ������ 188
select distinct id from students where id < '127' or id > '188' order by id;
-- ������� ������������ � ������� id ������ ���� ����� 137
select distinct id from students where id <= '137';
-- ������� ������������ � ������� id ������ ���� ����� 137
select distinct id from students where id >= '137' order by id;
-- ������� ������������ � ������� id ������ 180 �� ������ 190
select distinct id from students where id >= '181' and id <= '189' order by id;
-- ������� ������������ � ������� id ����� 180 � 190
select distinct id from students where id between '181' and '189' order by id;
-- ������� ������������� ��� password ����� 12333, 1m313, 123313
select * from students where password = '12333'or password = '1m313'or password = '123313';
-- ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';
-- ������� ����������� id 
select MIN (id) from students ;
-- ������� ������������
select MAX (id) from students ;
-- ������� ���������� �������������
select user from students;
-- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������
select id, name, created_on from students order by created_on asc;
-- ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������
select id, name, created_on from students order by created_on desc;