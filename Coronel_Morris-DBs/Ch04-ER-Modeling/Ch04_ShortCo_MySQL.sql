/* Database Systems, Coronel/Morris */
/* Type of SQL : MySQL */


CREATE TABLE DEPENDENT (
EMP_NUM int,
DEP_NUM int,
DEP_FNAME varchar(12),
DEP_DOB datetime
);
INSERT INTO DEPENDENT VALUES('1001','1','Annelise','1997-12-5');
INSERT INTO DEPENDENT VALUES('1001','2','Jorge','2002-9-30');
INSERT INTO DEPENDENT VALUES('1003','1','Suzanne','2004-1-25');
INSERT INTO DEPENDENT VALUES('1006','1','Carlos','2001-5-25');
INSERT INTO DEPENDENT VALUES('1008','1','Michael','1995-2-19');
INSERT INTO DEPENDENT VALUES('1008','2','George','1998-6-27');
INSERT INTO DEPENDENT VALUES('1008','3','Katherine','2003-8-18');

/* -- */


CREATE TABLE EMPLOYEE (
EMP_NUM int,
EMP_LNAME varchar(15),
EMP_FNAME varchar(12),
EMP_INITIAL varchar(1),
EMP_DOB datetime,
EMP_HIREDATE datetime
);
INSERT INTO EMPLOYEE VALUES('1001','Callifante','Jeanine','J','1964-3-12','1997-5-25');
INSERT INTO EMPLOYEE VALUES('1002','Smithson','William','K','1970-11-23','1997-5-28');
INSERT INTO EMPLOYEE VALUES('1003','Washington','Herman','H','1968-8-15','1997-5-28');
INSERT INTO EMPLOYEE VALUES('1004','Chen','Lydia','B','1974-3-23','1998-10-15');
INSERT INTO EMPLOYEE VALUES('1005','Johnson','Melanie','','1966-9-28','1998-12-20');
INSERT INTO EMPLOYEE VALUES('1006','Ortega','Jorge','G','1979-7-12','2002-1-5');
INSERT INTO EMPLOYEE VALUES('1007','O''Donnell','Peter','D','1971-6-10','2002-6-23');
INSERT INTO EMPLOYEE VALUES('1008','Brzenski','Barbara','A','1970-2-12','2003-11-1');
