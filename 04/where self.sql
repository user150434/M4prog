DROP TABLE IF EXISTS games;

CREATE TABLE IF NOT EXISTS games (
  id INT(11) NOT NULL AUTO_INCREMENT,
  titel VARCHAR(100) NOT NULL,
  platform VARCHAR(50) NOT NULL,
  jaar INT(4) NOT NULL,
  uitgebracht BOOLEAN NOT NULL,
  prijs DECIMAL(6,2) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO games (titel, platform, jaar, uitgebracht, prijs, genre) VALUES
('Space Quest', 'PC', 2020, 1, 29.99, 'Adventure'),
('FIFA 25', 'PlayStation', 2025, 1, 59.99, 'Sport'),
('Mario Kart', 'Switch', 2023, 1, 49.99, 'Racing'),
('Hollow Knight', 'PC', 2018, 0, 14.99, 'Platformer'),
('Gran Turismo', 'PlayStation', 2024, 1, 69.99, 'Racing'),
('Zelda Quest', 'Switch', 2025, 0, 59.99, 'Adventure'),
('NBA 2K25', 'Xbox', 2025, 1, 69.99, 'Sport');

SELECT * FROM games WHERE platform = 'PC' AND prijs < 30;
SELECT * FROM games WHERE (genre = 'Racing' OR genre = 'Sport') AND uitgebracht = 1;
SELECT * FROM games WHERE prijs = 69.99 AND genre = 'Racing' AND uitgebracht = 0;
