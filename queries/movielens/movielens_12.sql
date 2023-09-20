
SELECT MIN("movies"."runningtime") as agg_0 FROM "actors" LEFT OUTER JOIN "movies2actors" ON "actors"."actorid" = "movies2actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid"  WHERE "movies"."year" != 4 AND "movies2actors"."cast_num" != 2;