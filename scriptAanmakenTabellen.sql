CREATE TABLE Clubs(
    ID int IDENTITY(1,1) PRIMARY KEY,
    Clubnaam nvarchar(50) NOT NULL,
    Afkorting nvarchar(5), NOT NULL,
    Winst int NOT NULL,
    Gelijk int NOT NULL,
    Verlies int NOT NULL,
    DoelpuntVoor int NOT NULL,
    DoelpuntTegen int NOT NULL,
    Punten int NOT NULL,
    Stadion nvarchar(50) NOT NULL,
    Stad nvarchar(50) NOT NULL
);

CREATE TABLE Spelers(
    ID int IDENTITY(1,1) PRIMARY KEY,
    Voornaam nvarchar(50),
    Achternaam nvarchar(50) NOT NULL,
    Positie nvarchar(1) NOT NULL,
    Rugnummer nvarchar(1) NOT NULL,
    ClubID int FOREIGN KEY REFERENCES Clubs(ID),
    Doelpunt int NOT NULL,
    Assist int NOT NULL,
    GeleKaart int NOT NULL,
    RodeKaart int NOT NULL,
    Owngoal int NOT NULL
);

