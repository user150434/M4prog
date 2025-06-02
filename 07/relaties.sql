insert into ingredient (id,naam) values 
(1,'pindas');

insert into voedselProduct (hoofdIngredientId,naam) values 
(1,'pindakaas');


 ALTER TABLE voedselProduct
 ADD CONSTRAINT FK_TABEL1_TABEL2
 FOREIGN KEY (hoofdIngredientId) REFERENCES  
 ingredient(id);



INSERT INTO ingredient (id, naam) VALUES 
(2, 'honing');


INSERT INTO voedselProduct (hoofdIngredientId, naam) VALUES 
(2, 'honingkoek');

INSERT INTO ingredient (id, naam) VALUES 
(3, 'bosbessen');

INSERT INTO voedselProduct (hoofdIngredientId, naam) VALUES 
(3, 'bosbessenkwark');


CREATE TABLE KATTEN (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    geboortedatum DATE NOT NULL,
    geslacht ENUM('M','V') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE KITTEN (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    geboortedatum DATE NOT NULL,
    mamaid INT(11) NOT NULL,
    papaid INT(11) NOT NULL,
    FOREIGN KEY (mamaid) REFERENCES KATTEN(id),
    FOREIGN KEY (papaid) REFERENCES KATTEN(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



insert into KATTEN (id,naam) values 
(1,'spinner'),
(2,'pluisje');
insert into KITTEN (mamaId,papaId,naam) values 
(1,2,'minicat');



INSERT INTO KATTEN (naam, geboortedatum, geslacht) VALUES 
('spinner', '2020-01-01', 'V'),
('pluisje', '2020-01-01', 'M');

INSERT INTO KITTEN (naam, geboortedatum, mamaid, papaid) VALUES 
('minicat', '2023-01-01', 1, 2);


SELECT 
    k.naam AS kitten_naam,
    mama.naam AS mama_naam,
    papa.naam AS papa_naam
FROM KITTEN AS k
JOIN KATTEN AS mama ON k.mamaid = mama.id
JOIN KATTEN AS papa ON k.papaid = papa.id;

ALTER TABLE KITTEN
DROP FOREIGN KEY FK_KITTEN_kat_mama;
ALTER TABLE KITTEN
DROP INDEX FK_KITTEN_kat_mama;

ALTER TABLE KITTEN
DROP FOREIGN KEY FK_KITTEN_kat_papa;
ALTER TABLE KITTEN
DROP INDEX FK_KITTEN_kat_papa;

SELECT * FROM KATTEN;
SELECT * FROM KITTEN;

DELETE FROM KATTEN WHERE id = 1;

SELECT * FROM KATTEN;
SELECT * FROM KITTEN;




INSERT INTO KATTEN (id, naam, geboortedatum, geslacht) VALUES 
(1, 'spinner', '2020-01-01', 'V');

INSERT INTO KITTEN (naam, geboortedatum, mamaid, papaid) VALUES 
('minicat', '2023-01-01', 1, 2);

DELETE FROM KATTEN WHERE id = 1; 

