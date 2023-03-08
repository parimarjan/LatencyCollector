SELECT AVG("player_allstar"."minutes" + "player_allstar"."assists") as agg_0, AVG("players"."firstseason") as agg_1 FROM "player_allstar" LEFT OUTER JOIN "players" ON "player_allstar"."playerID" = "players"."playerID"  WHERE "players"."lastseason" <= 0.0