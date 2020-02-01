-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Epopeyadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Epopeyadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Epopeyadb` DEFAULT CHARACTER SET utf8 ;
USE `Epopeyadb` ;

-- -----------------------------------------------------
-- Table `Epopeyadb`.`Librerias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Librerias` (
  `Identificador` INT NOT NULL,
  `Localizacion` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Identificador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Empleados` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(9) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Librerias_Identificador` INT NOT NULL,
  PRIMARY KEY (`DNI`, `Librerias_Identificador`),
  INDEX `fk_Empleados_Librerias_idx` (`Librerias_Identificador` ASC) VISIBLE,
  CONSTRAINT `fk_Empleados_Librerias`
    FOREIGN KEY (`Librerias_Identificador`)
    REFERENCES `Epopeyadb`.`Librerias` (`Identificador`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Clientes Registrados VIP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Clientes Registrados VIP` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Fecha nacimiento` DATE NOT NULL,
  `ID_Tarjeta` INT NOT NULL,
  `Fecha Caducidad` DATE NOT NULL,
  `Puntos` INT NOT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Clientes Registrados Normal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Clientes Registrados Normal` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Fecha nacimiento` DATE NOT NULL,
  `ID_Tarjeta` INT NULL,
  `Fecha caducidad` DATE NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Cuentan con`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Cuentan con` (
  `Librerias_Identificador` INT NOT NULL,
  `Clientes Registrados VIP_DNI` VARCHAR(9) NOT NULL,
  `Clientes Registrados Normal_DNI` VARCHAR(9) NOT NULL,
  INDEX `fk_Librerias_has_Clientes Registrados_Librerias1_idx` (`Librerias_Identificador` ASC) VISIBLE,
  INDEX `fk_Cuentan con_Clientes Registrados VIP1_idx` (`Clientes Registrados VIP_DNI` ASC) VISIBLE,
  INDEX `fk_Cuentan con_Clientes Registrados Normal1_idx` (`Clientes Registrados Normal_DNI` ASC) VISIBLE,
  PRIMARY KEY (`Librerias_Identificador`, `Clientes Registrados VIP_DNI`, `Clientes Registrados Normal_DNI`),
  CONSTRAINT `fk_Librerias_has_Clientes Registrados_Librerias1`
    FOREIGN KEY (`Librerias_Identificador`)
    REFERENCES `Epopeyadb`.`Librerias` (`Identificador`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cuentan con_Clientes Registrados VIP1`
    FOREIGN KEY (`Clientes Registrados VIP_DNI`)
    REFERENCES `Epopeyadb`.`Clientes Registrados VIP` (`DNI`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cuentan con_Clientes Registrados Normal1`
    FOREIGN KEY (`Clientes Registrados Normal_DNI`)
    REFERENCES `Epopeyadb`.`Clientes Registrados Normal` (`DNI`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Libros` (
  `ISBN` VARCHAR(20) NOT NULL,
  `Titulo` VARCHAR(45) NOT NULL,
  `Precio` INT NOT NULL,
  `Fecha lanzamiento` DATE NOT NULL,
  `Autor` VARCHAR(45) NOT NULL,
  `Stock` INT NOT NULL,
  `Edicion` INT NOT NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Registro Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Registro Ventas` (
  `Codigo Ventas` INT NOT NULL,
  `Fecha Venta` DATE NOT NULL,
  `ISBN` VARCHAR(20) NOT NULL,
  `Librerias_Identificador` INT NOT NULL,
  PRIMARY KEY (`Codigo Ventas`, `ISBN`, `Librerias_Identificador`),
  INDEX `fk_Registro Ventas_Librerias1_idx` (`Librerias_Identificador` ASC) VISIBLE,
  INDEX `fk_Registro Ventas_Libros_idx` (`ISBN` ASC) VISIBLE,
  CONSTRAINT `fk_Registro Ventas_Librerias1`
    FOREIGN KEY (`Librerias_Identificador`)
    REFERENCES `Epopeyadb`.`Librerias` (`Identificador`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Registro Ventas_Libros1`
    FOREIGN KEY (`ISBN`)
    REFERENCES `Epopeyadb`.`Libros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Contrato Indefinido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Contrato Indefinido` (
  `Contrato_ID` VARCHAR(20) NOT NULL,
  `Empleados_DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Sueldo` INT NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  PRIMARY KEY (`Contrato_ID`, `Empleados_DNI`),
  INDEX `fk_Contrato Indefinido_Empleados1_idx` (`Empleados_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Contrato Indefinido_Empleados1`
    FOREIGN KEY (`Empleados_DNI`)
    REFERENCES `Epopeyadb`.`Empleados` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Contrato Temporal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Contrato Temporal` (
  `Contrato_ID` VARCHAR(20) NOT NULL,
  `Empleados_DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Sueldo` INT NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  `Fecha_finalizacion` DATE NOT NULL,
  PRIMARY KEY (`Contrato_ID`, `Empleados_DNI`),
  INDEX `fk_Contrato_id_Empleados1_idx` (`Empleados_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Contrato_id_Empleados1`
    FOREIGN KEY (`Empleados_DNI`)
    REFERENCES `Epopeyadb`.`Empleados` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Generos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Generos` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Numero libros` INT NOT NULL,
  `Interés` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Pertenece`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Pertenece` (
  `Libros_ISBN` VARCHAR(20) NOT NULL,
  `Generos_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Generos_Nombre`, `Libros_ISBN`),
  INDEX `fk_Pertenece_Libros1_idx` (`Libros_ISBN` ASC) VISIBLE,
  INDEX `fk_Pertenece_Generos1_idx` (`Generos_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Pertenece_Libros1`
    FOREIGN KEY (`Libros_ISBN`)
    REFERENCES `Epopeyadb`.`Libros` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Pertenece_Generos1`
    FOREIGN KEY (`Generos_Nombre`)
    REFERENCES `Epopeyadb`.`Generos` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Dispone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Dispone` (
  `Librerias_Identificador` INT NOT NULL,
  `Libros_ISBN` VARCHAR(20) NOT NULL,
  `Stock` INT NOT NULL,
  `Precio` INT NOT NULL,
  INDEX `fk_Dispone_Librerias1_idx` (`Librerias_Identificador` ASC) VISIBLE,
  INDEX `fk_Dispone_Libros1_idx` (`Libros_ISBN` ASC) VISIBLE,
  PRIMARY KEY (`Librerias_Identificador`, `Libros_ISBN`),
  CONSTRAINT `fk_Dispone_Librerias1`
    FOREIGN KEY (`Librerias_Identificador`)
    REFERENCES `Epopeyadb`.`Librerias` (`Identificador`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Dispone_Libros1`
    FOREIGN KEY (`Libros_ISBN`)
    REFERENCES `Epopeyadb`.`Libros` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Epopeyadb`.`Novedoso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Epopeyadb`.`Novedoso` (
  `Librerias_Identificador` INT NOT NULL,
  `Libros_ISBN` VARCHAR(20) NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  `Fecha_fin` DATE NOT NULL,
  INDEX `fk_Novedoso_Librerias1_idx` (`Librerias_Identificador` ASC) VISIBLE,
  INDEX `fk_Novedoso_Libros1_idx` (`Libros_ISBN` ASC) VISIBLE,
  PRIMARY KEY (`Librerias_Identificador`, `Libros_ISBN`),
  CONSTRAINT `fk_Novedoso_Librerias1`
    FOREIGN KEY (`Librerias_Identificador`)
    REFERENCES `Epopeyadb`.`Librerias` (`Identificador`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Novedoso_Libros1`
    FOREIGN KEY (`Libros_ISBN`)
    REFERENCES `Epopeyadb`.`Libros` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;