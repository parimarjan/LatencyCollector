
SELECT MAX("movies"."runningtime") as agg_0 FROM "actors" LEFT OUTER JOIN "movies2actors" ON "actors"."actorid" = "movies2actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid"  WHERE "movies2actors"."movieid" BETWEEN 1766889 AND 2016355 AND "movies2directors"."movieid" <= 2031513 AND "movies2directors"."genre" = '%Crime%' AND "movies"."isEnglish" IN ('T');