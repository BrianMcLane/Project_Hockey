create table clean_player_info (
    player_id VARCHAR(7) PRIMARY KEY NOT NULL,
    firstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    nationality VARCHAR(3) NOT NULL,
    birthCity VARCHAR(30) NOT NULL,
    primaryPosition VARCHAR(2) NOT NULL,
    birthDate TIMESTAMP NOT NULL,
    height VARCHAR(6) NOT NULL,
    height_cm VARCHAR(7) NOT NULL,
    weight VARCHAR(3) NOT NULL,
    shootsCatches VARCHAR(1) NOT NULL
);

create table clean_game_skates (
    game_id VARCHAR(10) PRIMARY KEY NOT NULL,
    player_id VARCHAR(7) NOT NULL,
    timeOnIce INT NOT NULL,
    assists INT NOT NULL,
    goals INT NOT NULL,
    shots INT NOT NULL,
    hits INT NOT NULL,
    powerPlayGoals INT NOT NULL,
    powerPlayAssists INT NOT NULL,
    penaltyMinutes INT NOT NULL,
    faceOffWins INT NOT NULL,
    faceoffTaken INT NOT NULL,
    takeaways INT NOT NULL,
    giveaways INT NOT NULL,
    shortHandedGoals INT NOT NULL,
    shortHandedAssists INT NOT NULL,
    blocked INT NOT NULL,
    plusMinus INT NOT NULL,
    evenTimeOnIce INT NOT NULL,
    shortHandedTimeOnIce INT NOT NULL,
    powerPlayTimeOnIce INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES clean_player_info (player_id)
);

create table clean_game_goalie (
    game_id VARCHAR(10) NOT NULL,
    player_id VARCHAR(7) NOT NULL,
    timeOnIce INT NOT NULL,
    assists INT NOT NULL,
    goals INT NOT NULL,
    pim INT NOT NULL,
    shots INT NOT NULL,
    saves INT NOT NULL,
    powerPlaySaves INT NOT NULL,
    shortHandedSaves INT NOT NULL,
    evenSaves INT NOT NULL,
    shortHandedShotsAgainst INT NOT NULL,
    evenShotsAgainst INT NOT NULL,
    powerPlayShotsAgainst INT NOT NULL,
    savePercentage FLOAT NOT NULL,
    powerPlaySavePercentage FLOAT NOT NULL,
    evenStrengthSavePercentage FLOAT NOT NULL,
    FOREIGN KEY (game_id) REFERENCES clean_game_skates (game_id),
    FOREIGN KEY (player_id) REFERENCES clean_player_info (player_id),
    PRIMARY KEY (game_id, player_id)
);

create table clean_game (
    game_id VARCHAR(10) PRIMARY KEY NOT NULL,
    season VARCHAR(8) NOT NULL,
    date_time_GMT TIMESTAMP NOT NULL
);


