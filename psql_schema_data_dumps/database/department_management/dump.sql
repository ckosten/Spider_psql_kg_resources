BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "department" (
"Department_ID" int,
"Name" text,
"Creation" text,
"Ranking" int,
"Budget_in_Billions" real,
"Num_Employees" real,
PRIMARY KEY ("Department_ID")
);
INSERT INTO "department" VALUES(1,'State','1789',1,9.96,30266.0);
INSERT INTO "department" VALUES(2,'Treasury','1789',2,11.1,115897.0);
INSERT INTO "department" VALUES(3,'Defense','1947',3,439.3,3000000.0);
INSERT INTO "department" VALUES(4,'Justice','1870',4,23.4,112557.0);
INSERT INTO "department" VALUES(5,'Interior','1849',5,10.7,71436.0);
INSERT INTO "department" VALUES(6,'Agriculture','1889',6,77.6,109832.0);
INSERT INTO "department" VALUES(7,'Commerce','1903',7,6.2,36000.0);
INSERT INTO "department" VALUES(8,'Labor','1913',8,59.7,17347.0);
INSERT INTO "department" VALUES(9,'Health and Human Services','1953',9,543.2,67000.0);
INSERT INTO "department" VALUES(10,'Housing and Urban Development','1965',10,46.2,10600.0);
INSERT INTO "department" VALUES(11,'Transportation','1966',11,58.0,58622.0);
INSERT INTO "department" VALUES(12,'Energy','1977',12,21.5,116100.0);
INSERT INTO "department" VALUES(13,'Education','1979',13,62.8,4487.0);
INSERT INTO "department" VALUES(14,'Veterans Affairs','1989',14,73.2,235000.0);
INSERT INTO "department" VALUES(15,'Homeland Security','2002',15,44.6,208000.0);
CREATE TABLE IF NOT EXISTS "head" (
"head_ID" int,
"name" text,
"born_state" text,
"age" real,
PRIMARY KEY ("head_ID")
);
INSERT INTO "head" VALUES(1,'Tiger Woods','Alabama',67.0);
INSERT INTO "head" VALUES(2,'Sergio García','California',68.0);
INSERT INTO "head" VALUES(3,'K. J. Choi','Alabama',69.0);
INSERT INTO "head" VALUES(4,'Dudley Hart','California',52.0);
INSERT INTO "head" VALUES(5,'Jeff Maggert','Delaware',53.0);
INSERT INTO "head" VALUES(6,'Billy Mayfair','California',69.0);
INSERT INTO "head" VALUES(7,'Stewart Cink','Florida',50.0);
INSERT INTO "head" VALUES(8,'Nick Faldo','California',56.0);
INSERT INTO "head" VALUES(9,'Pádraig Harrington','Connecticut',43.0);
INSERT INTO "head" VALUES(10,'Franklin Langham','Connecticut',67.0);
CREATE TABLE IF NOT EXISTS "management" (
"department_ID" int,
"head_ID" int,
"temporary_acting" text,
PRIMARY KEY ("Department_ID","head_ID"),
FOREIGN KEY ("Department_ID") REFERENCES department("Department_ID"),
FOREIGN KEY ("head_ID") REFERENCES head("head_ID")
);
INSERT INTO "management" VALUES(2,5,'Yes');
INSERT INTO "management" VALUES(15,4,'Yes');
INSERT INTO "management" VALUES(2,6,'Yes');
INSERT INTO "management" VALUES(7,3,'No');
INSERT INTO "management" VALUES(11,10,'No');
COMMIT;