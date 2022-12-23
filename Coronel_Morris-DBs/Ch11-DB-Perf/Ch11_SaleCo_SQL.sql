* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

DROP TABLE QOPRODUCT;
DROP TABLE QOVENDOR;

CREATE TABLE QOVENDOR (
V_CODE 		INTEGER PRIMARY KEY,
V_NAME 		VARCHAR(35) NOT NULL,
V_CONTACT 	VARCHAR(15) NOT NULL,
V_AREACODE 	CHAR(3) NOT NULL,
V_PHONE 	CHAR(8) NOT NULL,
V_STATE 	CHAR(2) NOT NULL,
V_ORDER 	CHAR(1) NOT NULL);


CREATE TABLE QOPRODUCT (
P_CODE 		VARCHAR(10) PRIMARY KEY,
P_DESCRIPT 	VARCHAR(35) NOT NULL,
P_INDATE 	DATE NOT NULL,
P_QOH 		NUMERIC NOT NULL,
P_MIN 		NUMERIC NOT NULL,
P_PRICE 	DECIMAL(8,2) NOT NULL,
P_DISCOUNT 	DECIMAL(4,2) NOT NULL,
V_CODE 		INTEGER REFERENCES QOVENDOR,
P_MIN_ORDER	NUMERIC,
P_REORDER	NUMERIC);

/* Loading data rows					*/
/* Turn Escape character on                             */
/* Default escape character "\" 			*/
/* Used to enter special characters (&)			*/



/* QOVENDOR rows					*/
INSERT INTO QOVENDOR VALUES(21225,'Bryson, Inc.'    ,'Smithson','615','223-3234','TN','Y');
INSERT INTO QOVENDOR VALUES(21226,'SuperLoo, Inc.'  ,'Flushing','904','215-8995','FL','N');
INSERT INTO QOVENDOR VALUES(21231,'D&E Supply'     ,'Singh'   ,'615','228-3245','TN','Y');
INSERT INTO QOVENDOR VALUES(21344,'Gomez Bros.'     ,'Ortega'  ,'615','889-2546','KY','N');
INSERT INTO QOVENDOR VALUES(22567,'Dome Supply'     ,'Smith'   ,'901','678-1419','GA','N');
INSERT INTO QOVENDOR VALUES(23119,'Randsets Ltd.'   ,'Anderson','901','678-3998','GA','Y');
INSERT INTO QOVENDOR VALUES(24004,'Brackman Bros.'  ,'Browning','615','228-1410','TN','N');
INSERT INTO QOVENDOR VALUES(24288,'ORDVA, Inc.'     ,'Hakford' ,'615','898-1234','TN','Y');
INSERT INTO QOVENDOR VALUES(25443,'B&K, Inc.'      ,'Smith'   ,'904','227-0093','FL','N');
INSERT INTO QOVENDOR VALUES(25501,'Damal Supplies'  ,'Smythe'  ,'615','890-3529','TN','N');
INSERT INTO QOVENDOR VALUES(25595,'Rubicon Systems' ,'Orton'   ,'904','456-0092','FL','Y');
INSERT INTO QOVENDOR VALUES(25596,'Broadmodre'      ,'Juarez'  ,'615','456-2342','TN','N');
INSERT INTO QOVENDOR VALUES(25597,'Stones River'    ,'Smith'   ,'615','456-9254','TN','N');
INSERT INTO QOVENDOR VALUES(25598,'Adams Aluminum'  ,'James'   ,'615','456-4567','TN','N');
INSERT INTO QOVENDOR VALUES(25599,'Bruce Colony'    ,'Peter'   ,'615','456-8976','TN','N');


/* QOPRODUCT rows					*/
INSERT INTO QOPRODUCT VALUES('11QER/31','Power painter, 15 psi., 3-nozzle'     ,'03-NOV-2015',  8,  5,109.99,0.00,25595, 25,0);
INSERT INTO QOPRODUCT VALUES('13-Q2/P2','7.25-in. pwr. saw blade'              ,'13-DEC-2015', 32, 15, 14.99,0.05,21344, 50,0);
INSERT INTO QOPRODUCT VALUES('14-Q1/L3','9.00-in. pwr. saw blade'              ,'13-NOV-2015', 18, 12, 17.49,0.00,21344, 50,0);
INSERT INTO QOPRODUCT VALUES('1546-QQ2','Hrd. cloth, 1/4-in., 2x50'            ,'15-JAN-2016', 15,  8, 39.95,0.00,23119, 35,0);
INSERT INTO QOPRODUCT VALUES('1558-QW1','Hrd. cloth, 1/2-in., 3x50'            ,'15-JAN-2016', 23,  5, 43.99,0.00,23119, 25,0);
INSERT INTO QOPRODUCT VALUES('2232/QTY','B\&D jigsaw, 12-in. blade'            ,'30-DEC-2015',  8,  5,109.92,0.05,24288, 15,0);
INSERT INTO QOPRODUCT VALUES('2232/QWE','B\&D jigsaw, 8-in. blade'             ,'24-DEC-2015',  6,  5, 99.87,0.05,24288, 15,0);
INSERT INTO QOPRODUCT VALUES('2238/QPD','B\&D cordless drill, 1/2-in.'         ,'20-JAN-2016', 12,  5, 38.95,0.05,25595, 12,0);
INSERT INTO QOPRODUCT VALUES('23109-HB','Claw hammer'                          ,'20-JAN-2016', 23, 10,  9.95,0.10,21225, 25,0);
INSERT INTO QOPRODUCT VALUES('23114-AA','Sledge hammer, 12 lb.'                ,'02-JAN-2016',  8,  5, 14.40,0.05,NULL , 12,0);
INSERT INTO QOPRODUCT VALUES('54778-2T','Rat-tail file, 1/8-in. fine'          ,'15-DEC-2015', 43, 20,  4.99,0.00,21344, 25,0);
INSERT INTO QOPRODUCT VALUES('89-WRE-Q','Hicut chain saw, 16 in.'              ,'07-FEB-2016', 11,  5,256.99,0.05,24288, 10,0);
INSERT INTO QOPRODUCT VALUES('PVC23DRT','PVC pipe, 3.5-in., 8-ft'              ,'20-FEB-2016',188, 75,  5.87,0.00,NULL , 50,0);
INSERT INTO QOPRODUCT VALUES('SM-18277','1.25-in. metal screw, 25'             ,'01-MAR-2016',172, 75,  6.99,0.00,21225, 50,0);
INSERT INTO QOPRODUCT VALUES('SW-23116','2.5-in. wd. screw, 50'                ,'24-FEB-2016',237,100,  8.45,0.00,21231,100,0);
INSERT INTO QOPRODUCT VALUES('WR3/TT3' ,'Steel matting, 4''x8''x1/6", .5" mesh','17-JAN-2016', 18,  5,119.95,0.10,25595, 10,0);

