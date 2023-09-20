
SELECT MAX("movies2actors"."actorid") as agg_0 FROM "users" LEFT OUTER JOIN "u2base" ON "users"."userid" = "u2base"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid"  WHERE "users"."u_gender" = '%M%' AND "directors"."avg_revenue" BETWEEN 0 AND 1 AND ("users"."u_gender" IN ('F') OR "users"."occupation" >= 1) AND "movies2directors"."genre" IN ('Horror') AND "directors"."d_quality" = 3;