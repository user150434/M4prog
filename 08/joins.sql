SELECT    *FROM
    teamlidv2
    JOIN teamlidv2_teamv2 ON teamlidv2.id = teamlidv2_teamv2.teamlidid;

SELECT
    teamlidv2.voornaam,
    teamlidv2.achternaam,
    teamv2.teamnaam
FROM
    teamlidv2
    JOIN teamlidv2_teamv2 ON teamlidv2.id = teamlidv2_teamv2.teamlidid
    JOIN teamv2 ON teamlidv2_teamv2.teamid = teamv2.id;