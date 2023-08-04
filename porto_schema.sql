-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema porto
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`capitao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`capitao` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`barco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`barco` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `capitao_id` INT NOT NULL,
  PRIMARY KEY (`id`, `capitao_id`),
  INDEX `fk_barco_capitao1_idx` (`capitao_id` ASC) VISIBLE,
  CONSTRAINT `fk_barco_capitao1`
    FOREIGN KEY (`capitao_id`)
    REFERENCES `mydb`.`capitao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cais` (
  `id` INT NOT NULL,
  `empresa` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`atraque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`atraque` (
  `barco_id` INT NOT NULL,
  `cais_id` INT NOT NULL,
  `horario` DATE NULL,
  PRIMARY KEY (`barco_id`, `cais_id`),
  INDEX `fk_barco_has_cais_cais1_idx` (`cais_id` ASC) VISIBLE,
  INDEX `fk_barco_has_cais_barco_idx` (`barco_id` ASC) VISIBLE,
  CONSTRAINT `fk_barco_has_cais_barco`
    FOREIGN KEY (`barco_id`)
    REFERENCES `mydb`.`barco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_barco_has_cais_cais1`
    FOREIGN KEY (`cais_id`)
    REFERENCES `mydb`.`cais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
