SET NAMES 'utf8' COLLATE 'utf8_general_ci';

DROP DATABASE IF EXISTS `bfa`;

CREATE DATABASE `bfa` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `bfa`;

CREATE TABLE `hi` (
    `lang` VARCHAR(2),
    `msg` TEXT NOT NULL,
    PRIMARY KEY(`lang`)
);

CREATE TABLE `task`(
  `userName`TEXT NOT NULL,
  `taskID` INT ,
  `taskDescription` TEXT NOT NULL,
  PRIMARY KEY(`taskID`)
);

INSERT INTO `hi`(`lang`, `msg`) VALUES ('hu', 'Szia <span class="name">%s</span>, Adj hozzá pár elemet  a listádhoz?');
INSERT INTO `hi`(`lang`, `msg`) VALUES ('en', 'Hi <span class="name">%s</span>, Add some chores to the list');
INSERT INTO `hi`(`lang`, `msg`) VALUES ('pl', 'Cześć Joe <span class="name">%s</span>, co się stało?');
INSERT INTO `task`(`userName`,`taskID`,`taskDescription`) VALUES('Krisz',1,'Pass BFA');
