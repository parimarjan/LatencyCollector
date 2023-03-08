SELECT MIN("teams"."confLoss") as agg_0, AVG("series_post"."tmIDWinner") as agg_1, COUNT(*) as agg_2 FROM "series_post" LEFT OUTER JOIN "teams" ON "series_post"."tmIDWinner" = "teams"."tmID"  WHERE ("series_post"."series" IN ('N', 'L', 'K', 'A', 'C', 'M', 'O', 'J', 'D') OR ("series_post"."W" <= 0 AND "series_post"."series" != 'A')) AND "teams"."d_pf" >= 2083