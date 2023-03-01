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
AND (res.position IN ('14.0','16.0','21.0','9.0'))
AND (res2.position IN ('7.0'))
AND (res.points IN ('1.0') OR res.points IS NULL)
AND (res2.points IN ('6.0') OR res2.points IS NULL)
