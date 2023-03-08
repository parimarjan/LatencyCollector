SELECT AVG("series_post"."year") as agg_0, MIN("teams"."neutWon") as agg_1 FROM "draft" LEFT OUTER JOIN "teams" ON "draft"."tmID" = "teams"."tmID" LEFT OUTER JOIN "series_post" ON "teams"."tmID" = "series_post"."tmIDWinner"  WHERE "draft"."id" <= 2226 AND "draft"."lgID" LIKE '%NBA%' AND "draft"."tmID" >= 299 AND ("series_post"."round" LIKE '%DF%' OR ("series_post"."round" LIKE '%CF%' AND "series_post"."round" = 'CFR'))