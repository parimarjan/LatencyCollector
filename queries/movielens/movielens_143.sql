
SELECT MAX("movies"."movieid") as agg_0 FROM "u2base" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid"  WHERE "movies"."country" IN ('USA') AND "u2base"."rating" <= 3 AND "movies"."country" LIKE '%UK%' AND "users"."userid" IS NOT NULL AND "actors"."actorid" IS NOT NULL AND "movies2directors"."movieid" IS NOT NULL;