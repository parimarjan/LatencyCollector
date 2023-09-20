
SELECT COUNT(*) as agg_0 FROM "movies" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid"  WHERE "movies"."runningtime" = 1 AND "movies2directors"."genre" LIKE '%C%rime%' AND "actors"."a_quality" != 4 AND ("movies2directors"."genre" LIKE '%Co%medy%' OR ("movies2directors"."genre" LIKE '%Crime%' AND "movies2directors"."genre" = '%Documentary%')) AND "users"."userid" IS NOT NULL;