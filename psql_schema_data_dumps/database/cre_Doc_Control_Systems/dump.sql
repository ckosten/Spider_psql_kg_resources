BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Addresses (
address_id INTEGER NOT NULL,
address_details VARCHAR(255),
PRIMARY KEY (address_id)
);
INSERT INTO "Addresses" VALUES(0,'IT');
INSERT INTO "Addresses" VALUES(1,'MX');
INSERT INTO "Addresses" VALUES(2,'DE');
INSERT INTO "Addresses" VALUES(3,'ES');
INSERT INTO "Addresses" VALUES(4,'ES');
INSERT INTO "Addresses" VALUES(5,'IE');
INSERT INTO "Addresses" VALUES(6,'US');
INSERT INTO "Addresses" VALUES(7,'PT');
INSERT INTO "Addresses" VALUES(8,'IE');
INSERT INTO "Addresses" VALUES(9,'MX');
CREATE TABLE IF NOT EXISTS Circulation_History (
document_id INTEGER NOT NULL,
draft_number INTEGER NOT NULL,
copy_number INTEGER NOT NULL,
employee_id INTEGER NOT NULL,
PRIMARY KEY (document_id, draft_number, copy_number, employee_id),
FOREIGN KEY (document_id, draft_number, copy_number) REFERENCES Draft_Copies (document_id,draft_number,copy_number),
FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);
INSERT INTO "Circulation_History" VALUES(20,17,15,8);
INSERT INTO "Circulation_History" VALUES(1,2,5,1);
INSERT INTO "Circulation_History" VALUES(2,1,4,2);
INSERT INTO "Circulation_History" VALUES(10,20,10,2);
CREATE TABLE IF NOT EXISTS Document_Drafts (
document_id INTEGER NOT NULL,
draft_number INTEGER NOT NULL,
draft_details VARCHAR(255),
PRIMARY KEY (document_id, draft_number),
FOREIGN KEY (document_id) REFERENCES Documents (document_id)
);
INSERT INTO "Document_Drafts" VALUES(1,0,'e');
INSERT INTO "Document_Drafts" VALUES(1,2,'k');
INSERT INTO "Document_Drafts" VALUES(2,1,'v');
INSERT INTO "Document_Drafts" VALUES(2,8,'v');
INSERT INTO "Document_Drafts" VALUES(4,9,'r');
INSERT INTO "Document_Drafts" VALUES(7,10,'m');
INSERT INTO "Document_Drafts" VALUES(10,20,'k');
INSERT INTO "Document_Drafts" VALUES(12,11,'b');
INSERT INTO "Document_Drafts" VALUES(12,12,'r');
INSERT INTO "Document_Drafts" VALUES(13,4,'w');
INSERT INTO "Document_Drafts" VALUES(13,16,'p');
INSERT INTO "Document_Drafts" VALUES(14,14,'x');
INSERT INTO "Document_Drafts" VALUES(17,19,'a');
INSERT INTO "Document_Drafts" VALUES(20,17,'l');
INSERT INTO "Document_Drafts" VALUES(23,9,'r');
CREATE TABLE IF NOT EXISTS Documents (
document_id INTEGER NOT NULL,
document_status_code CHAR(15) NOT NULL,
document_type_code CHAR(15) NOT NULL,
shipping_agent_code CHAR(15),
receipt_date DATETIME,
receipt_number VARCHAR(255),
other_details VARCHAR(255),
PRIMARY KEY (document_id),
FOREIGN KEY (document_type_code) REFERENCES Ref_Document_Types (document_type_code),
FOREIGN KEY (document_status_code) REFERENCES Ref_Document_Status (document_status_code),
FOREIGN KEY (shipping_agent_code) REFERENCES Ref_Shipping_Agents (shipping_agent_code)
);
INSERT INTO "Documents" VALUES(1,'working','CD','UP','2008-04-21 20:42:25','19','z');
INSERT INTO "Documents" VALUES(2,'done','Paper','US','1974-05-08 00:00:46','34','h');
INSERT INTO "Documents" VALUES(3,'done','Paper','UP','2014-12-25 17:22:44','93','h');
INSERT INTO "Documents" VALUES(4,'done','Paper','US','1973-11-05 21:48:53','80','q');
INSERT INTO "Documents" VALUES(7,'working','CD','SH','1982-09-27 14:52:15','61','w');
INSERT INTO "Documents" VALUES(10,'overdue','Paper','UP','1976-09-15 19:24:17','8','m');
INSERT INTO "Documents" VALUES(12,'overdue','Hard Drive','US','1996-05-31 06:51:58','69','n');
INSERT INTO "Documents" VALUES(13,'working','CD','UP','2015-04-03 09:36:19','79','y');
INSERT INTO "Documents" VALUES(14,'working','CD','FE','2017-07-02 17:39:09','117','u');
INSERT INTO "Documents" VALUES(15,'overdue','CD','UP','1986-12-14 14:18:59','37','r');
INSERT INTO "Documents" VALUES(17,'done','Paper','FE','1983-09-26 09:32:56','55','p');
INSERT INTO "Documents" VALUES(20,'working','Paper','UP','1996-07-27 03:30:40','189','x');
INSERT INTO "Documents" VALUES(23,'working','Hard Drive','FE','1999-04-17 14:19:32','124','b');
INSERT INTO "Documents" VALUES(24,'working','Hard Drive','FE','2005-09-30 00:10:02','114','j');
INSERT INTO "Documents" VALUES(25,'overdue','Hard Drive','AL','1985-11-05 17:59:34','83','u');
CREATE TABLE IF NOT EXISTS Documents_Mailed (
document_id INTEGER NOT NULL,
mailed_to_address_id INTEGER NOT NULL,
mailing_date DATETIME,
PRIMARY KEY (document_id, mailed_to_address_id),
FOREIGN KEY (document_id) REFERENCES Documents (document_id),
FOREIGN KEY (mailed_to_address_id) REFERENCES Addresses (address_id)
);
INSERT INTO "Documents_Mailed" VALUES(2,8,'1977-04-01 17:03:50');
INSERT INTO "Documents_Mailed" VALUES(4,3,'1992-11-07 15:03:41');
INSERT INTO "Documents_Mailed" VALUES(4,9,'1973-02-21 10:17:01');
INSERT INTO "Documents_Mailed" VALUES(7,5,'1979-09-21 10:30:52');
INSERT INTO "Documents_Mailed" VALUES(10,3,'1993-05-24 22:13:48');
INSERT INTO "Documents_Mailed" VALUES(12,0,'1999-05-22 23:21:07');
INSERT INTO "Documents_Mailed" VALUES(12,7,'2007-01-01 22:32:11');
INSERT INTO "Documents_Mailed" VALUES(12,8,'2007-03-20 05:22:01');
INSERT INTO "Documents_Mailed" VALUES(13,4,'1991-05-27 14:17:37');
INSERT INTO "Documents_Mailed" VALUES(14,5,'1986-05-16 06:25:33');
INSERT INTO "Documents_Mailed" VALUES(20,2,'2010-11-04 04:00:16');
INSERT INTO "Documents_Mailed" VALUES(20,7,'1982-01-14 05:50:54');
INSERT INTO "Documents_Mailed" VALUES(23,8,'1971-11-03 12:32:14');
INSERT INTO "Documents_Mailed" VALUES(24,0,'2013-01-27 03:29:31');
CREATE TABLE IF NOT EXISTS Draft_Copies (
document_id INTEGER NOT NULL,
draft_number INTEGER NOT NULL,
copy_number INTEGER NOT NULL,
PRIMARY KEY (document_id, draft_number, copy_number),
FOREIGN KEY (document_id, draft_number) REFERENCES Document_Drafts (document_id,draft_number)
);
INSERT INTO "Draft_Copies" VALUES(2,8,5);
INSERT INTO "Draft_Copies" VALUES(4,9,6);
INSERT INTO "Draft_Copies" VALUES(23,9,15);
INSERT INTO "Draft_Copies" VALUES(10,20,10);
INSERT INTO "Draft_Copies" VALUES(2,1,4);
INSERT INTO "Draft_Copies" VALUES(1,2,5);
INSERT INTO "Draft_Copies" VALUES(20,17,15);
INSERT INTO "Draft_Copies" VALUES(12,12,10);
CREATE TABLE IF NOT EXISTS Employees (
employee_id INTEGER NOT NULL,
role_code CHAR(15) NOT NULL,
employee_name VARCHAR(255),
other_details VARCHAR(255),
PRIMARY KEY (employee_id),
FOREIGN KEY (role_code) REFERENCES Roles (role_code)
);
INSERT INTO "Employees" VALUES(1,'ED','Koby','h');
INSERT INTO "Employees" VALUES(2,'ED','Kenyon','f');
INSERT INTO "Employees" VALUES(3,'PR','Haley','b');
INSERT INTO "Employees" VALUES(5,'PT','Clemens','b');
INSERT INTO "Employees" VALUES(7,'PT','Jordyn','v');
INSERT INTO "Employees" VALUES(8,'MG','Erling','u');
CREATE TABLE IF NOT EXISTS Ref_Document_Status (
document_status_code CHAR(15) NOT NULL,
document_status_description VARCHAR(255) NOT NULL,
PRIMARY KEY (document_status_code)
);
INSERT INTO "Ref_Document_Status" VALUES('working','currently working on');
INSERT INTO "Ref_Document_Status" VALUES('done','mailed');
INSERT INTO "Ref_Document_Status" VALUES('overdue','mailed late');
CREATE TABLE IF NOT EXISTS Ref_Document_Types (
document_type_code CHAR(15) NOT NULL,
document_type_description VARCHAR(255) NOT NULL,
PRIMARY KEY (document_type_code)
);
INSERT INTO "Ref_Document_Types" VALUES('CD','b');
INSERT INTO "Ref_Document_Types" VALUES('Paper','u');
INSERT INTO "Ref_Document_Types" VALUES('Hard Drive','f');
CREATE TABLE IF NOT EXISTS Ref_Shipping_Agents (
shipping_agent_code CHAR(15) NOT NULL,
shipping_agent_name VARCHAR(255) NOT NULL,
shipping_agent_description VARCHAR(255) NOT NULL,
PRIMARY KEY (shipping_agent_code)
);
INSERT INTO "Ref_Shipping_Agents" VALUES('UP','UPS','g');
INSERT INTO "Ref_Shipping_Agents" VALUES('US','USPS','q');
INSERT INTO "Ref_Shipping_Agents" VALUES('AL','Airline','w');
INSERT INTO "Ref_Shipping_Agents" VALUES('FE','Fedex','k');
INSERT INTO "Ref_Shipping_Agents" VALUES('SH','Ship','t');
CREATE TABLE IF NOT EXISTS Roles (
role_code CHAR(15) NOT NULL,
role_description VARCHAR(255),
PRIMARY KEY (role_code)
);
INSERT INTO "Roles" VALUES('ED','Editor');
INSERT INTO "Roles" VALUES('PT','Photo');
INSERT INTO "Roles" VALUES('MG','Manager');
INSERT INTO "Roles" VALUES('PR','Proof Manager');
COMMIT;