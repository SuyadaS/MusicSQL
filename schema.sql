create table Userr(userID int,Username varchar(100),Passwd varchar(100) ,TotalStreaming int);

create table Artist(arID int, ArtistName varchar(100),ArtistType varchar(100),ArtistAffiliation varchar(100));

create table Album(albumID int, arID int, AlbumName varchar(100), AlbumType varchar(100), TotalTrack int, aRating float, aRelease int  );

create table Song(songID int,arID int,albumID int,SongName varchar(100),sDuration float,sRating float);

create table Playlist(pID int,userID int,PlaylistName varchar(100));

create table FavSong(songID int,userID int);

create table FavArtist(arID int,userID int);

create table pContain(pID int,songID int);

insert into Userr values(1 , 'Palmy' , '1234' , 35);
insert into Userr values(2 , 'Ip' , '5678' , 54);
insert into Userr values(3 , 'Beam' , '4321' , 66);
insert into Userr values(4 , 'Parn' , '8765' , 40);
insert into Userr values(5 , 'Por' , '0' , 13);


insert into Artist values(1 , 'Keshi' , 'Solo' , 'Island Records');
insert into Artist values(2 , 'Olivia Rodrigo' , 'Solo' , 'Interscope Geffen');
insert into Artist values(3 , 'Justin Bieber' , 'Solo' , 'Island Records');
insert into Artist values(4 , 'Lisa Blackpink' , 'Solo' , 'YG Entertainment');
insert into Artist values(5 , 'BTS' , 'Band' , 'Big Hit Entertainment');
insert into Artist values(6 , 'Rose Blackpink' , 'Solo' , 'YG Entertainment');
insert into Artist values(7 , 'UrboyTJ' , 'Solo' , 'T21');
insert into Artist values(8 , 'Blackbean' , 'Band' , 'KLAYBANMAT');
insert into Artist values(9, 'Serious Bacon' , 'Duet' , 'Boxx Music');
insert into Artist values(10 , 'Billkin' , 'Solo' , 'NadaoBangkok');
insert into Artist values(11 , 'Tomorrow X Together' , 'Band' , 'Big Hit Entertainment');



insert into Album values(1,1,'Always','EP',6,5,2020);
insert into Album values(2,1,'THE REAPER','EP',4,5,2018);
insert into Album values(3,1,'SOMEBODY','Single',1,null,2021);
insert into Album values(4,1,'just friends','Single',1,5,2017);
insert into Album values(5,2,'Sour','Studio Album',11,5,2021);
insert into Album values(6,3,'Justice','Studio Album',22,4,2021);
insert into Album values(7,3,'Purpose','Studio Album',19,5,2015);
insert into Album values(8,3,'My Worlds','Studio Album',19,5,2010);
insert into Album values(9,4,'Lalisa','Single',2,5,2021);
insert into Album values(10,5,'Butter','EP',4,5,2021);
insert into Album values(11,5,'BE','Studio Album',8,5,2020);
insert into Album values(12,5,'Map of The Soul : 7','Studio Album',20,5,2020);
insert into Album values(13,5,'Map of The Soul : PERSONA','Studio Album',7,5,2019);
insert into Album values(14,5,'Love Yourself TEAR','Studio Album',11,5,2018);
insert into Album values(15,5,'Love Yourself HER','Studio Album',9,5,2017);
insert into Album values(16,5,'WINGS','Studio Album',15,5,2015);
insert into Album values(17,5,'The Most Beautiful Moment In Life pt.1','Studio Album',9,5,2015);
insert into Album values(18,5,'The Most Beautiful Moment In Life pt.2','Studio Album',9,5,2015);
insert into Album values(19,5,'SKOOL LUV AFFAIR','Studio Album',10,5,2014);
insert into Album values(20,6,'R','Single',2,5,2021);
insert into Album values(21,7,'Selfmade','Studio Album',12,5,2020);
insert into Album values(22,7,'Khao Kon','Single',1,null,2016);
insert into Album values(23,7,'Wairai','Single',1,5,2016);
insert into Album values(24,7,'Chikko','Single',1,4.5,2017);
insert into Album values(25,8,'Wish','Single',1,null,2019);
insert into Album values(26,8,'You Are (Mean) a Lot to Me','Studio Album',11,null,2020);
insert into Album values(27,9,'Mai Yak Fang','Single',1,5,2021);
insert into Album values(28,9,'Phi Phi Tat Waen Hai Noi','Single',1,5,2020);
insert into Album values(29,9,'1001(You''r Lovely)','Single',1,5,2021);
insert into Album values(30,9,'Luem Khao Dai Yang','Single',1,null,2021);
insert into Album values(31,10,'Skyline','Single',1,5,2020);
insert into Album values(32,11,'The Dream Chapter : STAR','EP',5,5,2019);
insert into Album values(33,11,'The Dream Chapter : MAGIC','Studio Album',8,5,2019);
insert into Album values(34,11,'The Dream Chapter : ETERNITY','EP',6,null,2020);
insert into Album values(35,11,'Minisode 1 : Blue Hour','EP',5,5,2020);
insert into Album values(36,11,'The Chaos Chapter : FREEZE','Studio Album',8,5,2021);
insert into Album values(37,11,'The Chaos Chapter : FIGHT OR ESCAPE','Studio Album',11,5,2021);


insert into Song values(1,1,1,'Drunk',3.47,5);
insert into Song values(2,1,1,'Always',2.52,5);
insert into Song values(3,1,2,'like i need u',3.02,5);
insert into Song values(4,1,2,'2 soon',3.26,5);
insert into Song values(5,1,3,'SOMEBODY',2.44,null);
insert into Song values(6,1,4,'just friends',2.03,5);
insert into Song values(7,2,5,'Driver licence',4.02,5);
insert into Song values(8,2,5,'good 4 u',2.58,5);
insert into Song values(9,2,5,'deja vu',3.35,5);
insert into Song values(10,3,6,'Peaches',3.18,5);
insert into Song values(11,3,6,'Off My Face',2.36,5);
insert into Song values(12,3,6,'Hold On',2.5,5);
insert into Song values(13,3,7,'I''ll Show You',3.19,5);
insert into Song values(14,3,7,'Love Yourself',3.53,5);
insert into Song values(15,3,7,'The Feeling',4.04,5);
insert into Song values(16,3,8,'Eenie Meenie',3.22,5);
insert into Song values(17,3,8,'Baby',3.33,5);
insert into Song values(18,3,8,' Somebody To Love',3.4,5);
insert into Song values(19,4,9,'Money',2.48,5);
insert into Song values(20,5,10,'Butter',2.44,5);
insert into Song values(21,5,10,'Permission To Dance',3.07,5);
insert into Song values(22,5,11,'Telepathy',3.22,5);
insert into Song values(23,5,11,'Dynamite',3.19,5);
insert into Song values(24,5,11,'Life Goes On',3.27,5);
insert into Song values(25,5,12,'ON',3.46,5);
insert into Song values(26,5,12,'Dionysus',4.09,5);
insert into Song values(27,5,12,'Black Swan',3.18,5);
insert into Song values(28,5,13,'Boy With Love',3.49,5);
insert into Song values(29,5,13,'Make It Right',3.46,5);
insert into Song values(30,5,13,'Dionysus',4.09,5);
insert into Song values(31,5,14,'Fake Love',4.02,5);
insert into Song values(32,5,14,'Magic Shop',4.35,5);
insert into Song values(33,5,14,'134340',3.5,5);
insert into Song values(34,5,15,'DNA',3.43,5);
insert into Song values(35,5,15,'Best Of Me',3.47,5);
insert into Song values(36,5,15,'MIC Drop',3.58,5);
insert into Song values(37,5,16,'Blood Sweat & Tears',3.37,5);
insert into Song values(38,5,16,'Lie',3.35,5);
insert into Song values(39,5,16,'First Love',3.09,5);
insert into Song values(40,5,17,'Run',3.56,5);
insert into Song values(41,5,17,'Butterfly',3.58,5);
insert into Song values(42,5,17,'Ma City',4.16,5);
insert into Song values(43,5,18,'I Need U',3.3,5);
insert into Song values(44,5,18,'Dope',4,5);
insert into Song values(45,5,18,'Moving On',4.52,5);
insert into Song values(46,5,19,'Boy in Luv',3.5,5);
insert into Song values(47,5,19,'Tomorrow',4.21,5);
insert into Song values(48,5,19,'Jump',3.56,5);
insert into Song values(49,6,20,'Gone',3.27,5);
insert into Song values(50,7,21,'Super Sai Ya',2.55,5);
insert into Song values(51,7,21,'Kot Dai Mai',3.29,5);
insert into Song values(52,7,21,'Tham Kham',3.39,5);
insert into Song values(53,7,22,'Khao Kon',3.06,null);
insert into Song values(54,7,23,'Wairai',3.28,5);
insert into Song values(55,7,24,'Chikko',2.59,4.5);
insert into Song values(56,8,25,'Wish',4.31,null);
insert into Song values(57,8,26,'Him',3.53,null);
insert into Song values(58,8,26,'Moon',4.03,null);
insert into Song values(59,8,26,'Wish',4.31,null);
insert into Song values(60,9,27,'Mai Yak Fang',4.38,5);
insert into Song values(61,9,28,'Phi Phi Tat Waen Hai Noi',3.39,5);
insert into Song values(62,9,29,'1001(You''re Lovely)',3.14,5);
insert into Song values(63,9,30,'Luem Khao Dai Yang',3.19,5);
insert into Song values(64,10,31,'Skyline',3.37,5);
insert into Song values(65,11,32,'Crown',3.5,5);
insert into Song values(66,11,32,'Our Summer',3.3,5);
insert into Song values(67,11,33,'Run Away',3.31,5);
insert into Song values(68,11,33,'20cm',3.37,5);
insert into Song values(69,11,33,'New Rules',2.54,5);
insert into Song values(70,11,34,'Can''t You See Me',3.21,null);
insert into Song values(71,11,34,'Puma',3.25,null);
insert into Song values(72,11,35,'Blue Hour',3.29,5);
insert into Song values(73,11,35,'Wishlist',3.11,5);
insert into Song values(74,11,36,'0X1=LOVESONG',3.22,5);
insert into Song values(75,11,36,'No Rules',3.06,5);
insert into Song values(76,11,36,'Magic',2.39,5);
insert into Song values(77,11,37,'LOSER=LOVER',3.19,5);
insert into Song values(78,11,37,'No Rules',3.06,5);
insert into Song values(79,11,37,'Frost',3.14,5);



insert into Playlist values(1,1,'PMmusic');
insert into Playlist values(2,2,'IPmusic');
insert into Playlist values(3,3,'BeamMmusic');
insert into Playlist values(4,4,'Parnmusic');
insert into Playlist values(5,5,'Pormusic');


insert into FavSong values(1,1);
insert into FavSong values(56,1);
insert into FavSong values(60,1);
insert into FavSong values(74,2);
insert into FavSong values(75,2);
insert into FavSong values(67,2);
insert into FavSong values(31,2);
insert into FavSong values(10,2);
insert into FavSong values(7,3);
insert into FavSong values(10,3);
insert into FavSong values(55,3);
insert into FavSong values(19,4);
insert into FavSong values(50,5);
insert into FavSong values(51,5);
insert into FavSong values(14,5);
insert into FavSong values(31,5);


insert into FavArtist values(1,1);
insert into FavArtist values(2,1);
insert into FavArtist values(8,1);
insert into FavArtist values(9,1);
insert into FavArtist values(10,2);
insert into FavArtist values(3,2);
insert into FavArtist values(5,2);
insert into FavArtist values(7,2);
insert into FavArtist values(11,2);
insert into FavArtist values(3,2);
insert into FavArtist values(7,3);
insert into FavArtist values(4,4);
insert into FavArtist values(6,4);
insert into FavArtist values(1,5);
insert into FavArtist values(4,5);
insert into FavArtist values(7,5);


insert into pContain values(1,1);
insert into pContain values(1,8);
insert into pContain values(1,52);
insert into pContain values(1,56);
insert into pContain values(2,16);
insert into pContain values(2,22);
insert into pContain values(2,31);
insert into pContain values(2,60);
insert into pContain values(2,67);
insert into pContain values(2,73);
insert into pContain values(2,74);
insert into pContain values(3,7);
insert into pContain values(3,10);
insert into pContain values(3,19);
insert into pContain values(3,50);
insert into pContain values(3,54);
insert into pContain values(3,55);
insert into pContain values(3,64);
insert into pContain values(4,14);
insert into pContain values(4,10);
insert into pContain values(4,19);
insert into pContain values(4,49);
insert into pContain values(4,51);
insert into pContain values(5,17);
insert into pContain values(5,10);
insert into pContain values(5,31);
insert into pContain values(5,53);
insert into pContain values(5,58);
insert into pContain values(5,63);