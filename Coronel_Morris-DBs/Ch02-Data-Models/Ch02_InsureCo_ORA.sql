/* Created with SQL Script Builder v.1.5 */
/* Type of SQL : Oracle */

ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

CREATE TABLE AGENT (
AGENT_CODE integer,
AGENT_LNAME varchar2(15),
AGENT_FNAME varchar2(15),
AGENT_INITIAL varchar2(1),
AGENT_AREACODE varchar2(3),
AGENT_PHONE varchar2(8),
AGENT_ADDRESS varchar2(30),
AGENT_CITY varchar2(15),
AGENT_STATE varchar2(2),
AGENT_ZIP varchar2(5),
AGENT_DATE_HIRED date,
AGENT_YTD_PAY number,
AGENT_YTD_FIT number,
AGENT_YTD_FICA number,
AGENT_YTD_SLS number,
AGENT_DEP integer
);
INSERT INTO AGENT VALUES('501','Alby','Alex','B','713',
'228-1249','123 Pleasant View Dr.','Nashville','TN','37119',
'11/1/2000','26566.24','6641.56','2125.3','132735.75','3');
INSERT INTO AGENT VALUES('502','Hahn','Leah','F','615',
'882-1244','334 East Main Street','Louisville','KY','25246',
'5/23/1986','32213.76','8053.44','2577.1','138967.35','0');
INSERT INTO AGENT VALUES('503',' Okon','John','T','615',
'123-5589','452 Technology Circle','Oak Ridge','TN','36155',
'6/15/2005','23198.29','5799.57','1855.86','127093.45','2');


/* Created with SQL Script Builder v.1.5 */


CREATE TABLE CUSTOMER (
CUS_CODE integer,
CUS_LNAME varchar2(15),
CUS_FNAME varchar2(15),
CUS_INITIAL varchar2(1),
CUS_AREACODE varchar2(3),
CUS_PHONE varchar2(8),
CUS_RENEW_DATE date,
AGENT_CODE integer
);

INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573','4/5/2016','502');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238','6/16/2016','501');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285','1/29/2017','502');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180','10/14/2016','502');
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672','12/28/2017','501');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381','9/22/2016','503');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228','3/25/2017','502');
INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556','7/17/2016','503');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185','12/3/2016','501');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809','3/14/2017','503');
