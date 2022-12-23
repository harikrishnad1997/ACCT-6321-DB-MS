/* Database Systems, Coronel/Morris */
/* Type of SQL : Oracle */

ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

CREATE TABLE PROFESSOR (
PROF_CODE integer,
DEPT_CODE varchar2(8)
);
INSERT INTO PROFESSOR VALUES('1','2');
INSERT INTO PROFESSOR VALUES('2','6');
INSERT INTO PROFESSOR VALUES('3','6');
INSERT INTO PROFESSOR VALUES('4','4');

/* -- */

CREATE TABLE STUDENT (
STU_CODE integer,
PROF_CODE integer
);
INSERT INTO STUDENT VALUES('100278',NULL);
INSERT INTO STUDENT VALUES('128569','2');
INSERT INTO STUDENT VALUES('512272','4');
INSERT INTO STUDENT VALUES('531235','2');
INSERT INTO STUDENT VALUES('531268','');
INSERT INTO STUDENT VALUES('553427','1');