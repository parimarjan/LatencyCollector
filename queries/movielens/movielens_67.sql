
SELECT SUM("movies"."year") as agg_0 FROM "movies2directors" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE "movies"."country" LIKE '%other%' AND ("movies"."country" NOT LIKE '%USA%' OR "movies"."year" <= 4 OR "movies"."country" LIKE '%USA%') AND "movies2directors"."movieid" >= 2104494 AND "movies"."runningtime" <= 2 AND "directors"."directorid" IS NOT NULL AND "movies2actors"."movieid" IS NOT NULL;