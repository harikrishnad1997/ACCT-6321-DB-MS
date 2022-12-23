/* Database Systems, Coronel/Morris */
/* Type of SQL : Oracle */



CREATE TABLE AUTHOR (
AU_ID        NUMBER(7,0) PRIMARY KEY,
AU_FNAME     VARCHAR2(30) NOT NULL  ,
AU_LNAME     VARCHAR2(30) NOT NULL  ,
AU_BIRTHYEAR NUMBER(4)
);

CREATE TABLE PATRON (
PAT_ID      NUMBER(10,0) PRIMARY KEY,
PAT_FNAME   VARCHAR2(20) NOT NULL   ,
PAT_LNAME   VARCHAR2(20) NOT NULL   ,
PAT_TYPE    VARCHAR2(10) NOT NULL
);

CREATE TABLE BOOK (
BOOK_NUM   NUMBER(10,0) PRIMARY KEY,
BOOK_TITLE VARCHAR2(120) NOT NULL  ,
BOOK_YEAR  NUMBER(4)               ,
BOOK_COST  NUMBER(8,2)             ,
BOOK_SUBJECT VARCHAR2(120)         ,
PAT_ID    NUMBER(10) REFERENCES PATRON
);

CREATE TABLE CHECKOUT (
CHECK_NUM         NUMBER(15) PRIMARY KEY,
BOOK_NUM          NUMBER(10) REFERENCES BOOK,
PAT_ID            NUMBER(10) REFERENCES PATRON,
CHECK_OUT_DATE    DATE DEFAULT SYSDATE,
CHECK_DUE_DATE    DATE,
CHECK_IN_DATE     DATE
);

CREATE TABLE WRITES (
BOOK_NUM  NUMBER(10) REFERENCES BOOK,
AU_ID     NUMBER(7) REFERENCES AUTHOR,
CONSTRAINT WRITES_BOOK_AU_PK PRIMARY KEY (BOOK_NUM, AU_ID)
);

--AUTHOR rows
INSERT INTO AUTHOR VALUES (185, 'Benson', 'Reeves', 1990);
INSERT INTO AUTHOR VALUES (218, 'Rachel', 'Beatney', 1983);
INSERT INTO AUTHOR VALUES (229, 'Carmine', 'Salvadore', NULL);
INSERT INTO AUTHOR VALUES (251, 'Hugo', 'Bruer', 1972);
INSERT INTO AUTHOR VALUES (262, 'Xia', 'Chiang', NULL);
INSERT INTO AUTHOR VALUES (273, 'Reba', 'Durante', 1969);
INSERT INTO AUTHOR VALUES (284, 'Trina', 'Tankersly', 1961);
INSERT INTO AUTHOR VALUES (383, 'Neal', 'Walsh', 1980);
INSERT INTO AUTHOR VALUES (394, 'Robert', 'Lake', 1982);
INSERT INTO AUTHOR VALUES (438, 'Perry', 'Pearson', 1986);
INSERT INTO AUTHOR VALUES (460, 'Connie', 'Paulsen', 1983);
INSERT INTO AUTHOR VALUES (559, 'Rachel', 'McGill', NULL);
INSERT INTO AUTHOR VALUES (581, 'Manish', 'Aggerwal', 1984);
INSERT INTO AUTHOR VALUES (592, 'Lawrence', 'Sheel', 1976);
INSERT INTO AUTHOR VALUES (603, 'Julia', 'Palca', 1988);

--PATRON rows

INSERT INTO PATRON VALUES (1160, 'robert', 'carter', 'Faculty');
INSERT INTO PATRON VALUES (1161, 'Kelsey', 'Koch', 'Faculty');
INSERT INTO PATRON VALUES (1165, 'Cedric', 'Baldwin', 'Faculty');
INSERT INTO PATRON VALUES (1166, 'Vera', 'Alvarado', 'Student');
INSERT INTO PATRON VALUES (1167, 'Alan', 'Martin', 'FACULTY');
INSERT INTO PATRON VALUES (1170, 'Cory', 'Barry', 'faculty');
INSERT INTO PATRON VALUES (1171, 'Peggy', 'Marsh', 'STUDENT');
INSERT INTO PATRON VALUES (1172, 'Tony', 'Miles', 'STUDENT');
INSERT INTO PATRON VALUES (1174, 'Betsy', 'Malone', 'STUDENT');
INSERT INTO PATRON VALUES (1180, 'Nadine', 'Blair', 'STUDENT');
INSERT INTO PATRON VALUES (1181, 'Allen', 'Horne', 'Student');
INSERT INTO PATRON VALUES (1182, 'Jamal', 'Melendez', 'STUDENT');
INSERT INTO PATRON VALUES (1183, 'Helena', 'Hughes', 'Faculty');
INSERT INTO PATRON VALUES (1184, 'Jimmie', 'Love', 'StudenT');
INSERT INTO PATRON VALUES (1185, 'Sandra', 'Yang', 'student');
INSERT INTO PATRON VALUES (1200, 'Lorenzo', 'Torres', 'Student');
INSERT INTO PATRON VALUES (1201, 'Shelby', 'Noble', 'Student');
INSERT INTO PATRON VALUES (1202, 'Holly', 'Anthony', 'Student');
INSERT INTO PATRON VALUES (1203, 'Tyler', 'Pope', 'STUDENT');
INSERT INTO PATRON VALUES (1204, 'Thomas', 'Duran', 'Student');
INSERT INTO PATRON VALUES (1205, 'Claire', 'Gomez', 'student');
INSERT INTO PATRON VALUES (1207, 'Iva', 'Ramos', 'Student');
INSERT INTO PATRON VALUES (1208, 'Ollie', 'Cantrell', 'Student');
INSERT INTO PATRON VALUES (1209, 'Rena', 'Mathis', 'Student');
INSERT INTO PATRON VALUES (1210, 'Keith', 'Cooley', 'STUdent');
INSERT INTO PATRON VALUES (1211, 'Jerald', 'Gaines', 'Student');
INSERT INTO PATRON VALUES (1212, 'Iva', 'McClain', 'Student');
INSERT INTO PATRON VALUES (1213, 'Desiree', 'Rivas', 'Student');
INSERT INTO PATRON VALUES (1214, 'Marina', 'King', 'Student');
INSERT INTO PATRON VALUES (1215, 'Maureen', 'Downs', 'Student');
INSERT INTO PATRON VALUES (1218, 'Angel', 'Terrell', 'Student');
INSERT INTO PATRON VALUES (1219, 'Desiree', 'Harrington', 'Student');
INSERT INTO PATRON VALUES (1220, 'Carlton', 'Morton', 'Student');
INSERT INTO PATRON VALUES (1221, 'Gloria', 'Pitts', 'Student');
INSERT INTO PATRON VALUES (1222, 'Zach', 'Kelly', 'Student');
INSERT INTO PATRON VALUES (1223, 'Jose', 'Hays', 'Student');
INSERT INTO PATRON VALUES (1224, 'Jewel', 'England', 'Student');
INSERT INTO PATRON VALUES (1225, 'Wilfred', 'Fuller', 'Student');
INSERT INTO PATRON VALUES (1226, 'Jeff', 'Owens', 'Student');
INSERT INTO PATRON VALUES (1227, 'Alicia', 'Dickson', 'Student');
INSERT INTO PATRON VALUES (1228, 'Homer', 'Goodman', 'Student');
INSERT INTO PATRON VALUES (1229, 'Gerald', 'Burke', 'Student');
INSERT INTO PATRON VALUES (1237, 'Brandi', 'Larson', 'Student');
INSERT INTO PATRON VALUES (1238, 'Erika', 'Bowen', 'Student');
INSERT INTO PATRON VALUES (1239, 'Elton', 'Irwin', 'Student');
INSERT INTO PATRON VALUES (1240, 'Jan', 'Joyce', 'Student');
INSERT INTO PATRON VALUES (1241, 'Irene', 'West', 'Student');
INSERT INTO PATRON VALUES (1242, 'Mario', 'King', 'Student');
INSERT INTO PATRON VALUES (1243, 'Roberto', 'Kennedy', 'Student');
INSERT INTO PATRON VALUES (1244, 'Leon', 'Richmond', 'Student');

--BOOK rows

INSERT INTO BOOK VALUES (5235, 'Beginner''s Guide to JAVA', 2012, 59.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5236, 'Database in the Cloud', 2012, 79.95, 'Cloud', NULL);
INSERT INTO BOOK VALUES (5237, 'Mastering the database environment', 2013, 89.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5238, 'Conceptual Programming', 2013, 59.95, 'Programming', 1229);
INSERT INTO BOOK VALUES (5239, 'J++ in Mobile Apps', 2013, 49.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5240, 'iOS Programming', 2013, 79.95, 'Programming', 1212);
INSERT INTO BOOK VALUES (5241, 'JAVA First Steps', 2013, 49.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5242, 'C# in Middleware Deployment', 2013, 59.95, 'Middleware', 1228);
INSERT INTO BOOK VALUES (5243, 'DATABASES in Theory', 2013, 129.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5244, 'Cloud-based Mobile Applications', 2013, 69.95, 'Cloud', NULL);
INSERT INTO BOOK VALUES (5245, 'The Golden Road to Platform independence', 2014, 119.95, 'Middleware', NULL);
INSERT INTO BOOK VALUES (5246, 'Capture the Cloud', 2014, 69.95, 'Cloud', 1172);
INSERT INTO BOOK VALUES (5247, 'Shining Through the Cloud: Sun Programming', 2014, 109.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5248, 'What You Always Wanted to Know About Database, But Were Afraid to Ask', 2014, 49.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5249, 'Starlight Applications', 2014, 69.95, 'Cloud', 1207);
INSERT INTO BOOK VALUES (5250, 'Reengineering the Middle Tier', 2014, 89.95, 'Middleware', NULL);
INSERT INTO BOOK VALUES (5251, 'Thoughts on Revitalizing Ruby', 2014, 59.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5252, 'Beyond the Database Veil', 2014, 69.95, 'Database', 1229);
INSERT INTO BOOK VALUES (5253, 'Virtual Programming for Virtual Environments', 2014, 79.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5254, 'Coding Style for Maintenance', 2015, 49.95, 'Programming', NULL);

--WRITES rows

INSERT INTO WRITES VALUES (5235, 273);
INSERT INTO WRITES VALUES (5236, 383);
INSERT INTO WRITES VALUES (5237, 185);
INSERT INTO WRITES VALUES (5238, 603);
INSERT INTO WRITES VALUES (5239, 229);
INSERT INTO WRITES VALUES (5239, 460);
INSERT INTO WRITES VALUES (5239, 592);
INSERT INTO WRITES VALUES (5240, 218);
INSERT INTO WRITES VALUES (5241, 460);
INSERT INTO WRITES VALUES (5241, 559);
INSERT INTO WRITES VALUES (5242, 581);
INSERT INTO WRITES VALUES (5243, 251);
INSERT INTO WRITES VALUES (5244, 262);
INSERT INTO WRITES VALUES (5244, 284);
INSERT INTO WRITES VALUES (5245, 394);
INSERT INTO WRITES VALUES (5246, 251);
INSERT INTO WRITES VALUES (5247, 394);
INSERT INTO WRITES VALUES (5248, 229);
INSERT INTO WRITES VALUES (5249, 262);
INSERT INTO WRITES VALUES (5250, 383);
INSERT INTO WRITES VALUES (5250, 438);
INSERT INTO WRITES VALUES (5251, 460);
INSERT INTO WRITES VALUES (5252, 262);
INSERT INTO WRITES VALUES (5253, 185);
INSERT INTO WRITES VALUES (5254, 559);

--CHECKOUT rows
INSERT INTO CHECKOUT VALUES (91001, 5235, 1165, '31-MAR-15', '14-APR-15', '09-APR-15');
INSERT INTO CHECKOUT VALUES (91002, 5238, 1209, '31-MAR-15', '07-APR-15', '05-APR-15');
INSERT INTO CHECKOUT VALUES (91003, 5240, 1160, '31-MAR-15', '14-APR-15', '09-APR-15');
INSERT INTO CHECKOUT VALUES (91004, 5237, 1160, '31-MAR-15', '14-APR-15', '03-APR-15');
INSERT INTO CHECKOUT VALUES (91005, 5236, 1202, '31-MAR-15', '07-APR-15', '08-APR-15');
INSERT INTO CHECKOUT VALUES (91006, 5235, 1203, '05-APR-15', '12-APR-15', '13-APR-15');
INSERT INTO CHECKOUT VALUES (91007, 5244, 1174, '05-APR-15', '12-APR-15', '08-APR-15');
INSERT INTO CHECKOUT VALUES (91008, 5248, 1181, '05-APR-15', '12-APR-15', '06-APR-15');
INSERT INTO CHECKOUT VALUES (91009, 5242, 1170, '05-APR-15', '19-APR-15', '09-APR-15');
INSERT INTO CHECKOUT VALUES (91010, 5235, 1161, '05-APR-15', '19-APR-15', '05-APR-15');
INSERT INTO CHECKOUT VALUES (91011, 5236, 1181, '05-APR-15', '12-APR-15', '11-APR-15');
INSERT INTO CHECKOUT VALUES (91012, 5249, 1181, '08-APR-15', '15-APR-15', '12-APR-15');
INSERT INTO CHECKOUT VALUES (91013, 5240, 1160, '10-APR-15', '24-APR-15', '19-APR-15');
INSERT INTO CHECKOUT VALUES (91014, 5236, 1204, '11-APR-15', '18-APR-15', '19-APR-15');
INSERT INTO CHECKOUT VALUES (91015, 5237, 1204, '11-APR-15', '18-APR-15', '13-APR-15');
INSERT INTO CHECKOUT VALUES (91016, 5236, 1183, '13-APR-15', '27-APR-15', '14-APR-15');
INSERT INTO CHECKOUT VALUES (91017, 5240, 1184, '14-APR-15', '21-APR-15', '22-APR-15');
INSERT INTO CHECKOUT VALUES (91018, 5236, 1170, '14-APR-15', '28-APR-15', '14-APR-15');
INSERT INTO CHECKOUT VALUES (91019, 5246, 1171, '14-APR-15', '21-APR-15', '17-APR-15');
INSERT INTO CHECKOUT VALUES (91020, 5254, 1185, '16-APR-15', '23-APR-15', '23-APR-15');
INSERT INTO CHECKOUT VALUES (91021, 5238, 1185, '16-APR-15', '23-APR-15', '21-APR-15');
INSERT INTO CHECKOUT VALUES (91022, 5252, 1171, '16-APR-15', '23-APR-15', '19-APR-15');
INSERT INTO CHECKOUT VALUES (91023, 5249, 1207, '16-APR-15', '23-APR-15', '19-APR-15');
INSERT INTO CHECKOUT VALUES (91024, 5235, 1209, '21-APR-15', '28-APR-15', '29-APR-15');
INSERT INTO CHECKOUT VALUES (91025, 5246, 1172, '21-APR-15', '28-APR-15', '27-APR-15');
INSERT INTO CHECKOUT VALUES (91026, 5254, 1161, '21-APR-15', '04-MAY-15', '26-APR-15');
INSERT INTO CHECKOUT VALUES (91027, 5243, 1161, '21-APR-15', '04-MAY-15', '26-APR-15');
INSERT INTO CHECKOUT VALUES (91028, 5236, 1183, '22-APR-15', '05-MAY-15', '30-APR-15');
INSERT INTO CHECKOUT VALUES (91029, 5244, 1203, '22-APR-15', '29-APR-15', '26-APR-15');
INSERT INTO CHECKOUT VALUES (91030, 5242, 1207, '22-APR-15', '29-APR-15', '30-APR-15');
INSERT INTO CHECKOUT VALUES (91031, 5252, 1165, '23-APR-15', '06-MAY-15', '30-APR-15');
INSERT INTO CHECKOUT VALUES (91032, 5238, 1172, '23-APR-15', '30-APR-15', '26-APR-15');
INSERT INTO CHECKOUT VALUES (91033, 5235, 1174, '23-APR-15', '30-APR-15', '23-APR-15');
INSERT INTO CHECKOUT VALUES (91034, 5240, 1185, '23-APR-15', '30-APR-15', '01-MAY-15');
INSERT INTO CHECKOUT VALUES (91035, 5248, 1165, '24-APR-15', '07-MAY-15', '25-APR-15');
INSERT INTO CHECKOUT VALUES (91036, 5237, 1202, '24-APR-15', '30-APR-15', '28-APR-15');
INSERT INTO CHECKOUT VALUES (91037, 5235, 1210, '28-APR-15', '04-MAY-15', '01-MAY-15');
INSERT INTO CHECKOUT VALUES (91038, 5238, 1215, '28-APR-15', '04-MAY-15', '30-APR-15');
INSERT INTO CHECKOUT VALUES (91039, 5240, 1222, '28-APR-15', '04-MAY-15', '06-MAY-15');
INSERT INTO CHECKOUT VALUES (91040, 5237, 1228, '28-APR-15', '04-MAY-15', '05-MAY-15');
INSERT INTO CHECKOUT VALUES (91041, 5236, 1211, '28-APR-15', '04-MAY-15', '30-APR-15');
INSERT INTO CHECKOUT VALUES (91042, 5235, 1220, '29-APR-15', '05-MAY-15', '05-MAY-15');
INSERT INTO CHECKOUT VALUES (91043, 5244, 1226, '29-APR-15', '05-MAY-15', '07-MAY-15');
INSERT INTO CHECKOUT VALUES (91044, 5248, 1219, '30-APR-15', '07-MAY-15', '08-MAY-15');
INSERT INTO CHECKOUT VALUES (91045, 5242, 1210, '30-APR-15', '07-MAY-15', '04-MAY-15');
INSERT INTO CHECKOUT VALUES (91046, 5235, 1225, '30-APR-15', '07-MAY-15', '03-MAY-15');
INSERT INTO CHECKOUT VALUES (91047, 5236, 1218, '30-APR-15', '07-MAY-15', '07-MAY-15');
INSERT INTO CHECKOUT VALUES (91048, 5249, 1229, '04-MAY-15', '11-MAY-15', '06-MAY-15');
INSERT INTO CHECKOUT VALUES (91049, 5240, 1214, '04-MAY-15', '11-MAY-15', '04-MAY-15');
INSERT INTO CHECKOUT VALUES (91050, 5236, 1220, '08-MAY-15', '15-MAY-15', '13-MAY-15');
INSERT INTO CHECKOUT VALUES (91051, 5237, 1222, '08-MAY-15', '15-MAY-15', '15-MAY-15');
INSERT INTO CHECKOUT VALUES (91052, 5236, 1213, '08-MAY-15', '15-MAY-15', '08-MAY-15');
INSERT INTO CHECKOUT VALUES (91053, 5240, 1212, '09-MAY-15', '16-MAY-15', NULL);
INSERT INTO CHECKOUT VALUES (91054, 5236, 1221, '09-MAY-15', '16-MAY-15', '11-MAY-15');
INSERT INTO CHECKOUT VALUES (91055, 5246, 1221, '09-MAY-15', '16-MAY-15', '10-MAY-15');
INSERT INTO CHECKOUT VALUES (91056, 5254, 1224, '10-MAY-15', '17-MAY-15', '15-MAY-15');
INSERT INTO CHECKOUT VALUES (91057, 5238, 1224, '10-MAY-15', '17-MAY-15', '11-MAY-15');
INSERT INTO CHECKOUT VALUES (91058, 5252, 1171, '10-MAY-15', '17-MAY-15', '15-MAY-15');
INSERT INTO CHECKOUT VALUES (91059, 5249, 1207, '10-MAY-15', '17-MAY-15', NULL);
INSERT INTO CHECKOUT VALUES (91060, 5235, 1209, '15-MAY-15', '22-MAY-15', '18-MAY-15');
INSERT INTO CHECKOUT VALUES (91061, 5246, 1172, '15-MAY-15', '22-MAY-15', NULL);
INSERT INTO CHECKOUT VALUES (91062, 5254, 1223, '15-MAY-15', '22-MAY-15', '16-MAY-15');
INSERT INTO CHECKOUT VALUES (91063, 5243, 1223, '15-MAY-15', '22-MAY-15', '20-MAY-15');
INSERT INTO CHECKOUT VALUES (91064, 5236, 1183, '17-MAY-15', '31-MAY-15', '21-MAY-15');
INSERT INTO CHECKOUT VALUES (91065, 5244, 1210, '17-MAY-15', '24-MAY-15', '17-MAY-15');
INSERT INTO CHECKOUT VALUES (91066, 5242, 1228, '19-MAY-15', '26-MAY-15', NULL);
INSERT INTO CHECKOUT VALUES (91067, 5252, 1229, '24-MAY-15', '31-MAY-15', NULL);
INSERT INTO CHECKOUT VALUES (91068, 5238, 1229, '24-MAY-15', '31-MAY-15', NULL);






