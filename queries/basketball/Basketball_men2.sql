SELECT AVG("player_allstar"."turnovers") as agg_0 FROM "players" LEFT OUTER JOIN "player_allstar" ON "players"."playerID" = "player_allstar"."playerID"  WHERE "player_allstar"."assists" <= 1.0 AND "player_allstar"."last_name" LIKE '%Johns%on%' AND "player_allstar"."points" >= 0.9558863646023728 AND "players"."birthCountry" IN ('CAN', 'ARG', 'FRA', 'ESP', 'GER')