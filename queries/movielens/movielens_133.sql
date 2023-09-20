
SELECT MIN("actors"."a_quality") as agg_0 FROM "movies2actors" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid"  WHERE "movies"."runningtime" BETWEEN 2 AND 3 AND "movies"."country" IN ('USA', 'UK', 'other') AND "movies2actors"."cast_num" BETWEEN 3 AND 4 AND "movies"."country" IN ('France', 'UK');