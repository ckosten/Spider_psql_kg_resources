BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Allergy_Type (
       Allergy 		  VARCHAR(20) PRIMARY KEY,
       AllergyType 	  VARCHAR(20)
);
INSERT INTO "Allergy_Type" VALUES('Eggs','food');
INSERT INTO "Allergy_Type" VALUES('Nuts','food');
INSERT INTO "Allergy_Type" VALUES('Milk','food');
INSERT INTO "Allergy_Type" VALUES('Shellfish','food');
INSERT INTO "Allergy_Type" VALUES('Anchovies','food');
INSERT INTO "Allergy_Type" VALUES('Wheat','food');
INSERT INTO "Allergy_Type" VALUES('Soy','food');
INSERT INTO "Allergy_Type" VALUES('Ragweed','environmental');
INSERT INTO "Allergy_Type" VALUES('Tree Pollen','environmental');
INSERT INTO "Allergy_Type" VALUES('Grass Pollen','environmental');
INSERT INTO "Allergy_Type" VALUES('Cat','animal');
INSERT INTO "Allergy_Type" VALUES('Dog','animal');
INSERT INTO "Allergy_Type" VALUES('Rodent','animal');
INSERT INTO "Allergy_Type" VALUES('Bee Stings','animal');
CREATE TABLE IF NOT EXISTS Has_Allergy (
       StuID 		 INTEGER,
       Allergy 		 VARCHAR(20),
       FOREIGN KEY(StuID) REFERENCES Student(StuID),
       FOREIGN KEY(Allergy) REFERENCES Allergy_Type(Allergy)
);
INSERT INTO "Has_Allergy" VALUES(1001,'Cat');
INSERT INTO "Has_Allergy" VALUES(1002,'Shellfish');
INSERT INTO "Has_Allergy" VALUES(1002,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1003,'Dog');
INSERT INTO "Has_Allergy" VALUES(1004,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1005,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1005,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1006,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1007,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1007,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1007,'Grass Pollen');
INSERT INTO "Has_Allergy" VALUES(1007,'Eggs');
INSERT INTO "Has_Allergy" VALUES(1007,'Milk');
INSERT INTO "Has_Allergy" VALUES(1007,'Shellfish');
INSERT INTO "Has_Allergy" VALUES(1007,'Anchovies');
INSERT INTO "Has_Allergy" VALUES(1007,'Cat');
INSERT INTO "Has_Allergy" VALUES(1007,'Dog');
INSERT INTO "Has_Allergy" VALUES(1009,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1010,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1010,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1010,'Grass Pollen');
INSERT INTO "Has_Allergy" VALUES(1010,'Eggs');
INSERT INTO "Has_Allergy" VALUES(1010,'Milk');
INSERT INTO "Has_Allergy" VALUES(1010,'Shellfish');
INSERT INTO "Has_Allergy" VALUES(1010,'Anchovies');
INSERT INTO "Has_Allergy" VALUES(1010,'Cat');
INSERT INTO "Has_Allergy" VALUES(1010,'Dog');
INSERT INTO "Has_Allergy" VALUES(1011,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1012,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1013,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1014,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1015,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1015,'Soy');
INSERT INTO "Has_Allergy" VALUES(1016,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1016,'Milk');
INSERT INTO "Has_Allergy" VALUES(1017,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1018,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1018,'Soy');
INSERT INTO "Has_Allergy" VALUES(1019,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1020,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1021,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1022,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1022,'Anchovies');
INSERT INTO "Has_Allergy" VALUES(1023,'Rodent');
INSERT INTO "Has_Allergy" VALUES(1023,'Cat');
INSERT INTO "Has_Allergy" VALUES(1023,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1024,'Ragweed');
INSERT INTO "Has_Allergy" VALUES(1024,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1025,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1026,'Grass Pollen');
INSERT INTO "Has_Allergy" VALUES(1027,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1028,'Tree Pollen');
INSERT INTO "Has_Allergy" VALUES(1029,'Soy');
INSERT INTO "Has_Allergy" VALUES(1029,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1029,'Eggs');
INSERT INTO "Has_Allergy" VALUES(1030,'Grass Pollen');
INSERT INTO "Has_Allergy" VALUES(1031,'Nuts');
INSERT INTO "Has_Allergy" VALUES(1031,'Shellfish');
INSERT INTO "Has_Allergy" VALUES(1031,'Soy');
CREATE TABLE IF NOT EXISTS Student (
        StuID        INTEGER PRIMARY KEY,
        LName        VARCHAR(12),
        Fname        VARCHAR(12),
        Age      INTEGER,
        Sex      VARCHAR(1),
        Major        INTEGER,
        Advisor      INTEGER,
        city_code    VARCHAR(3)
 );
INSERT INTO "Student" VALUES(1001,'Smith','Linda',18,'F',600,1121,'BAL');
INSERT INTO "Student" VALUES(1002,'Kim','Tracy',19,'F',600,7712,'HKG');
INSERT INTO "Student" VALUES(1003,'Jones','Shiela',21,'F',600,7792,'WAS');
INSERT INTO "Student" VALUES(1004,'Kumar','Dinesh',20,'M',600,8423,'CHI');
INSERT INTO "Student" VALUES(1005,'Gompers','Paul',26,'M',600,1121,'YYZ');
INSERT INTO "Student" VALUES(1006,'Schultz','Andy',18,'M',600,1148,'BAL');
INSERT INTO "Student" VALUES(1007,'Apap','Lisa',18,'F',600,8918,'PIT');
INSERT INTO "Student" VALUES(1008,'Nelson','Jandy',20,'F',600,9172,'BAL');
INSERT INTO "Student" VALUES(1009,'Tai','Eric',19,'M',600,2192,'YYZ');
INSERT INTO "Student" VALUES(1010,'Lee','Derek',17,'M',600,2192,'HOU');
INSERT INTO "Student" VALUES(1011,'Adams','David',22,'M',600,1148,'PHL');
INSERT INTO "Student" VALUES(1012,'Davis','Steven',20,'M',600,7723,'PIT');
INSERT INTO "Student" VALUES(1014,'Norris','Charles',18,'M',600,8741,'DAL');
INSERT INTO "Student" VALUES(1015,'Lee','Susan',16,'F',600,8721,'HKG');
INSERT INTO "Student" VALUES(1016,'Schwartz','Mark',17,'M',600,2192,'DET');
INSERT INTO "Student" VALUES(1017,'Wilson','Bruce',27,'M',600,1148,'LON');
INSERT INTO "Student" VALUES(1018,'Leighton','Michael',20,'M',600,1121,'PIT');
INSERT INTO "Student" VALUES(1019,'Pang','Arthur',18,'M',600,2192,'WAS');
INSERT INTO "Student" VALUES(1020,'Thornton','Ian',22,'M',520,7271,'NYC');
INSERT INTO "Student" VALUES(1021,'Andreou','George',19,'M',520,8722,'NYC');
INSERT INTO "Student" VALUES(1022,'Woods','Michael',17,'M',540,8722,'PHL');
INSERT INTO "Student" VALUES(1023,'Shieber','David',20,'M',520,8722,'NYC');
INSERT INTO "Student" VALUES(1024,'Prater','Stacy',18,'F',540,7271,'BAL');
INSERT INTO "Student" VALUES(1025,'Goldman','Mark',18,'M',520,7134,'PIT');
INSERT INTO "Student" VALUES(1026,'Pang','Eric',19,'M',520,7134,'HKG');
INSERT INTO "Student" VALUES(1027,'Brody','Paul',18,'M',520,8723,'LOS');
INSERT INTO "Student" VALUES(1028,'Rugh','Eric',20,'M',550,2311,'ROC');
INSERT INTO "Student" VALUES(1029,'Han','Jun',17,'M',100,2311,'PEK');
INSERT INTO "Student" VALUES(1030,'Cheng','Lisa',21,'F',550,2311,'SFO');
INSERT INTO "Student" VALUES(1031,'Smith','Sarah',20,'F',550,8772,'PHL');
INSERT INTO "Student" VALUES(1032,'Brown','Eric',20,'M',550,8772,'ATL');
INSERT INTO "Student" VALUES(1033,'Simms','William',18,'M',550,8772,'NAR');
INSERT INTO "Student" VALUES(1034,'Epp','Eric',18,'M',50,5718,'BOS');
INSERT INTO "Student" VALUES(1035,'Schmidt','Sarah',26,'F',50,5718,'WAS');
COMMIT;