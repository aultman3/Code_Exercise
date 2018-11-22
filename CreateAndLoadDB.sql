/*
Author: Erik Aultman
Date: 11/12/2018
*/

CREATE TABLE Employees (
	id int,
	create_on datetime,
	last_updated datetime,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	position varchar(50),
	active smallint,
	let_go smallint,
	CONSTRAINT PK_id PRIMARY KEY (id)
);

INSERT INTO Employees VALUES (0, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Barker', 'Barker@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (1, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Black', 'Black@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (2, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'DeNiro', 'DeNiro@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (3, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Sam', 'Brown', 'Brown@Sam.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (4, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'Reyes', 'Reyes@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (5, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Sam', 'Smith', 'Smith@Sam.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (6, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Dave', 'Brown', 'Brown@Dave.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (7, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'DeNiro', 'DeNiro@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (8, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'Clayton', 'Clayton@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (9, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Mark', 'Brown', 'Brown@Mark.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (10, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Dave', 'Barker', 'Barker@Dave.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (11, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Barker', 'Barker@Jane.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (12, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Reyes', 'Reyes@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (13, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'Brown', 'Brown@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (14, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'DeNiro', 'DeNiro@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (15, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'Brown', 'Brown@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (16, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Dave', 'DeNiro', 'DeNiro@Dave.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (17, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Margret', 'DeNiro', 'DeNiro@Margret.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (18, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Jackson', 'Jackson@Jane.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (19, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'DeNiro', 'DeNiro@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (20, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'John', 'Jackson', 'Jackson@John.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (21, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Mark', 'Jackson', 'Jackson@Mark.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (22, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Johnson', 'Johnson@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (23, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Grace', 'Zabel', 'Zabel@Grace.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (24, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Margret', 'DeNiro', 'DeNiro@Margret.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (25, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Smith', 'Smith@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (26, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'Reyes', 'Reyes@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (27, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Reyes', 'Reyes@Jane.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (28, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Mark', 'Jackson', 'Jackson@Mark.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (29, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Grace', 'Jackson', 'Jackson@Grace.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (30, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'Black', 'Black@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (31, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Matt', 'Barker', 'Barker@Matt.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (32, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Grace', 'Clayton', 'Clayton@Grace.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (33, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Black', 'Black@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (34, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Brown', 'Brown@Jane.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (35, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Brown', 'Brown@Jane.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (36, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Grace', 'Zabel', 'Zabel@Grace.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (37, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'John', 'Clayton', 'Clayton@John.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (38, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'Barker', 'Barker@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (39, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'John', 'Black', 'Black@John.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (40, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Sam', 'Barker', 'Barker@Sam.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (41, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Black', 'Black@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (42, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Grace', 'DeNiro', 'DeNiro@Grace.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (43, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Joy', 'Brown', 'Brown@Joy.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (44, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Dave', 'DeNiro', 'DeNiro@Dave.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (45, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Dave', 'Brown', 'Brown@Dave.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (46, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Sam', 'Smith', 'Smith@Sam.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (47, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Sam', 'Black', 'Black@Sam.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (48, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Janet', 'Johnson', 'Johnson@Janet.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (49, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Mark', 'DeNiro', 'DeNiro@Mark.com', 'Employee', 1, 0);
INSERT INTO Employees VALUES (50, '2017-05-30 07:07:07.000', '2018-11-30 12:12:12.000', 'Jane', 'Smith', 'Smith@Jane.com', 'Employee', 1, 0);
