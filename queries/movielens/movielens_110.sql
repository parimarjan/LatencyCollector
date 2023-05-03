
SELECT AVG("movies"."year") as agg_0 FROM "movies2directors" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "u2base"."movieid" <= 2380365 AND "movies2directors"."movieid" <= 1731825 AND ("directors"."avg_revenue" != 1 OR "directors"."avg_revenue" != 3) AND "movies2directors"."genre" = '%Crime%' AND "movies"."movieid" >= 2312420 AND "movies"."year" >= 4 AND "movies2actors"."movieid" IS NOT NULL;