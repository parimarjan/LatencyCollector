SELECT COUNT(*) as agg_0 FROM "players" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID" LEFT OUTER JOIN "teams" ON "players_teams"."tmID" = "teams"."tmID" LEFT OUTER JOIN "series_post" ON "teams"."tmID" = "series_post"."tmIDLoser"  WHERE ("players"."birthDate" = '1915-12-04' OR ("players"."birthDate" LIKE '%0000-00-00%' AND "players"."birthDate" LIKE '%0000-00-00%')) AND "player_allstar"."conference" != 'Weset' AND "teams"."d_pf" <= 0 AND "series_post"."round" IN ('CF', 'DF', 'RR', 'QF', 'DT') AND "teams"."bbtmID" != 'SDC'