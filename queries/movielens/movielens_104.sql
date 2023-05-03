
SELECT MIN("movies"."runningtime") as agg_0 FROM "users" LEFT OUTER JOIN "u2base" ON "users"."userid" = "u2base"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid"  WHERE ("movies2directors"."genre" = '%Comedy%' OR ("movies2directors"."directorid" <= 276233 AND "movies2directors"."genre" = '%Documentary%')) AND "users"."age" = 39 AND "users"."occupation" <= 2 AND ("movies2actors"."movieid" BETWEEN 1742139 AND 2007797 OR "movies2actors"."movieid" >= 1723140 OR "movies2actors"."movieid" BETWEEN 2304457 AND 2423001) AND "movies"."country" != '%France%' AND "movies2directors"."movieid" >= 2025767 AND "directors"."directorid" IS NOT NULL;