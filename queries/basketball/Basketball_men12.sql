SELECT SUM("players_teams"."PostMinutes") as agg_0 FROM "player_allstar" LEFT OUTER JOIN "players" ON "player_allstar"."playerID" = "players"."playerID" LEFT OUTER JOIN "awards_players" ON "players"."playerID" = "awards_players"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID" LEFT OUTER JOIN "teams" ON "players_teams"."tmID" = "teams"."tmID"  WHERE "teams"."d_fta" >= 275 AND "players"."birthDate" IN ('1948-10-25', '1945-02-23', '1947-08-26', '1921-12-06', '1952-08-31')