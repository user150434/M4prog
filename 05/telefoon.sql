CREATE table klantTelefoonGesprek (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  naam varchar(120) NOT NULL,
  leeftijd int(11) NOT NULL,
  telefoonnummer varchar(12) NOT NULL,
  gesprekStart DATETIME NOT NULL,
  gesprekEind DATETIME NOT NULL,
  gesprekNaarTelefoonnummer VARCHAR(12) NOT NULL,
  UNIQUE KEY id_UNIQUE (id ASC) visible


) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `klantTelefoonGesprek` (`id`, `naam`, `leeftijd`, `telefoonnummer`, `gesprekStart`, `gesprekEind`, `gesprekNaarTelefoonnummer`)
 VALUES 
(NULL,"leraar",50,"0600001111",'2024-01-01 00:46:00', '2024-01-01 00:50:32', '0691542435'),
(NULL,"leraar",50,"0600001111",'2024-01-01 00:50:32', '2024-01-01 00:59:29', '0634633400'),
(NULL,"leraar",50,"0600001111",'2024-01-01 00:59:29', '2024-01-01 01:04:56', '0666939315'),
(NULL,"leraar",50,"0600001111",'2024-01-01 01:04:56', '2024-01-01 01:14:53', '0612733029'),
(NULL,"leraar",50,"0600001111",'2024-01-01 01:14:53', '2024-01-01 01:32:51', '0670946302'),
(NULL,"leraar",50,"0600001111",'2024-01-01 01:32:51', '2024-01-01 01:39:39', '0686324659'),
(NULL,"leraar",50,"0600001111",'2024-01-01 01:39:39', '2024-01-01 01:58:40', '0672994777'),
(NULL,"leraar",50,"0600001111",'2024-01-01 01:58:40', '2024-01-01 02:09:35', '0671885824'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:09:35', '2024-01-01 02:19:39', '0626841211'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:19:39', '2024-01-01 02:28:56', '0698968939'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:28:56', '2024-01-01 02:41:41', '0612735486'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:41:41', '2024-01-01 02:49:01', '0696170963'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:49:01', '2024-01-01 02:59:43', '0620706195'),
(NULL,"leraar",50,"0600001111",'2024-01-01 02:59:43', '2024-01-01 03:05:36', '0681528902'),
(NULL,"leraar",50,"0600001111",'2024-01-01 03:05:36', '2024-01-01 03:12:02', '0623214253'),
(NULL,"leraar",50,"0600001111",'2024-01-01 03:12:02', '2024-01-01 03:16:26', '0674685414');




select * from klantTelefoonGesprek;




CREATE TABLE klant (
  klantid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  naam VARCHAR(220) NOT NULL,
  leeftijd INT NOT NULL,
  telefoonnummer VARCHAR(12) NOT NULL,
  UNIQUE INDEX idx_telefoonnummer (telefoonnummer)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

CREATE TABLE telefoonGesprek (
  gesprekid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  klantid INT NOT NULL,
  gesprekStart DATETIME NOT NULL,
  gesprekEind DATETIME NOT NULL,
  gesprekNaarTelefoonnummer VARCHAR(12) NOT NULL,
  FOREIGN KEY (klantid)
    REFERENCES klant(klantid)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;