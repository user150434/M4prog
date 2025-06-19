SELECT 
    product,
    SUM(aantal) as totaal_verkocht,
    SUM(aantal * verkoopprijs) as totaal_bedrag
FROM verkochtproduct
WHERE product = 'mario wonder'
GROUP BY product;


SELECT 
    product,
    SUM(aantal) as totaal_verkocht,
    SUM(aantal * verkoopprijs) as totaal_bedrag
FROM verkochtproduct
GROUP BY product;

SELECT COUNT(*) as aantal_huisdieren 
FROM huisdieren;

SELECT COUNT(*) as aantal_medewerkers 
FROM helpdeskmedewerker08;

SELECT COUNT(*) as aantal_klanten 
FROM helpdeskklant;

SELECT 
    eigenaar,
    COUNT(*) as aantal_huisdieren
FROM huisdieren
GROUP BY eigenaar;