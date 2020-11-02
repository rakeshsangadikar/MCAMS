CREATE TABLE User_Master(User_Id NUMBER(6) PRIMARY KEY, User_Password VARCHAR2(20), Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER(6), Updated_On DATE);

CREATE SEQUENCE userSeq START WITH 100000;

INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'admin',000000,SYSDATE,000000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'yogesh123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'rakesh123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'sumit123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'aayush1123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'aayush2123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'pooja123',100000,SYSDATE,100000,SYSDATE);
INSERT INTO User_Master VALUES(userSeq.NEXTVAL,'komal123',100000,SYSDATE,100000,SYSDATE);

COMMIT;

=============================================================================================================================================================================================================================================================================================================================

CREATE TABLE MusicSociety_Master(Composer_MusicSocietyID CHAR(3) PRIMARY KEY, Composer_MusicSocietyName VARCHAR2(50));

INSERT INTO MusicSociety_Master VALUES('ARR','T-Series');
INSERT INTO MusicSociety_Master VALUES('AMI','Motion Pictures');
INSERT INTO MusicSociety_Master VALUES('BUR','Music Author Copyright Production');
INSERT INTO MusicSociety_Master VALUES('NAU','InterNational Music License Authority ');
INSERT INTO MusicSociety_Master VALUES('MOH','Indian Performing Rights Organisation');
INSERT INTO MusicSociety_Master VALUES('SAL','Motion Pictures');
INSERT INTO MusicSociety_Master VALUES('LAT','Motion Pictures');
INSERT INTO MusicSociety_Master VALUES('ANU','T-Series');
INSERT INTO MusicSociety_Master VALUES('LHR','Indian Performing Rights Organisation');
INSERT INTO MusicSociety_Master VALUES('PTM','T-Series');
INSERT INTO MusicSociety_Master VALUES('MAN','Indian Performing Rights Organisation');
INSERT INTO MusicSociety_Master VALUES('RAJ','Haryanvi MAkhol');

=============================================================================================================================================================================================================================================================================================================================



CREATE TABLE Composer_Master(Composer_Id NUMBER(6) PRIMARY KEY, Composer_Name VARCHAR2(50), Composer_BornDate DATE, Composer_DiedDate DATE, Composer_CaeipiNumber VARCHAR2(10), Composer_MusicSocietyID CHAR(3) REFERENCES MusicSociety_Master(Composer_MusicSocietyID), Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER(6), Updated_On DATE, Composer_DeletedFlag NUMBER(1));

CREATE SEQUENCE composerSeq START WITH 200001;

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'A.R. Rehman','06-JAN-1967',NULL,'ARR101','ARR',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Amit Trivedi','08-APR-1979',NULL,'AMI102','AMI',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'R.D. Burman','27-JUN-1939','04-JAN-1994','BUR103','BUR',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Naushad','26-DEC-1919','05-MAY-2006','NAU104','NAU',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Madan Mohan','25-JUN-1924','14-JUL-1975','MOH105','MOH',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Salil Chowdhary','19-NOV-1923','05-SEP-1995','SAL106','SAL',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Lata Mangeshkar','28-SEP-1929',NULL,'LATA107','LAT',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Anu Malik','02-NOV-1960',NULL,'ANU108','ANU',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Bappi Lehri','27-NOV-1952',NULL,'LEHRI109','LHR',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Pritam Chakraborty','14-JUN-1971',NULL,'PRITAM110','PTM',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Manoj Tiwari','14-JUN-1972',NULL,'MANOJ111','MAN',100000,SYSDATE,100000,SYSDATE,0);

INSERT INTO Composer_Master VALUES(composerSeq.NEXTVAL,'Raju Punjabi','14-JUN-1989',NULL,'RAJU112','RAJ',100000,SYSDATE,100000,SYSDATE,0);

=============================================================================================================================================================================================================================================================================================================================

CREATE TABLE Song_Master(Song_Id NUMBER(6) PRIMARY KEY, Song_Name VARCHAR2(50), Song_Duration TIMESTAMP, Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER(6), Updated_On DATE, Song_DeletedFlag NUMBER(1));

CREATE SEQUENCE songSeq START WITH 300001;

INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Urvashi-Urvashi','01-APR-1994 01:05:09',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Tod Diya Dil Mera','01-APR-1994 01:04:19',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Tute Hue Khwabo Mai','01-APR-1994 01:02:29',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Jhumka Gira re','01-APR-1994 01:04:09',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'O La La','01-APR-1994 01:05:19',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Ucchi h Building','01-APR-1994 10:05:29',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Lag jaa Gale','01-APR-1994 01:06:09',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Chura liya ne jo dil ko','01-APR-1994 01:07:01',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Ilahi','01-APR-1994 01:06:26',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Kunfaya Kun','01-APR-1994 02:08:05',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Rinkiya Ke Papa','01-APR-1994 06:08:05',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Song_Master VALUES(songSeq.NEXTVAL,'Desi Desi Na Bolya Kar Chori R','01-APR-1994 05:08:05',100000,SYSDATE,100000,SYSDATE,0);

=============================================================================================================================================================================================================================================================================================================================

CREATE TABLE Artist_Master(Artist_Id NUMBER(6) PRIMARY KEY, Artist_Name VARCHAR2(50), Artist_BornDate DATE, Artist_DiedDate DATE, Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER(6), Updated_On DATE, Artist_DeletedFlag NUMBER(1));

CREATE SEQUENCE artistSeq START WITH 400001;

INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Atif Aslam','12-MAR-1983',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Arijit Singh','25-APR-1987',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Rahat Fatah Ali Khan','09-DEC-1974',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Asha Bhosle','08-SEP-1933',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Kishore Kumar','04-AUG-1929','13-OCT-1997',100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Kumar Sanu','20-OCT-1957',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Neha Kakkar','06-JUN-1988',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Neeti Mohan','18-NOV-1979',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Sapna Chowdhary','25-SEP-1990',NULL,100000,SYSDATE,100000,SYSDATE,0);
INSERT INTO Artist_Master VALUES(artistSeq.NEXTVAL,'Parmish Verma','03-JUL-1990',NULL,100000,SYSDATE,100000,SYSDATE,0);

=============================================================================================================================================================================================================================================================================================================================

CREATE TABLE Artist_Song_Assoc(Song_Id NUMBER(6), Artist_Id NUMBER(6), Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER(6), Updated_On DATE);


INSERT INTO Artist_Song_Assoc VALUES(300001,400001,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300002,400002,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300003,400003,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300004,400004,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300005,400005,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300006,400006,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300007,400007,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300008,400008,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300009,400009,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Artist_Song_Assoc VALUES(300010,400010,100000,SYSDATE,100000,SYSDATE);

=============================================================================================================================================================================================================================================================================================================================
CREATE TABLE Composer_Song_Assoc(Song_Id NUMBER(6), Composer_Id NUMBER(6), Created_By NUMBER(6), Created_On DATE, Updated_By NUMBER, Updated_On DATE);

INSERT INTO Composer_Song_Assoc VALUES(300001,200001,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300002,200002,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300003,200003,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300004,200004,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300005,200005,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300006,200006,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300007,200007,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300008,200008,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300009,200009,100000,SYSDATE,100000,SYSDATE);
INSERT INTO Composer_Song_Assoc VALUES(300010,200010,100000,SYSDATE,100000,SYSDATE);

=============================================================================================================================================================================================================================================================================================================================


COMMIT;