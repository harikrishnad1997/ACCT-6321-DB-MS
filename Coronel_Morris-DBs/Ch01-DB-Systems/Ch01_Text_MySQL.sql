//* Database Systems, Coronel/Morris */
/* Type of SQL : MySQL */


/* -- */

CREATE TABLE AGENT (
A_NAME varchar(15),
A_PHONE varchar(12),
A_ADDRESS varchar(20),
ZIP varchar(5),
HIRED datetime,
YTD_PAY numeric(10,2),
YTD_FIT numeric(10,2),
YTD_FICA numeric(10,2),
YTD_SLS numeric(10,2),
DEP int)
ENGINE = InnoDB;

INSERT INTO AGENT VALUES('Alex B. Alby','713-228-1249','123 Toll, Nash, TN','37119','2000-11-1','26566.24','6641.56','2125.3','132735.75','3');
INSERT INTO AGENT VALUES('Leah F. Hahn','615-882-1244','334 Main, Fox, KY','25246','1986-5-23','32213.76','8053.44','2577.1','138967.35','0');
INSERT INTO AGENT VALUES('John T. Okon','615-123-5589','452 Elm, New, TN','36155','2005-6-15','23198.29','5799.57','1855.86','127093.45','2');

/* -- */

CREATE TABLE CUSTOMER (
C_NAME varchar(20),
C_PHONE varchar(12),
C_ADDRESS varchar(30),
C_ZIP varchar(5),
A_NAME varchar(20),
A_PHONE varchar(12),
TP varchar(2),
AMT numeric(6,2),
REN datetime)
ENGINE = InnoDB;

INSERT INTO CUSTOMER VALUES('Alfred A. Ramas','615-844-2573','218 Fork Rd., Babs, TN','36123','Leah F. Hahn','615-882-1244','T1','100','2016-4-5');
INSERT INTO CUSTOMER VALUES('Leona K. Dunne','713-894-1238','Box 12A, Fox, KY','25246','Alex B. Alby','713-228-1249','T1','250','2016-6-16');
INSERT INTO CUSTOMER VALUES('Kathy W. Smith','615-894-2285','125 Oak Ln, Babs, TN','36123','Leah F. Hahn','615-882-2144','S2','150','2017-1-29');
INSERT INTO CUSTOMER VALUES('Paul F. Olowski','615-894-2180','217 Lee Ln., Babs, TN','36123','Leah F. Hahn','615-882-1244','S1','300','2016-10-14');
INSERT INTO CUSTOMER VALUES('Myron Orlando','615-222-1672','Box 111, New, TN','36155','Alex B. Alby','713-228-1249','T1','100','2016-12-28');
INSERT INTO CUSTOMER VALUES('Amy B. O''Brian','713-442-3381','387 Troll Dr., Fox, KY','25246','John T. Okon','615-123-5589','T2','850','2016-9-22');
INSERT INTO CUSTOMER VALUES('James G. Brown','615-297-1228','21 Tye Rd., Nash, TN','37118','Leah F. Hahn','615-882-1244','S1','120','2017-3-25');
INSERT INTO CUSTOMER VALUES('George Williams','615-290-2556','155 Maple, Nash, TN','37119','John T. Okon','615-123-5589','S1','250','2016-7-17');
INSERT INTO CUSTOMER VALUES('Anne G. Farriss','713-382-7185','2119 Elm, Crew, KY','25432','Alex B. Alby','713-228-1249','T2','100','2016-12-3');
INSERT INTO CUSTOMER VALUES('Olette K. Smith','615-297-3809','2782 Main, Nash, TN','37118','John T. Okon','615-123-5589','S2','500','2017-3-14');

