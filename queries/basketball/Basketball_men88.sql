SELECT MAX("players_teams"."PostPF" + "teams"."neutWon") as agg_0 FROM "player_allstar" LEFT OUTER JOIN "players" ON "player_allstar"."playerID" = "players"."playerID" LEFT OUTER JOIN "awards_players" ON "players"."playerID" = "awards_players"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "teams" ON "players_teams"."tmID" = "teams"."tmID"  WHERE "player_allstar"."league_id" IN ('NBA') AND "players_teams"."lgID" = 'NBA'