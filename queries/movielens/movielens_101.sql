
SELECT MIN("movies"."runningtime") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "u2base"."movieid" BETWEEN 1799026 AND 2092833 AND "movies2directors"."genre" != '%Documentary%' AND "movies"."country" NOT LIKE '%other%';