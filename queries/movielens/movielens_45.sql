
SELECT SUM("actors"."actorid") as agg_0 FROM "u2base" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid"  WHERE "u2base"."rating" = 3 AND "movies"."movieid" <= 1713635 AND ("movies"."country" NOT LIKE '%UK%' OR "movies"."country" LIKE '%ot%her%') AND "movies"."country" NOT LIKE '%US%A%' AND "users"."userid" IS NOT NULL;