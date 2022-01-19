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
    Shirtnummer nvarchar(2) NOT NULL,
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

INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Arsenal', 'ARS', 'Emirates Stadium', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Aston Villa', 'AVL', 'Villa Park', 'Birmingham');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Brentford', 'BRE', 'Brentford Community Stadium', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Brighton & Hove Albion','BHA',  'The Amex', 'Brighton');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Burnley', 'BUR', 'Turf Moor', 'Burnley');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Chelsea', 'CHE', 'Stamford Bridge', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Crystal Palace', 'CRY', 'Selhurst Park', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Everton', 'EVE', 'Goodison Park', 'Liverpool');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Leeds United', 'LEE', 'Elland Road', 'Leeds');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Leicester City', 'LEI', 'King Power Stadium', 'Leicester');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Liverpool', 'LIV', 'Anfield', 'Liverpool');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Manchester City', 'MCI', 'Etihad Stadium', 'Manchester');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Manchester United', 'MUN', 'Old Trafford', 'Manchester');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Newcastle United', 'NEW', 'St James Park', 'Newcastle');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Norwich City', 'NOR', 'Carrow Road', 'Norwich');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Southampton', 'SOU', 'St Marys Stadium', 'Southampton');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Tottenham Hotspur', 'TOT', 'Tottenham Hotspur Stadium', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Watford', 'WAT', 'Vicarage Road', 'Watford');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('West Ham United', 'WHU', 'London Stadium', 'London');
INSERT INTO Clubs (Clubnaam, Afkorting, Stadion, Stad) VALUES ('Wolverhampton Wanderers', 'WOL', 'Molineux Stadium', 'Wolverhampton');

INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 0, 2, 0, 1, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 2, 3, 0, 2, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 2, 0, 3, 3, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 2, 1, 3, 4, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 1, 2, 0, 5, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 3, 0, 3, 6, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 0, 3, 0, 7, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 3, 1, 3, 8, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 1, 5, 0, 9, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 1, 0, 3, 10, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 3, 0, 3, 11, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 0, 1, 0, 12, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 5, 1, 3, 13, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 2, 4, 0, 14, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 0, 3, 0, 15, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 1, 3, 0, 16, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 1, 0, 3, 17, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 3, 2, 3, 18, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (1, 0, 0, 4, 2, 3, 19, 1);
INSERT INTO Clubstats(Winst, Gelijk, Verlies, DoelpuntVoor, DoelpuntTegen, Punten, ClubID, SeizoenID) VALUES (0, 0, 1, 0, 1, 0, 20, 1);

INSERT INTO Seizoenen(SeizoenNaam, Begindatum, Einddatum) VALUES ('Seizoen 2021/2022','2021-08-13','2022-05-22');

-- Arsenal

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bernd', 'Leno', 'D', '1', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aaron', 'Ramsdale', 'D', '32', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Calum', 'Chambers', 'V', '21', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Gabriel', 'V', '6', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Rob', 'Holding', 'V', '16', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sead', 'Kolasinac', 'V', '31', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ainsley', 'Maitland-Niles', 'V', '15', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pablo', 'Mari', 'V', '22', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Soares', 'Cedric', 'V', '17', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Taveres', 'Nuno', 'V', '20', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kieran', 'Tierney', 'V', '3', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Takehiro', 'Tomiyasu', 'V', '18', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'White', 'V', '4', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mohamed', 'Elneny', 'M', '25', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sambi', 'Lokonga', 'M', '23', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Martin', 'Odegaard', 'M', '8', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Thomas', 'Partey', 'M', '5', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bukayo', 'Saka', 'M', '7', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Emile', 'Smith Rowe', 'M', '10', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Granit', 'Xhaka', 'M', '34', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pierre-Emerick', 'Aubameyang', 'A', '14', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Folarin', 'Balogun', 'A', '26', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alexandre', 'Lacazette', 'A', '9', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Gabriel', 'Martinelli', 'A', '35', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Edward', 'Nketiah', 'A', '30', 1);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nicolas', 'Pepe', 'A', '19', 1);

--Aston Villa

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Emiliano', 'Martinez', 'D', '1', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jed', 'Steer', 'D', '12', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matty', 'Cash', 'V', '2', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kortney', 'Hause', 'V', '30', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ezri', 'Konsa', 'V', '4', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tyrone', 'Mings', 'V', '5', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matt', 'Targett', 'V', '3', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Axel', 'Tuanzebe ', 'V', '16', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Emiliano', 'Buendia', 'M', '10', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Carney', 'Chukwuemeka', 'M', '33', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Anwar', 'El-Ghazi', 'M', '21', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Douglas', 'Luiz', 'M', '6', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('John', 'McGinn', 'M', '7', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marvelous', 'Nakamba', 'M', '19', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jacob', 'Ramsey', 'M', '41', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Morgan', 'Sanson', 'M', '8', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ashley', 'Young', 'M', '18', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cameron', 'Archer', 'A', '35', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Leon', 'Bailey', 'A', '31', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Keinan', 'Davis', 'A', '9', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Danny', 'Ings', 'A', '20', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jaden', 'Philogene-Bidace', 'A', '32', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bertrand', 'Traore', 'A', '15', 2);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ollie', 'Watkins', 'A', '11', 2);

--Brentford

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Fernandez', 'Alvaro', 'D', '40', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('David', 'Raya', 'D', '1', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kristoffer', 'Ajer', 'V', '20', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mads', 'Bech Sorensen', 'V', '29', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Charlie', 'Goode', 'V', '4', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Rico', 'Henry', 'V', '3', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pontus', 'Jansson', 'V', '18', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mathias', 'Jorgensen', 'V', '22', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ethan', 'Pinnock', 'V', '5', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mads', 'Roerslev Rasmussen', 'V', '30', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Shandon', 'Baptiste', 'M', '26', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mads', 'Bidstrup', 'M', '28', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sergi', 'Canos', 'M', '7', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Saman', 'Ghoddos', 'M', '14', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Vitaly', 'Janelt', 'M', '27', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mathias', 'Jensen', 'M', '8', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Christian', 'Norgaard', 'M', '6', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Frank', 'Onyeka', 'M', '15', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marcus', 'Forss', 'A', '9', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bryan', 'Mbeumo', 'A', '19', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ivan', 'Toney', 'A', '17', 3);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Yoane', 'Wissa', 'A', '11', 3);

--Brighton

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Robert', 'Sanchez', 'D', '1', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jason', 'Steele', 'D', '23', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dan', 'Burn', 'V', '33', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marc', 'Cucurella', 'V', '3', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Shane', 'Duffy', 'V', '24', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Lewis', 'Dunk', 'V', '5', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tariq', 'Lamptey', 'V', '2', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joel', 'Veltman', 'V', '34', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Webster', 'V', '4', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Steven', 'Alzate', 'M', '17', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Yves', 'Bissouma', 'M', '8', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pascal', 'Gross', 'M', '13', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Lallana', 'M', '14', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alexis', 'Mac Allister', 'M', '10', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Solomon', 'March', 'M', '20', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jakub', 'Moder', 'M', '15', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Enock', 'Mwepu', 'M', '12', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Taylor', 'Richards', 'M', '30', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jeremy', 'Sarmiento', 'M', '60', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Leandro', 'Trossard', 'M', '11', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aaron', 'Connolly', 'A', '7', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jurgen', 'Locadia', 'A', '27', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Neal', 'Maupay', 'A', '9', 4);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Danny', 'Welbeck', 'A', '18', 4);

--Burnley

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nick', 'Pope', 'D', '1', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nathan Michael', 'Collins', 'V', '22', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matthew', 'Lowton', 'V', '2', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'Mee', 'V', '6', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Erik', 'Pieters', 'V', '23', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Connor', 'Roberts', 'V', '14', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'Tarkowski', 'V', '5', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Charlie', 'Taylor', 'V', '3', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Josh', 'Brownhill', 'M', '8', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jack', 'Cork', 'M', '4', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Johann', 'Gudmundsson', 'M', '7', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aaron', 'Lennon', 'M', '17', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dwight', 'McNeil', 'M', '11', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ashley', 'Westwood', 'M', '18', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ashley', 'Barnes', 'A', '10', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Maxwel', 'Cornet', 'A', '20', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jay', 'Rodriguez ', 'A', '19', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matej', 'Vydra', 'A', '27', 5);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Chris', 'Wood', 'A', '9', 5);

--Chelsea

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kepa', 'Arrizabalaga', 'D', '1', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Edouard', 'Mendy', 'D', '16', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marcos', 'Alonso', 'V', '3', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cesar', 'Azpilicueta', 'V', '28', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Trevoh', 'Chalobah', 'V', '14', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'Chilwell', 'V', '21', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andreas', 'Christensen', 'V', '4', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Reece', 'James', 'V', '24', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Antonio', 'Rudiger', 'V', '2', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Malang', 'Sarr', 'V', '31', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Thiago', 'Silva', 'V', '6', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ross', 'Barkley', 'M', '18', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kai', 'Havertz', 'M', '29', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Callum', 'Hudson-Odoi', 'M', '20', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Jorginho', 'M', '5', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('N Golo', 'Kante', 'M', '7', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mateo', 'Kovacic', 'M', '8', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ruben', 'Loftus-Cheek', 'M', '12', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mason', 'Mount', 'M', '19', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Saul', 'Niguez', 'M', '17', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Christian', 'Pulisic', 'M', '10', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Hakim', 'Ziyech', 'M', '22', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Romelu', 'Lukaku', 'A', '9', 6);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Timo', 'Werner', 'A', '11', 6);

--Crystal Palace

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jack', 'Butland', 'D', '1', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Guaita', 'D', '13', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joachim', 'Andersen', 'V', '16', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nathaniel', 'Clyne', 'V', '17', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marc', 'Guehi', 'V', '6', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tyrick', 'Mitchell', 'V', '3', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jairo', 'Riedewald', 'V', '44', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'Tomkins', 'V', '5', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joel', 'Ward', 'V', '2', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Eberechi', 'Eze', 'M', '10', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Conor', 'Gallagher', 'M', '23', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Will', 'Hughes', 'M', '12', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cheikhou', 'Kouyate', 'M', '8', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'McArthur', 'M', '18', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Luka', 'Milivojevic', 'M', '4', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Michael', 'Olise', 'M', '7', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jesuran', 'Rak-Sakyi', 'M', '11', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jeffrey', 'Schlupp', 'M', '15', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jordan', 'Ayew', 'A', '9', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Christian', 'Benteke', 'A', '20', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Odsonne', 'Edouard', 'A', '22', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jean-Philippe', 'Mateta', 'A', '14', 7);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Wilfried', 'Zaha', 'A', '11', 7);

--Everton

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Asmir', 'Begovic', 'D', '15', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jordan', 'Pickford', 'D', '1', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jarrad', 'Branthwaite', 'V', '32', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Seamus', 'Coleman', 'V', '23', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Lucas', 'Digne', 'V', '12', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'Godfrey', 'V', '22', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mason', 'Holgate', 'V', '4', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Michael', 'Keane', 'V', '5', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jonjoe', 'Kenny', 'V', '2', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Yerry', 'Mina', 'V', '13', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Allan', 'M', '6', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tom', 'Davies', 'M', '26', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Fabian', 'Delph', 'M', '8', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Abdoulaye', 'Doucoure', 'M', '16', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jean-Philippe', 'Gbamin', 'M', '25', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andre', 'Gomes ', 'M', '21', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tyler', 'Onyango', 'M', '62', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ellis', 'Simms', 'M', '50', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andros', 'Townsend', 'M', '14', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dominic', 'Calvert-Lewin', 'A', '9', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Lewis', 'Dobbin', 'A', '61', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Anthony', 'Gordon', 'A', '24', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Demarai', 'Gray', 'A', '11', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alex', 'Iwobi', 'A', '17', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Richarlison', 'A', '7', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Salomon', 'Rondon', 'A', '33', 8);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cenk', 'Tosun', 'A', '20', 8);

--Leeds United

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Illan', 'Meslier', 'D', '1', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Luke', 'Ayling ', 'V', '2', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Liam', 'Cooper', 'V', '6', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Charlie', 'Cresswell', 'V', '35', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Stuart', 'Dallas', 'V', '15', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cody', 'Drameh', 'V', '37', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Junior', 'Firpo', 'V', '3', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Robin', 'Koch', 'V', '5', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Diego', 'Llorente', 'V', '14', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pascal', 'Struijk', 'V', '21', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Forshaw', 'M', '4', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sam', 'Greenwood', 'M', '9', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jack', 'Harrison', 'M', '22', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Daniel', 'James', 'M', '20', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mateusz', 'Klich', 'M', '43', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Stuart', 'McKinstry', 'M', '14', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kalvin', 'Phillips', 'M', '23', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jamie', 'Shackleton', 'M', '46', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Patrick', 'Bamford', 'A', '9', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joe', 'Gelhardt', 'A', '30', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Liam', 'McCarron', 'A', '3', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Raphinha', 'A', '10', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tyler', 'Roberts', 'A', '11', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Rodrigo', 'A', '19', 9);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Crysencio', 'Summerville', 'A', '38', 9);

--Leicester City

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kasper', 'Schmeichel', 'D', '1', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ryan', 'Bertrand', 'V', '5', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Timothy', 'Castagne', 'V', '27', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jonny', 'Evans', 'V', '6', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ricardo', 'Pereira', 'V', '21', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Caglar', 'Soyuncu', 'V', '4', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jannik', 'Vestergaard', 'V', '23', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marc', 'Albrighton', 'M', '11', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Daniel', 'Amartey', 'M', '18', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harvey', 'Barnes', 'M', '7', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Hamza', 'Choudhury', 'M', '20', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kiernan', 'Dewsbury-Hall', 'M', '22', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'Maddison', 'M', '10', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Wilfred', 'Ndidi', 'M', '25', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Boubakary', 'Soumare', 'M', '42', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Luke', 'Thomas', 'M', '33', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Youri', 'Tielemans', 'M', '8', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Patson', 'Daka', 'A', '29', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kelechi', 'Iheanacho', 'A', '14', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ademola', 'Lookman', 'A', '37', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kasey', 'McAteer', 'A', '49', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ayoze', 'Perez', 'A', '17', 10);;
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jamie', 'Vardy', 'A', '9', 10);;

--Liverpool

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Alisson', 'D', '1', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Caoimhin', 'Kelleher', 'D', '62', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Trent', 'Alexander-Arnold', 'V', '66', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joe', 'Gomez', 'V', '12', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ibrahima', 'Konate', 'V', '5', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joel', 'Matip', 'V', '32', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andrew', 'Robertson', 'V', '26', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Konstantinos', 'Tsimikas', 'V', '21', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Neco', 'Williams', 'V', '76', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Virgil', 'van Dijk', 'V', '4', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Fabinho', 'M', '3', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jordan', 'Henderson', 'M', '14', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Curtis', 'Jones', 'M', '17', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Naby', 'Keita', 'M', '8', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'Milner', 'M', '7', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tyler', 'Morton', 'M', '80', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alex', 'Oxlade-Chamberlain', 'M', '15', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Thiago', 'M', '6', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Diogo', 'Jota', 'A', '20', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harvey', 'Elliott', 'A', '67', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Roberto', 'Firmino', 'A', '9', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sadio', 'Mane', 'A', '10', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Takumi', 'Minamino', 'A', '18', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Divock', 'Origi', 'A', '27', 11);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mohamed', 'Salah', 'A', '11', 11);

--Manchester City

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Ederson', 'D', '31', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Zackary', 'Steffen', 'D', '13', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nathan', 'Ake', 'V', '6', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joao', 'Cancelo', 'V', '27', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ruben', 'Dias', 'V', '3', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aymeric', 'Laporte', 'V', '14', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Benjamin', 'Mendy', 'V', '22', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('John', 'Stones', 'V', '5', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kyle', 'Walker', 'V', '2', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Oleksandr', 'Zinchenko', 'V', '11', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kevin', 'De Bruyne', 'M', '17', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Fernandinho', 'M', '25', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Phil', 'Foden', 'M', '47', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jack', 'Grealish', 'M', '10', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ilkay', 'Gundogan', 'M', '8', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'McAtee', 'M', '11', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cole', 'Palmer', 'M', '80', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Rodri', 'M', '16', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bernardo', 'Silva', 'M', '20', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Gabriel', 'Jesus', 'A', '9', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Riyad', 'Mahrez', 'A', '26', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Raheem', 'Sterling', 'A', '7', 12);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ferran', 'Torres', 'A', '21', 12);

--Manchester United

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('David', 'de Gea', 'D', '1', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Eric', 'Bailly', 'V', '3', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Diogo', 'Dalot', 'V', '20', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Victor', 'Lindelof', 'V', '2', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harry', 'Maguire', 'V', '5', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Luke', 'Shaw', 'V', '23', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alex', 'Telles', 'V', '27', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Raphael', 'Varane', 'V', '19', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aaron', 'Wan-Bissaka', 'V', '29', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bruno', 'Fernandes', 'M', '18', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Fred', 'M', '17', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jesse', 'Lingard', 'M', '14', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nemanja', 'Matic', 'M', '31', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Scott', 'McTominay', 'M', '39', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Paul', 'Pogba', 'M', '6', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Donny', 'van de Beek', 'M', '34', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Edinson', 'Cavani', 'A', '21', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Anthony', 'Elanga', 'A', '36', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mason', 'Greenwood', 'A', '11', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Anthony', 'Martial', 'A', '9', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Marcus', 'Rashford', 'A', '10', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Cristiano', 'Ronaldo', 'A', '7', 13);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jadon', 'Sancho', 'A', '25', 13);

--Newcastle United

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Karl', 'Darlow', 'D', '26', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Martin', 'Dubravka', 'D', '1', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Frederick', 'Woodman', 'D', '27', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ciaran', 'Clark', 'V', '2', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Federico', 'Fernandez', 'V', '18', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Emil', 'Krafth', 'V', '17', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jamaal', 'Lascelles', 'V', '6', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Javier', 'Manquillo', 'V', '19', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Fabian', 'Schar', 'V', '5', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Miguel', 'Almiron', 'M', '24', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ryan', 'Fraser', 'M', '21', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Isaac', 'Hayden', 'M', '14', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jeff', 'Hendrick', 'M', '16', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jamal', 'Lewis', 'M', '12', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sean', 'Longstaff', 'M', '36', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matt', 'Ritchie', 'M', '11', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Allan', 'Saint-Maximin', 'M', '10', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jonjo', 'Shelvey', 'M', '8', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joe', 'Willock', 'M', '28', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dwight', 'Gayle', 'A', '34', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Joelinton', 'A', '7', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jacob', 'Murphy', 'A', '23', 14);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Callum', 'Wilson', 'A', '9', 14);

--Norwich

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tim', 'Krul', 'D', '1', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James Maximillian', 'Aarons', 'V', '2', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Samuel', 'Byram', 'V', '3', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dimitris', 'Giannoulis', 'V', '30', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Benjamin', 'Gibson', 'V', '4', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Grant', 'Hanley', 'V', '5', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ozan', 'Kabak', 'V', '15', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andrew', 'Omobamidele', 'V', '44', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Brandon', 'Williams', 'V', '21', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Todd', 'Cantwell', 'M', '14', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kieran', 'Dowell', 'M', '10', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Billy', 'Gilmour', 'M', '8', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pierre', 'Lees Melou', 'M', '20', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kenny', 'McLean', 'M', '23', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bali', 'Mumba', 'M', '26', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mathias', 'Normann', 'M', '16', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Przemyslaw', 'Placheta', 'M', '11', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Milot', 'Rashica', 'M', '17', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Lukas', 'Rupp', 'M', '7', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jacob Lungi', 'Sorensen', 'M', '19', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Idah', 'A', '35', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Teemu', 'Pukki', 'A', '22', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joshua', 'Sargent', 'A', '24', 15);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Christos', 'Tzolis', 'A', '18', 15);

--Southampton

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Wilfredo', 'Caballero', 'D', '13', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Alex', 'McCarthy', 'D', '1', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jan', 'Bednarek', 'V', '35', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Valentino', 'Livramento', 'V', '21', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Lyanco', 'V', '4', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Romain', 'Perraud', 'V', '15', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mohammed', 'Salisu', 'V', '22', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jack', 'Stephens', 'V', '5', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kyle', 'Walker-Peters', 'V', '2', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Stuart', 'Armstrong', 'M', '17', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ibrahima', 'Diallo', 'M', '27', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Moussa', 'Djenepo', 'M', '19', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nathan', 'Redmond', 'M', '11', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Oriol', 'Romeu', 'M', '6', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('William', 'Smallbone', 'M', '20', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nathan', 'Tella', 'M', '23', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('James', 'Ward-Prowse', 'M', '8', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Che', 'Adams', 'A', '10', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Armstrong', 'A', '9', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Armando', 'Broja', 'A', '18', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mohamed', 'Elyounoussi', 'A', '24', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Shane', 'Long', 'A', '7', 16);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Theo', 'Walcott', 'A', '32', 16);

--Tottenham Hotspur

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Hugo', 'Lloris', 'D', '1', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'Davies', 'V', '33', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Matt', 'Doherty', 'V', '2', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Royal', 'Emerson', 'V', '12', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Sergio', 'Reguilon', 'V', '3', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joe', 'Rodon', 'V', '14', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Gabriel Cristian', 'Romero', 'V', '4', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Davinson', 'Sanchez', 'V', '6', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ryan', 'Sessegnon', 'V', '19', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Japhet', 'Tanganga', 'V', '25', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dele', 'Alli', 'M', '20', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Steven', 'Bergwijn', 'M', '23', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Eric', 'Dier', 'M', '15', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pierre-Emile', 'Hojbjerg', 'M', '5', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Giovani', 'Lo Celso', 'M', '18', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Lucas Moura', 'M', '27', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tanguy', 'Ndombele', 'M', '28', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Oliver', 'Skipp', 'M', '29', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harry', 'Winks', 'M', '8', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Bryan', 'Gil', 'A', '11', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harry', 'Kane', 'A', '10', 17);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Heung-Min', 'Son', 'A', '7', 17);

--Watford

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Daniel', 'Bachmann', 'D', '26', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ben', 'Foster', 'D', '1', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Craig', 'Cathcart', 'V', '15', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Christian', 'Kabasele', 'V', '27', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Kiko', 'V', '21', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adam', 'Masina', 'V', '11', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nicolas', 'N Koulou', 'V', '13', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jeremy', 'Ngakia', 'V', '2', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Danny', 'Rose', 'V', '3', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Francisco', 'Sierralta', 'V', '31', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('William', 'Troost-Ekong', 'V', '5', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tom', 'Cleverley', 'M', '8', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Oghenekaro', 'Etebo', 'M', '4', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Dan', 'Gosling', 'M', '16', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Juraj', 'Kucka', 'M', '33', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Imran', 'Louza', 'M', '6', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ken', 'Sema', 'M', '12', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Moussa', 'Sissoko', 'M', '19', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ozan', 'Tufan', 'M', '18', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Cucho', 'A', '29', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Emmanuel', 'Dennis', 'A', '25', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ashley', 'Fletcher', 'A', '17', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joshua', 'King', 'A', '7', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joao', 'Pedro', 'A', '10', 18);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ismaila', 'Sarr', 'A', '23', 18);

--West Ham United

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Lukasz', 'Fabianski', 'D', '1', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Harrison', 'Ashby', 'V', '50', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Vladimir', 'Coufal', 'V', '5', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Aaron', 'Cresswell', 'V', '3', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Craig', 'Dawson', 'V', '15', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Issa', 'Diop', 'V', '23', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ryan', 'Fredericks', 'V', '24', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Benjamin', 'Johnson', 'V', '31', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Arthur', 'Masuaku', 'V', '26', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Angelo', 'Ogbonna', 'V', '21', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Kurt', 'Zouma', 'V', '4', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Said Mohamed', 'Benrahma', 'M', '22', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Pablo', 'Fornals', 'M', '8', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Manuel', 'Lanzini', 'M', '10', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Mark', 'Noble', 'M', '16', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Declan', 'Rice', 'M', '41', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Tomas', 'Soucek', 'M', '28', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nikola', 'Vlasic', 'M', '11', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Michail', 'Antonio', 'A', '9', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jarrod', 'Bowen', 'A', '20', 19);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Andriy', 'Yarmolenko', 'A', '7', 19);

--Wolverhampton Wanderers

INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Jose', 'Sa', 'D', '1', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Rayan', 'Ait Nouri', 'V', '3', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Conor', 'Coady', 'V', '16', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ki-Jana', 'Hoever', 'V', '2', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Max', 'Kilman', 'V', '23', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Fernando', 'Marcal', 'V', '5', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Romain', 'Saiss', 'V', '27', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Nelson', 'Semedo', 'V', '22', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Leander', 'Dendoncker', 'M', '32', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Joao', 'Moutinho', 'M', '28', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Ruben', 'Neves', 'M', '8', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Hee-Chan', 'Hwang', 'A', '26', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Raul', 'Jimenez', 'A', '9', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Daniel', 'Podence', 'A', '10', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Fabio', 'Silva', 'A', '17', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES ('Adama', 'Traore', 'A', '37', 20);
INSERT INTO Spelers (Voornaam, Achternaam, Positie, Shirtnummer, ClubID) VALUES (NULL, 'Trincao', 'A', '11', 20);

INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 1, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 2, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 3, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 4, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 5, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 6, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 7, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 8, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 9, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 10, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 11, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 12, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 13, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 14, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 15, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 16, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 17, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 18, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 19, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 20, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 21, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 22, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 23, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 24, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 25, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 26, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 27, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 28, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 29, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 30, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 31, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 32, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 33, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 34, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 35, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 36, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 37, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 38, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 39, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 40, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 41, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 42, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 43, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 44, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 45, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 46, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 47, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 48, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 49, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 50, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 51, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 52, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 53, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 54, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 55, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 56, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 57, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 58, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 59, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 60, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 61, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 62, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 63, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 64, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 65, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 66, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 67, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 68, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 69, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 70, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 71, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 72, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 73, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 74, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 75, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 76, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 77, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 78, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 79, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 80, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 81, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 82, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 83, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 84, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 85, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 86, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 87, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 88, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 89, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 90, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 91, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 92, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 93, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 94, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 1, 0, 0, 95, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 96, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 97, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 98, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 99, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 100, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 101, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 102, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 1, 0, 0, 103, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 104, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 105, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 106, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 107, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 108, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 109, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 110, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 111, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 112, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 113, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 114, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 115, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 116, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 117, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 118, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 119, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 120, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 121, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 122, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 123, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 124, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 125, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 126, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 127, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 128, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 129, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 130, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 131, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 132, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 133, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 134, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 135, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 136, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 137, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 138, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 139, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 140, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 141, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 142, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 143, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 144, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 145, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 146, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 147, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 148, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 149, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 150, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 151, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 152, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 153, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 154, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 155, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 156, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 157, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 158, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 159, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 160, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 161, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 162, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 163, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 164, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 165, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 166, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 167, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 168, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 169, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 170, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 171, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 172, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 173, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 174, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 175, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 1, 0, 0, 176, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 177, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 178, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 179, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 180, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 181, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 182, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 183, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 184, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 185, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 186, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 1, 1, 0, 0, 187, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 188, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 189, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 190, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 191, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 192, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 193, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 194, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 195, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 196, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 197, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 198, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 199, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 200, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 201, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 202, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 203, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 204, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 205, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 206, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 207, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 208, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 209, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 210, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 211, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 212, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 213, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 214, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 215, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 216, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 217, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 218, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 219, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 220, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 221, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 222, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 223, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 224, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 225, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 226, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 227, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 228, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 229, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 230, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 231, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 232, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 233, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 234, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 235, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 236, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 1, 0, 0, 237, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 238, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 239, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 240, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 241, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 242, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 243, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 244, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 245, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 246, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 247, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 248, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 249, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 250, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 251, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 252, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 253, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 254, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 255, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 256, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 257, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 258, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 259, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 260, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 261, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 2, 0, 0, 0, 262, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 263, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 264, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 265, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 266, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 267, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 268, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 269, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 270, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 271, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 272, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 273, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 274, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 275, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 276, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 277, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 278, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 279, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 280, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 281, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 282, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 283, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 284, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 285, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 286, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 287, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 288, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 289, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 290, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 291, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 292, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 293, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 294, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (3, 0, 0, 0, 0, 295, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 296, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 297, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 298, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 299, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 4, 0, 0, 0, 300, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 301, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 302, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 303, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 304, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 305, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 306, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 307, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 308, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 309, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 310, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 311, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 312, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 313, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 314, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 315, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 316, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 317, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 318, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 319, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 320, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 321, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 322, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 323, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 324, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 325, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 326, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 327, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 328, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 329, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 330, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 331, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 332, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 333, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 334, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 335, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 336, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 337, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 338, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 339, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 340, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 341, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 342, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 343, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 344, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 345, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 346, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 347, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 348, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 349, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 350, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 351, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 352, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 353, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 354, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 355, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 356, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 357, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 358, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 359, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 360, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 361, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 362, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 363, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 364, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 365, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 366, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 367, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 368, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 369, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 370, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 371, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 372, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 373, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 374, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 375, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 376, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 377, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 378, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 379, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 380, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 381, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 382, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 383, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 384, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 385, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 386, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 387, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 388, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 389, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 390, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 391, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 392, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 393, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 394, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 395, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 396, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 397, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 398, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 399, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 400, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 401, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 402, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 403, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 404, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 405, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 406, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 407, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 408, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 409, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 410, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 411, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 412, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 413, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 414, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 415, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 416, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 417, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 418, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 419, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 420, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 1, 0, 0, 0, 421, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 422, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 423, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 424, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 425, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 426, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 427, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 428, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 429, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 430, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 431, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 432, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 433, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 434, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 435, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 436, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 1, 0, 0, 0, 437, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 1, 0, 0, 0, 438, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 439, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 440, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 441, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 0, 0, 0, 0, 442, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 443, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (1, 2, 0, 0, 0, 444, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 445, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 446, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 447, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 448, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 449, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 450, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 451, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 1, 0, 0, 452, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 453, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 454, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 455, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 456, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 457, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 458, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 459, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 460, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 461, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 462, 1);
INSERT INTO Spelerstats(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, SeizoenID) VALUES (0, 0, 0, 0, 0, 463, 1);

--Speeldag 1

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 3, 2, 0, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 5, 1, 2, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 6, 3, 0, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 8, 3, 1, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 10, 1, 0, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 13, 5, 1, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 15, 0, 3, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 18, 3, 2, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 14, 2, 4, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 1, 17, 1, 0, 12);

--Speeldag 2

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 2, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 4, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 7, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 9, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 11, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 12, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 1, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 16, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 20, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 2, 19, NULL, NULL, 10);

--Speeldag 3

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 2, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 4, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 11, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 12, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 14, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 15, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 19, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 5, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 17, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 3, 20, NULL, NULL, 13);

--Speeldag 4

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 1, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 3, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 6, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 7, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 10, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 13, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 16, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 18, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 9, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 4, 8, NULL, NULL, 5);

--Speeldag 5

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 14, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 2, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 5, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 11, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 12, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 15, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 20, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 4, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 17, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 5, 19, NULL, NULL, 13);

--Speeldag 6

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 3, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 6, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 8, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 9, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 10, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 13, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 18, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 1, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 16, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 6, 7, NULL, NULL, 4);

--Speeldag 7

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 4, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 5, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 6, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 7, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 9, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 11, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 13, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 17, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 19, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 7, 20, NULL, NULL, 14);

--Speeldag 8

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 1, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 2, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 3, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 8, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 10, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 12, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 14, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 15, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 16, NULL,NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 8, 18, NULL,NULL, 11);

--Speeldag 9

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 1, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 3, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 4, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 6, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 7, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 8, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 9, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 13, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 16, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 9, 19, NULL, NULL, 17);

--Speeldag 10

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 2, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 5, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 10, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 11, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 12, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 14, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 15, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 17, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 18, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 10, 20, NULL, NULL, 8);

--Speeldag 11

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 1, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 3, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 4, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 6, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 7, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 8, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 9, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 13, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 16, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 11, 19, NULL, NULL, 11);

--Speeldag 12

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 2, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 5, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 10, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 11, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 12, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 14, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 15, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 17, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 18, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 12, 20, NULL, NULL, 19);

--Speeldag 13

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 1, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 3, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 4, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 5, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 6, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 7, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 10, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 11, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 12, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 13, 15, NULL, NULL, 20);

--Speeldag 14

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 2, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 8, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 9, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 13, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 18, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 19, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 20, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 14, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 16, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 14, 17, NULL, NULL, 3);

--Speeldag 15

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 2, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 8, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 9, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 13, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 14, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 16, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 17, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 18, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 19, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 15, 20, NULL, NULL, 11);

--Speeldag 16

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 1, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 3, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 4, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 5, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 6, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 7, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 10, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 11, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 12, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 16, 15, NULL, NULL, 13);

--Speeldag 17

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 1, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 3, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 4, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 5, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 7, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 10, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 15, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 6, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 11, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 17, 12, NULL, NULL, 9);

--Speeldag 18 Saturday, December 18, 2021

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 2, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 8, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 9, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 13, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 14, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 16, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 17, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 18, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 19, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 18, 20, NULL, NULL, 6);

--Speeldag 19

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 2, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 4, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 5, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 11, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 12, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 14, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 15, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 17, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 19, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 19, 20, NULL, NULL, 18);

--Speeldag,20

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 1, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 3, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 6, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 7, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 8, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 9, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 10, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 13, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 16, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 20, 18, NULL, NULL, 19);

--Speeldag,21

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 1, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 3, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 6, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 7, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 8, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 9, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 10, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 13, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 16, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 21, 18, NULL, NULL, 17);

--Speeldag,22

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 2, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 4, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 5, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 11, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 12, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 14, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 15, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 17, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 19, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 22, 20, NULL, NULL, 16);

--Speeldag,23

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 1, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 3, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 6, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 7, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 8, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 9, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 10, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 13, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 16, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 23, 18, NULL, NULL, 15);

--Speeldag,24 Tuesday, February 8, 2022

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 2, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 4, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 5, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 15, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 19, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 20, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 11, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 12, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 14, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 24, 17, NULL, NULL, 16);

--Speeldag,25 Saturday, February 12, 2022

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 3, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 5, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 6, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 8, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 10, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 13, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 14, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 15, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 17, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 25, 18, NULL, NULL, 4);

--Speeldag,26 Saturday, February 19, 2022

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 1, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 2, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 4, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 7, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 9, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 11, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 12, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 16, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 19, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 26, 20, NULL, NULL, 10);

--Speeldag,27 Saturday, February 26, 2022

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 1, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 3, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 4, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 6, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 7, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 8, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 9, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 13, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 16, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 27, 19, NULL, NULL, 20);

--Speeldag,28

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 2, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 5, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 10, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 11, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 12, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 14, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 15, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 17, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 18, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 28, 20, NULL, NULL, 7);

--Speeldag,29

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 1, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 3, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 4, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 6, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 7, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 8, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 9, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 13, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 16, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 29, 19, NULL, NULL, 2);

--Speeldag,30

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 2, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 5, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 10, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 11, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 12, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 14, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 15, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 17, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 18, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 30, 20, NULL, NULL, 9);

--Speeldag,31

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 4, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 5, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 6, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 7, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 9, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 11, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 13, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 17, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 19, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 31, 20, NULL, NULL, 2);

--Speeldag,32

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 1, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 2, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 3, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 8, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 10, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 12, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 14, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 15, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 16, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 32, 18, NULL, NULL, 9);

--Speeldag,33

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 2, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 8, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 9, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 13, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 14, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 16, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 17, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 18, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 19, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 33, 20, NULL, NULL, 12);

--Speeldag,34 Saturday, April 23, 2022

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 1, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 3, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 4, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 5, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 6, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 7, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 10, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 11, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 12, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 34, 15, NULL, NULL, 14);


--Speeldag,35

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 2, NULL, NULL, 15);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 8, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 9, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 13, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 14, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 16, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 17, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 18, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 19, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 35, 20, NULL, NULL, 4);

--Speeldag,36

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 1, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 3, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 4, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 5, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 6, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 7, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 10, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 11, NULL, NULL, 17);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 12, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 36, 15, NULL, NULL, 19);

--Speeldag,37

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 2, NULL, NULL, 7);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 8, NULL, NULL, 3);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 9, NULL, NULL, 4);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 13, NULL, NULL, 6);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 14, NULL, NULL, 1);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 16, NULL, NULL, 11);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 17, NULL, NULL, 5);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 18, NULL, NULL, 10);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 19, NULL, NULL, 12);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 37, 20, NULL, NULL, 15);

--Speeldag,38

INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 1, NULL, NULL, 8);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 3, NULL, NULL, 9);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 4, NULL, NULL, 19);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 5, NULL, NULL, 14);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 6, NULL, NULL, 18);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 7, NULL, NULL, 13);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 10, NULL, NULL, 16);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 11, NULL, NULL, 20);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 12, NULL, NULL, 2);
INSERT INTO Wedstrijden(SeizoenID, Speeldag, ThuisClubID, ThuisClubScore, UitClubScore, UitClubID) VALUES (1, 38, 15, NULL, NULL, 17);

INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 63, 1);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 67, 1);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 1, 0, 0, 103, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 1, 0, 0, 95, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 86, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 110, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 84, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 88, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 107, 2);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 118, 3);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 136, 3);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 120, 3);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 132, 3);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 134, 3);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 1, 0, 0, 176, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 1, 1, 0, 0, 187, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 182, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 186, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 181, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 374, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 373, 4);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 1, 0, 0, 237, 5);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 219, 5);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 452, 5);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 450, 5);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (3, 0, 0, 0, 0, 295, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 296, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 304, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 4, 0, 0, 0, 300, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 289, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 291, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 191, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 194, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 192, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 211, 6);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 258, 7);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 2, 0, 0, 0, 262, 7);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 256, 7);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 252, 7);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 341, 7);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 425, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 1, 0, 0, 0, 421, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 420, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 412, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 417, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 413, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 415, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 39, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 47, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 49, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 45, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 32, 8);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 331, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 330, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 429, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 2, 0, 0, 0, 444, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 1, 0, 0, 0, 437, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 442, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 324, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 325, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 438, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 326, 9);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (1, 0, 0, 0, 0, 400, 10);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 1, 0, 0, 0, 390, 10);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 394, 10);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 386, 10);
INSERT INTO SpelerWedstrijd(Doelpunt, Assist, GeleKaart, RodeKaart, Owngoal, SpelerID, WedstrijdID) VALUES (0, 0, 1, 0, 0, 276, 10);

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
ALTER TABLE Wedstrijden
ADD CONSTRAINT UC_Wedstrijd UNIQUE (ThuisClubID,UitClubID);

ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT PK_SpelerWedstrijd PRIMARY KEY (SpelerWedstrijdID);
ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT FK_SpelerWedstrijdSpelerID FOREIGN KEY (SpelerID) REFERENCES Spelers(SpelerID);
ALTER TABLE SpelerWedstrijd
ADD CONSTRAINT FK_SpelerWedstrijdWedstrijdID FOREIGN KEY (WedstrijdID) REFERENCES Wedstrijden(WedstrijdID);