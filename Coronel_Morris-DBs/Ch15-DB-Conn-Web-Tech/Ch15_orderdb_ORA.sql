/* Database Systems, Coronel/Morris */
/* Type of SQL : Oracle */


CREATE TABLE INVTYPE (
TY_GROUP	varchar(10),
TY_CLASS	varchar(2) ,
TY_CATEG	varchar(2) ,
TY_TYPE		varchar(2) ,
TY_SUBTY	varchar(2) ,
TY_DESCR	varchar(25),
TY_UNIT		varchar(2) ,
TY_STATUS	varchar(25));

CREATE TABLE DEPARTMENT (
DEPT_ID		VARCHAR2(5),
DEPT_DESC	VARCHAR2(30),
USR_ID		NUMBER);

CREATE TABLE ORDER_LINE (
ORD_ID 	           NUMBER,
ORD_LINE_ID        NUMBER,
TY_GROUP           VARCHAR(10),
ORD_LINE_DESC      VARCHAR(150),
ORD_LINE_QTY       NUMBER(10),
ORD_LINE_UNIT_COST NUMBER(8,2),
ORD_LINE_TOT       NUMBER(12,2));

CREATE TABLE ORDERS (
ORD_ID             NUMBER,
ORD_DATE           DATE,
ORD_REQ_NUM        VARCHAR(6),
ORD_PO_NUM         VARCHAR(6),
VEN_CODE           VARCHAR(50),
ORD_INV_NUM        VARCHAR(10),
ORD_DESCRIP        VARCHAR(60),
ORD_SHIP_COST      NUMBER(10,2),
ORD_TOT_COST       NUMBER(10,2),
USER_ID            NUMBER,
ORD_DATE_REC       DATE,
ORD_STATUS         VARCHAR(10),
ORD_FUND_TYPE      VARCHAR(5));

CREATE TABLE "USER" (
USR_ID             NUMBER,
USR_FNAME          VARCHAR(40),
USR_MNAME          VARCHAR(3),
USR_LNAME          VARCHAR(40),
USR_SSN            VARCHAR(20),
DEPT_ID            VARCHAR(20),
USR_JOBTITLE       VARCHAR(30),
USR_BSNS_STREET    VARCHAR(150),
USR_BSNS_CITY      VARCHAR(50),
USR_BSNS_STATE     VARCHAR(2),
USR_BSNS_ZIP       VARCHAR(15),
USR_BSNS_FAX       VARCHAR(20),
USR_BSNS_PH        VARCHAR(20),
USR_HOME_STREET    VARCHAR(150),
USR_HOME_CITY      VARCHAR(50),
USR_HOME_STATE     VARCHAR(2),
USR_HOME_ZIP       VARCHAR(15),
USR_HOME_PH        VARCHAR(20),
USR_PAGER          VARCHAR(20),
USR_EMAIL          VARCHAR(45),
USR_GENDER         CHAR(1),
USR_OFFICE         VARCHAR(25),
USR_POBOX          VARCHAR(25),
USR_WEB_PAGE       VARCHAR(75));

CREATE TABLE VENDOR (
VEN_CODE           VARCHAR(50),
VEN_NAME           VARCHAR(50),
VEN_CONTACT_NAME   VARCHAR(50),
VEN_ADDRESS        VARCHAR(100),
VEN_CITY           VARCHAR(50),
VEN_STATE          VARCHAR(2),
VEN_ZIP            VARCHAR(15),
VEN_PH             VARCHAR(15),
VEN_FAX            VARCHAR(15),
VEN_EMAIL          VARCHAR(50),
VEN_CUS_ID         VARCHAR(75),
VEN_SUPPORT_ID     NUMBER,
VEN_SUPPORT_PH     VARCHAR(15),
VEN_WEB_PAGE       VARCHAR(50));



insert into invtype values ('HWEXME', 'HW', 'EX', 'ME', 'XX', 'Hard, Exp. Board-Memory', 'UN', null);
insert into invtype values ('HWMSXXXX', 'HW', 'MS', 'XX', 'XX', 'Hard, Miscelaneous', 'UN', null);
insert into invtype values ('SULSPP', 'SU', 'LS', 'PP', 'XX', 'Supply, Laser, Paper', 'UN', null);
insert into invtype values ('SULSTO', 'SU', 'LS', 'TO', 'XX', 'Supply, Laser, Toner', 'UN', null);
insert into invtype values ('SUMS', 'SU', 'MS', 'XX', 'XX', 'Supply, Misc', 'UN', null);
insert into invtype values ('SWED', 'SW', 'ED', 'XX', 'XX', 'Softw, Educational', 'UN', null);
insert into invtype values ('SWNWUT', 'SW', 'NW', 'UT', 'XX', 'Softw, Network Utilities', 'UN', null);


insert into department values('ACTG', 'Accounting', '5');
insert into department values('ADV', 'Advertising', '13');
insert into department values('FIN', 'Finance', '17');
insert into department values('HUMAN', 'Human Resources', '10');
insert into department values('MANU', 'Manufacturing', '180');
insert into department values('MKT', 'Marketing', '12');
insert into department values('PAYR', 'Payroll', '6');
insert into department values('R&D', 'Research and Development', '');
insert into department values('SERV', 'Customer Services', '15');


insert into order_line values (939, 1192, 'SULSTO', 'HP 4 Remanuf.', 4, 53.95, 215.8);
insert into order_line values (940, 1194, 'SWED', 'HyperCAM Software', 1, 30, 30);
insert into order_line values (941, 1207, 'HWMSXXXX', 'DIMM 32MB 4X64 66Mhz SDRAM 4K', 1, 55.2, 55.2);
insert into order_line values (941, 1208, 'HWMSXXXX', 'DIMM 32MB 4X64 60NS EDO 3.3V A', 1, 55.2, 55.2);
insert into order_line values (942, 1215, 'SULSTO', 'HP 92298A', 5, 53.95, 269.75);
insert into order_line values (943, 1203, 'HWMSXXXX', '32MB SIMM EDO', 2, 35.99, 71.98);
insert into order_line values (944, 1216, 'SULSTO', 'HP4 new drum per warranty', 1, 0, 0);
insert into order_line values (944, 1217, 'SULSTO', 'HP4 toner refill', 2, 53.95, 107.9);
insert into order_line values (944, 1218, 'SULSTO', 'HP4 toner and drum', 4, 83.9, 335.6);
insert into order_line values (945, 1211, 'HWEXME', '32MB EDO RAM', 10, 36, 360);
insert into order_line values (946, 1212, 'SULSPP', 'Laser Paper', 10, 19.38, 193.8);
insert into order_line values (947, 1213, 'SULSTO', 'Ramanuf Toners', 4, 53.95, 215.8);
insert into order_line values (950, 1214, 'SULSTO', 'Remanf toner w/drum', 2, 83.9, 167.8);
insert into order_line values (951, 1219, 'SULSTO', 'Remanf Toner', 7, 53.95, 377.65);
insert into order_line values (951, 1220, 'SULSTO', 'Reamanf Toner w/ drum replace', 1, 53.95, 53.95);


insert into orders values (939, '11-NOV-15', NULL , NULL , 'CART', 8801, '(4) Remanuf toners', 0, 215.8, 5, '14-Nov-13', 'REC', 'LAB');
insert into orders values (940, '25-DEC-15', NULL, '245650', 'CART', '210559', '(1) HyperCam software', 0, 30, 5, NULL, 'OPEN', 'LAB');
insert into orders values (941, '31-DEC-15', NULL, '24650', 'DELL', '171114564', '(2) 32MB SIMM and DIMM for Dell @ Lab', 0, 110.4, 16, '03-Jan-14', 'REC', 'LAB');
insert into orders values (942, '01-JAN-16', NULL, NULL, 'LSREX', '8893', '(5) Remanuf', 0, 269.75, 17, '04-Jan-14', 'REC', 'LAB');
insert into orders values (943, '05-JAN-16', NULL, 245650, 'CART', 'C#638708', '(2) 32MB EDO SIMMS for Vektron NT test', 7.35, 79.33, 10, NULL, 'OPEN', 'LAB');
insert into orders values (944, '10-JAN-16', NULL, NULL , 'DELL', '8908', '(1) HP4 new drum, (2) HP4 toner refill, (4) HP4 toner+drum', 0, 443.5, 5, '11-Jan-14', 'REC', 'LAB');
insert into orders values (945, '10-JAN-16', NULL , 245650, 'CART',NULL , '(10) 32MB EDO RAM SIMMS', 12, 372, 6, NULL, 'OPEN', 'LAB');
insert into orders values (946, '12-JAN-16', NULL, NULL, 'COEX', '149363', '(10) 8 1/2 x 11 Laser Paper Boxes', 0, 193.8, 17, '13-Jan-14', 'REC', 'LAB');
insert into orders values (947, '20-JAN-16', NULL, NULL, 'DELL', '8842', '(4) Remanuf Toners', 0, 215.8, 7, '22-Jan-14', 'REC', 'LAB');
insert into orders values (950, '21-JAN-16', NULL, NULL, 'LSREX', '8856', '(2) Toner w/drum', 0, 167.8, 5, '22-Jan-14', 'REC', 'LAB');
insert into orders values (951, '24-JAN-16', NULL, NULL, 'CART', '8993', '(7) Remanf toners, (1) Toner w/ drum replace', 0, 431.6, 13, '26-Jan-14', 'REC', 'LAB');


insert into "USER" values (5, 'John', 'J.', 'Dean', '550-88-5555', 'ACTG', 'Assistant Marketing', '200 Oak St.', 'Murfreesboro', 'TN', '37132-0001', NULL, '(615) 556-8888', '120 Pool Rd.', 'Murfreesboro', 'TN', '37129', '(615) 896-9364', '(615) 303-2720', 'John@home.com', 'M', null, null, null);
insert into "USER" values (6, 'Kris', 'L.', 'Jim', '220-85-7770', 'ACTG', 'Manager', '200 Oak St.', 'Murfreesboro', 'TN', '37132', '(615) 870-1472', '(615) 552-8870', '502 Jane Ct.', 'Murfreesboro', 'TN', '37130', '(615) 871-1125', NULL, 'Jane@think.net', 'F', null, null, null);
insert into "USER" values (7, 'Helen', 'G.', 'Hunt', '470-58-2088', 'HUMAN', 'Clerk', '150 Lake St.', 'Murfreesboro', 'TN', '37132', NULL, '(615) 552-9500', '999 King St.', 'Smyrna', 'TN', '37125', '(615) 870-1144', '(615) 402-8900', 'H_333@home.com', 'F', null, null, null);
insert into "USER" values (9, 'Teresa', 'M.', 'Rudley', '440-55-7101', 'FIN', 'Manager', '200 Oak St.', 'Murfreesboro', 'TN', '37132', '(615) 870-1250', '(615) 552-7140', '230 Park Ave.', 'Murfreesboro', 'TN', '37133', '(615) 899-5581', NULL, 'Tere@noname.net', 'F', null, null, null);
insert into "USER" values (10, 'Bob', 'O.', 'George', '221-04-4728', 'R&D', 'Researcher', '200 Oak St.', 'Murfreesboro', 'TN', '37132', NULL, '(615) 552-8540', '55 Hill St.', 'Murfreesboro', 'TN', '37130', '(615) 980-7780', '(615) 325-8900', 'bob_2@gohome.com', 'M', null, null, null);
insert into "USER" values (12, 'Van', 'K.', 'Hamm', '254-02-5820', 'PAYR', 'Clerk', '150 Lake St.', 'Murfreesboro', 'TN', '37132', '', '(615) 552-8702', '1022 Unit Ave.', 'Murfreesboro', 'TN', '37130', '(615) 888-7711', '(615) 220-8900', 'V_han@hotmail.com', 'M', null, null, null);
insert into "USER" values (13, 'Kim', 'L.', 'Carlton', '447-05-8200', 'ACTG', 'Accountant', '200 Oak St.', 'Murfreesboro', 'TN', '37132', NULL, '(615) 552-8704', '2200 Phill Ct.', 'Murfreesboro', 'TN', '37128', '(615) 896-5520', '1252200252', 'Yiii@noname.com', 'F', null, null, null);
insert into "USER" values (14, 'Steven', 'B.', 'Tigger', '580-88-7158', 'ADV', 'Advertising Creator', '200 Oak St.', 'Murfreesboro', 'TN', '37132', NULL, '(615) 556-9802', '1102 McKnight St.', 'Murfreesboro', 'TN', '37129', '(615) 898-0525', '(615) 350-9800', 'Steve@hotmail.com', 'M', null, null, null);
insert into "USER" values (15, 'Ashley', 'P.', 'Folk', '587-08-7825', 'ACTG', 'Operator', '200 Oak St.', 'Murfreesboro', 'TN', '37132', '', '(615) 552-8220', '99 Jackson Rd.', 'Murfreesboro', 'TN', '37130', '(615) 890-5572', NULL, 'In_222@home.com', 'M', null, null, null);
insert into "USER" values (16, 'Paul', 'E.', 'Weed', '478-58-7878', 'SERV', 'Assistant Manager', '150 Lake St.', 'Murfreesboro', 'TN', '37132', '(615) 705-7777', '(615) 552-8871', '410 Lowe Ct.', 'Murfreesboro', 'TN', '37130', '(615) 898-1252', NULL, 'wlm_11@hotmail.com', 'M', null, null, null);
insert into "USER" values (17, 'Nancy', 'G.', 'Eaton', '350-88-7154', 'ACTG', 'Manager', '200 Oak St.', 'Murfreesboro', 'TN', '37132    ', '(615) 870-5870', '(615) 556-9804', '1185 Bill St.', 'Murfreesboro', 'TN', '37128', '(615) 890-7824', '(615) 238-7802', 'nancy@home.com', 'F', null, null, null);
insert into "USER" values (180, 'Jane', 'O', 'Keith', '909-09-090 ', 'ACTG', 'Clerk', '909', 'Lopp', 'OH', '90999', '399-0999', '909-9999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, null, null, null);


insert into vendor values ('CART', 'Cartridge Family', 'James Young', '110 Highland Dr.', 'Atlanta', 'GA', '77814', '(404) 558-7458', '(404) 528-5771', 'Young@catridge.com', 'J_900', 100, '(800) 857-0014', 'catridge.com');
insert into vendor values ('COEX', 'Corporate Express', 'Penny Henze', '508 South Military Trail', 'Deerfield Beach', 'FL', '33442', '(615) 726-4626', '(615) 255-4772', 'pennyhenze@cexp.com', 'ILM_677', 401, '(800) 537-5137', 'cexp.com');
insert into vendor values ('DELL', 'Dell Computer', 'Kim Berringer', '250 Main St.', 'Round Rock', 'TX', '78682', '(800) 781-5222', '(800) 842-5888', 'Customer@dell.com', 'MS-9093', 41140, '(800) 574-1425', 'dell.com');
insert into vendor values ('GLOBAL', 'Global Corporation', 'Michael Fox', '4744 Rock Rd.', 'Chicago', 'IL', '45787', '(800) 457-1555', '(800) 787-2421', 'Glo_333@geocities.com', 'OB_992', 454521, '(800) 454-1212', 'global.com');
insert into vendor values ('LSREX', 'Laser Express Company', 'Nicole Whether', '5540 Pine St.', 'Albany', 'NY', '41550', '(518) 454-7110', '(518) 575-4570', 'Janes@known.com', 'MM_3321', 781, '(800) 580-4712', 'laserexp.com');


