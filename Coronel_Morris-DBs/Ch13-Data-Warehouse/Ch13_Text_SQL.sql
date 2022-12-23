/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

CREATE TABLE DW_INVOICE (
INV_NUM int,
INV_DATE datetime,
CUS_NAME varchar(15),
INV_TOTAL float(8)
);
INSERT INTO DW_INVOICE VALUES('2034','5/15/2016','Dartonik','1400');
INSERT INTO DW_INVOICE VALUES('2035','5/15/2016','Summer Lake','1200');
INSERT INTO DW_INVOICE VALUES('2036','5/16/2016','Dartonik','1350');
INSERT INTO DW_INVOICE VALUES('2037','5/16/2016','Summer lake','3100');
INSERT INTO DW_INVOICE VALUES('2038','5/16/2016','Trydon','400');

/* -- */


CREATE TABLE DW_LINE (
INV_NUM int,
LINE_NUM int,
PROD_DESCRIPTION varchar(50),
LINE_PRICE float(8),
LINE_QUANTITY int,
LINE_AMOUNT float(8)
);
INSERT INTO DW_LINE VALUES('2034','1','Optical Mouse','45','20','900');
INSERT INTO DW_LINE VALUES('2034','2','Wireless RF remote and laser pointer','50','10','500');
INSERT INTO DW_LINE VALUES('2035','1','Everlast Hard Drive, 60 GB','200','6','1200');
INSERT INTO DW_LINE VALUES('2036','1','Optical Mouse','45','30','1350');
INSERT INTO DW_LINE VALUES('2037','1','Optical Mouse','45','10','450');
INSERT INTO DW_LINE VALUES('2037','2','Roadster 56KB Ext. Modem','120','5','600');
INSERT INTO DW_LINE VALUES('2037','3','Everlast Hard Drive, 60 GB','205','10','2050');
INSERT INTO DW_LINE VALUES('2038','1','NoTech Speaker Set','50','8','400');
