
SELECT MAX("actors"."actorid") as agg_0 FROM "movies2actors" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid" LEFT OUTER JOIN "users" ON "u2base"."userid" = "users"."userid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid"  WHERE ("movies2actors"."cast_num" != 3 OR ("movies2actors"."movieid" <= 2589909 AND "movies2actors"."cast_num" BETWEEN 2 AND 3)) AND ("users"."age" BETWEEN 25 AND 35 OR ("users"."age" <= 52 AND "users"."age" <= 44)) AND "u2base"."movieid" >= 1788496 AND "movies2directors"."movieid" >= 2448427 AND ("users"."u_gender" = '%M%' OR "users"."occupation" BETWEEN 2 AND 3);