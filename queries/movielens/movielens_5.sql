
SELECT MAX("movies2directors"."movieid") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid"  WHERE "movies"."movieid" <= 2178526 AND "movies2directors"."directorid" BETWEEN 97323 AND 289721 AND "movies2directors"."movieid" >= 2253587 AND "movies"."country" != '%UK%';