
SELECT MIN("movies"."movieid") as agg_0 FROM "u2base" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE ("movies"."country" NOT LIKE '%Fran%ce%' OR ("movies"."runningtime" >= 3 AND "movies"."country" NOT LIKE '%UK%')) AND "movies2actors"."movieid" <= 2482768 AND ("movies"."year" >= 3 OR ("movies"."runningtime" BETWEEN 0 AND 1 AND "movies"."year" = 4)) AND "movies"."country" LIKE '%USA%';