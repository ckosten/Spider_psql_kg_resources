BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "climber" (
"Climber_ID" int,
"Name" text,
"Country" text,
"Time" text,
"Points" real,
"Mountain_ID" int,
PRIMARY KEY ("Climber_ID"),
FOREIGN KEY ("Mountain_ID") REFERENCES "mountain"("Mountain_ID")
);
INSERT INTO "climber" VALUES(1,'Klaus Enders','West Germany','1:13.05.6',15.0,1);
INSERT INTO "climber" VALUES(2,'Siegfried Schauzu','West Germany','1:14.56.4',12.0,1);
INSERT INTO "climber" VALUES(3,'Hans Luthringhauser','West Germany','1:16.58.0',10.0,2);
INSERT INTO "climber" VALUES(4,'Jean Claude Castella','Switzerland','1:17.16.0',8.0,2);
INSERT INTO "climber" VALUES(5,'Horst Owesle','West Germany','1:17.22.0',6.0,2);
INSERT INTO "climber" VALUES(6,'Georg Auerbacher','West Germany','1:18.14.6',5.0,3);
INSERT INTO "climber" VALUES(7,'Arseneus Butscher','West Germany','1:21.35.6',4.0,5);
INSERT INTO "climber" VALUES(8,'Charlie Freedman','United Kingdom','1:25.02.8',3.0,5);
INSERT INTO "climber" VALUES(9,'L Currie','United Kingdom','1:25.40.6',2.0,7);
INSERT INTO "climber" VALUES(10,'Mick Horsepole','United Kingdom','1:27.28.8',1.0,7);
CREATE TABLE IF NOT EXISTS "mountain" (
"Mountain_ID" int,
"Name" text,
"Height" real,
"Prominence" real,
"Range" text,
"Country" text,
PRIMARY KEY ("Mountain_ID")
);
INSERT INTO "mountain" VALUES(1,'Kibo (Uhuru Pk)',5895.0,5885.0,'Kilimanjaro','Tanzania');
INSERT INTO "mountain" VALUES(2,'Mount Kenya (Batian)',5199.0,3825.0,'Mount Kenya','Kenya');
INSERT INTO "mountain" VALUES(3,'Mawenzi (Hans Meyer Pk)',5148.0,850.0,'Kilimanjaro','Tanzania');
INSERT INTO "mountain" VALUES(4,'Ngaliema / Mt Stanley (Margherita Pk)',5109.0,3951.0,'Rwenzori','DR Congo Uganda');
INSERT INTO "mountain" VALUES(5,'Mount Kenya (Lenana)',4985.0,130.0,'Mount Kenya','Kenya');
INSERT INTO "mountain" VALUES(6,'Ngaliema / Mt Stanley (Savoia Pk)',4977.0,110.0,'Rwenzori','Uganda');
INSERT INTO "mountain" VALUES(7,'Duwoni / Mt Speke (Vittorio Emanuele Pk)',4890.0,720.0,'Rwenzori','Uganda');
COMMIT;