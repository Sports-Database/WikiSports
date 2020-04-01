
create table wiki_sports.teams(
    id int not null primary key,
    name varchar(100) not null
);



-- create table if not exists players(
--     id int not null primary key,
--     name varchar(100) not null,
--     position varchar(20) not null
-- );

-- create table if not exists seasons(
-- 	id int not null primary key,
-- 	season year not null
-- );

-- create table if not exists games(
-- 	id int not null primary key,
-- 	homeId int not null,
-- 	visitorId int not null,
-- 	seasonId int not null,
-- 	foreign key (homeId) references teams(id),
--     foreign key (visitorId) references teams(id),
--     foreign key (seasonId) references seasons(id)
-- );

-- -- Stats tables for players
-- -- ----begin----------
-- create table if not exists earnings(
--     playerId int not null,
--     gameId int not null,
--     earnings int,
--     foreign key (playerId) references players(id),
--     foreign key(gameId) references games(id)
-- );

-- create table if not exists tackles(
--     playerId int not null,
--     gameId int not null,
--     tackles int,
--     foreign key (playerId) references players(id),
--     foreign key(gameId) references games(id)
-- );

-- create table if not exists touchdowns(
--     playerId int not null,
--     gameId int not null,
--     touchdowns int,
--     foreign key (playerId) references players(id),
--     foreign key(gameId) references games(id)
-- );

-- create table if not exists yards(
--     playerId int not null,
--     gameId int not null,
--     yards int,
--     foreign key (playerId) references players(id),
--     foreign key(gameId) references games(id)
-- );

-- create table if not exists fumbles(
--     playerId int not null,
--     gameId int not null,
--     fumbles int,
--     foreign key (playerId) references players(id),
--     foreign key(gameId) references games(id)
-- );
--  -- -----end------------

-- create table if not exists acronyms(
--     acronym varchar(20) not null,
--     fullName varchar(50) not null
-- );

-- create table if not exists league(
--     seasonId int not null,
--     MVPId int not null,
--     passingLeaderId int not null,
--     rushingLeaderId int not null,
--     touchdownLeaderId int not null,
--     championId int not null,
--     foreign key (seasonId) references seasons(id),
--     foreign key (MVPId) references players(id),
--     foreign key (passingLeaderId) references players(id),
--     foreign key (rushingLeaderId) references players(id),
--     foreign key (touchdownLeaderId) references players(id),
--     foreign key (championId) references teams(id)
-- );

-- create table if not exists rosters(
-- 	playerId int not null,
-- 	teamId int not null,
-- 	seasonId int not null,
-- 	foreign key (playerId) references players(id),
-- 	foreign key (teamId) references teams(id),
-- 	foreign key (seasonId) references seasons(id)
-- );


-- -- create user called `manager` with password `Password`
CREATE USER 'wiki-sport-main'@'%' IDENTIFIED BY 'wikisport';

-- give access to manager on db
GRANT ALL PRIVILEGES ON *.* TO 'wiki-sport-main'@'%';

-- set password method to native password for mysql workbench access (mysql 8 issue)
ALTER USER 'wiki-sport-main'@'%' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY 'wikisport';

FLUSH PRIVILEGES;

ALTER USER 'wiki-sport-main'@'%' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY 'wikisport';