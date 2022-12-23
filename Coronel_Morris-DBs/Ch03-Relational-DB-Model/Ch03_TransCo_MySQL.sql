/* Database Systems, Coronel/Morris */
/* Type of SQL : MySQL */


CREATE TABLE BASE (
BASE_CODE int,
BASE_CITY varchar(20),
BASE_STATE varchar(2),
BASE_AREA_CODE varchar(3),
BASE_PHONE varchar(8),
BASE_MANAGER varchar(25)
);
INSERT INTO BASE VALUES('501','Murfreesboro','TN','615','123-4567','Andrea D. Gallager');
INSERT INTO BASE VALUES('502','Lexington','KY','568','234-5678','George H. Delarosa');
INSERT INTO BASE VALUES('503','Cape Girardeau','MO','456','345-6789','Maria J. Talindo');
INSERT INTO BASE VALUES('504','Dalton','GA','901','456-7890','Peter F. McAvee')

/* -- */

CREATE TABLE TRUCK (
TRUCK_NUM varchar(10),
BASE_CODE int,
TYPE_CODE int,
TRUCK_MILES float(8),
TRUCK_BUY_DATE datetime,
TRUCK_SERIAL_NUM varchar(16)
);
INSERT INTO TRUCK VALUES('1001','501','1','32123.5','2007-9-23','AA-322-12212-W11');
INSERT INTO TRUCK VALUES('1002','502','1','76984.3','2006-2-5','AC-342-22134-Q23');
INSERT INTO TRUCK VALUES('1003','501','2','12346.6','2006-11-11','AC-445-78656-Z99');
INSERT INTO TRUCK VALUES('1004',NULL,'1','2894.3','2007-1-6','WQ-112-23144-T34');
INSERT INTO TRUCK VALUES('1005','503','2','45673.1','2006-3-1','FR-998-32245-W12');
INSERT INTO TRUCK VALUES('1006','501','2','193245.7','2000-7-15','AD-456-00845-R45');
INSERT INTO TRUCK VALUES('1007','502','3','32012.3','2004-10-17','AA-341-96573-Z84');
INSERT INTO TRUCK VALUES('1008','502','3','44213.6','2005-8-7','DR-559-22189-D33');
INSERT INTO TRUCK VALUES('1009','503','2','10932.9','2008-2-12','DE-887-98456-E94');

/* -- */

CREATE TABLE TYPE (
TYPE_CODE int,
TYPE_DESCRIPTION varchar(30)
);
INSERT INTO TYPE VALUES('1','Single box, double-axle');
INSERT INTO TYPE VALUES('2','Single box, single-axle');
INSERT INTO TYPE VALUES('3','Tandem trailer, single-axle');