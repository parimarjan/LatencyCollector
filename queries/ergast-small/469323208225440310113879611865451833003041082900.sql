SELECT d1."nationality",c1."nationality", COUNT(*)
FROM results res1,
results res2,
status s1,
status s2,
drivers d1,
drivers d2,
races r1,
races r2,
constructors c1,
constructors c2
WHERE
res1."raceId" = r1."raceId"
AND res2."raceId" = r2."raceId"
AND res1."statusId" = s1."statusId"
AND res2."statusId" = s2."statusId"
AND d1."driverId" = res1."driverId"
AND d2."driverId" = res2."driverId"
AND d1."driverId" = d2."driverId"
AND c1."constructorId" = res1."constructorId"
AND c2."constructorId" = res2."constructorId"
AND c1."constructorId" = c2."constructorId"
AND (s1.status NOT LIKE ('Did not prequalify'))
AND (res1.position <= '4.0')
AND (res1."positionOrder" <= '1')
AND (s2.status LIKE ('Gearbox'))
AND (res2.position > '1.0')
AND (res2."positionOrder" <= '6')
GROUP BY d1."nationality",c1."nationality" ORDER BY COUNT(*) DESC
