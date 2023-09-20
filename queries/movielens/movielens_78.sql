
SELECT SUM("movies"."movieid") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid"  WHERE "movies2directors"."genre" != '%Adventure%' AND "directors"."d_quality" = 4 AND "movies"."country" != '%USA%' AND "movies"."year" BETWEEN 1 AND 2 AND "movies2directors"."genre" LIKE '%Animation%';