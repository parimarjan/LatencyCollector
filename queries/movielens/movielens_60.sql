
SELECT AVG("movies2directors"."movieid") as agg_0 FROM "actors" LEFT OUTER JOIN "movies2actors" ON "actors"."actorid" = "movies2actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid"  WHERE "actors"."a_quality" <= 2 AND "actors"."actorid" >= 1886151 AND "u2base"."movieid" IS NOT NULL;