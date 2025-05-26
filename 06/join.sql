SELECT 
    T.gesprekStart, 
    T.gesprekEind, 
    T.gesprekNaarTelefoonnummer, 
    K.klantid, 
    K.naam, 
    K.leeftijd, 
    K.telefoonnummer
FROM telefoonGesprek AS T
JOIN klant AS K ON T.klantid = K.klantid;