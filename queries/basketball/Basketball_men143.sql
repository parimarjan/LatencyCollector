SELECT MIN("player_allstar"."o_rebounds" + "players_teams"."PostftMade") as agg_0, MAX("player_allstar"."blocks" + "players_teams"."PostfgAttempted") as agg_1 FROM "players_teams" LEFT OUTER JOIN "players" ON "players_teams"."playerID" = "players"."playerID" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID"  WHERE "players_teams"."lgID" != 'NBA' AND "player_allstar"."minutes" = 18 AND ("player_allstar"."ft_made" <= 2.0 OR "player_allstar"."ft_made" >= 2.0) AND "players"."lastName" LIKE '%Johnson%'