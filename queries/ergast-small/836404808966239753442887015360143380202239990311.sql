SELECT c1.name, SUM(ps.milliseconds)
FROM constructors c1,
drivers d1,
results res1,
races r1,
"pitStops" ps,
"constructorResults" cr,
"constructorStandings" cs
WHERE
ps."raceId" = r1."raceId"
AND c1."constructorId" = cr."constructorId"
AND c1."constructorId" = cs."constructorId"
AND cr."raceId" = r1."raceId"
AND cr."raceId" = cs."raceId"
AND ps."driverId" = d1."driverId"
AND c1."constructorId" = res1."constructorId"
AND res1."driverId" = d1."driverId"
AND r1."raceId" = res1."raceId"
AND (res1.points >= '6.0')
AND (res1.position <= '6.0')
AND (res1."positionOrder" <= '4')
AND (cr.points >= '6.0')
GROUP BY c1.name
