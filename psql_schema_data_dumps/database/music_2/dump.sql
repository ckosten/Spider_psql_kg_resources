BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Albums" ( 
	"AId" INTEGER PRIMARY KEY, 
	"Title" TEXT, 
	"Year" INTEGER, 
	"Label" TEXT, 
	"Type" TEXT );
CREATE TABLE IF NOT EXISTS "Band" ( 
	"Id" INTEGER PRIMARY KEY, 
	"Firstname" TEXT, 
	"Lastname" TEXT );
CREATE TABLE IF NOT EXISTS "Instruments" ( 
	"SongId" INTEGER, 
	"BandmateId" INTEGER, 
	"Instrument" TEXT ,
	PRIMARY KEY(SongId, BandmateId, Instrument),
	FOREIGN KEY (SongId) REFERENCES Songs(SongId),
	FOREIGN KEY (BandmateId) REFERENCES Band(Id)
);
CREATE TABLE IF NOT EXISTS "Performance" ( 
	"SongId" INTEGER, 
	"Bandmate" INTEGER, 
	"StagePosition" TEXT,
	PRIMARY KEY(SongId, Bandmate),
	FOREIGN KEY (SongId) REFERENCES Songs(SongId),
	FOREIGN KEY (Bandmate) REFERENCES Band(Id)
);
CREATE TABLE IF NOT EXISTS "Songs" ( 
	"SongId" INTEGER PRIMARY KEY, 
	"Title" TEXT 
);
CREATE TABLE IF NOT EXISTS "Tracklists" ( 
	"AlbumId" INTEGER, 
	"Position" INTEGER, 
	"SongId" INTEGER ,
	PRIMARY KEY(AlbumId, Position),
	FOREIGN KEY (SongId) REFERENCES Songs(SongId),
	FOREIGN KEY (AlbumId) REFERENCES Albums(AId)
);
CREATE TABLE IF NOT EXISTS "Vocals" ( 
	"SongId" INTEGER, 
	"Bandmate" INTEGER, 
	"Type" TEXT,
	PRIMARY KEY(SongId, Bandmate),
	FOREIGN KEY (SongId) REFERENCES Songs(SongId),
	FOREIGN KEY (Bandmate) REFERENCES Band(Id)
);
COMMIT;