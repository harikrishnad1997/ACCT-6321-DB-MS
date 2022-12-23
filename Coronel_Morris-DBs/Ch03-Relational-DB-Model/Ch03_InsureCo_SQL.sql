/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */


CREATE TABLE AGENT (
AGENT_CODE int,
AGENT_LNAME varchar(15),
AGENT_FNAME varchar(15),
AGENT_INITIAL varchar(1),
AGENT_AREACODE varchar(3),
AGENT_PHONE varchar(8),
AGENT_ADDRESS varchar(30),
AGENT_CITY varchar(15),
AGENT_STATE varchar(2),
AGENT_ZIP varchar(5),
AGENT_DATE_HIRED datetime,
AGENT_YTD_PAY numeric,
AGENT_YTD_FIT numeric,
AGENT_YTD_FICA numeric,
AGENT_YTD_SLS numeric,
AGENT_DEP int
);
INSERT INTO AGENT VALUES('501','Alby','Alex','B','713','228-1249','123 Pleasant View Dr.','Nashville','TN','37119','11/1/2000','26566.24','6641.56','2125.3','132735.75','3');
INSERT INTO AGENT VALUES('502','Hahn','Leah','F','615','882-1244','334 East Main Street','Louisville','KY','25246','5/23/1986','32213.76','8053.44','2577.1','138967.35','0');
INSERT INTO AGENT VALUES('503',' Okon','John','T','615','123-5589','452 Technology Circle','Oak Ridge','TN','36155','6/15/2005','23198.29','5799.57','1855.86','127093.45','2');


/* -- */

CREATE TABLE CUSTOMER (
CUS_CODE int,
CUS_LNAME varchar(15),
CUS_FNAME varchar(15),
CUS_INITIAL varchar(1),
CUS_AREACODE varchar(3),
CUS_PHONE varchar(8),
CUS_RENEW_DATE datetime,
AGENT_CODE int
);

INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573','4/5/2016','502');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238','6/16/2016','501');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285','1/29/2017','502');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180','10/14/2016',NULL);
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672','12/28/2016','501');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381','9/22/2016','503');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228','3/25/2017','502');
INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556','7/17/2016','503');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185','12/3/2016','501');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809','3/14/2017','503');