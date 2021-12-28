CREATE TABLE Seizoenen(
    SeizoenID int IDENTITY(1,1),
    SeizoenNaam nvarchar(50),
    Begindatum date NOT NULL,
    Einddatum date NOT NULL
);

CREATE TABLE Clubs(
    ClubID int IDENTITY(1,1),
    Clubnaam nvarchar(50) NOT NULL,
    Afkorting nvarchar(5) NOT NULL,
    Stadion nvarchar(50) NOT NULL,
    Stad nvarchar(50) NOT NULL,
    CONSTRAINT PK_Club PRIMARY KEY (ClubID)
);

CREATE TABLE Clubstats(
    ClubstatsID int IDENTITY(1,1),
    Winst int,
    Gelijk int,
    Verlies int,
    DoelpuntVoor int,
    DoelpuntTegen int,
    Punten int,
    ClubID int NOT NULL,
    SeizoenID int NOT NULL,
    CONSTRAINT PK_Clubstats PRIMARY KEY (ClubstatsID),
    CONSTRAINT FK_ClubID FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT FK_SeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID)
);

CREATE TABLE Spelers(
    SpelerID int IDENTITY(1,1),
    Voornaam nvarchar(50),
    Achternaam nvarchar(50) NOT NULL,
    Positie nvarchar(1) NOT NULL,
    Shirtnummer nvarchar(1) NOT NULL,
    ClubID int NOT NULL,
    CONSTRAINT PK_Speler PRIMARY KEY (SpelerID),
    CONSTRAINT FK_ClubID FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID)
);

CREATE TABLE Spelerstats(
    SpelerstatsID int IDENTITY(1,1),
    Doelpunt int,
    Assist int,
    GeleKaart int,
    RodeKaart int,
    Owngoal int,
    SpelerID int NOT NULL,
    SeizoenID int NOT NULL,
    CONSTRAINT PK_Spelerstats PRIMARY KEY (SpelerstatsID),
    CONSTRAINT FK_SpelerID FOREIGN KEY (SpelerID) REFERENCES Spelers(SpelerID),
    CONSTRAINT FK_SeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID)
);

CREATE TABLE Wedstrijden(
    WedstrijdID int IDENTITY(1,1),
    Speeldag int NOT NULL,
    ThuisClubID int NOT NULL,
    ThuisClubScore int,
    UitClubScore int,   
    UitClubID int NOT NULL,
    SeizoenID int NOT NULL,
    CONSTRAINT PK_Wedstrijd PRIMARY KEY (WedstrijdID),
    CONSTRAINT FK_ThuisClubID FOREIGN KEY (ThuisClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT FK_UitClubID FOREIGN KEY (UitClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT FK_SeizoenID FOREIGN KEY (SeizoenID) REFERENCES Seizoenen(SeizoenID)
);

CREATE TABLE SpelerWedstrijd(
    SpelerWedstrijdID int IDENTITY(1,1),
    Doelpunt int,
    Assist int,
    GeleKaart int,
    RodeKaart int,
    Owngoal int,
    SpelerID int NOT NULL,
    WedstrijdID int NOT NULL,  
    CONSTRAINT PK_SpelerWedstrijd PRIMARY KEY (SpelerWedstrijdID),
    CONSTRAINT FK_SpelerID FOREIGN KEY (SpelerID) REFERENCES Spelers(SpelerID),
    CONSTRAINT FK_WedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID)
);

/* CREATE TABLE Datums(
    DatumID int IDENTITY(1,1),
    Datum date,
    CONSTRAINT PK_Datum PRIMARY KEY (DatumID)
);

CREATE TABLE DatumWedstrijd(
    DatumWedstrijdID int IDENTITY(1,1),
    DatumID int NOT NULL,
    WedstrijdID int NOT NULL,
    CONSTRAINT PK_DatumWedstrijd PRIMARY KEY (DatumWedstrijdID),
    CONSTRAINT FK_DatumID FOREIGN KEY (DatumID) REFERENCES Datums(DatumID),
    CONSTRAINT FK_WedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID)
); */