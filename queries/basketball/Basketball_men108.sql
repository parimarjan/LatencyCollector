SELECT AVG("series_post"."tmIDWinner") as agg_0, MIN("series_post"."year" + "series_post"."tmIDLoser") as agg_1 FROM "series_post"  WHERE "series_post"."L" <= 1 AND "series_post"."round" NOT LIKE '%CF%R%' AND "series_post"."lgIDWinner" = 'NBA' AND "series_post"."lgIDLoser" IN ('ABA')