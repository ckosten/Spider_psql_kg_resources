
create table if not exists area_code_state (
       area_code integer not null
     ,  state varchar(2) not null
     ,  primary key (area_code)
     );
     create table if not exists contestants (
       contestant_number integer
     ,  contestant_name varchar(50) not null
     ,  primary key (contestant_number)
     );
     create table if not exists votes (
       vote_id integer not null
     ,  phone_number varchar(10) not null
     ,  area_code integer not null
     ,  contestant_number integer not null
     ,  created timestamp not null default current_timestamp
     , 	foreign key (area_code) references area_code_state(area_code)
     , 	foreign key (contestant_number) references contestants(contestant_number)
     );
     create index idx_votes_idx_votes_phone_number on votes (phone_number);
 
 INSERT INTO AREA_CODE_STATE VALUES(201,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(202,'DC');
 INSERT INTO AREA_CODE_STATE VALUES(203,'CT');
 INSERT INTO AREA_CODE_STATE VALUES(205,'AL');
 INSERT INTO AREA_CODE_STATE VALUES(206,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(207,'ME');
 INSERT INTO AREA_CODE_STATE VALUES(208,'ID');
 INSERT INTO AREA_CODE_STATE VALUES(209,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(210,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(212,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(213,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(214,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(215,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(216,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(217,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(218,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(219,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(224,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(225,'LA');
 INSERT INTO AREA_CODE_STATE VALUES(228,'MS');
 INSERT INTO AREA_CODE_STATE VALUES(229,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(231,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(234,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(236,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(239,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(240,'MD');
 INSERT INTO AREA_CODE_STATE VALUES(248,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(251,'AL');
 INSERT INTO AREA_CODE_STATE VALUES(252,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(253,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(254,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(256,'AL');
 INSERT INTO AREA_CODE_STATE VALUES(260,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(262,'WI');
 INSERT INTO AREA_CODE_STATE VALUES(267,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(269,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(270,'KY');
 INSERT INTO AREA_CODE_STATE VALUES(276,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(278,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(281,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(283,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(301,'MD');
 INSERT INTO AREA_CODE_STATE VALUES(302,'DE');
 INSERT INTO AREA_CODE_STATE VALUES(303,'CO');
 INSERT INTO AREA_CODE_STATE VALUES(304,'WV');
 INSERT INTO AREA_CODE_STATE VALUES(305,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(307,'WY');
 INSERT INTO AREA_CODE_STATE VALUES(308,'NE');
 INSERT INTO AREA_CODE_STATE VALUES(309,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(310,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(312,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(313,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(314,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(315,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(316,'KS');
 INSERT INTO AREA_CODE_STATE VALUES(317,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(318,'LA');
 INSERT INTO AREA_CODE_STATE VALUES(319,'IA');
 INSERT INTO AREA_CODE_STATE VALUES(320,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(321,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(323,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(325,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(330,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(331,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(334,'AL');
 INSERT INTO AREA_CODE_STATE VALUES(336,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(337,'LA');
 INSERT INTO AREA_CODE_STATE VALUES(339,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(341,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(347,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(351,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(352,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(360,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(361,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(369,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(380,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(385,'UT');
 INSERT INTO AREA_CODE_STATE VALUES(386,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(401,'RI');
 INSERT INTO AREA_CODE_STATE VALUES(402,'NE');
 INSERT INTO AREA_CODE_STATE VALUES(404,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(405,'OK');
 INSERT INTO AREA_CODE_STATE VALUES(406,'MT');
 INSERT INTO AREA_CODE_STATE VALUES(407,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(408,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(409,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(410,'MD');
 INSERT INTO AREA_CODE_STATE VALUES(412,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(413,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(414,'WI');
 INSERT INTO AREA_CODE_STATE VALUES(415,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(417,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(419,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(423,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(424,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(425,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(430,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(432,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(434,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(435,'UT');
 INSERT INTO AREA_CODE_STATE VALUES(440,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(442,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(443,'MD');
 INSERT INTO AREA_CODE_STATE VALUES(464,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(469,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(470,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(475,'CT');
 INSERT INTO AREA_CODE_STATE VALUES(478,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(479,'AR');
 INSERT INTO AREA_CODE_STATE VALUES(480,'AZ');
 INSERT INTO AREA_CODE_STATE VALUES(484,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(501,'AR');
 INSERT INTO AREA_CODE_STATE VALUES(502,'KY');
 INSERT INTO AREA_CODE_STATE VALUES(503,'OR');
 INSERT INTO AREA_CODE_STATE VALUES(504,'LA');
 INSERT INTO AREA_CODE_STATE VALUES(505,'NM');
 INSERT INTO AREA_CODE_STATE VALUES(507,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(508,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(509,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(510,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(512,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(513,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(515,'IA');
 INSERT INTO AREA_CODE_STATE VALUES(516,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(517,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(518,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(520,'AZ');
 INSERT INTO AREA_CODE_STATE VALUES(530,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(540,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(541,'OR');
 INSERT INTO AREA_CODE_STATE VALUES(551,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(557,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(559,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(561,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(562,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(563,'IA');
 INSERT INTO AREA_CODE_STATE VALUES(564,'WA');
 INSERT INTO AREA_CODE_STATE VALUES(567,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(570,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(571,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(573,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(574,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(575,'NM');
 INSERT INTO AREA_CODE_STATE VALUES(580,'OK');
 INSERT INTO AREA_CODE_STATE VALUES(585,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(586,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(601,'MS');
 INSERT INTO AREA_CODE_STATE VALUES(602,'AZ');
 INSERT INTO AREA_CODE_STATE VALUES(603,'NH');
 INSERT INTO AREA_CODE_STATE VALUES(605,'SD');
 INSERT INTO AREA_CODE_STATE VALUES(606,'KY');
 INSERT INTO AREA_CODE_STATE VALUES(607,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(608,'WI');
 INSERT INTO AREA_CODE_STATE VALUES(609,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(610,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(612,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(614,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(615,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(616,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(617,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(618,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(619,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(620,'KS');
 INSERT INTO AREA_CODE_STATE VALUES(623,'AZ');
 INSERT INTO AREA_CODE_STATE VALUES(626,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(627,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(628,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(630,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(631,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(636,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(641,'IA');
 INSERT INTO AREA_CODE_STATE VALUES(646,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(650,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(651,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(660,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(661,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(662,'MS');
 INSERT INTO AREA_CODE_STATE VALUES(669,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(678,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(679,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(682,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(689,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(701,'ND');
 INSERT INTO AREA_CODE_STATE VALUES(702,'NV');
 INSERT INTO AREA_CODE_STATE VALUES(703,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(704,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(706,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(707,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(708,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(712,'IA');
 INSERT INTO AREA_CODE_STATE VALUES(713,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(714,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(715,'WI');
 INSERT INTO AREA_CODE_STATE VALUES(716,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(717,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(718,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(719,'CO');
 INSERT INTO AREA_CODE_STATE VALUES(720,'CO');
 INSERT INTO AREA_CODE_STATE VALUES(724,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(727,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(731,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(732,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(734,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(737,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(740,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(747,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(754,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(757,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(760,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(762,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(763,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(764,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(765,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(769,'MS');
 INSERT INTO AREA_CODE_STATE VALUES(770,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(772,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(773,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(774,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(775,'NV');
 INSERT INTO AREA_CODE_STATE VALUES(779,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(781,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(785,'KS');
 INSERT INTO AREA_CODE_STATE VALUES(786,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(801,'UT');
 INSERT INTO AREA_CODE_STATE VALUES(802,'VT');
 INSERT INTO AREA_CODE_STATE VALUES(803,'SC');
 INSERT INTO AREA_CODE_STATE VALUES(804,'VA');
 INSERT INTO AREA_CODE_STATE VALUES(805,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(806,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(808,'HI');
 INSERT INTO AREA_CODE_STATE VALUES(810,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(812,'IN');
 INSERT INTO AREA_CODE_STATE VALUES(813,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(814,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(815,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(816,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(817,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(818,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(828,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(830,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(831,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(832,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(835,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(843,'SC');
 INSERT INTO AREA_CODE_STATE VALUES(845,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(847,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(848,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(850,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(856,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(857,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(858,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(859,'KY');
 INSERT INTO AREA_CODE_STATE VALUES(860,'CT');
 INSERT INTO AREA_CODE_STATE VALUES(862,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(863,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(864,'SC');
 INSERT INTO AREA_CODE_STATE VALUES(865,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(870,'AR');
 INSERT INTO AREA_CODE_STATE VALUES(872,'IL');
 INSERT INTO AREA_CODE_STATE VALUES(878,'PA');
 INSERT INTO AREA_CODE_STATE VALUES(901,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(903,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(904,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(906,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(907,'AK');
 INSERT INTO AREA_CODE_STATE VALUES(908,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(909,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(910,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(912,'GA');
 INSERT INTO AREA_CODE_STATE VALUES(913,'KS');
 INSERT INTO AREA_CODE_STATE VALUES(914,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(915,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(916,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(917,'NY');
 INSERT INTO AREA_CODE_STATE VALUES(918,'OK');
 INSERT INTO AREA_CODE_STATE VALUES(919,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(920,'WI');
 INSERT INTO AREA_CODE_STATE VALUES(925,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(927,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(928,'AZ');
 INSERT INTO AREA_CODE_STATE VALUES(931,'TN');
 INSERT INTO AREA_CODE_STATE VALUES(935,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(936,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(937,'OH');
 INSERT INTO AREA_CODE_STATE VALUES(940,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(941,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(947,'MI');
 INSERT INTO AREA_CODE_STATE VALUES(949,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(951,'CA');
 INSERT INTO AREA_CODE_STATE VALUES(952,'MN');
 INSERT INTO AREA_CODE_STATE VALUES(954,'FL');
 INSERT INTO AREA_CODE_STATE VALUES(956,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(957,'NM');
 INSERT INTO AREA_CODE_STATE VALUES(959,'CT');
 INSERT INTO AREA_CODE_STATE VALUES(970,'CO');
 INSERT INTO AREA_CODE_STATE VALUES(971,'OR');
 INSERT INTO AREA_CODE_STATE VALUES(972,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(973,'NJ');
 INSERT INTO AREA_CODE_STATE VALUES(975,'MO');
 INSERT INTO AREA_CODE_STATE VALUES(978,'MA');
 INSERT INTO AREA_CODE_STATE VALUES(979,'TX');
 INSERT INTO AREA_CODE_STATE VALUES(980,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(984,'NC');
 INSERT INTO AREA_CODE_STATE VALUES(985,'LA');
 INSERT INTO AREA_CODE_STATE VALUES(989,'MI');
 INSERT INTO CONTESTANTS VALUES(1,'Edwina Burnam');
 INSERT INTO CONTESTANTS VALUES(2,'Tabatha Gehling');
 INSERT INTO CONTESTANTS VALUES(3,'Kelly Clauss');
 INSERT INTO CONTESTANTS VALUES(4,'Jessie Alloway');
 INSERT INTO CONTESTANTS VALUES(5,'Alana Bregman');
 INSERT INTO CONTESTANTS VALUES(6,'Jessie Eichman');
 INSERT INTO CONTESTANTS VALUES(7,'Allie Rogalski');
 INSERT INTO CONTESTANTS VALUES(8,'Nita Coster');
 INSERT INTO CONTESTANTS VALUES(9,'Kurt Walser');
 INSERT INTO CONTESTANTS VALUES(10,'Ericka Dieter');
 INSERT INTO CONTESTANTS VALUES(11,'Loraine NygrenTania Mattioli');
 INSERT INTO VOTES VALUES(1,'7182887233',914,2,'2018-03-09 19:03:21');
 INSERT INTO VOTES VALUES(2,'7148407040',917,3,'2018-03-09 19:03:36');
 INSERT INTO VOTES VALUES(3,'6209222712',209,3,'2018-03-09 19:03:39');
INSERT INTO VOTES VALUES(5,'5112677315',973,5,'2018-03-09 19:03:40');