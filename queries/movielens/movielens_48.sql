
SELECT COUNT(*) as agg_0 FROM "actors" LEFT OUTER JOIN "movies2actors" ON "actors"."actorid" = "movies2actors"."actorid" LEFT OUTER JOIN "movies" ON "movies2actors"."movieid" = "movies"."movieid" LEFT OUTER JOIN "u2base" ON "movies"."movieid" = "u2base"."movieid"  WHERE "actors"."a_gender" != '%F%' AND "movies"."isEnglish" != '%F%' AND "actors"."a_gender" IN ('M') AND ("actors"."a_quality" = 3 OR "actors"."actorid" >= 2114796 OR "actors"."a_quality" <= 4) AND "u2base"."movieid" IS NOT NULL;