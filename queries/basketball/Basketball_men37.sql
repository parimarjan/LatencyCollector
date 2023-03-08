SELECT SUM("teams"."homeWon") as agg_0, MIN("player_allstar"."games_played") as agg_1 FROM "players" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID" LEFT OUTER JOIN "awards_players" ON "players"."playerID" = "awards_players"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "teams" ON "players_teams"."tmID" = "teams"."tmID"  WHERE "player_allstar"."league_id" IN ('ABA') AND "player_allstar"."steals" >= 5.4640692032264395 AND "awards_players"."year" BETWEEN 1962 AND 1971