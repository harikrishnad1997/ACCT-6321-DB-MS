/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */
/* WARNING: */
/* WE HIGHLY RECOMEND TO USE THE SQL SCRIPTS PROVIDED IN THE SQL FOLDER */


CREATE TABLE CUSTOMER (
CUS_CODE int,
CUS_LNAME varchar(15),
CUS_FNAME varchar(15),
CUS_INITIAL varchar(1),
CUS_AREACODE varchar(3),
CUS_PHONE varchar(8),
CUS_BALANCE float(8)
);
INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573','0');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238','0');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285','345.859985351562');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180','536.75');
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672','0');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381','0');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228','221.190002441406');
INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556','768.929992675781');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185','216.550003051758');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809','0');

/* -- */


CREATE TABLE EMP (
EMP_NUM int,
EMP_TITLE varchar(4),
EMP_LNAME varchar(15),
EMP_FNAME varchar(15),
EMP_INITIAL varchar(1),
EMP_DOB datetime,
EMP_HIRE_DATE datetime,
EMP_AREACODE varchar(3),
EMP_PHONE varchar(8),
EMP_MGR int
);
INSERT INTO EMP VALUES('100','Mr.','Kolmycz','George','D','6/15/1942','3/15/1985','615','324-5456','');
INSERT INTO EMP VALUES('101','Ms.','Lewis','Rhonda','G','3/19/1965','4/25/1986','615','324-4472','100');
INSERT INTO EMP VALUES('102','Mr.','VanDam','Rhett','','11/14/1958','12/20/1990','901','675-8993','100');
INSERT INTO EMP VALUES('103','Ms.','Jones','Anne','M','10/16/1974','8/28/1994','615','898-3456','100');
INSERT INTO EMP VALUES('104','Mr.','Lange','John','P','11/8/1971','10/20/1994','901','504-4430','105');
INSERT INTO EMP VALUES('105','Mr.','Williams','Robert','D','3/14/1975','11/8/1998','615','890-3220','');
INSERT INTO EMP VALUES('106','Mrs.','Smith','Jeanine','K','2/12/1968','1/5/1989','615','324-7883','105');
INSERT INTO EMP VALUES('107','Mr.','Diante','Jorge','D','8/21/1974','7/2/1994','615','890-4567','105');
INSERT INTO EMP VALUES('108','Mr.','Wiesenbach','Paul','R','2/14/1966','11/18/1992','615','897-4358','');
INSERT INTO EMP VALUES('109','Mr.','Smith','George','K','6/18/1961','4/14/1989','901','504-3339','108');
INSERT INTO EMP VALUES('110','Mrs.','Genkazi','Leighla','W','5/19/1970','12/1/1990','901','569-0093','108');
INSERT INTO EMP VALUES('111','Mr.','Washington','Rupert','E','1/3/1966','6/21/1993','615','890-4925','105');
INSERT INTO EMP VALUES('112','Mr.','Johnson','Edward','E','5/14/1961','12/1/1983','615','898-4387','100');
INSERT INTO EMP VALUES('113','Ms.','Smythe','Melanie','P','9/15/1970','5/11/1999','615','324-9006','105');
INSERT INTO EMP VALUES('114','Ms.','Brandon','Marie','G','11/2/1956','11/15/1979','901','882-0845','108');
INSERT INTO EMP VALUES('115','Mrs.','Saranda','Hermine','R','7/25/1972','4/23/1993','615','324-5505','105');
INSERT INTO EMP VALUES('116','Mr.','Smith','George','A','11/8/1965','12/10/1988','615','890-2984','108');

/* -- */

CREATE TABLE EMPLOYEE (
EMP_NUM int,
EMP_TITLE varchar(4),
EMP_LNAME varchar(15),
EMP_FNAME varchar(15),
EMP_INITIAL varchar(1),
EMP_DOB datetime,
EMP_HIRE_DATE datetime,
EMP_YEARS int,
EMP_AREACODE varchar(3),
EMP_PHONE varchar(8)
);
INSERT INTO EMPLOYEE VALUES('100','Mr.','Kolmycz','George','D','6/15/1942','3/15/1985','18','615','324-5456');
INSERT INTO EMPLOYEE VALUES('101','Ms.','Lewis','Rhonda','G','3/19/1965','4/25/1986','16','615','324-4472');
INSERT INTO EMPLOYEE VALUES('102','Mr.','VanDam','Rhett','','11/14/1958','12/20/1990','12','901','675-8993');
INSERT INTO EMPLOYEE VALUES('103','Ms.','Jones','Anne','M','10/16/1974','8/28/1994','8','615','898-3456');
INSERT INTO EMPLOYEE VALUES('104','Mr.','Lange','John','P','11/8/1971','10/20/1994','8','901','504-4430');
INSERT INTO EMPLOYEE VALUES('105','Mr.','Williams','Robert','D','3/14/1975','11/8/1998','4','615','890-3220');
INSERT INTO EMPLOYEE VALUES('106','Mrs.','Smith','Jeanine','K','2/12/1968','1/5/1989','14','615','324-7883');
INSERT INTO EMPLOYEE VALUES('107','Mr.','Diante','Jorge','D','8/21/1974','7/2/1994','8','615','890-4567');
INSERT INTO EMPLOYEE VALUES('108','Mr.','Wiesenbach','Paul','R','2/14/1966','11/18/1992','10','615','897-4358');
INSERT INTO EMPLOYEE VALUES('109','Mr.','Smith','George','K','6/18/1961','4/14/1989','13','901','504-3339');
INSERT INTO EMPLOYEE VALUES('110','Mrs.','Genkazi','Leighla','W','5/19/1970','12/1/1990','12','901','569-0093');
INSERT INTO EMPLOYEE VALUES('111','Mr.','Washington','Rupert','E','1/3/1966','6/21/1993','9','615','890-4925');
INSERT INTO EMPLOYEE VALUES('112','Mr.','Johnson','Edward','E','5/14/1961','12/1/1983','19','615','898-4387');
INSERT INTO EMPLOYEE VALUES('113','Ms.','Smythe','Melanie','P','9/15/1970','5/11/1999','3','615','324-9006');
INSERT INTO EMPLOYEE VALUES('114','Ms.','Brandon','Marie','G','11/2/1956','11/15/1979','23','901','882-0845');
INSERT INTO EMPLOYEE VALUES('115','Mrs.','Saranda','Hermine','R','7/25/1972','4/23/1993','9','615','324-5505');
INSERT INTO EMPLOYEE VALUES('116','Mr.','Smith','George','A','11/8/1965','12/10/1988','14','615','890-2984');

/* -- */

CREATE TABLE INVOICE (
INV_NUMBER int,
CUS_CODE int,
INV_DATE datetime
);
INSERT INTO INVOICE VALUES('1001','10014','1/16/2016');
INSERT INTO INVOICE VALUES('1002','10011','1/16/2016');
INSERT INTO INVOICE VALUES('1003','10012','1/16/2016');
INSERT INTO INVOICE VALUES('1004','10011','1/17/2016');
INSERT INTO INVOICE VALUES('1005','10018','1/17/2016');
INSERT INTO INVOICE VALUES('1006','10014','1/17/2016');
INSERT INTO INVOICE VALUES('1007','10015','1/17/2016');
INSERT INTO INVOICE VALUES('1008','10011','1/17/2016');

/* -- */

CREATE TABLE LINE (
INV_NUMBER int,
LINE_NUMBER int,
P_CODE varchar(10),
LINE_UNITS float(8),
LINE_PRICE float(8)
);
INSERT INTO LINE VALUES('1001','1','13-Q2/P2','1','14.99');
INSERT INTO LINE VALUES('1001','2','23109-HB','1','9.95');
INSERT INTO LINE VALUES('1002','1','54778-2T','2','4.99');
INSERT INTO LINE VALUES('1003','1','2238/QPD','1','38.95');
INSERT INTO LINE VALUES('1003','2','1546-QQ2','1','39.95');
INSERT INTO LINE VALUES('1003','3','13-Q2/P2','5','14.99');
INSERT INTO LINE VALUES('1004','1','54778-2T','3','4.99');
INSERT INTO LINE VALUES('1004','2','23109-HB','2','9.95');
INSERT INTO LINE VALUES('1005','1','PVC23DRT','12','5.87');
INSERT INTO LINE VALUES('1006','1','SM-18277','3','6.99');
INSERT INTO LINE VALUES('1006','2','2232/QTY','1','109.92');
INSERT INTO LINE VALUES('1006','3','23109-HB','1','9.95');
INSERT INTO LINE VALUES('1006','4','89-WRE-Q','1','256.99');
INSERT INTO LINE VALUES('1007','1','13-Q2/P2','2','14.99');
INSERT INTO LINE VALUES('1007','2','54778-2T','1','4.99');
INSERT INTO LINE VALUES('1008','1','PVC23DRT','5','5.87');
INSERT INTO LINE VALUES('1008','2','WR3/TT3','3','119.95');
INSERT INTO LINE VALUES('1008','3','23109-HB','1','9.95');

/* -- */

CREATE TABLE PRODUCT (
P_CODE varchar(10),
P_DESCRIPT varchar(35),
P_INDATE datetime,
P_QOH int,
P_MIN int,
P_PRICE float(8),
P_DISCOUNT float(8),
V_CODE int
);
INSERT INTO PRODUCT VALUES('11QER/31','Power painter, 15 psi., 3-nozzle',   '11/3/2015','8','5','109.99','0','25595');
INSERT INTO PRODUCT VALUES('13-Q2/P2','7.25-in. pwr. saw blade',           '12/13/2015','32','15', '14.99','0.05','21344');
INSERT INTO PRODUCT VALUES('14-Q1/L3','9.00-in. pwr. saw blade',           '11/13/2015','18','12','17.49','0','21344');
INSERT INTO PRODUCT VALUES('1546-QQ2','Hrd. cloth, 1/4-in., 2x50',          '1/15/2016','15','8','39.95','0','23119');
INSERT INTO PRODUCT VALUES('1558-QW1','Hrd. cloth, 1/2-in., 3x50',          '1/15/2016','23','5','43.99','0','23119');
INSERT INTO PRODUCT VALUES('2232/QTY','B\&D jigsaw, 12-in. blade',         '12/30/2015','8','5','109.92','0.05','24288');
INSERT INTO PRODUCT VALUES('2232/QWE','B\&D jigsaw, 8-in. blade',          '12/24/2015','6','5','99.87','0.05','24288');
INSERT INTO PRODUCT VALUES('2238/QPD','B\&D cordless drill, 1/2-in.',       '1/20/2016','12','5','38.95','0.05','25595');
INSERT INTO PRODUCT VALUES('23109-HB','Claw hammer',                        '1/20/2016','23','10','9.95','0.1','21225');
INSERT INTO PRODUCT VALUES('23114-AA','Sledge hammer, 12 lb.',               '1/2/2016','8','5','14.40','0.05','');
INSERT INTO PRODUCT VALUES('54778-2T','Rat-tail file, 1/8-in. fine',       '12/15/2015','43','20','4.99','0','21344');
INSERT INTO PRODUCT VALUES('89-WRE-Q','Hicut chain saw, 16 in.',             '2/7/2016','11','5','256.99','0.05','24288');
INSERT INTO PRODUCT VALUES('PVC23DRT','PVC pipe, 3.5-in., 8-ft',            '2/20/2016','188','75','5.87','0','');
INSERT INTO PRODUCT VALUES('SM-18277','1.25-in. metal screw, 25',            '3/1/2016','172','75','6.99','0','21225');
INSERT INTO PRODUCT VALUES('SW-23116','2.5-in. wd. screw, 50',              '2/24/2016','237','100','8.45','0','21231');
INSERT INTO PRODUCT VALUES('WR3/TT3','Steel matting, 4''x8''x1/6", .5" mesh','1/17/2016','18','5','119.95','0.1','25595');

/* -- */

CREATE TABLE VENDOR (
V_CODE int,
V_NAME varchar(15),
V_CONTACT varchar(50),
V_AREACODE varchar(3),
V_PHONE varchar(8),
V_STATE varchar(2),
V_ORDER varchar(1)
);
INSERT INTO VENDOR VALUES('21225','Bryson, Inc.','Smithson','615','223-3234','TN','Y');
INSERT INTO VENDOR VALUES('21226','SuperLoo, Inc.','Flushing','904','215-8995','FL','N');
INSERT INTO VENDOR VALUES('21231','D&E Supply','Singh','615','228-3245','TN','Y');
INSERT INTO VENDOR VALUES('21344','Gomez Bros.','Ortega','615','889-2546','KY','N');
INSERT INTO VENDOR VALUES('22567','Dome Supply','Smith','901','678-1419','GA','N');
INSERT INTO VENDOR VALUES('23119','Randsets Ltd.','Anderson','901','678-3998','GA','Y');
INSERT INTO VENDOR VALUES('24004','Brackman Bros.','Browning','615','228-1410','TN','N');
INSERT INTO VENDOR VALUES('24288','ORDVA, Inc.','Hakford','615','898-1234','TN','Y');
INSERT INTO VENDOR VALUES('25443','B&K, Inc.','Smith','904','227-0093','FL','N');
INSERT INTO VENDOR VALUES('25501','Damal Supplies','Smythe','615','890-3529','TN','N');
INSERT INTO VENDOR VALUES('25595','Rubicon Systems','Orton','904','456-0092','FL','Y');



