
SELECT MAX("movies"."year") as agg_0 FROM "movies" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "movies"."runningtime" != 1 AND ("movies"."country" = '%France%' OR "movies"."country" = '%France%') AND ("u2base"."movieid" >= 1834637 OR "u2base"."userid" <= 1633 OR "u2base"."movieid" >= 2487002) AND "movies2actors"."movieid" IS NOT NULL;