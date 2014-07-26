create table states
(id int,
name varchar(25),
population bigint,
pct_non_hisp_white decimal(4,2),
pct_hisp decimal(4,2),
pct_black decimal(4,2),
pct_na decimal(4,2),
pct_asian decimal(4,2),
pct_hpi decimal(4,2),
pct_mixed decimal(4,2),
region varchar(1));

create table sections
(id int,
section varchar(5),
description varchar(135),
status varchar(140));

create table cities
(name varchar(25),
population bigint,
area_sq_miles decimal(8,2),
state_id int);

create table sections_states
(state_id int,
section_id int);



insert into states (id,name,population,pct_non_hisp_white,pct_hisp,pct_black,pct_na,pct_asian,pct_hpi,pct_mixed,region)
values
(1,'Alabama',4822023,67,3.9,26.2,0.6,1.1,0,1.5,'s'),
(2,'Alaska',731449,64.1,5.5,3.3,14.8,5.4,1,7.3,'w'),
(3,'Arizona',6553255,57.8,29.6,4.1,4.6,2.8,0.2,3.4,'w'),
(4,'Arkansas',2949131,74.5,6.4,15.4,0.8,1.2,0.2,2,'s'),
(5,'California',38041430,40.1,37.6,6.2,1,13,0.4,4.9,'w'),
(6,'Colorado',5187582,70,20.7,4,1.1,2.8,0.1,3.4,'w'),
(7,'Connecticut',3590347,71.2,13.4,10.1,0.3,3.8,0,2.6,'n'),
(8,'Delaware',917092,65.3,8.2,21.4,0.5,3.2,0,2.7,'s'),
(9,'District of Columbia',632323,35.5,9.9,50.1,0.6,3.8,0.2,2.5,'s'),
(10,'Florida',19317568,57.9,22.5,16,0.4,2.4,0.1,2.5,'s'),
(11,'Georgia',9919945,55.9,8.8,30.5,0.3,3.2,0.1,2.1,'s'),
(12,'Hawaii',1392313,22.7,8.9,1.6,0.3,38.6,10,23.6,'w'),
(13,'Idaho',1595728,84,11.2,0.6,1.4,1.2,0.1,2.5,'w'),
(14,'Illinois',12875255,63.7,15.8,14.5,0.3,4.6,0,2.3,'m'),
(15,'Indiana',6537334,81.5,6,9.1,0.3,1.6,0,2,'m'),
(16,'Iowa',3074186,88.7,5,2.9,0.4,1.7,0.1,1.8,'m'),
(17,'Kansas',2885905,78.2,10.5,5.9,1,2.4,0.1,3,'m'),
(18,'Kentucky',4380415,86.3,3.1,7.8,0.2,1.1,0.1,1.7,'s'),
(19,'Louisiana',4601893,60.3,4.2,32,0.7,1.5,0,1.6,'s'),
(20,'Maine',1329192,94.4,1.3,1.2,0.6,1,0,1.6,'n'),
(21,'Maryland',5884563,54.7,8.2,29.4,0.4,5.5,0.1,2.9,'s'),
(22,'Massachusetts',6646144,76.1,9.6,6.6,0.3,5.3,0,2.6,'n'),
(23,'Michigan',9883360,76.6,4.4,14.2,0.6,2.4,0,2.3,'m'),
(24,'Minnesota',5379139,83.1,4.7,5.2,1.1,4,0,2.4,'m'),
(25,'Mississippi',2984926,58,2.7,37,0.5,0.9,0,1.1,'s'),
(26,'Missouri',6021988,81,3.5,11.6,0.5,1.6,0.1,2.1,'s'),
(27,'Montana',1005141,87.8,2.9,0.4,6.3,0.6,0.1,2.5,'w'),
(28,'Nebraska',1855525,82.1,9.2,4.5,1,1.8,0.1,2.2,'m'),
(29,'Nevada',2758931,54.1,26.5,8.1,1.2,7.2,0.2,4.7,'w'),
(30,'New Hampshire',1320718,92.3,2.8,1.1,0.2,2.2,0,1.6,'n'),
(31,'New Jersey',8864590,59.3,17.7,13.7,0.3,8.3,0,2.7,'n'),
(32,'New Mexico',2085538,40.5,46.3,2.1,9.4,1.4,0.1,3.7,'w'),
(33,'New York',19570261,58.3,17.6,15.9,0.6,7.3,0,3,'n'),
(34,'North Carolina',9656401,65.3,8.4,21.5,1.3,2.2,0.1,2.2,'s'),
(35,'North Dakota',699628,88.9,2,1.2,5.4,1,0,1.8,'m'),
(36,'Ohio',11544225,81.1,3.1,12.2,0.2,1.7,0,2.1,'m'),
(37,'Oklahoma',3814820,68.7,8.9,7.4,8.6,1.7,0.1,5.9,'s'),
(38,'Oregon',3899353,78.5,11.7,1.8,1.4,3.7,0.3,3.8,'w'),
(39,'Pennsylvania',12763536,79.5,5.7,10.8,0.2,2.7,0,1.9,'n'),
(40,'Rhode Island',1050292,76.4,12.4,5.7,0.6,2.9,0.1,3.3,'n'),
(41,'South Carolina',4723723,64.1,5.1,27.9,0.4,1.3,0.1,1.7,'s'),
(42,'South Dakota',833354,84.7,2.7,1.3,8.8,0.9,0,2.1,'m'),
(43,'Tennessee',6456243,75.6,4.6,16.7,0.3,1.4,0.1,1.7,'s'),
(44,'Texas',26059203,45.3,37.6,11.8,0.7,3.8,0.1,2.7,'s'),
(45,'Utah',2855287,80.4,13,1.1,1.2,2,0.9,2.7,'w'),
(46,'Vermont',626011,94.3,1.5,1,0.4,1.3,0,1.7,'n'),
(47,'Virginia',8185867,64.8,7.9,19.4,0.4,5.5,0.1,2.9,'s'),
(48,'Washington',6897012,72.5,11.2,3.6,1.5,7.2,0.6,4.7,'w'),
(49,'West Virginia',1855413,93.2,1.2,3.4,0.2,0.7,0,1.5,'s'),
(50,'Wisconsin',5726386,83.3,5.9,6.3,1,2.3,0,1.8,'m'),
(51,'Wyoming',576412,85.9,8.9,0.8,2.4,0.8,0.1,2.2,'w');

insert into sections
(id,section,description,status)
values
(1,5,'Requires preclearence for any election changes','dead'),
(2,203,'Requires that voting information be published in one or more minority languages','alive and well');


insert into cities (name,population,area_sq_miles,state_id)
values
('New York',8405837,302.6,33),
('Los Angeles',3884307,468.7,5),
('Chicago',2718782,227.6,14),
('Houston',2195914,599.6,44),
('Philadelphia',1553165,134.1,39),
('Phoenix',1513367,516.7,3),
('San Antonio',1409019,460.9,44),
('San Diego',1355896,325.2,5),
('Dallas',1257676,340.5,44),
('San Jose',998537,176.5,5),
('Austin',885400,297.9,44),
('Indianapolis',843393,361.4,15),
('Jacksonville',842583,747,10),
('San Francisco',837442,46.9,5),
('Columbus',822553,217.2,36),
('Charlotte',792862,297.7,34),
('Fort Worth',792727,339.8,44),
('Detroit',688701,138.8,23),
('El Paso',674433,255.2,44),
('Memphis',653450,315.1,43),
('Seattle',652405,83.9,48),
('Denver',649495,153,6),
('Washington',646449,61,9),
('Boston',645966,48.3,22),
('Nashville',634464,475.1,43),
('Baltimore',622104,80.9,21),
('Oklahoma City',610613,606.4,37),
('Louisville',609893,325.2,18),
('Portland',609456,133.4,38),
('Las Vegas',603488,135.8,29),
('Milwaukee',599164,96.1,50),
('Albuquerque',556495,187.7,32),
('Tucson',526116,226.7,3),
('Fresno',509924,112,5),
('Sacramento',479686,97.9,5),
('Long Beach',469428,50.3,5),
('Kansas City',467007,315,26),
('Mesa',457587,136.5,3),
('Virginia Beach',448479,249,47),
('Atlanta',447841,133.2,11),
('Colorado Springs',439886,194.5,6),
('Omaha',434353,127.1,28),
('Raleigh',431746,142.9,34),
('Miami',417650,35.9,10),
('Oakland',406253,55.8,5),
('Minneapolis',400070,54,24),
('Tulsa',398121,196.8,37),
('Cleveland',390113,77.7,36),
('Wichita',386552,159.3,17),
('Arlington',379577,95.9,44);

insert into sections_states
(state_id,section_id)
values
(1,1),
(2,2),
(2,1),
(3,2),
(3,1),
(5,2),
(5,1),
(6,2),
(7,2),
(10,2),
(10,1),
(11,1),
(12,2),
(13,2),
(14,2),
(17,2),
(19,2),
(19,1),
(21,2),
(22,2),
(23,2),
(23,1),
(25,2),
(25,1),
(27,2),
(28,2),
(29,2),
(30,2),
(31,2),
(32,2),
(33,2),
(33,1),
(34,2),
(34,1),
(35,2),
(37,2),
(38,2),
(39,2),
(40,2),
(41,1),
(42,2),
(42,1),
(44,2),
(44,1),
(45,2),
(47,1),
(48,2);
