/*
 * MySQL seed for ta_scheduler
 *
 * Host: localhost    Database: ta_scheduler
 * ------------------------------------------------------
 * ta_scheduler seed
*/

USE ta_scheduler;

INSERT INTO `queue` VALUES (0);

INSERT INTO `feedback` VALUES (51,'159','Bowers','eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad mi','2020-02-27 00:00:00');
INSERT INTO `feedback` VALUES (52,'159','Bowers','eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad mi','2020-02-27 00:00:00');
INSERT INTO `feedback` VALUES (53,'159','Sprague','proident','2020-02-28 00:00:00');
INSERT INTO `feedback` VALUES (54,'159','Bernstein','qui officia deserunt molli','2020-02-26 00:00:00');
INSERT INTO `feedback` VALUES (55,'149','Bowers','anim id est','2019-11-11 00:00:00');
INSERT INTO `feedback` VALUES (56,'149','Sprague','in voluptate velit ess','2019-11-12 00:00:00');
INSERT INTO `feedback` VALUES (57,'240','Weikle','incididunt ut labore et dolore magna aliqua. Ut enim a','2020-02-29 00:00:00');
INSERT INTO `feedback` VALUES (8,'149','Weikle','velit esse cillum dol','2020-03-14 00:00:00');
INSERT INTO `feedback` VALUES (9,'139','Staurt','cupidatat non proident, sunt in culpa qui o','2020-03-01 00:00:00');
INSERT INTO `feedback` VALUES (10,'430','Staurt ','nu','2020-02-29 00:00:00');
INSERT INTO `feedback` VALUES (11,'480','Fox','esse cillum do','2020-03-02 00:00:00');
INSERT INTO `feedback` VALUES (12,'261','Fox','consequat. Duis aute irure dolor in reprehenderit','2020-03-08 00:00:00');
INSERT INTO `feedback` VALUES (13,'280','Staurt','velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden','2019-11-19 00:00:00');
INSERT INTO `feedback` VALUES (14,'345','Chow','rum.Lorem ipsum dolor sit amet, consectetur adipisci','2019-11-20 00:00:00');
INSERT INTO `feedback` VALUES (15,'261','Malloy','elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ','2019-11-21 00:00:00');
INSERT INTO `feedback` VALUES (16,'245','Malloy','occaecat cupidatat non proident, sunt in culpa qui officia des','2019-11-22 00:00:00');
INSERT INTO `feedback` VALUES (17,'361','Chow','adi','2019-11-23 00:00:00');
INSERT INTO `feedback` VALUES (18,'280','Fox','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim i','2019-11-24 00:00:00');
INSERT INTO `feedback` VALUES (19,'345','Weikle','consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolo','2019-11-25 00:00:00');
INSERT INTO `feedback` VALUES (20,'149','Fox','in voluptate velit e','2019-11-26 00:00:00');
INSERT INTO `feedback` VALUES (21,'361','Bowers','sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetu','2019-11-27 00:00:00');
INSERT INTO `feedback` VALUES (22,'261','Sprague','non ','2019-11-28 00:00:00');
INSERT INTO `feedback` VALUES (23,'245','Sprague','Duis aute irure dolor in repre','2019-11-29 00:00:00');
INSERT INTO `feedback` VALUES (24,'245','Fox','adipiscing elit','2019-11-30 00:00:00');
INSERT INTO `feedback` VALUES (25,'245','Fox','nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in volup','2019-12-01 00:00:00');
INSERT INTO `feedback` VALUES (26,'261','Sprague','dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore','2019-12-02 00:00:00');
INSERT INTO `feedback` VALUES (27,'159','Chow','enim ad minim veniam, quis nostrud exercitatio','2019-12-03 00:00:00');
INSERT INTO `feedback` VALUES (28,'159','Chow','ex ea commodo consequat','2019-12-09 00:00:00');
INSERT INTO `feedback` VALUES (29,'149','Weikle','commodo consequat. Duis aut','2019-12-05 00:00:00');

INSERT INTO `person` VALUES (1, 'llamasjw','Wesley Llamas','manager');
INSERT INTO `person` VALUES (2, 'krzyzkwm','Will K','ta_lead');
INSERT INTO `person` VALUES (3, 'albrigne','Nick Albright','ta_reg');
INSERT INTO `person` VALUES (4, 'walla3cj','Connor Wallace','manager');
INSERT INTO `person` VALUES (5, 'johnb','John B','ta_reg');
INSERT INTO `person` VALUES (6, 'georgef','George F','ta_reg');
INSERT INTO `person` VALUES (7, 'sallym','Sally M','ta_reg');
INSERT INTO `person` VALUES (8, 'sarahf','SarahF ','ta_reg');
INSERT INTO `person` VALUES (9, 'barryw','Barry W','ta_reg');
INSERT INTO `person` VALUES (10, 'lionelg','Lionel G','ta_reg');
INSERT INTO `person` VALUES (11, 'harryp','Harry P','ta_reg');
INSERT INTO `person` VALUES (12, 'lewisl','Lewis L','ta_reg');
INSERT INTO `person` VALUES (13, 'melanym','Melany M','ta_reg');
INSERT INTO `person` VALUES (14, 'walter','Walter W','ta_reg');
INSERT INTO `person` VALUES (15, 'benb ','Ben B','ta_reg');
INSERT INTO `person` VALUES (16, 'dogec','Doge C','ta_reg');
INSERT INTO `person` VALUES (17, 'dwayne','Dwayne J','ta_reg');
INSERT INTO `person` VALUES (18, 'keanu','Keanu R','ta_reg');
INSERT INTO `person` VALUES (19, 'chris','Chris H','ta_reg');
INSERT INTO `person` VALUES (20, 'scarlettj','Scarlett J','ta_reg');
INSERT INTO `person` VALUES (21, 'simonl','Simon L','ta_reg');
INSERT INTO `person` VALUES (22, 'louisa','Louis A ','ta_reg');
INSERT INTO `person` VALUES (23, 'jessicaa','Jessica A','ta_reg');
INSERT INTO `person` VALUES (24, 'selenag','Selena G','ta_reg');
INSERT INTO `person` VALUES (25, 'shannonb','Shannon B','ta_reg');
INSERT INTO `person` VALUES (27, 'bekahw','Bekah W','ta_reg');
INSERT INTO `person` VALUES (28, 'nicolew','Nicole W','ta_reg');
INSERT INTO `person` VALUES (29, 'peters','Peter S','ta_reg');
INSERT INTO `person` VALUES (30, 'leroyj','Leroy J','ta_reg');

INSERT INTO `preferences` VALUES (1,20, 'WEDNESAY','08:00:00', '17:00:00', true);
INSERT INTO `preferences` VALUES (2,15, 'THURSDAY', '08:00:00','23:00:00', false);
INSERT INTO `preferences` VALUES (3,15, 'MONDAY', '20:00:00','23:00:00', false);
INSERT INTO `preferences` VALUES (4,1, 'TUESDAY', '11:00:00','13:00:00', false);
INSERT INTO `preferences` VALUES (5,1,  'SATURDAY', '14:00:00', '18:00:00', false);
INSERT INTO `preferences` VALUES (6,1, 'FRIDAY', '11:30:00','15:00:00', true);
INSERT INTO `preferences` VALUES (7,13, 'WEDNESDAY','08:25:00', '16:00:00', true);
INSERT INTO `preferences` VALUES (8,13,  'MONDAY','21:00:00', '23:30:00', false);
INSERT INTO `preferences` VALUES (9,19, 'THURSDAY','10:00:00', '13:30:00', false);
INSERT INTO `preferences` VALUES (10,11, 'SUNDAY','14:00:00' , '17:00:00', true);
INSERT INTO `preferences` VALUES (11,1, 'FRIDAY', '18:30:00','23:00:00', true);


INSERT INTO `shift` VALUES (1,1,'2020-03-01 18:00:00','2020-03-1 20:00:00');
INSERT INTO `shift` VALUES (2,2,'2020-02-29 16:00:00','2020-02-29 18:00:00');
INSERT INTO `shift` VALUES (3,3,'2020-02-23 18:00:00','2020-02-23 20:00:00');
INSERT INTO `shift` VALUES (4,30,'2020-02-25 16:00:00','2020-02-25 18:00:00');
INSERT INTO `shift` VALUES (5,14,'2020-02-26 19:00:00','2020-02-26 21:00:00');
INSERT INTO `shift` VALUES (6,4,'2020-02-23 20:00:00','2020-02-23 22:00:00');
INSERT INTO `shift` VALUES (7,20,'2020-02-27 19:00:00','2020-02-27 21:00:00');
INSERT INTO `shift` VALUES (8,21,'2020-02-20 19:00:00','2020-02-20 21:00:00');
INSERT INTO `shift` VALUES (9,13,'2020-02-28 19:00:00','2020-02-28 21:00:00');
INSERT INTO `shift` VALUES (10,23,'2020-03-05 21:00:00','2020-03-05 23:00:00');
INSERT INTO `shift` VALUES (11,16,'2020-02-28 20:00:00','2020-02-28 22:00:00');
INSERT INTO `shift` VALUES (12,16,'2020-02-18 19:00:00','2020-02-18 21:00:00');
INSERT INTO `shift` VALUES (13,30,'2020-02-17 14:00:00','2020-02-17 16:00:00');
INSERT INTO `shift` VALUES (15,5,'2020-02-23 15:00:00','2020-02-23 17:00:00');
INSERT INTO `shift` VALUES (16,28,'2020-03-06 15:00:00','2020-03-06 17:00:00');
INSERT INTO `shift` VALUES (17,30,'2020-03-23 14:00:00','2020-03-23 16:00:00');
INSERT INTO `shift` VALUES (18,11,'2020-03-10 16:00:00','2020-03-10 18:00:00');
INSERT INTO `shift` VALUES (19,13,'2020-03-08 01:00:00','2020-03-08 03:00:00');
INSERT INTO `shift` VALUES (20,12,'2020-03-07 08:00:00','2020-03-07 10:00:00');

INSERT INTO `shift_request` VALUES (1,1,null, 1, 'tempor i', false);
INSERT INTO `shift_request` VALUES (2,2,null, 2, 'velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupi', false);
INSERT INTO `shift_request` VALUES (3,3,null, 3, 'dolor in reprehenderit in v', false);
INSERT INTO `shift_request` VALUES (4,4,null, 6, 'ad minim veniam, quis nostrud exerc', false);
INSERT INTO `shift_request` VALUES (5,8,null, 10, 'incididunt ut labore et dolore magna aliqua. Ut enim ad ', false);
INSERT INTO `shift_request` VALUES (6,10,null, 12,'consequat. Duis aute irure dolor in reprehenderit ', false);
INSERT INTO `shift_request` VALUES (7,18,null, 16,'eu fugiat nulla pariatur. Excepteur sint occ', false);
INSERT INTO `shift_request` VALUES (8,19,null, 19,'do eiusmod tempor incididunt ut labore et dolore magna aliqua. U', false);
