
SELECT MAX("actors"."a_quality") as agg_0 FROM "movies2actors" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "movies2actors"."actorid" BETWEEN 1548090 AND 1960447 AND "u2base"."movieid" <= 1875734 AND "actors"."a_gender" IN ('M') AND ("u2base"."rating" != 3 OR "u2base"."userid" <= 4986) AND "actors"."a_gender" IN ('F') AND ("actors"."a_quality" BETWEEN 3 AND 4 OR "actors"."actorid" >= 1190845);