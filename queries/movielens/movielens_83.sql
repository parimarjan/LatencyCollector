
SELECT AVG("users"."occupation") as agg_0 FROM "u2base" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE "users"."userid" BETWEEN 2193 AND 5383 AND "users"."occupation" = 3 AND "movies"."movieid" BETWEEN 1865343 AND 1966245 AND "u2base"."movieid" >= 1700996 AND "movies2actors"."cast_num" = 3;