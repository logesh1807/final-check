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
CREATE SCHEMA IF NOT EXISTS `moviecruiser` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `moviecruiser` ;

-- -----------------------------------------------------
-- Table `movie cruiser`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviecruiser`.`user` (
  `us_id` INT NOT NULL AUTO_INCREMENT,
  `us_name` VARCHAR(60) NULL,
  PRIMARY KEY (`us_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie cruiser`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviecruiser`.`movie_list` (
  `mo_id` INT NOT NULL AUTO_INCREMENT,
  `mo_title` VARCHAR(100) NULL,
  `mo_boxoffice` DECIMAL(15,2) NULL,
  `mo_active` VARCHAR(3) NULL,
  `mo_date_of_launch` DATE NULL,
  `mo_genre` VARCHAR(45) NULL,
  `mo_has_teaser` VARCHAR(3) NULL,
  PRIMARY KEY (`mo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie cruiser`.`favorite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moviecruiser`.`favorite` (
  `ft_id` INT NOT NULL AUTO_INCREMENT,
  `ft_us_id` INT NULL,
  `ft_mo_id` INT NULL,
  PRIMARY KEY (`ft_id`),
  INDEX `ft_us_fk_idx` (`ft_us_id` ASC),
  INDEX `ft_mo_fk_idx` (`ft_mo_id` ASC),
  CONSTRAINT `ft_us_fk`
    FOREIGN KEY (`ft_us_id`)
    REFERENCES `moviecruiser`.`user` (`us_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ft_mo_fk`
    FOREIGN KEY (`ft_mo_id`)
    REFERENCES `moviecruiser`.`movie_list` (`mo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;