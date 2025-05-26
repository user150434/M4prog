SELECT naam,leeftijd,sum(leeftijd) FROM `huisdieren` WHERE 1;

SELECT naam,leeftijd,sum(leeftijd) AS leeftijdTotaal FROM `huisdieren`;

SELECT naam AS petName, leeftijd AS age, SUM(leeftijd) AS totalAge
FROM huisdieren;


SELECT naam,leeftijd FROM `huisdieren`;

SELECT naam,leeftijd FROM `huisdieren` as pets;

SELECT pets.naam,pets.leeftijd FROM `huisdieren` as pets;



SELECT pets.naam, pets.leeftijd 
FROM huisdieren AS pets 
WHERE pets.leeftijd > 2;



SELECT * FROM `huisdieren` HD WHERE HD.id =1; 

CREATE TABLE `persoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `hobbyid` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  UNIQUE INDEX `persoonid_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `hobby` (
  `hobbyid` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `hobby` varchar(150) NOT NULL,
  UNIQUE INDEX `hobbyid_UNIQUE` (`hobbyid` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hobby` ( `hobbyid`,`hobby`) VALUES (1,"gamen");
INSERT INTO `persoon` ( `naam`,`hobbyid`) VALUES ("leraar",1);


SELECT * 
FROM hobby AS h 
JOIN persoon AS p 
ON h.hobbyid = p.hobbyid;


SELECT h.hobbyid, h.hobby, p.id AS persoonid, p.naam
FROM hobby AS h
JOIN persoon AS p
ON h.hobbyid = p.hobbyid;