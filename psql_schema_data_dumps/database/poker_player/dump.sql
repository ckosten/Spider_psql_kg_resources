BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "people" (
"People_ID" int,
"Nationality" text,
"Name" text,
"Birth_Date" text,
"Height" real,
PRIMARY KEY ("People_ID")
);
INSERT INTO "people" VALUES(1,'Russia','Aleksey Ostapenko','May 26, 1986',207.0);
INSERT INTO "people" VALUES(2,'Bulgaria','Teodor Salparov','August 16, 1982',182.0);
INSERT INTO "people" VALUES(3,'Russia','Roman Bragin','April 17, 1987',187.0);
INSERT INTO "people" VALUES(4,'Russia','Sergey Grankin','January 22, 1987',193.0);
INSERT INTO "people" VALUES(5,'Russia','Yevgeni Sivozhelez','August 8, 1986',196.0);
INSERT INTO "people" VALUES(6,'Russia','Maksim Botin','July 14, 1983',194.0);
INSERT INTO "people" VALUES(7,'Russia','Semen Poltavskiy','February 8, 1981',205.0);
CREATE TABLE IF NOT EXISTS "poker_player" (
"Poker_Player_ID" int,
"People_ID" int,
"Final_Table_Made" real,
"Best_Finish" real,
"Money_Rank" real,
"Earnings" real,
PRIMARY KEY ("Poker_Player_ID"),
FOREIGN KEY ("People_ID") REFERENCES people("People_ID")
);
INSERT INTO "poker_player" VALUES(1,1,42.0,1.0,68.0,476090.0);
INSERT INTO "poker_player" VALUES(2,2,10.0,2.0,141.0,189233.0);
INSERT INTO "poker_player" VALUES(3,5,21.0,1.0,166.0,104871.0);
INSERT INTO "poker_player" VALUES(4,6,19.0,2.0,58.0,596462.0);
INSERT INTO "poker_player" VALUES(5,7,26.0,3.0,154.0,142800.0);
COMMIT;