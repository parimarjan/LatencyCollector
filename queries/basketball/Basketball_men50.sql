SELECT SUM("teams"."o_3pm" + "teams"."d_fta") as agg_0 FROM "series_post" LEFT OUTER JOIN "teams" ON "series_post"."tmIDWinner" = "teams"."tmID" LEFT OUTER JOIN "players_teams" ON "teams"."tmID" = "players_teams"."tmID" LEFT OUTER JOIN "players" ON "players_teams"."playerID" = "players"."playerID" LEFT OUTER JOIN "draft" ON "teams"."tmID" = "draft"."tmID"  WHERE "players"."hsState" NOT LIKE '%O%H%' AND ("draft"."firstName" LIKE '%Bob%' OR ("draft"."firstName" != 'Thad' AND "draft"."firstName" != 'Tyus')) AND "players_teams"."fgMade" <= 382 AND "teams"."franchID" NOT LIKE '%CHI%' AND "series_post"."id" >= 390 AND "players"."college" != 'Tri-State (JC)'