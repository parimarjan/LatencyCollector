
SELECT MIN("movies2directors"."directorid") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid"  WHERE "movies"."year" = 4 AND "directors"."d_quality" = 3 AND "movies2directors"."movieid" <= 2398628 AND "movies2directors"."genre" = '%Other%' AND "users"."userid" IS NOT NULL;