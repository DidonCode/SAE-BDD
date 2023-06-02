-- MySQL Script generated by MySQL Workbench
-- Mon Jan 23 15:07:59 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleBooking
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleBooking
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleBooking` DEFAULT CHARACTER SET utf8 ;
USE `LittleBooking` ;

-- -----------------------------------------------------
-- Table `LittleBooking`.`AppartMaison`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`AppartMaison` (
  `idAppartMaison` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `pays` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `emplacements` VARCHAR(55) NULL,
  `personne` INT NULL,
  `cuisine` TINYINT(1) NULL,
  `kitchenette` TINYINT(1) NULL,
  `lave-linge` TINYINT(1) NULL,
  `television` TINYINT(1) NULL,
  `piscine` TINYINT(1) NULL,
  `mini-bar` TINYINT(1) NULL,
  `sauna` TINYINT(1) NULL,
  `balcon` TINYINT(1) NULL,
  `vueJardin` TINYINT(1) NULL,
  `terrase` TINYINT(1) NULL,
  `climatiseur` TINYINT(1) NULL,
  `chauffage` TINYINT(1) NULL,
  `connexionWifi` TINYINT(1) NULL,
  `parking` TINYINT(1) NULL,
  `parkingGratuit` TINYINT(1) NULL,
  `fumeur` TINYINT(1) NULL,
  `animaux` TINYINT(1) NULL,
  `enfants` TINYINT(1) NULL,
  `fetes` TINYINT(1) NULL,
  `commentaire` VARCHAR(255) NULL,
  `photo` INT NULL,
  `hebergeur` INT NULL,
  `reservartion` INT NULL,
  PRIMARY KEY (`idAppartMaison`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Appartement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Appartement` (
  `idAppartMaison` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `pays` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `emplacements` VARCHAR(55) NULL,
  `personne` INT NULL,
  `cuisine` TINYINT NULL,
  `kitchenette` TINYINT NULL,
  `lave-linge` TINYINT NULL,
  `television` TINYINT NULL,
  `piscine` TINYINT NULL,
  `mini-bar` TINYINT NULL,
  `sauna` TINYINT NULL,
  `balcon` TINYINT NULL,
  `vueJardin` TINYINT NULL,
  `terrase` TINYINT NULL,
  `climatiseur` TINYINT NULL,
  `chauffage` TINYINT NULL,
  `connexionWifi` TINYINT NULL,
  `parking` TINYINT NULL,
  `parkingGratuit` TINYINT NULL,
  `fumeur` TINYINT NULL,
  `animaux` TINYINT NULL,
  `enfants` TINYINT NULL,
  `fetes` TINYINT NULL,
  `commentaire` VARCHAR(255) NULL,
  `douche` TINYINT NULL,
  `baignoire` TINYINT NULL,
  `serviettes` TINYINT NULL,
  `secheCheveux` TINYINT NULL,
  `microOnde` TINYINT NULL,
  `plaqueCuisson` TINYINT NULL,
  `ustensileCuisine` TINYINT NULL,
  `bouilloire` TINYINT NULL,
  `refrigerateur` TINYINT NULL,
  `chambre` INT NULL,
  `tarifRemboursable` TINYINT NULL,
  `photo` INT NULL,
  `appartHotel` INT NULL,
  PRIMARY KEY (`idAppartMaison`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Studio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Studio` (
  `idStudio` INT NOT NULL,
  `litSimple` INT NULL,
  `litDouble` INT NULL,
  `personne` INT NULL,
  `superficie` INT NULL,
  `photo` INT NULL,
  `appartHotel` INT NULL,
  PRIMARY KEY (`idStudio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`AppartHotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`AppartHotel` (
  `idAppartHotel` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `pays` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `connexionWifi` TINYINT NULL,
  `parkingGratuit` TINYINT NULL,
  `climatisation` TINYINT NULL,
  `terrasse` TINYINT NULL,
  `jardin` TINYINT NULL,
  `chauffage` TINYINT NULL,
  `reception` TINYINT NULL,
  `bar` TINYINT NULL,
  `piscine` TINYINT NULL,
  `sauna` TINYINT NULL,
  `jacuzzi` TINYINT NULL,
  `horaireArrive` DATE NULL,
  `horaireDepart` DATE NULL,
  `fumeur` TINYINT NULL,
  `animaux` TINYINT NULL,
  `enfants` TINYINT NULL,
  `fetes` TINYINT NULL,
  `petitDejeuner` TINYINT NULL,
  `langue` INT NULL,
  `hebergeur` INT NULL,
  `reservation` INT NULL,
  `Appartement_idAppartMaison` INT NOT NULL,
  `Studio_idStudio` INT NOT NULL,
  PRIMARY KEY (`idAppartHotel`, `Appartement_idAppartMaison`, `Studio_idStudio`),
  INDEX `fk_AppartHotel_Appartement1_idx` (`Appartement_idAppartMaison` ASC),
  INDEX `fk_AppartHotel_Studio1_idx` (`Studio_idStudio` ASC),
  CONSTRAINT `fk_AppartHotel_Appartement1`
    FOREIGN KEY (`Appartement_idAppartMaison`)
    REFERENCES `LittleBooking`.`Appartement` (`idAppartMaison`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AppartHotel_Studio1`
    FOREIGN KEY (`Studio_idStudio`)
    REFERENCES `LittleBooking`.`Studio` (`idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`ChambreDouble`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`ChambreDouble` (
  `idChambreDouble` INT NOT NULL,
  `superficie` INT NULL,
  `litSimple` INT NULL,
  `litDouble` INT NULL,
  `vueMer` TINYINT NULL,
  `vueOcean` TINYINT NULL,
  `vuePiscine` TINYINT NULL,
  `tarifJourPersonne` FLOAT NULL,
  `tarifNuitPersonne` FLOAT NULL,
  `baignoire` TINYINT NULL,
  `television` TINYINT NULL,
  `bouilloire` TINYINT NULL,
  `balcon` TINYINT NULL,
  `vue` TINYINT NULL,
  `terrasse` TINYINT NULL,
  `idHotel` INT NULL,
  PRIMARY KEY (`idChambreDouble`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`ChambreSimple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`ChambreSimple` (
  `idChambreSimple` INT NOT NULL,
  `superficie` INT NULL,
  `litSimple` INT NULL,
  `vueMer` TINYINT NULL,
  `vueOcean` TINYINT NULL,
  `vuePiscine` TINYINT NULL,
  `tarifJourPersonne` FLOAT NULL,
  `tarifNuitPersonne` FLOAT NULL,
  `baignoire` TINYINT NULL,
  `television` TINYINT NULL,
  `bouilloire` TINYINT NULL,
  `balcon` TINYINT NULL,
  `vue` TINYINT NULL,
  `terrasse` TINYINT NULL,
  `idHotel` INT NULL,
  PRIMARY KEY (`idChambreSimple`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`SuiteFamiliale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`SuiteFamiliale` (
  `idSuiteFamiliale` INT NOT NULL,
  `superficie` INT NULL,
  `kingSize` INT NULL,
  `vueMer` TINYINT NULL,
  `vueOcean` TINYINT NULL,
  `vuePiscine` TINYINT NULL,
  `tarifJourPersonne` FLOAT NULL,
  `tarifNuitPersonne` FLOAT NULL,
  `baignoire` TINYINT NULL,
  `television` TINYINT NULL,
  `bouilloire` TINYINT NULL,
  `balcon` TINYINT NULL,
  `vue` TINYINT NULL,
  `terrasse` TINYINT NULL,
  `idHotel` INT NULL,
  PRIMARY KEY (`idSuiteFamiliale`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Hotel` (
  `idHotel` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `pays` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `etoile` INT NULL,
  `nomContact` VARCHAR(55) NULL,
  `numeroTelephone` VARCHAR(55) NULL,
  `numeroSecondaire` VARCHAR(55) NULL,
  `chaineHoteliere` TINYINT NULL,
  `connexionWifi` TINYINT NULL,
  `parkingGratuit` TINYINT NULL,
  `climatisation` TINYINT NULL,
  `terrasse` TINYINT NULL,
  `jardin` TINYINT NULL,
  `chauffage` TINYINT NULL,
  `reception` TINYINT NULL,
  `bar` TINYINT NULL,
  `piscine` TINYINT NULL,
  `sauna` TINYINT NULL,
  `jacuzzi` TINYINT NULL,
  `horaireArrive` DATE NULL,
  `horaireDepart` DATE NULL,
  `petitDejeuner` TINYINT NULL,
  `langue` INT NULL,
  `navette` TINYINT NULL,
  `restaurationDemiPension` TINYINT NULL,
  `restaurationPensionComplete` TINYINT NULL,
  `litAppoint` INT NULL,
  `tarifAppointAldulte` FLOAT NULL,
  `reservation` INT NULL,
  `ChambreDouble_idChambreDouble` INT NOT NULL,
  `ChambreSimple_idChambreSimple` INT NOT NULL,
  `SuiteFamiliale_idSuiteFamiliale` INT NOT NULL,
  PRIMARY KEY (`idHotel`, `ChambreDouble_idChambreDouble`, `ChambreSimple_idChambreSimple`, `SuiteFamiliale_idSuiteFamiliale`),
  INDEX `fk_Hotel_ChambreDouble1_idx` (`ChambreDouble_idChambreDouble` ASC),
  INDEX `fk_Hotel_ChambreSimple1_idx` (`ChambreSimple_idChambreSimple` ASC),
  INDEX `fk_Hotel_SuiteFamiliale1_idx` (`SuiteFamiliale_idSuiteFamiliale` ASC),
  CONSTRAINT `fk_Hotel_ChambreDouble1`
    FOREIGN KEY (`ChambreDouble_idChambreDouble`)
    REFERENCES `LittleBooking`.`ChambreDouble` (`idChambreDouble`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hotel_ChambreSimple1`
    FOREIGN KEY (`ChambreSimple_idChambreSimple`)
    REFERENCES `LittleBooking`.`ChambreSimple` (`idChambreSimple`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hotel_SuiteFamiliale1`
    FOREIGN KEY (`SuiteFamiliale_idSuiteFamiliale`)
    REFERENCES `LittleBooking`.`SuiteFamiliale` (`idSuiteFamiliale`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Hebergeurs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Hebergeurs` (
  `idHebergeurs` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `prenom` VARCHAR(55) NULL,
  `telephone` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `mail` VARCHAR(55) NULL,
  `motdepasse` VARCHAR(55) NULL,
  `url` VARCHAR(255) NULL,
  `AppartHotel_idAppartHotel` INT NOT NULL,
  `AppartHotel_Appartement_idAppartMaison` INT NOT NULL,
  `AppartHotel_Studio_idStudio` INT NOT NULL,
  `AppartMaison_idAppartMaison` INT NOT NULL,
  PRIMARY KEY (`idHebergeurs`, `AppartHotel_idAppartHotel`, `AppartHotel_Appartement_idAppartMaison`, `AppartHotel_Studio_idStudio`, `AppartMaison_idAppartMaison`),
  INDEX `fk_Hebergeurs_AppartHotel1_idx` (`AppartHotel_idAppartHotel` ASC, `AppartHotel_Appartement_idAppartMaison` ASC, `AppartHotel_Studio_idStudio` ASC),
  INDEX `fk_Hebergeurs_AppartMaison1_idx` (`AppartMaison_idAppartMaison` ASC),
  CONSTRAINT `fk_Hebergeurs_AppartHotel1`
    FOREIGN KEY (`AppartHotel_idAppartHotel` , `AppartHotel_Appartement_idAppartMaison` , `AppartHotel_Studio_idStudio`)
    REFERENCES `LittleBooking`.`AppartHotel` (`idAppartHotel` , `Appartement_idAppartMaison` , `Studio_idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hebergeurs_AppartMaison1`
    FOREIGN KEY (`AppartMaison_idAppartMaison`)
    REFERENCES `LittleBooking`.`AppartMaison` (`idAppartMaison`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Avion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Avion` (
  `idAvion` INT NOT NULL,
  `type` VARCHAR(55) NULL,
  `vol` INT NULL,
  PRIMARY KEY (`idAvion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Vols`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Vols` (
  `idVols` INT NOT NULL,
  `aeroportDepart` VARCHAR(55) NULL,
  `aeroportArrive` VARCHAR(55) NULL,
  `heureDepart` VARCHAR(55) NULL,
  `heureArrive` VARCHAR(55) NULL,
  `tarifPremiere` FLOAT NULL,
  `tarifEconomique` FLOAT NULL,
  `bagages` TINYINT NULL,
  `tarifBagage1` FLOAT NULL,
  `tarifBagage2` FLOAT NULL,
  `tarifBagage3` FLOAT NULL,
  `avion` INT NULL,
  `reservation` INT NULL,
  `Avion_idAvion` INT NOT NULL,
  PRIMARY KEY (`idVols`, `Avion_idAvion`),
  INDEX `fk_Vols_Avion1_idx` (`Avion_idAvion` ASC),
  CONSTRAINT `fk_Vols_Avion1`
    FOREIGN KEY (`Avion_idAvion`)
    REFERENCES `LittleBooking`.`Avion` (`idAvion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Reservation` (
  `idReservation` INT NOT NULL,
  `dateArrive` DATE NULL,
  `dateDepart` DATE NULL,
  `adulte` INT NULL,
  `enfant` INT NULL,
  `ville` VARCHAR(55) NULL,
  `pays` VARCHAR(55) NULL,
  `allerSimple` TINYINT NULL,
  `allerRetour` TINYINT NULL,
  `volPremiereClasse` TINYINT NULL,
  `volClassEconomique` TINYINT NULL,
  `escale` TINYINT NULL,
  `packExtra` TINYINT NULL,
  `client` INT NULL,
  `AppartMaison_idAppartMaison` INT NOT NULL,
  `Hotel_idHotel` INT NOT NULL,
  `Hotel_ChambreDouble_idChambreDouble` INT NOT NULL,
  `Hotel_ChambreSimple_idChambreSimple` INT NOT NULL,
  `Hotel_SuiteFamiliale_idSuiteFamiliale` INT NOT NULL,
  `AppartHotel_idAppartHotel` INT NOT NULL,
  `AppartHotel_Appartement_idAppartMaison` INT NOT NULL,
  `AppartHotel_Studio_idStudio` INT NOT NULL,
  `Vols_idVols` INT NOT NULL,
  PRIMARY KEY (`idReservation`, `AppartMaison_idAppartMaison`, `Hotel_idHotel`, `Hotel_ChambreDouble_idChambreDouble`, `Hotel_ChambreSimple_idChambreSimple`, `Hotel_SuiteFamiliale_idSuiteFamiliale`, `AppartHotel_idAppartHotel`, `AppartHotel_Appartement_idAppartMaison`, `AppartHotel_Studio_idStudio`, `Vols_idVols`),
  INDEX `fk_Reservation_AppartMaison1_idx` (`AppartMaison_idAppartMaison` ASC),
  INDEX `fk_Reservation_Hotel1_idx` (`Hotel_idHotel` ASC, `Hotel_ChambreDouble_idChambreDouble` ASC, `Hotel_ChambreSimple_idChambreSimple` ASC, `Hotel_SuiteFamiliale_idSuiteFamiliale` ASC),
  INDEX `fk_Reservation_AppartHotel1_idx` (`AppartHotel_idAppartHotel` ASC, `AppartHotel_Appartement_idAppartMaison` ASC, `AppartHotel_Studio_idStudio` ASC),
  INDEX `fk_Reservation_Vols1_idx` (`Vols_idVols` ASC),
  CONSTRAINT `fk_Reservation_AppartMaison1`
    FOREIGN KEY (`AppartMaison_idAppartMaison`)
    REFERENCES `LittleBooking`.`AppartMaison` (`idAppartMaison`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Hotel1`
    FOREIGN KEY (`Hotel_idHotel` , `Hotel_ChambreDouble_idChambreDouble` , `Hotel_ChambreSimple_idChambreSimple` , `Hotel_SuiteFamiliale_idSuiteFamiliale`)
    REFERENCES `LittleBooking`.`Hotel` (`idHotel` , `ChambreDouble_idChambreDouble` , `ChambreSimple_idChambreSimple` , `SuiteFamiliale_idSuiteFamiliale`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_AppartHotel1`
    FOREIGN KEY (`AppartHotel_idAppartHotel` , `AppartHotel_Appartement_idAppartMaison` , `AppartHotel_Studio_idStudio`)
    REFERENCES `LittleBooking`.`AppartHotel` (`idAppartHotel` , `Appartement_idAppartMaison` , `Studio_idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Vols1`
    FOREIGN KEY (`Vols_idVols`)
    REFERENCES `LittleBooking`.`Vols` (`idVols`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Client` (
  `idClient` INT NOT NULL,
  `nom` VARCHAR(55) NULL,
  `prenom` VARCHAR(55) NULL,
  `telephone` VARCHAR(55) NULL,
  `mail` VARCHAR(55) NULL,
  `motdepasse` VARCHAR(55) NULL,
  `naissance` DATE NULL,
  `sexe` VARCHAR(55) NULL,
  `adresse` VARCHAR(55) NULL,
  `langue` VARCHAR(55) NULL,
  `paiement` VARCHAR(55) NULL,
  `proprietaireCarte` VARCHAR(55) NULL,
  `numeroCarte` VARCHAR(55) NULL,
  `expirationCarte` VARCHAR(55) NULL,
  `cryptogramme` VARCHAR(55) NULL,
  `Reservation_idReservation` INT NOT NULL,
  `Reservation_AppartMaison_idAppartMaison` INT NOT NULL,
  `Reservation_Hotel_idHotel` INT NOT NULL,
  `Reservation_Hotel_ChambreDouble_idChambreDouble` INT NOT NULL,
  `Reservation_Hotel_ChambreSimple_idChambreSimple` INT NOT NULL,
  `Reservation_Hotel_SuiteFamiliale_idSuiteFamiliale` INT NOT NULL,
  `Reservation_AppartHotel_idAppartHotel` INT NOT NULL,
  `Reservation_AppartHotel_Appartement_idAppartMaison` INT NOT NULL,
  `Reservation_AppartHotel_Studio_idStudio` INT NOT NULL,
  PRIMARY KEY (`idClient`, `Reservation_idReservation`, `Reservation_AppartMaison_idAppartMaison`, `Reservation_Hotel_idHotel`, `Reservation_Hotel_ChambreDouble_idChambreDouble`, `Reservation_Hotel_ChambreSimple_idChambreSimple`, `Reservation_Hotel_SuiteFamiliale_idSuiteFamiliale`, `Reservation_AppartHotel_idAppartHotel`, `Reservation_AppartHotel_Appartement_idAppartMaison`, `Reservation_AppartHotel_Studio_idStudio`),
  INDEX `fk_Client_Reservation1_idx` (`Reservation_idReservation` ASC, `Reservation_AppartMaison_idAppartMaison` ASC, `Reservation_Hotel_idHotel` ASC, `Reservation_Hotel_ChambreDouble_idChambreDouble` ASC, `Reservation_Hotel_ChambreSimple_idChambreSimple` ASC, `Reservation_Hotel_SuiteFamiliale_idSuiteFamiliale` ASC, `Reservation_AppartHotel_idAppartHotel` ASC, `Reservation_AppartHotel_Appartement_idAppartMaison` ASC, `Reservation_AppartHotel_Studio_idStudio` ASC),
  CONSTRAINT `fk_Client_Reservation1`
    FOREIGN KEY (`Reservation_idReservation` , `Reservation_AppartMaison_idAppartMaison` , `Reservation_Hotel_idHotel` , `Reservation_Hotel_ChambreDouble_idChambreDouble` , `Reservation_Hotel_ChambreSimple_idChambreSimple` , `Reservation_Hotel_SuiteFamiliale_idSuiteFamiliale` , `Reservation_AppartHotel_idAppartHotel` , `Reservation_AppartHotel_Appartement_idAppartMaison` , `Reservation_AppartHotel_Studio_idStudio`)
    REFERENCES `LittleBooking`.`Reservation` (`idReservation` , `AppartMaison_idAppartMaison` , `Hotel_idHotel` , `Hotel_ChambreDouble_idChambreDouble` , `Hotel_ChambreSimple_idChambreSimple` , `Hotel_SuiteFamiliale_idSuiteFamiliale` , `AppartHotel_idAppartHotel` , `AppartHotel_Appartement_idAppartMaison` , `AppartHotel_Studio_idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleBooking`.`Siege`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleBooking`.`Siege` (
  `idSiege` INT NOT NULL,
  `premierClasse` TINYINT NULL,
  `classeEconomique` TINYINT NULL,
  `hublot` TINYINT NULL,
  `avion` INT NULL,
  `Avion_idAvion` INT NOT NULL,
  PRIMARY KEY (`idSiege`, `Avion_idAvion`),
  INDEX `fk_Siege_Avion1_idx` (`Avion_idAvion` ASC),
  CONSTRAINT `fk_Siege_Avion1`
    FOREIGN KEY (`Avion_idAvion`)
    REFERENCES `LittleBooking`.`Avion` (`idAvion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
