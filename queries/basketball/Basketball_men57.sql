SELECT AVG("awards_players"."playerID") as agg_0, COUNT(*) as agg_1 FROM "awards_players"  WHERE "awards_players"."playerID" <= 86140 AND "awards_players"."pos" IN ('G', 'F/G', 'F') AND "awards_players"."award" = 'All-NBA Second Team'