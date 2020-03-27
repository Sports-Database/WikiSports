create table if not exists teams(
    id int not null primary key,
    name varchar(100) not null,
    season year not null
);

create table if not exists players(
    id int not null primary key,
    name varchar(100) not null,
    teamId int not null,
    position varchar(20) not null,
    foreign key (teamId) references teams(id)
);

create table if not exists playerStats(
    playerId int not null,
    # type in a 4 digit season or the word 'Career' to see season stats or career stats
    seasonOrCareer varchar(20) not null,
    earnings int,
    touchdowns int,
    tackles int,
    yards int,
    yardsPerGame int,
    sacks int,
    fumbles int,
    completions int,
    foreign key (playerId) references players(id)
);

create table if not exists teamStats(
    teamId int not null,
    season year not null,
    numTitle int not null,
    wins int,
    losses int,
    touchdowns int,
    tackles int,
    yards int,
    yardsPerGame int,
    sacks int,
    fumbles int,
    completions int,
    foreign key (teamId) references teams(id)
);

create table if not exists acronyms(
    acronym varchar(20) not null,
    fullName varchar(50) not null
);

create table if not exists league(
    season year not null,
    MVP int not null,
    passingLeader int not null,
    rushingLeader int not null,
    touchdownLeader int not null,
    champion int not null,
    foreign key (MVP) references players(id),
    foreign key (passingLeader) references players(id),
    foreign key (rushingLeader) references players(id),
    foreign key (touchdownLeader) references players(id),
    foreign key (champion) references teams(id)
);

