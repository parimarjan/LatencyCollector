
SELECT MIN("movies2actors"."cast_num") as agg_0 FROM "directors" LEFT OUTER JOIN "movies2directors" ON "directors"."directorid" = "movies2directors"."directorid" LEFT OUTER JOIN "movies" ON "movies2directors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid"  WHERE "movies"."country" = '%other%' AND "movies"."country" LIKE '%France%' AND "actors"."a_quality" BETWEEN 0 AND 3 AND "actors"."a_gender" IN ('F');