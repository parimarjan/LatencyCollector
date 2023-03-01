SELECT COUNT(*)
FROM constructors c1,
drivers d1,
results res1,
races r1,
"pitStops" ps
WHERE
ps."raceId" = r1."raceId"
AND ps."driverId" = d1."driverId"
AND c1."constructorId" = res1."constructorId"
AND res1."driverId" = d1."driverId"
AND r1."raceId" = res1."raceId"
AND (res1.points IS NULL)
AND (res1.position > '14.0')
AND (res1."positionOrder" <= '15')
