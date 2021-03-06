-- MySQL Script generated by MySQL Workbench
-- jue 07 nov 2019 11:56:27 WET
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema viverodb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema viverodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `viverodb` ;
USE `viverodb` ;

-- -----------------------------------------------------
-- Table `viverodb`.`Vivero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Vivero` (
  `Coordenadas` VARCHAR(45) NOT NULL,
  `Localidad` VARCHAR(45) NULL,
  PRIMARY KEY (`Coordenadas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Zona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Zona` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Coordenadas` VARCHAR(45) NULL,
  PRIMARY KEY (`Nombre`),
  INDEX `Coordenadas_idx` (`Coordenadas` ASC) VISIBLE,
  CONSTRAINT `Coordenadas`
    FOREIGN KEY (`Coordenadas`)
    REFERENCES `viverodb`.`Vivero` (`Coordenadas`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Empleado` (
  `DNI` VARCHAR(9) NOT NULL,
  `Sueldo` INT NULL,
  `css` VARCHAR(45) NULL,
  `Antigüedad` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`),
  INDEX `Nombre_idx` (`Nombre` ASC) VISIBLE,
  CONSTRAINT `Nombre`
    FOREIGN KEY (`Nombre`)
    REFERENCES `viverodb`.`Zona` (`Nombre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Producto` (
  `Código_Producto` VARCHAR(45) NOT NULL,
  `Stock` VARCHAR(45) NULL,
  `Precio` VARCHAR(45) NULL,
  PRIMARY KEY (`Código_Producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Trabaja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Trabaja` (
  `Fecha_inicio` INT NOT NULL,
  `Fecha_fin` VARCHAR(45) NULL,
  `Nombre_Zona` VARCHAR(45) NULL,
  `DNI_Empleado` VARCHAR(45) NULL,
  `Ventas` VARCHAR(45) NULL,
  PRIMARY KEY (`Fecha_inicio`),
  INDEX `DNI_idx` (`DNI_Empleado` ASC) VISIBLE,
  INDEX `Nombre_idx` (`Nombre_Zona` ASC) VISIBLE,
  CONSTRAINT `Nombre_Zona`
    FOREIGN KEY (`Nombre_Zona`)
    REFERENCES `viverodb`.`Zona` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `DNI_Empleado`
    FOREIGN KEY (`DNI_Empleado`)
    REFERENCES `viverodb`.`Empleado` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Cliente` (
  `DNI` VARCHAR(45) NOT NULL,
  `Bonificación` VARCHAR(45) NULL,
  `Total_Mensual` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `viverodb`.`Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `viverodb`.`Compra` (
  `Cantidad` INT NOT NULL,
  `Fecha_` VARCHAR(45) NOT NULL,
  `DNI_Empleado` VARCHAR(45) NULL,
  `Código_Producto` VARCHAR(45) NULL,
  `DNI_Cliente` VARCHAR(45) NULL,
  PRIMARY KEY (`Fecha_`),
  INDEX `DNI_Empleado_idx` (`DNI_Empleado` ASC) VISIBLE,
  INDEX `Codigo_Producto_idx` (`Código_Producto` ASC) VISIBLE,
  INDEX `DNI_Cliente_idx` (`DNI_Cliente` ASC) VISIBLE,
  CONSTRAINT `DNI_Empleado`
    FOREIGN KEY (`DNI_Empleado`)
    REFERENCES `viverodb`.`Empleado` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `Codigo_Producto`
    FOREIGN KEY (`Código_Producto`)
    REFERENCES `viverodb`.`Producto` (`Código_Producto`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `DNI_Cliente`
    FOREIGN KEY (`DNI_Cliente`)
    REFERENCES `viverodb`.`Cliente` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
