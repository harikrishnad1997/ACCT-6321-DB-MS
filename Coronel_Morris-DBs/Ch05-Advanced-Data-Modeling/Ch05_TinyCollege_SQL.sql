/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */


CREATE TABLE CLASS (
CLASS_CODE varchar(5),
CRS_CODE varchar(10),
CLASS_SECTION varchar(2),
CLASS_TIME varchar(20),
ROOM_CODE varchar(8),
PROF_NUM float(8)
);
INSERT INTO CLASS VALUES('10012','ACCT-211','1','MWF 8:00-8:50 a.m.','BUS311','105');
INSERT INTO CLASS VALUES('10013','ACCT-211','2','MWF 9:00-9:50 a.m.','BUS200','105');
INSERT INTO CLASS VALUES('10014','ACCT-211','3','TTh 2:30-3:45 p.m.','BUS252','342');
INSERT INTO CLASS VALUES('10015','ACCT-212','1','MWF 10:00-10:50 a.m.','BUS311','301');
INSERT INTO CLASS VALUES('10016','ACCT-212','2','Th 6:00-8:40 p.m.','BUS252','301');
INSERT INTO CLASS VALUES('10017','CIS-220','1','MWF 9:00-9:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('10018','CIS-220','2','MWF 9:00-9:50 a.m.','KLR211','114');
INSERT INTO CLASS VALUES('10019','CIS-220','3','MWF 10:00-10:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('10020','CIS-420','1','W 6:00-8:40 p.m.','KLR209','162');
INSERT INTO CLASS VALUES('10021','QM-261','1','MWF 8:00-8:50 a.m.','KLR200','114');
INSERT INTO CLASS VALUES('10022','QM-261','2','TTh 1:00-2:15 p.m.','KLR200','114');
INSERT INTO CLASS VALUES('10023','QM-362','1','MWF 11:00-11:50 a.m.','KLR200','162');
INSERT INTO CLASS VALUES('10024','QM-362','2','TTh 2:30-3:45 p.m.','KLR200','162');
INSERT INTO CLASS VALUES('10025','MATH-243','1','Th 6:00-8:40 p.m.','DRE155','325');

/* -- */

CREATE TABLE COURSE (
CRS_CODE varchar(10),
DEPT_CODE varchar(10),
CRS_DESCRIPTION varchar(35),
CRS_CREDIT float(8)
);
INSERT INTO COURSE VALUES('ACCT-211','ACCT','Accounting I','3');
INSERT INTO COURSE VALUES('ACCT-212','ACCT','Accounting II','3');
INSERT INTO COURSE VALUES('CIS-220','CIS','Intro. to Microcomputing','3');
INSERT INTO COURSE VALUES('CIS-420','CIS','Database Design and Implementation','4');
INSERT INTO COURSE VALUES('MATH-243','MATH','Mathematics for Managers','3');
INSERT INTO COURSE VALUES('QM-261','CIS','Intro. to Statistics','3');
INSERT INTO COURSE VALUES('QM-362','CIS','Statistical Applications','4');

/* -- */

CREATE TABLE DEPARTMENT (
DEPT_CODE varchar(10),
DEPT_NAME varchar(30),
SCHOOL_CODE varchar(8),
EMP_NUM int,
DEPT_ADDRESS varchar(20),
DEPT_EXTENSION varchar(4)
);
INSERT INTO DEPARTMENT VALUES('ACCT','Accounting','BUS','114','KLR 211, Box 52','3119');
INSERT INTO DEPARTMENT VALUES('ART','Fine Arts','A&SCI','435','BBG 185, Box 128','2278');
INSERT INTO DEPARTMENT VALUES('BIOL','Biology','A&SCI','387','AAK 230, Box 415','4117');
INSERT INTO DEPARTMENT VALUES('CIS','Computer Info. Systems','BUS','209','KLR 333, Box 56','3245');
INSERT INTO DEPARTMENT VALUES('ECON/FIN','Economics/Finance','BUS','299','KLR 284, Box 63','3126');
INSERT INTO DEPARTMENT VALUES('ENG','English','A&SCI','160','DRE 102, Box 223','1004');
INSERT INTO DEPARTMENT VALUES('HIST','History','A&SCI','103','DRE 156, Box 284','1867');
INSERT INTO DEPARTMENT VALUES('MATH','Mathematics','A&SCI','297','AAK 194, Box 422','4234');
INSERT INTO DEPARTMENT VALUES('MKT/MGT','Marketing/Management','BUS','106','KLR 126, Box 55','3342');
INSERT INTO DEPARTMENT VALUES('PSYCH','Psychology','A&SCI','195','AAK 297, Box 438','4110');
INSERT INTO DEPARTMENT VALUES('SOC','Sociology','A&SCI','342','BBG 208, Box 132','2008');

/* -- */

CREATE TABLE EMPLOYEE (
EMP_NUM int,
EMP_LNAME varchar(15),
EMP_FNAME varchar(12),
EMP_INITIAL varchar(1),
EMP_JOBCODE varchar(5),
EMP_HIREDATE datetime,
EMP_DOB datetime
);
INSERT INTO EMPLOYEE VALUES('100','Worley','James','F','CUST','2/23/1978','6/12/1950');
INSERT INTO EMPLOYEE VALUES('101','Ramso','Henry','B','CUST','11/15/1994','11/2/1961');
INSERT INTO EMPLOYEE VALUES('102','Edwards','Rosemary','D','TECH','7/23/1990','7/3/1953');
INSERT INTO EMPLOYEE VALUES('103','Donelly','Ronald','O','PROF','7/1/1987','10/2/1952');
INSERT INTO EMPLOYEE VALUES('104','Yukon','Preston','D','PROF','5/1/1992','2/23/1948');
INSERT INTO EMPLOYEE VALUES('105','Heffington','Arnelle','B','PROF','7/1/1991','11/2/1950');
INSERT INTO EMPLOYEE VALUES('106','Washington','Ross','E','PROF','8/1/1976','3/4/1941');
INSERT INTO EMPLOYEE VALUES('108','Robertson','Elaine','W','TECH','10/18/1983','6/20/1961');
INSERT INTO EMPLOYEE VALUES('110','Thieu','Van','S','PROF','8/1/1989','8/12/1951');
INSERT INTO EMPLOYEE VALUES('114','Graztevski','Gerald','B','PROF','8/1/1978','3/18/1939');
INSERT INTO EMPLOYEE VALUES('122','Wilson','Todd','H','CUST','11/6/1990','10/19/1966');
INSERT INTO EMPLOYEE VALUES('123','Jones','Suzanne','B','TECH','1/5/1994','12/30/1967');
INSERT INTO EMPLOYEE VALUES('124','Smith','Elsa','K','CLRK','12/16/1982','9/13/1943');
INSERT INTO EMPLOYEE VALUES('126','Ardano','James','G','CLRK','10/1/1994','3/12/1970');

/* -- */

CREATE TABLE ENROLL (
CLASS_CODE varchar(5),
STU_NUM int,
ENROLL_GRADE varchar(50)
);
INSERT INTO ENROLL VALUES('10014','321452','C');
INSERT INTO ENROLL VALUES('10014','324257','B');
INSERT INTO ENROLL VALUES('10018','321452','A');
INSERT INTO ENROLL VALUES('10018','324257','B');
INSERT INTO ENROLL VALUES('10021','321452','C');
INSERT INTO ENROLL VALUES('10021','324257','C');

/* -- */

CREATE TABLE PREREQ (
CRS_CODE varchar(8),
PRE_TAKE varchar(8)
);
INSERT INTO PREREQ VALUES('CIS-420','CIS-220');
INSERT INTO PREREQ VALUES('QM-261','MATH-243');
INSERT INTO PREREQ VALUES('QM-362','MATH-243');
INSERT INTO PREREQ VALUES('QM-362','QM-261');

/* -- */

CREATE TABLE PROFESSOR (
EMP_NUM int,
DEPT_CODE varchar(10),
PROF_OFFICE varchar(50),
PROF_EXTENSION varchar(4),
PROF_HIGH_DEGREE varchar(5)
);
INSERT INTO PROFESSOR VALUES('103','HIST','DRE 156','6783','Ph.D.');
INSERT INTO PROFESSOR VALUES('104','ENG','DRE 102','5561','MA');
INSERT INTO PROFESSOR VALUES('105','ACCT','KLR 229D','8665','Ph.D.');
INSERT INTO PROFESSOR VALUES('106','MKT/MGT','KLR 126','3899','Ph.D.');
INSERT INTO PROFESSOR VALUES('110','BIOL','AAK 160','3412','Ph.D.');
INSERT INTO PROFESSOR VALUES('114','ACCT','KLR 211','4436','Ph.D.');
INSERT INTO PROFESSOR VALUES('155','MATH','AAK 201','4440','Ph.D.');
INSERT INTO PROFESSOR VALUES('160','ENG','DRE 102','2248','Ph.D.');
INSERT INTO PROFESSOR VALUES('162','CIS','KLR 203E','2359','Ph.D.');
INSERT INTO PROFESSOR VALUES('191','MKT/MGT','KLR 409B','4016','DBA');
INSERT INTO PROFESSOR VALUES('195','PSYCH','AAK 297','3550','Ph.D.');
INSERT INTO PROFESSOR VALUES('209','CIS','KLR 333','3421','Ph.D.');
INSERT INTO PROFESSOR VALUES('228','CIS','KLR 300','3000','Ph.D.');
INSERT INTO PROFESSOR VALUES('297','MATH','AAK 194','1145','Ph.D.');
INSERT INTO PROFESSOR VALUES('299','ECON/FIN','KLR 284','2851','Ph.D.');
INSERT INTO PROFESSOR VALUES('301','ACCT','KLR 244','4683','Ph.D.');
INSERT INTO PROFESSOR VALUES('335','ENG','DRE 208','2000','Ph.D.');
INSERT INTO PROFESSOR VALUES('342','SOC','BBG 208','5514','Ph.D.');
INSERT INTO PROFESSOR VALUES('387','BIOL','AAK 230','8665','Ph.D.');
INSERT INTO PROFESSOR VALUES('401','HIST','DRE 156','6783','MA');
INSERT INTO PROFESSOR VALUES('425','ECON/FIN','KLR 284','2851','MBA');
INSERT INTO PROFESSOR VALUES('435','ART','BBG 185','2278','Ph.D.');

