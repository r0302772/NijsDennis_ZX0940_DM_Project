CREATE TABLE Clubs(
    ID int IDENTITY(1,1),
    Clubnaam nvarchar(50) NOT NULL,
    Afkorting nvarchar(5) NOT NULL,
    Winst int NOT NULL,
    Gelijk int NOT NULL,
    Verlies int NOT NULL,
    DoelpuntVoor int NOT NULL,
    DoelpuntTegen int NOT NULL,
    Punten int NOT NULL,
    Stadion nvarchar(50) NOT NULL,
    Stad nvarchar(50) NOT NULL,
    CONSTRAINT PK_Club PRIMARY KEY (ID)
);

CREATE TABLE Spelers(
    ID int IDENTITY(1,1),
    Voornaam nvarchar(50),
    Achternaam nvarchar(50) NOT NULL,
    Positie nvarchar(1) NOT NULL,
    Rugnummer nvarchar(1) NOT NULL,
    ClubID int NOT NULL,
    Doelpunt int NOT NULL,
    Assist int NOT NULL,
    GeleKaart int NOT NULL,
    RodeKaart int NOT NULL,
    Owngoal int NOT NULL,
    CONSTRAINT PK_Speler PRIMARY KEY (ID),
    CONSTRAINT FK_ClubID FOREIGN KEY (ClubID) REFERENCES Clubs(ID)
);

CREATE TABLE Wedstrijden(
    ID int IDENTITY(1,1),
    Speeldag int NOT NULL,
    ThuisClubID int NOT NULL,
    ThuisClubScore int NOT NULL,
    UitClubScore int NOT NULL,   
    UitClubID int NOT NULL,
    CONSTRAINT PK_Wedstrijd PRIMARY KEY (ID),
    CONSTRAINT FK_ThuisClubID FOREIGN KEY (ThuisClubID) REFERENCES Clubs(ID),
    CONSTRAINT FK_UitClubID FOREIGN KEY (UitClubID) REFERENCES Clubs(ID)
);

CREATE TABLE SpelerWedstrijd(
    ID int IDENTITY(1,1),
    SpelerID int NOT NULL,
    WedstrijdID int NOT NULL,
    Doelpunt int NOT NULL,
    Assist int NOT NULL,
    GeleKaart int NOT NULL,
    RodeKaart int NOT NULL,
    Owngoal int NOT null,
    CONSTRAINT PK_SpelerWedstrijd PRIMARY KEY (ID),
    CONSTRAINT FK_WedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(ID)
);