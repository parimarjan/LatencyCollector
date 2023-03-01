SELECT COUNT(*)
FROM
constructors c,
drivers d,
results res,
constructors c2,
drivers d2,
results res2
WHERE c."constructorId" = res."constructorId"
AND res."driverId" = d."driverId"
AND d.nationality != c.nationality
AND c2."constructorId" = res2."constructorId"
AND res2."driverId" = d2."driverId"
AND d2.nationality = c2.nationality
AND d2."driverId" = d."driverId"
AND (c.nationality ILIKE ('%braz%'))
AND (res.position IN ('10.0'))
AND (res2.position IN ('1.0'))
AND (res.points IS NULL)
AND (res2.points IN ('4.5','5.0'))
