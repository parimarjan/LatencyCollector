
SELECT COUNT(*) as agg_0 FROM "movies2actors" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid"  WHERE "movies2actors"."movieid" >= 1846676 AND "movies2directors"."genre" = '%Comedy%' AND "actors"."actorid" IS NOT NULL AND "users"."userid" IS NOT NULL;