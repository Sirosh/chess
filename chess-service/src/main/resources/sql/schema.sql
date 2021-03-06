DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS GAMES;
DROP TABLE IF EXISTS TURNS;
DROP TABLE IF EXISTS USERACCESSGROUPS;

CREATE TABLE USERS (
    ID VARCHAR (15) NOT NULL AUTO_INCREMENT,
    EMAIL VARCHAR (500),
    PASSWORD VARCHAR(50),
    NAME VARCHAR(500),
    BIRTHDATE DATE,
    TOKEN VARCHAR(64),
    USERACCESSGROUP_ID INTEGER,
    PRIMARY KEY (ID));

CREATE TABLE GAMES (
    ID INTEGER NOT NULL AUTO_INCREMENT,
    MATCHDATE DATE,
    AUTHOR_ID INTEGER,
    WHITE_ID INTEGER,
    BLACK_ID INTEGER,
    STARTTIME DATE,
    GAMELENGTH INTEGER,
    WHITETIME INTEGER,
    BLACKTIME INTEGER,
    RESULT VARCHAR (10),
    MOVETEXT VARCHAR (1000),
    STATUS VARCHAR (20),
    PRIMARY KEY (ID));

CREATE TABLE TURNS (
    ID INTEGER NOT NULL AUTO_INCREMENT,
    TURNDATE DATE,
    USER_ID INTEGER,
    GAME_ID INTEGER,
    PIECE VARCHAR(10),
    STARTPOSITION VARCHAR (2),
    ENDPOSITION VARCHAR (2),
    FEN VARCHAR (1000),
    PRIMARY KEY (ID));

CREATE TABLE USERACCESSGROUPS (
    ID VARCHAR (15) NOT NULL AUTO_INCREMENT,
    NAME VARCHAR (300),
    ISADMIN BOOLEAN,
    PRIMARY KEY (ID));