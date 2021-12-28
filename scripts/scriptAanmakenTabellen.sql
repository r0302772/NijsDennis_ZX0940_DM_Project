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
    Stad nvarchar(50) NOT NULL
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
    SeizoenID int NOT NULL
);

CREATE TABLE Spelers(
    SpelerID int IDENTITY(1,1),
    Voornaam nvarchar(50),
    Achternaam nvarchar(50) NOT NULL,
    Positie nvarchar(1) NOT NULL,
    Shirtnummer nvarchar(1) NOT NULL,
    ClubID int NOT NULL
);

CREATE TABLE Spelerstats(
    SpelerstatsID int IDENTITY(1,1),
    Doelpunt int,
    Assist int,
    GeleKaart int,
    RodeKaart int,
    Owngoal int,
    SpelerID int NOT NULL,
    SeizoenID int NOT NULL
);

CREATE TABLE Wedstrijden(
    WedstrijdID int IDENTITY(1,1),   
    SeizoenID int NOT NULL,
    Speeldag int NOT NULL,
    ThuisClubID int NOT NULL,
    ThuisClubScore int,
    UitClubScore int,   
    UitClubID int NOT NULL
);

CREATE TABLE SpelerWedstrijd(
    SpelerWedstrijdID int IDENTITY(1,1),
    Doelpunt int,
    Assist int,
    GeleKaart int,
    RodeKaart int,
    Owngoal int,
    SpelerID int NOT NULL,
    WedstrijdID int NOT NULL
);

/* CREATE TABLE Datums(
    DatumID int IDENTITY(1,1),
    Datum date,
);

CREATE TABLE DatumWedstrijd(
    DatumWedstrijdID int IDENTITY(1,1),
    DatumID int NOT NULL,
    WedstrijdID int NOT NULL
); */