-- 1. Design the schema for movie cruiser in MySQL Workbench
-- 2. Generate the SQL schema script in MySQL Workbench
-- 3. Paste the generated the SQL code here
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema moviecruiser
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema moviecruiser
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tsconnect` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `tsconnect` ;

-- -----------------------------------------------------
-- Table `movie cruiser`.`user`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `movie cruiser`.`movies`
-- -----------------------------------------------------  
CREATE TABLE IF NOT EXISTS `tsconnect`.`Regform` (
   `first_name` varchar(20) DEFAULT NULL,
   `last_name` varchar(20) DEFAULT NULL,
   `age` int(3) NOT NULL,
   `Gender` varchar(25) DEFAULT NULL,
   `contactnumber` int(12) DEFAULT NULL,
   `Category` varchar(45) DEFAULT NULL,
   `userId` varchar(45) DEFAULT NULL,
	`password` varchar(45) DEFAULT NULL,
    `picture` blob(45),
    `status` varchar(45) DEFAULT NULL)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `movie cruiser`.`favorite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tsconnect`.`resource` (
    `img` blob(45),
    `title` varchar(100) DEFAULT NULL,
    `author` varchar(50) DEFAULT NULL,
    `subject` varchar(50) DEFAULT NULL,
    `year` int(4) DEFAULT NULL,
	`file` varchar(50) DEFAULT NULL
    )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tsconnect`.`teacher` (
    `img` blob(45),
    `Name` varchar(100) DEFAULT NULL,
    `specialization` varchar(50) DEFAULT NULL,
    `schedule` varchar(50) DEFAULT NULL,
    `numberofstudents` int(4) DEFAULT NULL,
	`plannedleaves` int(2) DEFAULT NULL
    )
ENGINE = InnoDB; 


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;