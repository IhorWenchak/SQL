CREATE DATABASE FacultyMathematicDB
COLLATE Cyrillic_General_CI_AS
GO

CREATE TABLE STUDENTS 
(
	STUDENT_ID INT IDENTITY PRIMARY KEY NOT NULL,
	GROUP_ID INT NOT NULL FOREIGN KEY REFERENCES GROUPS(GROUP_ID),
	FIRST_NAME VARCHAR(25) NOT NULL DEFAULT '',
	LAST_NAME VARCHAR(25) NOT NULL DEFAULT ''
)
GO

CREATE TABLE GROUPS 
(
	GROUP_ID INT PRIMARY KEY NOT NULL,
	COURSE_ID INT NOT NULL FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	NAME VARCHAR(25) NOT NULL DEFAULT ''
)
GO

ALTER TABLE GROUPS ADD 
	CONSTRAINT NAMEQU UNIQUE(NAME)
GO

CREATE TABLE COURSES 
(
	COURSE_ID INT IDENTITY PRIMARY KEY NOT NULL,
	NAME VARCHAR(25) NOT NULL DEFAULT '',
	DESCRIPTION VARCHAR(250) NOT NULL DEFAULT ''
)
GO

INSERT COURSES (NAME, DESCRIPTION)
VALUES 
('Java Professional Renewed',  'Курс ориентирован на комплексное и глубокое изучение возможностей языка Java.'),
('React Essential',  'Это современная популярная JavaScript библиотека для создания пользовательского интерфейса.'),
('UX/UI Design Essential',  'Эффективный дизайн вызывает доверие. Эффективный дизайн дает удобство.'),
('Entity Framework Core',  'Курс Entity Framework Core состоит из 5-ти логически взаимосвязанных уроков.'),
('ASP.NET Core',  'Последняя версия популярного фреймворка для написания веб ориентированных приложений от Microsoft.'),
('HTML5 и CSS3 Starter',  'Курс состоит из восьми логически взаимосвязанных уроков.'),
('Ruby Essential',  'Ruby Essential предназначен как для совершенных новичков в программировании.'),
('Laravel',  ' использование инструмента виртуализации для настройки среды разработки.'),
('Ruby Essential',  'Ruby Essential предназначен как для совершенных новичков в программировании.'),
('Laravel',  'Использование инструмента виртуализации для настройки среды разработки.'),
('ECMAScript 6',  'Cтандарт JavaScript, который был принят в 2015 году, .'),
('Unity Essential',  'Вас ожидает более глубокое изучение среды разработки компьютерных игр Unity.')

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(401,'Виктор','Прокопенко'),
(401,'Антон','Крук'),
(401,'Оксана','Десятова'),
(401,'Антонина','Шевченко'),
(401,'Анатолий','Дмитров'),
(401,'Иван','Кобзар'),
(401,'Виктор','Грачь'),
(401,'Ольга','Буткова'),
(401,'Алина','Мелова'),
(401,'Михаил','Савицкий'),
(401,'Артем','Крава');

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(402,'Виктор','Прокопчук'),
(402,'Антон','Крюков'),
(402,'Оксана','Дедова'),
(402,'Антонина','Шевчук'),
(402,'Анатолий','Дмитрук'),
(402,'Иван','Иванов'),
(402,'Виктор','Грачов'),
(402,'Ольга','Бутова'),
(402,'Алина','Малофеева'),
(402,'Михаил','Славинский'),
(402,'Артем','Кравченко');
GO

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(502,'Виктор','Прокопенко'),
(503,'Антон','Крюкович'),
(504,'Оксана','Мельник'),
(502,'Антонина','Тимофеева'),
(503,'Анатолий','Никитин'),
(504,'Иван','Петров'),
(502,'Виктор','Гвоздик'),
(503,'Ольга','Лютая'),
(504,'Алина','Метельская'),
(502,'Михаил','Адексеев'),
(503,'Артем','Кропивин');
GO



