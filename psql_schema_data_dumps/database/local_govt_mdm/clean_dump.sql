SET session_replication_role = 'replica'; INSERT INTO Benefits_Overpayments VALUES(3,65);
 INSERT INTO Benefits_Overpayments VALUES(6,41);
 INSERT INTO Benefits_Overpayments VALUES(7,83);
 INSERT INTO Benefits_Overpayments VALUES(8,48);
 INSERT INTO Business_Rates VALUES(2,99);
 INSERT INTO Business_Rates VALUES(5,49);
 INSERT INTO Business_Rates VALUES(8,95);
 INSERT INTO CMI_Cross_References VALUES(2,4,'Rent');
 INSERT INTO CMI_Cross_References VALUES(4,5,'Parking');
 INSERT INTO CMI_Cross_References VALUES(8,1,'Rent');
 INSERT INTO CMI_Cross_References VALUES(41,5,'Benefits');
 INSERT INTO CMI_Cross_References VALUES(48,5,'Benefits');
 INSERT INTO CMI_Cross_References VALUES(49,1,'Business');
 INSERT INTO CMI_Cross_References VALUES(59,1,'Rent');
 INSERT INTO CMI_Cross_References VALUES(65,9,'Benefits');
 INSERT INTO CMI_Cross_References VALUES(75,5,'Electoral');
 INSERT INTO CMI_Cross_References VALUES(77,4,'Electoral');
 INSERT INTO CMI_Cross_References VALUES(81,9,'Parking');
 INSERT INTO CMI_Cross_References VALUES(83,3,'Benefits');
 INSERT INTO CMI_Cross_References VALUES(95,2,'Business');
 INSERT INTO CMI_Cross_References VALUES(99,9,'Business');
 INSERT INTO CMI_Cross_References VALUES(100,4,'Rent');
 INSERT INTO CMI_Cross_References VALUES(101,2,'Tax');
 INSERT INTO CMI_Cross_References VALUES(102,4,'Tax');
 INSERT INTO CMI_Cross_References VALUES(103,9,'Tax');
 INSERT INTO CMI_Cross_References VALUES(104,2,'Tax');
 INSERT INTO CMI_Cross_References VALUES(105,2,'Tax');
 INSERT INTO CMI_Cross_References VALUES(106,1,'Tax');
 INSERT INTO Council_Tax VALUES(1,101);
 INSERT INTO Council_Tax VALUES(2,103);
 INSERT INTO Council_Tax VALUES(3,104);
 INSERT INTO Council_Tax VALUES(7,102);
 INSERT INTO Council_Tax VALUES(8,106);
 INSERT INTO Council_Tax VALUES(9,105);
 INSERT INTO Customer_Master_Index VALUES(1,'Schmitt-Lang');
 INSERT INTO Customer_Master_Index VALUES(2,'Volkman, Mills and Ferry');
 INSERT INTO Customer_Master_Index VALUES(3,'Gusikowski PLC');
 INSERT INTO Customer_Master_Index VALUES(4,'Schmidt, Kertzmann and Lubowitz');
 INSERT INTO Customer_Master_Index VALUES(5,'Gottlieb, Becker and Wyman');
 INSERT INTO Customer_Master_Index VALUES(6,'Mayer-Hagenes');
 INSERT INTO Customer_Master_Index VALUES(7,'Streich-Morissette');
 INSERT INTO Customer_Master_Index VALUES(8,'Quigley-Paucek');
 INSERT INTO Customer_Master_Index VALUES(9,'Reynolds-McClure');
 INSERT INTO Electoral_Register VALUES(2,83);
 INSERT INTO Electoral_Register VALUES(3,65);
 INSERT INTO Electoral_Register VALUES(4,100);
 INSERT INTO Electoral_Register VALUES(6,95);
 INSERT INTO Electoral_Register VALUES(7,65);
 INSERT INTO Electoral_Register VALUES(8,75);
 INSERT INTO Parking_Fines VALUES(9,4);
 INSERT INTO Parking_Fines VALUES(10,81);
 INSERT INTO Rent_Arrears VALUES(1,100);
 INSERT INTO Rent_Arrears VALUES(2,8);
 INSERT INTO Rent_Arrears VALUES(6,59);
 INSERT INTO Rent_Arrears VALUES(7,2);
 SET session_replication_role = 'origin';