CREATE TABLE `akcije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `aukcije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `clanstvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datumobjave` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `dogadaji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `galerija` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slika` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `komentari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dogadaj_id` int(11) NOT NULL,
  `tekst` text NOT NULL,
  `email` varchar(256) NOT NULL,
  `tip_dogadaja` varchar(45) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(128) NOT NULL,
  `adresa` varchar(128) NOT NULL,
  `mobitel` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `razprist` int(11) NOT NULL,
  `ime` varchar(128) NOT NULL,
  `prezime` varchar(128) NOT NULL,
  `datRodenja` date NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

CREATE TABLE `macke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL,
  `slika` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `onama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `datum` date NOT NULL,
  `slika` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `privremeniudomitelji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  `datum` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `razinapristupa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrsta` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `volontirajidoniraj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(256) NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
