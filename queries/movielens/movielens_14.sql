
SELECT SUM("movies"."movieid") as agg_0 FROM "u2base" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid"  WHERE "users"."age" != 47 AND "movies"."isEnglish" IN ('T') AND "movies"."country" IN ('USA', 'France', 'UK') AND "u2base"."rating" BETWEEN 4 AND 5;