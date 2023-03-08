SELECT AVG("players"."height") as agg_0, COUNT(*) as agg_1, COUNT(*) as agg_2 FROM "awards_players" LEFT OUTER JOIN "players" ON "awards_players"."playerID" = "players"."playerID" LEFT OUTER JOIN "players_teams" ON "players"."playerID" = "players_teams"."playerID"  WHERE "awards_players"."award" = 'Comeback' AND "players"."collegeOther" NOT LIKE '%C%C%'