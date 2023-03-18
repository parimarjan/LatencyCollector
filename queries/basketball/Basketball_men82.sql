SELECT COUNT(*) as agg_0 FROM "awards_players" LEFT OUTER JOIN "players" ON "awards_players"."playerID" = "players"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID" LEFT OUTER JOIN "teams" ON "players_teams"."tmID" = "teams"."tmID"  WHERE ("players"."hsState" LIKE '%MO%' OR ("players"."hsState" LIKE '%N%J%' AND "players"."hsState" NOT LIKE '%T%X%')) AND ("teams"."d_dreb" BETWEEN 0 AND 765 OR "teams"."d_dreb" >= 2241 OR "teams"."d_dreb" >= 666)