/* Database Systems, Coronel/Morris */
/* Type of SQL : Oracle */

ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

CREATE TABLE CLASS (
CRS_CODE varchar2(10),
CLASS_SECTION varchar2(2),
CLASS_TIME varchar2(20),
ROOM_CODE varchar2(8),
PROF_NUM float(8)
);
INSERT INTO CLASS VALUES('ACCT-211','1','MWF 8:00-8:50 a.m.','BUS311','105');
INSERT INTO CLASS VALUES('ACCT-211','2','MWF 9:00-9:50 a.m.','BUS200','105');
INSERT INTO CLASS VALUES('ACCT-211','3','TTh 2:30-3:45 p.m.','BUS252','342');
INSERT INTO CLASS VALUES('ACCT-212','1','MWF 10:00-10:50 a.m.','BUS311','301');
INSERT INTO CLASS VALUES('ACCT-212','2','Th 6:00-8:40 p.m.','BUS252','301');
INSERT INTO CLASS VALUES('CIS-220','1','MWF 9:00-9:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('CIS-220','2','MWF 9:00-9:50 a.m.','KLR211','114');
INSERT INTO CLASS VALUES('CIS-220','3','MWF 10:00-10:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('CIS-420','1','W 6:00-8:40 p.m.','KLR209','162');
INSERT INTO CLASS VALUES('MATH-243','1','Th 6:00-8:40 p.m.','DRE155','325');
INSERT INTO CLASS VALUES('QM-261','1','MWF 8:00-8:50 a.m.','KLR200','114');
INSERT INTO CLASS VALUES('QM-261','2','TTh 1:00-2:15 p.m.','KLR200','114');
INSERT INTO CLASS VALUES('QM-362','1','MWF 11:00-11:50 a.m.','KLR200','162');
INSERT INTO CLASS VALUES('QM-362','2','TTh 2:30-3:45 p.m.','KLR200','162');


/* -- */

CREATE TABLE COURSE (
CRS_CODE varchar2(10),
DEPT_CODE varchar2(10),
CRS_DESCRIPTION varchar2(35),
CRS_CREDIT float(8)
);
INSERT INTO COURSE VALUES('ACCT-211','ACCT','Accounting I','3');
INSERT INTO COURSE VALUES('ACCT-212','ACCT','Accounting II','3');
INSERT INTO COURSE VALUES('CIS-220','CIS','Intro. to Microcomputing','3');
INSERT INTO COURSE VALUES('CIS-420','CIS','Database Design and Implementation','4');
INSERT INTO COURSE VALUES('MATH-243','MATH','Mathematics for Managers','3');
INSERT INTO COURSE VALUES('QM-261','CIS','Intro. to Statistics','3');
INSERT INTO COURSE VALUES('QM-362','CIS','Statistical Applications','4');

