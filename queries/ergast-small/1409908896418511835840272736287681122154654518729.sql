SELECT d1."nationality", COUNT(*)
FROM results res1,
results res2,
status s1,
status s2,
drivers d1,
drivers d2,
races r1,
races r2
WHERE
res1."raceId" = r1."raceId"
AND res2."raceId" = r2."raceId"
AND res1."statusId" = s1."statusId"
AND res2."statusId" = s2."statusId"
AND d1."driverId" = res1."driverId"
AND d2."driverId" = res2."driverId"
AND d1."driverId" = d2."driverId"
AND (s1.status LIKE ('+3 Laps'))
AND (res1.position > '15.0')
AND (res1."positionOrder" <= '18')
AND (s2.status NOT LIKE ('+5 Laps'))
AND (res2.position > '22.0')
AND (res2."positionOrder" <= '23')
GROUP BY d1."nationality" ORDER BY COUNT(*) DESC
