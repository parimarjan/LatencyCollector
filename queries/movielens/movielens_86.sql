
SELECT SUM("movies2actors"."actorid") as agg_0 FROM "movies2actors" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "actors" ON "movies2actors"."actorid" = "actors"."actorid" LEFT OUTER JOIN "movies2directors" ON "movies"."movieid" = "movies2directors"."movieid" LEFT OUTER JOIN "directors" ON "movies2directors"."directorid" = "directors"."directorid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "movies2directors"."genre" != '%Other%' AND "movies2directors"."genre" IN ('Drama', 'Horror', 'Comedy', 'Documentary', 'Animation', 'Crime', 'Action', 'Adventure') AND "u2base"."rating" != 4 AND "actors"."actorid" IS NOT NULL AND "directors"."directorid" IS NOT NULL;