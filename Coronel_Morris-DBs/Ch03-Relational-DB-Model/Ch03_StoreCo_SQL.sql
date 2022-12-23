/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

CREATE TABLE EMPLOYEE (
EMP_CODE int,
EMP_TITLE varchar(4),
EMP_LNAME varchar(15),
EMP_FNAME varchar(15),
EMP_INITIAL varchar(1),
EMP_DOB datetime,
STORE_CODE int
);
INSERT INTO EMPLOYEE VALUES('1','Mr.','Williamson','John','W','5/21/1964','3');
INSERT INTO EMPLOYEE VALUES('2','Ms.','Ratula','Nancy','','2/9/1969','2');
INSERT INTO EMPLOYEE VALUES('3','Ms.','Greenboro','Lottie','R','10/2/1961','4');
INSERT INTO EMPLOYEE VALUES('4','Mrs.','Rumpersfro','Jennie','S','6/1/1971','5');
INSERT INTO EMPLOYEE VALUES('5','Mr.','Smith','Robert','L','11/23/1959','3');
INSERT INTO EMPLOYEE VALUES('6','Mr.','Renselaer','Cary','A','12/25/1965','1');
INSERT INTO EMPLOYEE VALUES('7','Mr.','Ogallo','Roberto','S','7/31/1962','3');
INSERT INTO EMPLOYEE VALUES('8','Ms.','Johnsson','Elizabeth','I','9/10/1968','1');
INSERT INTO EMPLOYEE VALUES('9','Mr.','Eindsmar','Jack','W','4/19/1955','2');
INSERT INTO EMPLOYEE VALUES('10','Mrs.','Jones','Rose','R','3/6/1966','4');
INSERT INTO EMPLOYEE VALUES('11','Mr.','Broderick','Tom','','10/21/1972','3');
INSERT INTO EMPLOYEE VALUES('12','Mr.','Washington','Alan','Y','9/8/1974','2');
INSERT INTO EMPLOYEE VALUES('13','Mr.','Smith','Peter','N','8/25/1964','3');
INSERT INTO EMPLOYEE VALUES('14','Ms.','Smith','Sherry','H','5/25/1966','4');
INSERT INTO EMPLOYEE VALUES('15','Mr.','Olenko','Howard','U','5/24/1964','5');
INSERT INTO EMPLOYEE VALUES('16','Mr.','Archialo','Barry','V','9/3/1960','5');
INSERT INTO EMPLOYEE VALUES('17','Ms.','Grimaldo','Jeanine','K','11/12/1970','4');
INSERT INTO EMPLOYEE VALUES('18','Mr.','Rosenberg','Andrew','D','1/24/1971','4');
INSERT INTO EMPLOYEE VALUES('19','Mr.','Rosten','Peter','F','10/3/1968','4');
INSERT INTO EMPLOYEE VALUES('20','Mr.','Mckee','Robert','S','3/6/1970','1');
INSERT INTO EMPLOYEE VALUES('21','Ms.','Baumann','Jennifer','A','12/11/1974','3');

/* -- */

CREATE TABLE REGION (
REGION_CODE int,
REGION_DESCRIPT varchar(10)
);
INSERT INTO REGION VALUES('1','East');
INSERT INTO REGION VALUES('2','West');

/* -- */

CREATE TABLE STORE (
STORE_CODE int,
STORE_NAME varchar(20),
STORE_YTD_SALES numeric,
REGION_CODE int,
EMP_CODE int
);
INSERT INTO STORE VALUES('1','Access Junction','1003455.76','2','8');
INSERT INTO STORE VALUES('2','Database Corner','1421987.39','2','12');
INSERT INTO STORE VALUES('3','Tuple Charge','986783.22','1','7');
INSERT INTO STORE VALUES('4','Attribute Alley','944568.56','2','3');
INSERT INTO STORE VALUES('5','Primary Key Point','2930098.45','1','15');