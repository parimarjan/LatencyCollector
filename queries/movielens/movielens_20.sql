
SELECT AVG("u2base"."userid") as agg_0 FROM "movies2actors" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE ("movies"."year" = 2 OR "movies"."runningtime" = 0) AND "movies2directors"."genre" LIKE '%Oth%er%' AND "movies2directors"."movieid" <= 2117859 AND "actors"."actorid" <= 1818245 AND "directors"."directorid" IS NOT NULL;