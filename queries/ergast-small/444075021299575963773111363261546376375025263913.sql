SELECT res3."raceId",res3."driverId",SUM(res3."milliseconds")
FROM results res1,
results res2,
status s1,
status s2,
drivers d1,
drivers d2,
races r1,
races r2,
results res3
WHERE
res3."driverId" = d1."driverId"
AND (res3."raceId" = r1."raceId" OR res3."raceId" = r2."raceId")
AND res1."raceId" = r1."raceId"
AND res2."raceId" = r2."raceId"
AND res1."statusId" = s1."statusId"
AND res2."statusId" = s2."statusId"
AND d1."driverId" = res1."driverId"
AND d2."driverId" = res2."driverId"
AND d1."driverId" = d2."driverId"
AND (s1.status LIKE ('Wheel'))
AND (res1.position > '1.0')
AND (res1."positionOrder" <= '2')
AND (s2.status NOT LIKE ('Overheating'))
AND (res2.position <= '1.0')
AND (res2."positionOrder" <= '1')
GROUP BY res3."raceId", res3."driverId" ORDER BY SUM(res3."milliseconds")
