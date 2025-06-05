CREATE TABLE helpdeskmedewerker08 (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(100) NOT NULL,
    achternaam VARCHAR(100) NOT NULL,
    afdeling VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE helpdeskklant (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(100) NOT NULL,
    achternaam VARCHAR(100) NOT NULL,
    bedrijf VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE gesprek (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    helpdeskmedewerker_id INT NOT NULL,
    klant_id INT NOT NULL,
    datum DATETIME NOT NULL,
    onderwerp VARCHAR(200) NOT NULL,
    FOREIGN KEY (helpdeskmedewerker_id) REFERENCES helpdeskmedewerker08(id),
    FOREIGN KEY (klant_id) REFERENCES helpdeskklant(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO helpdeskmedewerker08 (voornaam, achternaam, afdeling) VALUES
('Jan', 'Support', 'Technical'),
('Piet', 'Helper', 'Software'),
('Klaas', 'Fixes', 'Hardware');

INSERT INTO helpdeskklant (voornaam, achternaam, bedrijf) VALUES
('Marie', 'Klant', 'WebShop BV'),
('Johan', 'Gebruiker', 'Software Inc.'),
('Lisa', 'Tester', 'Tech Corp');

INSERT INTO gesprek (helpdeskmedewerker_id, klant_id, datum, onderwerp) VALUES
(1, 1, '2024-01-15 09:30:00', 'Printer probleem'),
(2, 1, '2024-01-16 14:15:00', 'Software crash'),
(3, 2, '2024-01-17 11:00:00', 'Network issues'),
(1, 3, '2024-01-18 13:45:00', 'Password reset');

SELECT 
    g.datum,
    g.onderwerp,
    CONCAT(h.voornaam, ' ', h.achternaam) as medewerker,
    h.afdeling,
    CONCAT(k.voornaam, ' ', k.achternaam) as klant,
    k.bedrijf
FROM gesprek g
JOIN helpdeskmedewerker08 h ON g.helpdeskmedewerker_id = h.id
JOIN helpdeskklant k ON g.klant_id = k.id
ORDER BY g.datum;