-- 1) Создать таблицу employees
-- 	  id. serial,  primary key,
--    employee_name. Varchar(50), not null
create table employees(
id serial primary key, 
employees_name varchar(50) not null 
);

-- 2) Наполнить таблицу employee 70 строками.
insert into employees(id, employees_name)
values  (1, 'Ivan'),
		(2, 'Mike'),
		(3, 'Kate'),
		(4, 'Margo'),
		(5, 'Colin'),
		(6, 'Katty'),
		(7, 'Anna'),
		(8, 'Lin'),
		(9, 'Miley'),
		(10, 'Antuan'),
		(11, 'Simon'),
		(12, 'Carol'),
		(13, 'Shoun'),
		(14, 'Lisa'),
		(15, 'Bart'),
		(16, 'Gomer'),
		(17, 'Fry'),
		(18, 'Lila'),
		(19, 'Bander'),
		(20, 'Collet'),
		(21, 'Shiva'),
		(22, 'Alex'),
		(23, 'Vlad'),
		(24, 'Vladimir'),
		(25, 'Viola'),
		(26, 'Fibi'),
		(27, 'Polina'),
		(28, 'Gabri'),
		(29, 'Moana'),
		(30, 'Michel'),
		(31, 'Bing'),
		(32, 'Tom'),
		(33, 'Jerry'),
		(34, 'Rorry'),
		(35, 'Rimma'),
		(36, 'Nastya'),
		(37, 'Sveta'),
		(38, 'Joe'),
		(39, 'Ross'),
		(40, 'Monika'),
		(41, 'Mon'),
		(42, 'Muna'),
		(43, 'Mina'),
		(44, 'Mark'),
		(45, 'Sharlot'),
		(46, 'April'),
		(47, 'July'),
		(48, 'Jane'),
		(49, 'Jarvis'),
		(50, 'Tony'),
		(51, 'Elvis'),
		(52, 'Brus'),
		(53, 'Fiona'),
		(54, 'Greg'),
		(55, 'Caddy'),
		(56, 'Eric'),
		(57, 'Chris'),
		(58, 'Cameron'),
		(59, 'Ramy'),
		(60, 'Wilson'),
		(61, 'Amber'),
		(62, 'Rick'),
		(63, 'Morty'),
		(64, 'Barney'),
		(65, 'Lily'),
		(66, 'Robin'),
		(67, 'Marshal'),
		(68, 'Pumpkin'),
		(69, 'Roger'),
		(70, 'Conor'); 
	
	select * from employees;


--3) Создать таблицу salary
--  id. Serial  primary key,
--  monthly_salary. Int, not null
create table salary_1(
id serial primary key,
monthly_salary int not null
)

-- 4) Наполнить таблицу salary 15 строками:
insert into salary_1(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
select * from salary_1;


--5) Создать таблицу employee_salary
--   id. Serial  primary key,
--   employee_id. Int, not null, unique
--   salary_id. Int, not null
create table employee_salary(
id serial primary key, 
employee_id int not null unique,
salary_id int not null
);

-- 6) Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values	(7, 4),
		(20, 1),
		(3, 3),
		(5, 2),
		(23, 23),
		(11, 5),
		(10, 6),
		(22, 40),
		(21, 15),
		(34, 11),
		(19, 28),
		(2, 33),
		(9, 18),
		(15, 7),
		(35, 8),
		(1, 39),
		(18, 34),
		(12, 35),
		(38, 36),
		(13, 20),
		(26, 12),
		(17, 37),
		(14, 30),
		(24, 13),
		(4, 19),
		(8, 21),
		(36, 17),
		(37, 15),
		(40, 38),
		(16, 14),
		(6, 30),
		(25, 22),
		(27, 24),
		(28, 25),
		(33, 11),
		(29, 32),
		(30, 26),
		(31, 27),
		(32, 21),
		(39, 10);
	
select * from employee_salary;



--7) Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

--8) Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9) Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values  ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'),
		('Junior_Java_developer'),
		('Middle_Java_developer'),
		('Senior_Java_developer'),
		('Jinior_JavaScript_developer'),
		('Middle_JavaScript_developer'),
		('Senior_JavaScript_developer'),
		('Jinior_Manual_QA_engineer'),
		('Middle_Manual_QA_engineer'),
		('Senior_Manual_QA_engineer'),
		('Project_Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales_Manager'),
		('Junior_Automation_QA_engineer'),
		('Middle_Automation_QA_engineer'),
		('Senior_Automation_QA_engineer');

select * from roles;

--10) Создать таблицу roles_employee
--    id. Serial  primary key,
--    employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--    role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	 references employees(id),
foreign key (role_id)
	 references roles(id)
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values	(7, 4),
		(20, 1),
		(3, 3),
		(5, 2),
		(23, 3),
		(11, 5),
		(10, 6),
		(22, 14),
		(21, 15),
		(34, 11),
		(19, 2),
		(2, 3),
		(9, 1),
		(15, 7),
		(35, 8),
		(1, 9),
		(18, 4),
		(12, 3),
		(38, 6),
		(13, 20),
		(26, 2),
		(17, 7),
		(14, 3),
		(24, 1),
		(4, 19),
		(8, 2),
		(36, 7),
		(37, 5),
		(40, 8),
		(16, 14),
		(6, 3),
		(25, 2),
		(27, 4),
		(28, 5),
		(33, 1),
		(29, 3),
		(30, 6),
		(31, 7),
		(32, 1),
		(39, 10);
	
select * from roles_employee;

