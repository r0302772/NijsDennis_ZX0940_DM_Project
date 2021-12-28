CREATE TABLE Seizoenen(
    SeizoenID int IDENTITY(1,1),
    SeizoenNaam nvarchar(50),
    Begindatum date,
    Einddatum date
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
    Winst int NOT NULL,
    Gelijk int NOT NULL,
    Verlies int NOT NULL,
    DoelpuntVoor int NOT NULL,
    DoelpuntTegen int NOT NULL,
    Punten int NOT NULL,
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
    Doelpunt int NULL,
    Assist int NULL,
    GeleKaart int NULL,
    RodeKaart int NULL,
    Owngoal int NULL,
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
    CONSTRAINT PK_Wedstrijd PRIMARY KEY (WedstrijdID),
    CONSTRAINT FK_ThuisClubID FOREIGN KEY (ThuisClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT FK_UitClubID FOREIGN KEY (UitClubID) REFERENCES Clubs(ClubID)
);

CREATE TABLE SpelerWedstrijd(
    SpelerWedstrijdID int IDENTITY(1,1),
    Doelpunt int NULL,
    Assist int NULL,
    GeleKaart int NULL,
    RodeKaart int NULL,
    Owngoal int NULL,
    SpelerID int NOT NULL,
    WedstrijdID int NOT NULL,  
    CONSTRAINT PK_SpelerWedstrijd PRIMARY KEY (SpelerWedstrijdID),
    CONSTRAINT FK_WedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID)
);