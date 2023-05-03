
SELECT COUNT(*) as agg_0 FROM "u2base" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE "users"."userid" <= 5509 AND "movies"."country" IN ('France', 'UK') AND "users"."u_gender" = '%M%' AND "users"."occupation" BETWEEN 2 AND 5 AND "movies2actors"."movieid" BETWEEN 1950620 AND 2062445 AND "movies2actors"."cast_num" >= 1;