SELECT MIN("players_teams"."PostfgMade" + "players_teams"."ftMade") as agg_0 FROM "players_teams"  WHERE "players_teams"."threeAttempted" <= 7 AND "players_teams"."threeMade" <= 2 AND "players_teams"."lgID" IN ('NPBL')