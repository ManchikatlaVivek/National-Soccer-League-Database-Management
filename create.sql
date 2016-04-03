create database exam2;
use exam2;

create table team(
teamid varchar(40) not null primary key,
name varchar(40) not null,
captainid varchar(40) not null,
mainstadium varchar(40) not null,
city varchar(40) not null
);

create table player(
playerid varchar(40) not null primary key,
name varchar(40) not null,
bod date not null,
startyear date not null,
shirtnumber int not null,
teamid varchar(40) not null
);

create table matches(
matchid varchar(40) not null primary key,
hostteamid varchar(40) not null,
guestteamid varchar(40) not null,
stadium varchar(40) not null,
matchdate date not null,
wonteamid varchar(40) not null,
wontype varchar(40) not null,
mainrefreeid varchar(40) not null,
assistant1refreeid varchar(40) not null,
assistant2refreeid varchar(40) not null
);

create table refree(
refreeid varchar(40) not null primary key,
name varchar(40) not null,
dob date not null,
experience int not null
);

create table playergoals(
playerid varchar(40) not null,
noofgoals int,
matchid varchar(40) not null,
yellowcard char(1) ,
redcard char(1),
primary key(playerid,matchid)
);

create table matchresults(
wonteamid varchar(40) not null,
wontype varchar(40) not null,
points int,
matchid varchar(40) not null,
primary key(wonteamid,matchid)
);

alter table player
add foreign key(teamid) references team (teamid);







