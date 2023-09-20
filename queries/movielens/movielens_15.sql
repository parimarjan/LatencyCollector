
SELECT MIN("movies"."movieid") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid"  WHERE "u2base"."movieid" <= 2472999 AND "directors"."avg_revenue" BETWEEN 0 AND 1 AND ("u2base"."rating" >= 4 OR "u2base"."rating" <= 4) AND "movies2actors"."movieid" IS NOT NULL AND "users"."userid" IS NOT NULL;