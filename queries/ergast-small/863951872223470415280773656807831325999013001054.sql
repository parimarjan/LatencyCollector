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
AND (s1.status NOT LIKE ('Finished'))
AND (res1.position > '13.0')
AND (res1."positionOrder" <= '18')
AND (s2.status LIKE ('Suspension'))
AND (res2.position <= '6.0')
AND (res2."positionOrder" <= '5')
GROUP BY d1."nationality" ORDER BY COUNT(*) DESC
