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
('Java Professional Renewed',  '���� ������������ �� ����������� � �������� �������� ������������ ����� Java.'),
('React Essential',  '��� ����������� ���������� JavaScript ���������� ��� �������� ����������������� ����������.'),
('UX/UI Design Essential',  '����������� ������ �������� �������. ����������� ������ ���� ��������.'),
('Entity Framework Core',  '���� Entity Framework Core ������� �� 5-�� ��������� ��������������� ������.'),
('ASP.NET Core',  '��������� ������ ����������� ���������� ��� ��������� ��� ��������������� ���������� �� Microsoft.'),
('HTML5 � CSS3 Starter',  '���� ������� �� ������ ��������� ��������������� ������.'),
('Ruby Essential',  'Ruby Essential ������������ ��� ��� ����������� �������� � ����������������.'),
('Laravel',  ' ������������� ����������� ������������� ��� ��������� ����� ����������.'),
('Ruby Essential',  'Ruby Essential ������������ ��� ��� ����������� �������� � ����������������.'),
('Laravel',  '������������� ����������� ������������� ��� ��������� ����� ����������.'),
('ECMAScript 6',  'C������� JavaScript, ������� ��� ������ � 2015 ����, .'),
('Unity Essential',  '��� ������� ����� �������� �������� ����� ���������� ������������ ��� Unity.')

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(401,'������','����������'),
(401,'�����','����'),
(401,'������','��������'),
(401,'��������','��������'),
(401,'��������','�������'),
(401,'����','������'),
(401,'������','�����'),
(401,'�����','�������'),
(401,'�����','������'),
(401,'������','��������'),
(401,'�����','�����');

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(402,'������','���������'),
(402,'�����','������'),
(402,'������','������'),
(402,'��������','������'),
(402,'��������','�������'),
(402,'����','������'),
(402,'������','������'),
(402,'�����','������'),
(402,'�����','���������'),
(402,'������','����������'),
(402,'�����','���������');
GO

INSERT STUDENTS (GROUP_ID, FIRST_NAME, LAST_NAME)
VALUES
(502,'������','����������'),
(503,'�����','��������'),
(504,'������','�������'),
(502,'��������','���������'),
(503,'��������','�������'),
(504,'����','������'),
(502,'������','�������'),
(503,'�����','�����'),
(504,'�����','����������'),
(502,'������','��������'),
(503,'�����','��������');
GO



