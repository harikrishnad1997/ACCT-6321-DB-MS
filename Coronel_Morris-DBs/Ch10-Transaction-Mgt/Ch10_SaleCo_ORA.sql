/* Database Systems, 8th Ed., Rob/Coronel */
/* Type of SQL : Oracle */

ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

CREATE TABLE ACCT_TRANSACTION (
ACCT_TRANS_NUM integer,
ACCT_TRANS_DATE date,
CUST_NUMBER integer,
ACCT_TRANS_TYPE varchar2(8),
ACCT_TRANS_AMOUNT float(8)
);
INSERT INTO ACCT_TRANSACTION VALUES('10003','1/17/2016','10014','charge','329.66');
INSERT INTO ACCT_TRANSACTION VALUES('10004','1/17/2016','10011','charge','615.73');
INSERT INTO ACCT_TRANSACTION VALUES('10006','1/29/2016','10014','payment','329.66');
INSERT INTO ACCT_TRANSACTION VALUES('10007','1/18/2016','10016','charge','277.55');

/* -- */

CREATE TABLE CUSTOMER (
CUST_NUMBER integer,
CUST_LNAME varchar2(15),
CUST_FNAME varchar2(15),
CUST_INITIAL varchar2(1),
CUST_AREACODE varchar2(3),
CUST_PHONE varchar2(8),
CUST_BALANCE float(8)
);
INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573','0');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238','615.73');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285','0');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180','0');
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672','0');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381','0');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228','277.55');
INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556','0');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185','0');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809','0');

/* -- */

CREATE TABLE INVOICE (
INV_NUMBER integer,
CUST_NUMBER integer,
INV_DATE date,
INV_SUBTOTAL float(8),
INV_TAX float(8),
INV_TOTAL float(8),
INV_PAY_TYPE varchar2(5),
INV_PAY_AMOUNT float(8),
INV_BALANCE float(8)
);
INSERT INTO INVOICE VALUES('1001','10014','1/16/2016','54.92','4.39','59.31','cc','59.31','0');
INSERT INTO INVOICE VALUES('1002','10011','1/16/2016','9.98','0.80','10.78','cash','10.78','0');
INSERT INTO INVOICE VALUES('1003','10012','1/16/2016','270.70','21.66','292.36','cc','292.36','0');
INSERT INTO INVOICE VALUES('1004','10011','1/17/2016','34.87','2.79','37.66','cc','37.66','0');
INSERT INTO INVOICE VALUES('1005','10018','1/17/2016','70.44','5.64','76.08','cc','76.08','0');
INSERT INTO INVOICE VALUES('1006','10014','1/17/2016','397.83','31.83','429.66','cred','100','329.66');
INSERT INTO INVOICE VALUES('1007','10015','1/17/2016','34.97','2.79','37.77','chk','37.77','0');
INSERT INTO INVOICE VALUES('1008','10011','1/17/2016','1033.08','82.65','1115.73','cred','500','615.73');
INSERT INTO INVOICE VALUES('1009','10016','1/18/2016','256.99','20.56','277.55','cred','0','277.55');

/* -- */

CREATE TABLE LINE (
INV_NUMBER integer,
LINE_NUMBER integer,
PROD_CODE varchar2(10),
LINE_UNITS float(8),
LINE_PRICE float(8),
LINE_AMOUNT float(8)
);
INSERT INTO LINE VALUES('1001','1','13-Q2/P2','3','14.99','44.97');
INSERT INTO LINE VALUES('1001','2','23109-HB','1','9.95','9.95');
INSERT INTO LINE VALUES('1002','1','54778-2T','2','4.99','9.98');
INSERT INTO LINE VALUES('1003','1','2238/QPD','4','38.95','155.80');
INSERT INTO LINE VALUES('1003','2','1546-QQ2','1','39.95','39.95');
INSERT INTO LINE VALUES('1003','3','13-Q2/P2','5','14.99','74.95');
INSERT INTO LINE VALUES('1004','1','54778-2T','3','4.99','14.97');
INSERT INTO LINE VALUES('1004','2','23109-HB','2','9.95','19.90');
INSERT INTO LINE VALUES('1005','1','PVC23DRT','12','5.87','70.44');
INSERT INTO LINE VALUES('1006','1','SM-18277','3','6.99','20.97');
INSERT INTO LINE VALUES('1006','2','2232/QTY','1','109.92','109.92');
INSERT INTO LINE VALUES('1006','3','23109-HB','1','9.95','9.95');
INSERT INTO LINE VALUES('1006','4','89-WRE-Q','1','256.99','256.99');
INSERT INTO LINE VALUES('1007','1','13-Q2/P2','2','14.99','29.98');
INSERT INTO LINE VALUES('1007','2','54778-2T','1','4.99','4.99');
INSERT INTO LINE VALUES('1008','1','PVC23DRT','5','5.87','29.35');
INSERT INTO LINE VALUES('1008','2','WR3/TT3','4','119.95','479.80');
INSERT INTO LINE VALUES('1008','3','23109-HB','1','9.95','9.95');
INSERT INTO LINE VALUES('1008','4','89-WRE-Q','2','256.99','513.98');
INSERT INTO LINE VALUES('1009','1','89-WRE-Q','1','256.99','256.99');

/* -- */

CREATE TABLE PRODUCT (
PROD_CODE varchar2(10),
PROD_DESCRIPT varchar2(35),
PROD_INDATE date,
PROD_QOH integer,
PROD_MIN integer,
PROD_PRICE float(8),
PROD_DISCOUNT float(8),
VEND_NUMBER integer
);
INSERT INTO PRODUCT VALUES('11QER/31','Power painter, 15 psi., 3-nozzle', '11/3/2015', '8', '5', '109.99', '0', '25595');
INSERT INTO PRODUCT VALUES('13-Q2/P2','7.25-in. pwr. saw blade', '12/13/2015', '32', '15', '14.99', '0.05', '21344');
INSERT INTO PRODUCT VALUES('14-Q1/L3','9.00-in. pwr. saw blade', '11/13/2015', '18', '12', '17.49', '0', '21344');
INSERT INTO PRODUCT VALUES('1546-QQ2','Hrd. cloth, 1/4-in., 2x50', '1/15/2016', '15', '8', '39.95', '0', '23119');
INSERT INTO PRODUCT VALUES('1558-QW1','Hrd. cloth, 1/2-in., 3x50', '1/15/2016', '23', '5', '43.99', '0', '23119');
INSERT INTO PRODUCT VALUES('2232/QTY','B&D jigsaw, 12-in. blade', '12/30/2015', '8', '5', '109.92', '0.05', '24288');
INSERT INTO PRODUCT VALUES('2232/QWE','B&D jigsaw, 8-in. blade', '12/24/2015', '6', '5', '99.87', '0.05', '24288');
INSERT INTO PRODUCT VALUES('2238/QPD','B&D cordless drill, 1/2-in.', '1/20/2016', '12', '5', '38.95', '0.05', '25595');
INSERT INTO PRODUCT VALUES('23109-HB','Claw hammer', '1/20/2016', '23', '10', '9.95', '0.1', '21225');
INSERT INTO PRODUCT VALUES('23114-AA','Sledge hammer, 12 lb.', '1/2/2016', '8', '5', '14.40', '0.05', '');
INSERT INTO PRODUCT VALUES('54778-2T','Rat-tail file, 1/8-in. fine', '12/15/2015', '43', '20', '4.99', '0', '21344');
INSERT INTO PRODUCT VALUES('89-WRE-Q','Hicut chain saw, 16 in.', '1/7/2016', '11', '5', '256.99', '0.05', '24288');
INSERT INTO PRODUCT VALUES('PVC23DRT','PVC pipe, 3.5-in., 8-ft', '1/6/2016', '188', '75', '5.87', '0', '');
INSERT INTO PRODUCT VALUES('SM-18277','1.25-in. metal screw, 25', '3/1/2016', '172', '75', '6.99', '0', '21225');
INSERT INTO PRODUCT VALUES('SW-23116','2.5-in. wd. screw, 50', '2/24/2016', '237', '100', '8.45', '0', '21231');
INSERT INTO PRODUCT VALUES('WR3/TT3','Steel matting, 4''x8''x1/6", .5" mesh', '1/17/2016', '18', '5', '119.95', '0.1', '25595');

/* -- */

CREATE TABLE VENDOR (
VEND_NUMBER integer,
VEND_NAME varchar2(15),
VEND_CONTACT varchar2(50),
VEND_AREACODE varchar2(3),
VEND_PHONE varchar2(8),
VEND_STATE varchar2(2),
VEND_ORDER varchar2(1)
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