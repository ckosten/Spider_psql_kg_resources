BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Investors (
investor_id INTEGER PRIMARY KEY,
Investor_details VARCHAR(255)
);
INSERT INTO "Investors" VALUES(1,'z');
INSERT INTO "Investors" VALUES(2,'z');
INSERT INTO "Investors" VALUES(3,'d');
INSERT INTO "Investors" VALUES(4,'d');
INSERT INTO "Investors" VALUES(5,'b');
INSERT INTO "Investors" VALUES(6,'k');
INSERT INTO "Investors" VALUES(7,'l');
INSERT INTO "Investors" VALUES(8,'t');
INSERT INTO "Investors" VALUES(9,'y');
INSERT INTO "Investors" VALUES(10,'r');
INSERT INTO "Investors" VALUES(11,'q');
INSERT INTO "Investors" VALUES(12,'c');
INSERT INTO "Investors" VALUES(13,'o');
INSERT INTO "Investors" VALUES(14,'w');
INSERT INTO "Investors" VALUES(15,'i');
INSERT INTO "Investors" VALUES(16,'y');
INSERT INTO "Investors" VALUES(17,'k');
INSERT INTO "Investors" VALUES(18,'w');
INSERT INTO "Investors" VALUES(19,'l');
INSERT INTO "Investors" VALUES(20,'j');
CREATE TABLE IF NOT EXISTS Lots (
lot_id INTEGER PRIMARY KEY,
investor_id INTEGER NOT NULL,
lot_details VARCHAR(255),
FOREIGN KEY (investor_id ) REFERENCES Investors(investor_id )
);
INSERT INTO "Lots" VALUES(1,13,'r');
INSERT INTO "Lots" VALUES(2,16,'z');
INSERT INTO "Lots" VALUES(3,10,'s');
INSERT INTO "Lots" VALUES(4,19,'s');
INSERT INTO "Lots" VALUES(5,6,'q');
INSERT INTO "Lots" VALUES(6,20,'d');
INSERT INTO "Lots" VALUES(7,7,'m');
INSERT INTO "Lots" VALUES(8,7,'h');
INSERT INTO "Lots" VALUES(9,20,'z');
INSERT INTO "Lots" VALUES(10,9,'x');
INSERT INTO "Lots" VALUES(11,1,'d');
INSERT INTO "Lots" VALUES(12,19,'m');
INSERT INTO "Lots" VALUES(13,7,'z');
INSERT INTO "Lots" VALUES(14,6,'d');
INSERT INTO "Lots" VALUES(15,1,'h');
CREATE TABLE IF NOT EXISTS Purchases (
purchase_transaction_id INTEGER NOT NULL,
purchase_details VARCHAR(255) NOT NULL,
FOREIGN KEY (purchase_transaction_id ) REFERENCES Transactions(transaction_id )
);
INSERT INTO "Purchases" VALUES(1,'c');
INSERT INTO "Purchases" VALUES(2,'y');
INSERT INTO "Purchases" VALUES(3,'i');
INSERT INTO "Purchases" VALUES(4,'x');
INSERT INTO "Purchases" VALUES(5,'y');
INSERT INTO "Purchases" VALUES(6,'a');
INSERT INTO "Purchases" VALUES(7,'r');
INSERT INTO "Purchases" VALUES(8,'a');
INSERT INTO "Purchases" VALUES(9,'r');
INSERT INTO "Purchases" VALUES(10,'l');
INSERT INTO "Purchases" VALUES(11,'z');
INSERT INTO "Purchases" VALUES(12,'h');
INSERT INTO "Purchases" VALUES(13,'t');
INSERT INTO "Purchases" VALUES(14,'o');
INSERT INTO "Purchases" VALUES(15,'x');
CREATE TABLE IF NOT EXISTS Ref_Transaction_Types (
transaction_type_code VARCHAR(10) PRIMARY KEY,
transaction_type_description VARCHAR(80) NOT NULL
);
INSERT INTO "Ref_Transaction_Types" VALUES('SALE','Sale');
INSERT INTO "Ref_Transaction_Types" VALUES('PUR','Purchase');
CREATE TABLE IF NOT EXISTS Sales (
sales_transaction_id INTEGER PRIMARY KEY,
sales_details VARCHAR(255),
FOREIGN KEY (sales_transaction_id ) REFERENCES Transactions(transaction_id )
);
INSERT INTO "Sales" VALUES(1,'x');
INSERT INTO "Sales" VALUES(2,'o');
INSERT INTO "Sales" VALUES(3,'a');
INSERT INTO "Sales" VALUES(4,'f');
INSERT INTO "Sales" VALUES(5,'y');
INSERT INTO "Sales" VALUES(6,'x');
INSERT INTO "Sales" VALUES(7,'p');
INSERT INTO "Sales" VALUES(8,'e');
INSERT INTO "Sales" VALUES(9,'p');
INSERT INTO "Sales" VALUES(10,'s');
INSERT INTO "Sales" VALUES(11,'s');
INSERT INTO "Sales" VALUES(12,'t');
INSERT INTO "Sales" VALUES(13,'p');
INSERT INTO "Sales" VALUES(14,'n');
INSERT INTO "Sales" VALUES(15,'e');
CREATE TABLE IF NOT EXISTS Transactions (
transaction_id INTEGER PRIMARY KEY,
investor_id INTEGER NOT NULL,
transaction_type_code VARCHAR(10) NOT NULL,
date_of_transaction DATETIME,
amount_of_transaction DECIMAL(19,4),
share_count VARCHAR(40),
other_details VARCHAR(255),
FOREIGN KEY (investor_id ) REFERENCES Investors(investor_id ),FOREIGN KEY (transaction_type_code ) REFERENCES Ref_Transaction_Types(transaction_type_code )
);
INSERT INTO "Transactions" VALUES(1,6,'SALE','1988-09-16 19:02:51',302507.6996,'8718572',NULL);
INSERT INTO "Transactions" VALUES(2,18,'PUR','1982-06-06 17:19:00',27.257,'9',NULL);
INSERT INTO "Transactions" VALUES(3,2,'SALE','1979-04-27 06:03:59',48777.969,'8580',NULL);
INSERT INTO "Transactions" VALUES(4,14,'PUR','2001-11-28 15:06:25',4.5263,'8040',NULL);
INSERT INTO "Transactions" VALUES(5,8,'PUR','1977-08-17 13:13:30',0,'930',NULL);
INSERT INTO "Transactions" VALUES(6,19,'PUR','1985-10-08 13:13:39',207484122.2796,'2751',NULL);
INSERT INTO "Transactions" VALUES(7,7,'PUR','1990-12-02 09:03:38',822.803,'1522',NULL);
INSERT INTO "Transactions" VALUES(8,17,'SALE','2004-01-18 20:37:50',78035671.4424,'96178',NULL);
INSERT INTO "Transactions" VALUES(9,20,'PUR','1977-08-13 02:18:47',82057.207,'',NULL);
INSERT INTO "Transactions" VALUES(10,2,'SALE','1981-01-28 08:07:03',29.3534,'1654756',NULL);
INSERT INTO "Transactions" VALUES(11,3,'SALE','2000-04-03 20:55:43',0,'674529892',NULL);
INSERT INTO "Transactions" VALUES(12,18,'SALE','1983-11-01 17:57:27',1,'587',NULL);
INSERT INTO "Transactions" VALUES(13,3,'SALE','2002-04-07 20:28:37',183.2,'',NULL);
INSERT INTO "Transactions" VALUES(14,3,'PUR','2002-09-13 03:04:56',0,'630021',NULL);
INSERT INTO "Transactions" VALUES(15,19,'PUR','1997-12-30 05:05:40',8.9,'93191',NULL);
CREATE TABLE IF NOT EXISTS Transactions_Lots (
transaction_id INTEGER NOT NULL,
lot_id INTEGER NOT NULL,
FOREIGN KEY (lot_id ) REFERENCES Lots(lot_id ),
FOREIGN KEY (transaction_id ) REFERENCES Transactions(transaction_id )
);
INSERT INTO "Transactions_Lots" VALUES(3,11);
INSERT INTO "Transactions_Lots" VALUES(3,8);
INSERT INTO "Transactions_Lots" VALUES(2,11);
INSERT INTO "Transactions_Lots" VALUES(3,14);
INSERT INTO "Transactions_Lots" VALUES(12,10);
INSERT INTO "Transactions_Lots" VALUES(15,10);
INSERT INTO "Transactions_Lots" VALUES(10,10);
INSERT INTO "Transactions_Lots" VALUES(1,1);
INSERT INTO "Transactions_Lots" VALUES(1,14);
INSERT INTO "Transactions_Lots" VALUES(3,4);
INSERT INTO "Transactions_Lots" VALUES(14,9);
INSERT INTO "Transactions_Lots" VALUES(7,1);
INSERT INTO "Transactions_Lots" VALUES(12,15);
INSERT INTO "Transactions_Lots" VALUES(6,3);
INSERT INTO "Transactions_Lots" VALUES(2,1);
COMMIT;