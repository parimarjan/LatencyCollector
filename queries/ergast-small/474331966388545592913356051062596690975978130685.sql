SELECT ps."driverId", MAX(ps."milliseconds")
FROM results res1,
results res2,
status s1,
status s2,
drivers d1,
drivers d2,
races r1,
races r2,
"pitStops" ps
WHERE
ps."driverId" = d1."driverId"
AND ps."driverId" = d2."driverId"
AND ps."driverId" = res1."driverId"
AND res1."raceId" = r1."raceId"
AND res2."raceId" = r2."raceId"
AND res1."statusId" = s1."statusId"
AND res2."statusId" = s2."statusId"
AND d1."driverId" = res1."driverId"
AND d2."driverId" = res2."driverId"
AND d1."driverId" = d2."driverId"
AND (s1.status LIKE ('+1 Lap'))
AND (res1.position > '1.0')
AND (res1."positionOrder" <= '7')
AND (s2.status LIKE ('Engine'))
AND (res2.position <= '2.0')
AND (res2."positionOrder" <= '1')
GROUP BY ps."raceId", ps."driverId" ORDER BY MAX(ps."milliseconds")
