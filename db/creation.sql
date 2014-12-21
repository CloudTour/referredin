-- MySQL Script generated by MySQL Workbench
-- Fri Dec 12 19:43:18 2014
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema referredin
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema referredin
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `referredin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `referredin` ;

-- -----------------------------------------------------
-- Table `referredin`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`User` ;

CREATE TABLE IF NOT EXISTS `referredin`.`User` (
  `uname` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `birthdate` DATETIME NULL,
  `resume` VARCHAR(1000) NULL,
  `jskill` VARCHAR(1000) NULL,
  PRIMARY KEY (`uname`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `referredin`.`Friendship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`Follows` ;

CREATE TABLE IF NOT EXISTS `referredin`.`Follows` (
  `uname` VARCHAR(45) NOT NULL,
  `following` VARCHAR(45) NOT NULL,
  `group` varchar(45) NOT NULL,
  PRIMARY KEY (`uname`, `following`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `referredin`.`UserSkill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`UserSkill` ;

CREATE TABLE IF NOT EXISTS `referredin`.`UserSkill` (
  `uname` VARCHAR(45) NOT NULL,
  `sname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`uname`, `sname`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `referredin`.`Job`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`Job` ;

CREATE TABLE IF NOT EXISTS `referredin`.`Job` (
  `jid` INT NOT NULL,
  `uname` VARCHAR(45) NOT NULL,
  `jtitle` VARCHAR(45) NOT NULL,
  `jlocation` VARCHAR(45) NULL,
  `jcompany` VARCHAR(45) NULL,
  `jyears` VARCHAR(45) NULL,
  `jsalary` VARCHAR(45) NULL,
  `jpostdate` DATETIME NULL,
  `jtype` VARCHAR(45) NULL,
  `jindustry` VARCHAR(45) NULL,
  `jwebsite` VARCHAR(45) NULL,
  PRIMARY KEY (`jid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `referredin`.`JobSkill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`JobSkill` ;

CREATE TABLE IF NOT EXISTS `referredin`.`JobSkill` (
  `jid` INT NOT NULL,
  `skill` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`jid`, `skill`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `referredin`.`UserLike`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referredin`.`UserLike` ;

CREATE TABLE IF NOT EXISTS `referredin`.`UserLike` (
  `jid` INT NOT NULL,
  `uname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`jid`, `uname`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
