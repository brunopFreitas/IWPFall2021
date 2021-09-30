use iwpcomm1700erp;
DROP TABLE IF EXISTS `iwpcomm1700erp`.`EMOTIONALRESILIENCEPROJECT`;
DROP TABLE IF EXISTS `iwpcomm1700erp`.`anxiety`;
DROP TABLE IF EXISTS `iwpcomm1700erp`.`stress`;
DROP TABLE IF EXISTS `iwpcomm1700erp`.`physicalactivity`;
DROP TABLE IF EXISTS `iwpcomm1700erp`.`mentalactivity`;

CREATE TABLE `ANXIETY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `STRESS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `PHYSICALACTIVITY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `MENTALACTIVITY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `EMOTIONALRESILIENCEPROJECT` (
  `date` date NOT NULL,
  `event` time NOT NULL,
  `stressID` int(11) NULL,
  `anxietyID` int(11) NULL,
  `physicalActivityID` int(11) NULL,
  `mentalActivityID` int(11) NULL,
  CONSTRAINT FOREIGN KEY (`stressID`) REFERENCES `STRESS` (`id`),
  CONSTRAINT FOREIGN KEY (`anxietyID`) REFERENCES `ANXIETY` (`id`),
  CONSTRAINT FOREIGN KEY (`physicalActivityID`) REFERENCES `PHYSICALACTIVITY` (`id`),
  CONSTRAINT FOREIGN KEY (`mentalActivityID`) REFERENCES `MENTALACTIVITY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;