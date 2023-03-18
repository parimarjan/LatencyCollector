SELECT SUM("players"."height") as agg_0 FROM "players" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "awards_players" ON "players"."playerID" = "awards_players"."playerID"  WHERE "player_allstar"."first_name" NOT LIKE '%Tim%' AND "player_allstar"."league_id" IN ('NBA') AND "player_allstar"."points" >= 27.731583128991232 AND "players_teams"."lgID" LIKE '%NBA%'