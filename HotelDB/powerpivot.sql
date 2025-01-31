
select kategorie, AVG(preispronacht) As durchschnitt
from ZIMMER
group by kategorie;


SELECT z.kategorie, AVG(r.check_out - r.check_in) AS durchschnittlicher_aufenthalt
FROM RESERVIERUNG r
JOIN ZIMMER z ON r.zimmernummer = z.zimmernummer
WHERE r.check_in IS NOT NULL AND r.check_out IS NOT NULL
GROUP BY z.kategorie;

