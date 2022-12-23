/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */


CREATE TABLE CUSTOMER (
CUS_CODE integer,
CUS_LNAME varchar(15),
CUS_FNAME varchar(15),
CUS_INITIAL varchar(1),
CUS_AREACODE varchar(3),
CUS_PHONE varchar(8)
);
INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180');
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron',NULL,'615','222-1672');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228');
INSERT INTO CUSTOMER VALUES('10017','Williams','George',NULL,'615','290-2556');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809');

/* -- */

CREATE TABLE INVOICE (
INV_NUMBER int,
CUS_CODE int,
INV_DATE datetime
);
INSERT INTO INVOICE VALUES('1001','10014','3/8/2016');
INSERT INTO INVOICE VALUES('1002','10011','3/8/2016');
INSERT INTO INVOICE VALUES('1003','10012','3/8/2016');
INSERT INTO INVOICE VALUES('1004','10011','3/9/2016');

/* -- */

CREATE TABLE LINE (
INV_NUMBER int,
LINE_NUMBER int,
PROD_CODE varchar(10),
LINE_UNITS float(8),
LINE_PRICE numeric
);
INSERT INTO LINE VALUES('1001','1','123-21UUY','1','189.99');
INSERT INTO LINE VALUES('1001','2','SRE-657UG','3','2.99');
INSERT INTO LINE VALUES('1002','1','QER-34256','2','18.63');
INSERT INTO LINE VALUES('1003','1','ZZX/3245Q','1','6.79');
INSERT INTO LINE VALUES('1003','2','SRE-657UG','1','2.99');
INSERT INTO LINE VALUES('1003','3','001278-AB','1','12.95');
INSERT INTO LINE VALUES('1004','1','001278-AB','1','12.95');
INSERT INTO LINE VALUES('1004','2','SRE-657UG','2','2.99');

/* -- */

CREATE TABLE PRODUCT (
PROD_CODE varchar(10),
PROD_DESCRIPT varchar(35),
PROD_PRICE numeric,
PROD_ON_HAND int,
VEND_CODE int
);
INSERT INTO PRODUCT VALUES('001278-AB','Claw hammer','12.95','23','232');
INSERT INTO PRODUCT VALUES('123-21UUY','Houselite chain saw, 16-in. bar','189.99','4','235');
INSERT INTO PRODUCT VALUES('QER-34256','Sledge hammer, 16-lb. head','18.63','6','231');
INSERT INTO PRODUCT VALUES('SRE-657UG','Rat-tail file','2.99','15','232');
INSERT INTO PRODUCT VALUES('ZZX/3245Q','Steel tape, 12-ft. length','6.79','8','235');

/* -- */


CREATE TABLE VENDOR (
VEND_CODE int,
VEND_CONTACT varchar(25),
VEND_AREACODE varchar(3),
VEND_PHONE varchar(8)
);
INSERT INTO VENDOR VALUES('230','Shelly K. Smithson','608','555-1234');
INSERT INTO VENDOR VALUES('231','James Johnson','615','123-4536');
INSERT INTO VENDOR VALUES('232','Annelise Crystall','608','224-2134');
INSERT INTO VENDOR VALUES('233','Candice Wallace','904','342-6567');
INSERT INTO VENDOR VALUES('234','Arthur Jones','615','123-3324');
INSERT INTO VENDOR VALUES('235','Henry Ortozo','615','899-3425');
