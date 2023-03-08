SELECT AVG("teams"."o_fga") as agg_0, COUNT(*) as agg_1 FROM "coaches" LEFT OUTER JOIN "teams" ON "coaches"."tmID" = "teams"."tmID" LEFT OUTER JOIN "players_teams" ON "teams"."tmID" = "players_teams"."tmID" LEFT OUTER JOIN "series_post" ON "teams"."tmID" = "series_post"."tmIDLoser"  WHERE "teams"."bbtmID" NOT LIKE '%C%LE%' AND "players_teams"."lgID" NOT LIKE '%AB%A%' AND "players_teams"."PostAssists" BETWEEN 0 AND 144