SELECT AVG("players"."weight" + "player_allstar"."points") as agg_0 FROM "player_allstar" LEFT OUTER JOIN "players" ON "player_allstar"."playerID" = "players"."playerID"  WHERE "player_allstar"."conference" IN ('East', 'Weset')