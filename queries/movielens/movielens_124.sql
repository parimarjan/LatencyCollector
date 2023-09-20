
SELECT AVG("directors"."d_quality") as agg_0 FROM "movies" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid"  WHERE ("movies2actors"."actorid" >= 76273 OR "movies2actors"."actorid" <= 182409 OR "movies2actors"."actorid" <= 2318896) AND "movies2directors"."genre" NOT LIKE '%Act%ion%' AND "directors"."avg_revenue" BETWEEN 2 AND 3 AND "movies"."country" IN ('other', 'USA', 'UK') AND "movies"."movieid" <= 1689044;