CREATE TABLE team (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    teamnaam VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE teamlid (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    teamid INT(11) NOT NULL,
    voornaam VARCHAR(100) NOT NULL,
    achternaam VARCHAR(100) NOT NULL,
    FOREIGN KEY (teamid) REFERENCES team(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



insert into team (id,teamnaam) values 
(1,'flowerpower'),
(2,'poisonshroom'),
(3,'goombas'),
(4,'the toad army');

insert into teamlid (voornaam,achternaam,teamid) values 
('mario','mario',1),
('luigi','mario',1),
('peach','?',1),
('toad','the one and only',1),

('kamek','the witch',2),
('waluigi','waa',2),
('wario','waa',2),
('bowser','the great',2),


('goomba','1',3),
('goomba','2',3),
('goomba','3',3),
('goomba','4',3),

('toad','1',4),
('toad','2',4),
('toad','3',4),
('toad','4',4);

SELECT tml.voornaam, tml.achternaam, t.teamnaam
FROM teamlid AS tml
JOIN team AS t ON tml.teamid = t.id;


SELECT tml.voornaam, tml.achternaam, t.teamnaam
FROM teamlid AS tml
JOIN team AS t ON tml.teamid = t.id
WHERE t.teamnaam = 'poisonshroom';


SELECT tml.voornaam, tml.achternaam, t.teamnaam
FROM teamlid AS tml
JOIN team AS t ON tml.teamid = t.id
WHERE t.teamnaam IN ('flowerpower', 'the toad army');