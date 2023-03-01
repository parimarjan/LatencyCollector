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
AND (c.nationality ILIKE ('%ger%'))
AND (res.position IN ('1.0','2.0'))
AND (res2.position IN ('32.0','9.0'))
AND (res.points IN ('2.0','5.0','6.0','8.5'))
AND (res2.points IN ('1.0') OR res2.points IS NULL)
