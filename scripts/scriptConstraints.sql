ALTER TABLE Seizoenen
ADD CONSTRAINT PK_Seizoen PRIMARY KEY (SeizoenID);

ALTER TABLE Clubs
ADD CONSTRAINT PK_Club PRIMARY KEY (ClubID);
ALTER TABLE Clubs
ADD CONSTRAINT UC_Clubnaam UNIQUE (Clubnaam);

ALTER TABLE Clubstats
ADD CONSTRAINT PK_Clubstats PRIMARY KEY (ClubstatsID);
ALTER TABLE Clubstats
ADD CONSTRAINT FK_ClubstatsClubID FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID);
ALTER TABLE Clubstats
ADD CONSTRAINT FK_ClubstatsSeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID);

ALTER TABLE Spelers
ADD CONSTRAINT PK_Speler PRIMARY KEY (SpelerID);
ALTER TABLE Spelers
ADD CONSTRAINT FK_SpelerClubID FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID);
ALTER TABLE Spelers
ADD CONSTRAINT UC_Spelernaam UNIQUE (Voornaam,Achternaam,Shirtnummer,ClubID);

ALTER TABLE Spelerstats
ADD CONSTRAINT PK_Spelerstats PRIMARY KEY (SpelerstatsID);
ALTER TABLE Spelerstats
ADD CONSTRAINT FK_SpelerstatsSpelerID FOREIGN KEY (SpelerID) REFERENCES Spelers(SpelerID);
ALTER TABLE Spelerstats
ADD CONSTRAINT FK_SpelerstatsSeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID);

ALTER TABLE Wedstrijden
ADD CONSTRAINT PK_Wedstrijd PRIMARY KEY (WedstrijdID);
ALTER TABLE Wedstrijden
ADD CONSTRAINT FK_WedstrijdThuisClubID FOREIGN KEY (ThuisClubID) REFERENCES Clubs(ClubID);
ALTER TABLE Wedstrijden
ADD CONSTRAINT FK_WedstrijdUitClubID FOREIGN KEY (UitClubID) REFERENCES Clubs(ClubID);
ALTER TABLE Wedstrijden
ADD CONSTRAINT FK_WedstrijdSeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID);

ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT PK_SpelerWedstrijd PRIMARY KEY (SpelerWedstrijdID);
ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT FK_SpelerWedstrijdSpelerID FOREIGN KEY (SpelerID) REFERENCES Spelers(SpelerID);
ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT FK_SpelerWedstrijdWedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID);

/* 
ALTER TABLE Datums
ADD CONSTRAINT PK_Datum PRIMARY KEY (DatumID);

ALTER TABLE DatumWedstrijd    
ADD CONSTRAINT PK_DatumWedstrijd PRIMARY KEY (DatumWedstrijdID),
ADD CONSTRAINT FK_DatumID FOREIGN KEY (DatumID) REFERENCES Datums(DatumID),
ADD CONSTRAINT FK_WedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID);
*/


/*
ALTER TABLE Clubstats
DROP CONSTRAINT PK_Clubstats;
ALTER TABLE Clubstats
DROP CONSTRAINT FK_ClubstatsClubID;
ALTER TABLE Clubstats
DROP CONSTRAINT FK_ClubstatsSeizoenID;

ALTER TABLE Spelerstats
DROP CONSTRAINT PK_Spelerstats;
ALTER TABLE Spelerstats
DROP CONSTRAINT FK_SpelerstatsSpelerID;
ALTER TABLE Spelerstats
DROP CONSTRAINT FK_SpelerstatsSeizoenID;

ALTER TABLE Wedstrijden
DROP CONSTRAINT PK_Wedstrijd;
ALTER TABLE Wedstrijden
DROP CONSTRAINT FK_WedstrijdThuisClubID;
ALTER TABLE Wedstrijden
DROP CONSTRAINT FK_WedstrijdUitClubID;
ALTER TABLE Wedstrijden
DROP CONSTRAINT FK_WedstrijdSeizoenID;

ALTER TABLE SpelerWedstrijd
DROP CONSTRAINT PK_SpelerWedstrijd;
ALTER TABLE SpelerWedstrijd
DROP CONSTRAINT FK_SpelerWedstrijdSpelerID;
ALTER TABLE SpelerWedstrijd
DROP CONSTRAINT FK_SpelerWedstrijdWedstrijdID;

ALTER TABLE Spelers
DROP CONSTRAINT PK_Speler;
ALTER TABLE Spelers
DROP CONSTRAINT FK_SpelerClubID;

ALTER TABLE Clubs
DROP CONSTRAINT PK_Club;

ALTER TABLE Seizoenen
DROP CONSTRAINT PK_Seizoen;
*/