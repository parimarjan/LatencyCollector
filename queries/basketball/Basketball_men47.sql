SELECT MAX("awards_players"."playerID" + "awards_players"."year") as agg_0 FROM "awards_players"  WHERE "awards_players"."award" NOT LIKE '%All-ABA%' AND "awards_players"."lgID" NOT LIKE '%NBL%' AND "awards_players"."lgID" != 'NBA' AND ("awards_players"."playerID" <= 304346 OR "awards_players"."playerID" BETWEEN 127825 AND 232284 OR "awards_players"."playerID" >= 478318) AND ("awards_players"."pos" = 'F/C' OR "awards_players"."pos" != 'F/G')