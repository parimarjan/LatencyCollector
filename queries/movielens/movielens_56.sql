
SELECT SUM("u2base"."userid") as agg_0 FROM "users" LEFT OUTER JOIN "u2base" ON "users"."userid" = "u2base"."userid" LEFT OUTER JOIN "movies" ON "u2base"."movieid" = "movies"."movieid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "movies2actors" ON "movies"."movieid" = "movies2actors"."movieid"  WHERE "movies2directors"."movieid" >= 1745808 AND "movies2actors"."actorid" BETWEEN 1851879 AND 2708881 AND "movies2directors"."genre" = '%Other%' AND "movies"."isEnglish" != '%T%' AND "movies2directors"."genre" NOT LIKE '%Adventure%';