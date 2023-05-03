
SELECT AVG("directors"."directorid") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE "directors"."avg_revenue" = 2 AND "movies2actors"."actorid" <= 1590104 AND ("movies"."country" = '%USA%' OR "movies"."movieid" <= 2468823 OR "movies"."country" NOT LIKE '%U%K%') AND "u2base"."userid" <= 578 AND "u2base"."movieid" <= 2061201 AND "movies"."country" != '%other%';