/*****************************************************************************
SELECT
SongName and songID of the song that have its duplicate in name but different in ID
and were a favorite song of user.
*****************************************************************************/

select S1.SongName,S1.songID
from Song S1, Song S2
where S1.songID in (select songID from FavSong) and S1.SongName = S2.SongName and S1.songID <> S2.songID;


/*****************************************************************************
INSERT
Insert songs that never have been inserted into any playlist before to PMmusic
and its duration is less than 3.00 mins
*****************************************************************************/

/***check which songs do we have to insert***/
select songID,sDuration
from Song
where songID not in (select songID from pContain) and sDuration < 3.00;

/***Insert into PMmusic (playlist id number = 1)***/ 
insert into pContain (pID,songID)
  select 1,songID
  from Song
  where songID not in (select songID from pContain) and sDuration < 3.00;

/***Check result***/
select *
from pContain;



/*****************************************************************************
Update
change arID of artist in Favartist of the user who has total streaming
less than 40, from arID of UrboyTJ to arID of the artist that is a solo artist and have the most value of arID
*****************************************************************************/

/*** see which arID of which user should we update and see
which arID of the solo artist we should get***/
select userID, TotalStreaming
from Userr
where TotalStreaming < 40;

select max(arID), ArtistType
from Artist
where ArtistType = 'Solo';

/*** Update data in FavArtist* **/
update FavArtist
set arID = (select max(arID) from Artist where ArtistType = 'Solo')
where arID in (select arID from Artist where ArtistName='UrboyTJ') and userID in (select userID from Userr where TotalStreaming < 40);

/*** Check result ***/
select * 
from FavArtist;



/*****************************************************************************
DELETE
Delete all albums and songs that release before year 2020 and have no rating
*****************************************************************************/

/*** see what album and its song that we should delete***/
select albumID, aRating
from Album
where aRelease < 2020 and aRating is null;

/*** Delete From Song ***/
delete from Song
where albumID in (select albumID from Album where aRelease < 2020 and aRating is null);

/*** Delete From Album***/
delete from Album
where aRelease < 2020 and aRating is null;

/*** Check result ***/
select *
from Song;

select *
from Album;

